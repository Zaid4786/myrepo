`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2015 02:46:13 PM
// Design Name: 
// Module Name: hwcosim_cmd_proc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hwcosim_cmd_proc #(
        parameter integer C_AXI_ADDR_W      = 8,
        parameter integer INTERFACE         = 1                             // 0 = JTAG, 1 = PP_ETHERNET
    )
    (
        input                       clk,
        input                       resetn,
        // RX in AXI-Stream Slave
        input [31:0]                rx_fifo_tdata,
        input                       rx_fifo_tvalid,
        input                       rx_fifo_tlast,
        output reg                  rx_fifo_tready,
        // TX out AXI-Stream Master
        output reg [31:0]           tx_fifo_tdata,
        output reg                  tx_fifo_tvalid,
        output reg                  tx_fifo_tlast,
        input                       tx_fifo_tready,
        // Memory-mapped AXI-Lite Master (in/out)
        // address channel
        output reg                      axi_lite_awvalid,   // address write
        input                           axi_lite_awready,
        output reg [31:0]               axi_lite_awaddr,
        output reg                      axi_lite_arvalid,   // address read
        input                           axi_lite_arready,
        output reg [31:0]               axi_lite_araddr,
        // data write channel
        output reg                      axi_lite_wvalid,
        input                           axi_lite_wready,
        output reg [31:0]               axi_lite_wdata,
        output  [3:0]                   axi_lite_wstrb,     // write strobe (byte enables)
        // data write response channel
        output reg                      axi_lite_bready,
        input                           axi_lite_bvalid,
        input [1:0]                     axi_lite_bresp,
        // data read channel
        output reg                      axi_lite_rready,
        input                           axi_lite_rvalid,
        input [31:0]                    axi_lite_rdata,
        input [1:0]                     axi_lite_rresp
    );


localparam integer C_AXI_DATA_W      = 32;
localparam         C_AXI_BASE_ADDR   = 32'h40000000;

    
localparam [2:0]
    OP_RUN          = 3'd0,
    OP_READ         = 3'd1,
    OP_WRITE        = 3'd2,
    OP_CLKSEL       = 3'd3;


localparam [C_AXI_ADDR_W-1:0] addr_inc = 4;
    
// Command processor FSM
localparam      IDLE             = 5'd1,
// Ethernet interface (INTERFACE==1) specific states
                GET_MAC1         = 5'd2,
                WAIT_MAC2        = 5'd3,
                GET_MAC2         = 5'd4,
                WAIT_MAC3        = 5'd5,
                GET_MAC3         = 5'd6,
                WAIT_ETHTYPE     = 5'd7,
                GET_ETHTYPE      = 5'd8,
                WAIT_PKTLEN      = 5'd9,
                GET_PKTLEN       = 5'd10,
                WAIT_SEQ         = 5'd11,
                GET_SEQ          = 5'd12,
                WAIT_INSTR       = 5'd13,
// common states
                NEW_INSTR        = 5'd14,
                WAIT_ADDR        = 5'd15,
                GET_ADDR         = 5'd16,
                READ_ADDR_VALID  = 5'd17,
                READ_WAIT_TX     = 5'd18,
                READ_READY       = 5'd19,
                WRITE_WAIT_DATA  = 5'd20,
                WRITE_GET_DATA   = 5'd21,
                WRITE_DATA_VALID = 5'd22,
                WRITE_WAIT_READY = 5'd23;

localparam
                TX_IDLE         = (INTERFACE==1) ? 3'd0 : 1'b0,
                TX_MAC1         = 3'd1,
                TX_MAC2         = 3'd2,
                TX_MAC3         = 3'd3,
                TX_ETHTYPE      = 3'd4,
                TX_RESPLEN      = 3'd5,
                TX_SEQNO        = 3'd6,
                TX_DATA         = (INTERFACE==1) ? 3'd7 : 1'b1;

localparam RX_STATE_BITS = 5;
localparam TX_STATE_BITS = INTERFACE ? 3 : 1;
reg [RX_STATE_BITS-1:0]         current_state;
reg [RX_STATE_BITS-1:0]         next_state;

// P2P Ethernet specific data
reg [47:0]              src_mac_addr, dest_mac_addr;        // source and destination MAC addresses
reg [31:0]              seq_no;                             // packet ordering sequence number
reg [11:0]              command_length, response_length;    // packet lengths for P2P Ethernet cosim 

// command parameters
reg [2:0]               opcode;                             // current instruction opcode
reg                     seq_addr;                           // flag to indicate sequential addressing for multi-word read/write
reg [23:0]              num_words;                          // number of words to read/write
reg [C_AXI_ADDR_W-1:0]  rw_addr;                            // Memory-mapped AXI-Lite address (offset)
reg [C_AXI_DATA_W-1:0]  rw_data;                            // data to write to DUT / data read from DUT


wire                    more_data;
reg [TX_STATE_BITS-1:0] tx_state;
reg                     mac_valid;
reg                     length_valid;
reg                     seqno_valid;
reg                     data_valid;
reg                     last_valid;
reg                     rx_tlast_recvd;



assign more_data = (num_words > 1) ? 1'b1 : 1'b0;


// next state logic

always @(current_state or rx_fifo_tvalid or opcode or tx_fifo_tready or more_data 
        or axi_lite_arready or axi_lite_awready or axi_lite_wready or axi_lite_rvalid)
begin
    if (~resetn) begin
        next_state <= IDLE;
    end
    else begin
        case (current_state)
        IDLE: begin
            if (rx_fifo_tvalid)     next_state <= (INTERFACE==1) ? GET_MAC1 : NEW_INSTR;
            else                    next_state <= IDLE;
        end
        GET_MAC1: begin
            if (rx_fifo_tvalid)     next_state <= GET_MAC2;
            else                    next_state <= WAIT_MAC2;
        end
        WAIT_MAC2: begin
            if (rx_fifo_tvalid)     next_state <= GET_MAC2;
            else                    next_state <= WAIT_MAC2;
        end
        GET_MAC2: begin
            if (rx_fifo_tvalid)     next_state <= GET_MAC3;
            else                    next_state <= WAIT_MAC3;
        end
        WAIT_MAC3: begin
            if (rx_fifo_tvalid)     next_state <= GET_MAC3;
            else                    next_state <= WAIT_MAC3;
        end
        GET_MAC3: begin
            if (rx_fifo_tvalid)     next_state <= GET_ETHTYPE;
            else                    next_state <= WAIT_ETHTYPE;
        end
        WAIT_ETHTYPE: begin
            if (rx_fifo_tvalid)     next_state <= GET_ETHTYPE;
            else                    next_state <= WAIT_ETHTYPE;
        end
        GET_ETHTYPE: begin
            if (rx_fifo_tvalid)     next_state <= GET_PKTLEN;
            else                    next_state <= WAIT_PKTLEN;
        end
        WAIT_PKTLEN: begin
            if (rx_fifo_tvalid)     next_state <= GET_PKTLEN;
            else                    next_state <= WAIT_PKTLEN;
        end
        GET_PKTLEN: begin
            if (rx_fifo_tvalid)     next_state <= GET_SEQ;
            else                    next_state <= WAIT_SEQ;
        end
        WAIT_SEQ: begin
            if (rx_fifo_tvalid)     next_state <= GET_SEQ;
            else                    next_state <= WAIT_SEQ;
        end
        GET_SEQ: begin
            if (rx_fifo_tvalid)     next_state <= NEW_INSTR;
            else                    next_state <= WAIT_INSTR;
        end
        WAIT_INSTR: begin
            if (rx_fifo_tvalid)     next_state <= NEW_INSTR;
            else                    next_state <= WAIT_INSTR;
        end
        
        NEW_INSTR: begin
            if (opcode == OP_WRITE || opcode == OP_READ) begin
                if (rx_fifo_tvalid) next_state <= GET_ADDR;
                else                next_state <= WAIT_ADDR;
            end
            else                    next_state <= IDLE;
        end
        WAIT_ADDR: begin
            if (rx_fifo_tvalid)     next_state <= GET_ADDR;
            else                    next_state <= WAIT_ADDR;
        end
        GET_ADDR: begin
            if (opcode == OP_READ)  next_state <= READ_ADDR_VALID;
            if (opcode == OP_WRITE) begin
                if (rx_fifo_tvalid) next_state <= WRITE_GET_DATA;
                else                next_state <= WRITE_WAIT_DATA;
            end
        end
        READ_ADDR_VALID: begin
            if (axi_lite_arready)   begin
                if (tx_fifo_tready) next_state <= READ_READY;
                else                next_state <= READ_WAIT_TX;
            end
            else                    next_state <= READ_ADDR_VALID;
        end
        READ_WAIT_TX: begin
            if (tx_fifo_tready)     next_state <= READ_READY;
            else                    next_state <= READ_WAIT_TX;
        end
        READ_READY: begin
            if (axi_lite_rvalid)    begin
                if (more_data)      next_state <= READ_ADDR_VALID;
                else                next_state <= IDLE;
            end
            else                    next_state <= READ_READY;
        end
        WRITE_WAIT_DATA: begin
            if (rx_fifo_tvalid)     next_state <= WRITE_GET_DATA;
            else                    next_state <= WRITE_WAIT_DATA;
        end
        WRITE_GET_DATA: begin
                                    next_state <= WRITE_DATA_VALID;
        end
        WRITE_DATA_VALID: begin
            if (axi_lite_awready) begin
                if (axi_lite_wready) begin
                    if (more_data) begin
                        if (rx_fifo_tvalid) next_state <= WRITE_GET_DATA;
                        else                next_state <= WRITE_WAIT_DATA;
                    end
                    else begin
                        if (!rx_tlast_recvd && rx_fifo_tvalid) next_state <= NEW_INSTR;
                        else                next_state <= IDLE;     // back to IDLE if no new data, or if TLAST was asserted and a new packet starts
                    end
                end
                else                next_state <= WRITE_WAIT_READY; 
            end
            else                    next_state <= WRITE_DATA_VALID;  // wait and assert both valids
        end
        WRITE_WAIT_READY: begin
            if (axi_lite_wready)    begin
                if (!rx_tlast_recvd || rx_fifo_tvalid) next_state <= NEW_INSTR;
                else                next_state <= IDLE;
            end
        end
        endcase
    end
end


// output logic
always @(current_state or next_state or rx_fifo_tvalid or rw_data or rw_addr)
begin
    rx_fifo_tready   = 1'b0;
    axi_lite_awvalid = 1'b0;
    axi_lite_arvalid = 1'b0;
    axi_lite_wvalid  = 1'b0;
    axi_lite_bready  = 1'b0;
    axi_lite_rready  = 1'b0;
    axi_lite_awaddr  = 32'h00000000;
    axi_lite_araddr  = 32'h00000000;
    axi_lite_wdata   = {C_AXI_DATA_W{1'b0}};

    if (next_state != current_state) begin
        if (INTERFACE==1) begin
            case (next_state)
                GET_MAC1:       rx_fifo_tready = 1'b1;
                GET_MAC2:       rx_fifo_tready = 1'b1;
                GET_MAC3:       rx_fifo_tready = 1'b1;
                GET_ETHTYPE:    rx_fifo_tready = 1'b1;
                GET_PKTLEN:     rx_fifo_tready = 1'b1;
                GET_SEQ:        rx_fifo_tready = 1'b1;
                NEW_INSTR:      rx_fifo_tready = 1'b1;
                GET_ADDR:       rx_fifo_tready = 1'b1;
                WRITE_GET_DATA: rx_fifo_tready = 1'b1;
                default:        rx_fifo_tready = 1'b0;
            endcase
        end
        else begin
            case (next_state)
                NEW_INSTR:      rx_fifo_tready = 1'b1;
                GET_ADDR:       rx_fifo_tready = 1'b1;
                WRITE_GET_DATA: rx_fifo_tready = 1'b1;
                default:        rx_fifo_tready = 1'b0;
            endcase
        end
    end
    case (current_state)
        WRITE_DATA_VALID: begin
                            axi_lite_awvalid = 1'b1;
                            axi_lite_wvalid  = 1'b1;
                            axi_lite_awaddr = {C_AXI_BASE_ADDR[31:C_AXI_ADDR_W],rw_addr};
                            axi_lite_bready = 1'b1;     // ready for a write response
                            axi_lite_wdata = rw_data;
        end
        WRITE_WAIT_READY:   axi_lite_wvalid  = 1'b1;
        READ_ADDR_VALID: begin
                            axi_lite_arvalid = 1'b1;
                            axi_lite_araddr = {C_AXI_BASE_ADDR[31:C_AXI_ADDR_W],rw_addr};
        end
        READ_READY:         axi_lite_rready  = 1'b1;
//    default:
    endcase
end



// update registers

always @(posedge clk) begin
    if (~resetn) begin
        current_state <= IDLE;
        if (INTERFACE) begin
            src_mac_addr <= 48'h0000_0000_0000;
            dest_mac_addr <= 48'h0000_0000_0000;
            seq_no <= 32'h00000000;
            command_length <= 12'h000;
            response_length <= 12'h000;
            mac_valid <= 1'b0;
            length_valid <= 1'b0;
            seqno_valid <= 1'b0;
        end
        opcode <= OP_RUN;
        seq_addr <= 1'b0;
        num_words <= 24'h000000;
        rw_addr <= {C_AXI_ADDR_W{1'b0}};
        rw_data <= {C_AXI_DATA_W{1'b0}};
        data_valid <= 1'b0;
        last_valid <= 1'b0;
        rx_tlast_recvd <= 1'b0;
    end
    else begin
        case (next_state)
            IDLE: begin
                rx_tlast_recvd <= 1'b0;
                if (INTERFACE) begin
                    src_mac_addr <= 48'h0000_0000_0000;
                    dest_mac_addr <= 48'h0000_0000_0000;
                    seq_no <= 32'h00000000;
                    command_length <= 12'h000;
                    response_length <= 12'h000;
//                    mac_valid <= 1'b0;
//                    length_valid <= 1'b0;
//                    seqno_valid <= 1'b0;
                end
            end
            GET_MAC1: begin
                src_mac_addr[47:16] <= {rx_fifo_tdata[7:0],rx_fifo_tdata[15:8],rx_fifo_tdata[23:16],rx_fifo_tdata[31:24]};       // use incoming destination MAC as new source MAC
            end
            GET_MAC2: begin
                src_mac_addr[15:0] <= {rx_fifo_tdata[7:0],rx_fifo_tdata[15:8]};
                dest_mac_addr[47:32] <= {rx_fifo_tdata[23:16],rx_fifo_tdata[31:24]};
            end
            GET_MAC3: begin
                dest_mac_addr[31:0] <= {rx_fifo_tdata[7:0],rx_fifo_tdata[15:8],rx_fifo_tdata[23:16],rx_fifo_tdata[31:24]};
                mac_valid <= 1'b1;
            end
            GET_PKTLEN: begin
                command_length <= rx_fifo_tdata[11:0];
                response_length <= rx_fifo_tdata[23:12];
                length_valid <= 1'b1;
            end
            GET_SEQ: begin
                seq_no <= rx_fifo_tdata;
                seqno_valid <= 1'b1;
            end
            NEW_INSTR: begin
                opcode <= rx_fifo_tdata[2:0];
                seq_addr <= rx_fifo_tdata[3];
                num_words <= rx_fifo_tdata[31:8];
                rx_tlast_recvd <= rx_fifo_tlast;
            end
            GET_ADDR: begin
                rw_addr <= rx_fifo_tdata[C_AXI_ADDR_W-1:0];
                rx_tlast_recvd <= rx_fifo_tlast;
            end
            WRITE_GET_DATA: begin
                rw_data <= rx_fifo_tdata;       // fetch data to write to DUT
                rx_tlast_recvd <= rx_fifo_tlast;
            end
        endcase
        case (current_state)
            IDLE: begin
                if (INTERFACE==1) begin
                    mac_valid <= 1'b0;
                    length_valid <= 1'b0;
                    seqno_valid <= 1'b0;
                end
//                data_valid <= 1'b0;
//                last_valid <= 1'b0;
            end
//            READ_ADDR_VALID: begin      // 0x11
////                data_valid <= 1'b0;
////                last_valid <= 1'b0;
//                if (tx_fifo_tvalid) begin
//                    data_valid <= 1'b0;
//                    last_valid <= 1'b0;
//                end
//            end
//            READ_WAIT_TX: begin         // 0x12
//                if (tx_fifo_tvalid) begin
//                    data_valid <= 1'b0;
//                    last_valid <= 1'b0;
//                end
//            end
            READ_READY: begin           // 0x13
                if (axi_lite_rvalid) begin
                    rw_data <= axi_lite_rdata;      // read data from DUT
                    data_valid <= 1'b1;
                    if (more_data) begin
                        num_words <= num_words - 24'h000001;
                        if (seq_addr)
                            rw_addr <= rw_addr + addr_inc;
                    end
                    else begin
                        last_valid <= 1'b1;
                    end
                end
            end
        endcase
        
        if (current_state != READ_READY) begin
            if (data_valid && tx_fifo_tready) begin
                data_valid <= 1'b0;
            end
            if (last_valid && tx_fifo_tready) begin
                last_valid <= 1'b0;
            end
        end

        if ((next_state == WRITE_GET_DATA || next_state == WRITE_WAIT_DATA) && more_data && axi_lite_awready) begin
            num_words <= num_words - 24'h000001;
            if (seq_addr)
                rw_addr <= rw_addr + addr_inc;
        end

        current_state <= next_state;
    end
end

assign axi_lite_wstrb = {(C_AXI_DATA_W/8){axi_lite_wvalid}};



always @( posedge clk) begin

    if (~resetn) begin
        tx_fifo_tdata  <= 32'h00000000;
        tx_fifo_tvalid <= 1'b0;
        tx_fifo_tlast  <= 1'b0;
        tx_state <= TX_IDLE;
    end
    else begin
        if (INTERFACE) begin
            case (tx_state)
                TX_IDLE: begin
                    if (mac_valid && tx_fifo_tready) begin
                        tx_fifo_tdata <= {dest_mac_addr[23:16],dest_mac_addr[31:24],dest_mac_addr[39:32],dest_mac_addr[47:40]};        // write MAC in network byte order (Big Endian)
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_MAC1;
                    end 
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                        tx_fifo_tlast <= 1'b0;
                    end
                end
                TX_MAC1: begin 
                    if (tx_fifo_tready) begin
                        tx_fifo_tdata <= {src_mac_addr[39:32],src_mac_addr[47:40],dest_mac_addr[7:0],dest_mac_addr[15:8]};        // write MAC in network byte order (Big Endian)
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_MAC2;
                    end
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_MAC2: begin 
                    if (tx_fifo_tready) begin
                        tx_fifo_tdata <= {src_mac_addr[7:0],src_mac_addr[15:8],src_mac_addr[23:16],src_mac_addr[31:24]};        // write MAC in network byte order (Big Endian)
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_MAC3;
                    end
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_MAC3: begin 
                    if (tx_fifo_tready) begin
                        tx_fifo_tdata <= 32'hcdab0031;      // write out ethernet type field in network byte order
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_ETHTYPE;
                    end
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_ETHTYPE: begin
                    if (length_valid && tx_fifo_tready) begin
                        tx_fifo_tdata <= {response_length, 20'h00000};
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_RESPLEN;
                    end 
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_RESPLEN: begin
                    if (seqno_valid && tx_fifo_tready) begin
                        tx_fifo_tdata <= seq_no;
                        tx_fifo_tvalid <= 1'b1;
                        tx_state <= TX_SEQNO;
                    end 
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_SEQNO: begin 
                    if (data_valid && tx_fifo_tready) begin
                        tx_fifo_tdata <= rw_data;
                        tx_fifo_tvalid <= 1'b1;
                        tx_fifo_tlast <= last_valid;
                        tx_state <= last_valid ? TX_IDLE : TX_DATA;     // if this data word is the final one, move to IDLE
                    end 
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
                TX_DATA: begin
                    if (data_valid && tx_fifo_tready) begin
                        tx_fifo_tdata <= rw_data;
                        tx_fifo_tvalid <= 1'b1;
                        tx_fifo_tlast <= last_valid;
                        tx_state <= last_valid ? TX_IDLE : TX_DATA;     // if this data word is the final one, move to IDLE
                    end 
                    else begin
                        tx_fifo_tvalid <= 1'b0;
                    end
                end
            endcase
        end
        else begin
            if (data_valid && tx_fifo_tready) begin
                tx_fifo_tdata <= rw_data;
                tx_fifo_tvalid <= 1'b1;
                tx_state <= last_valid ? TX_IDLE : TX_DATA;     // if this data word is the final one, move to IDLE
                tx_fifo_tlast <= last_valid;
            end 
            else begin
                tx_fifo_tvalid <= 1'b0;
                tx_fifo_tlast <= 1'b0;
            end
//            case (tx_state)
//                TX_IDLE: begin
//                    if (data_valid && tx_fifo_tready) begin
//                        tx_fifo_tdata <= rw_data;
//                        tx_fifo_tvalid <= 1'b1;
//                        tx_fifo_tlast <= last_valid;
//                        tx_state <= last_valid ? TX_IDLE : TX_DATA;     // if this data word is the final one, move to IDLE
//                    end 
//                    else begin
//                        tx_fifo_tvalid <= 1'b0;
//                        tx_fifo_tlast <= 1'b0;
//                    end
//                end
//                TX_DATA: begin
//                    if (data_valid && tx_fifo_tready) begin
//                        tx_fifo_tdata <= rw_data;
//                        tx_fifo_tvalid <= 1'b1;
//                        tx_fifo_tlast <= last_valid;
//                        tx_state <= last_valid ? TX_IDLE : TX_DATA;     // if this data word is the final one, move to IDLE
//                    end 
//                    else begin
//                        tx_fifo_tvalid <= 1'b0;
//        //                tx_fifo_tdata <= 32'h00000000;
//                    end
//                end
//            endcase
        end
    end

end


endmodule

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
