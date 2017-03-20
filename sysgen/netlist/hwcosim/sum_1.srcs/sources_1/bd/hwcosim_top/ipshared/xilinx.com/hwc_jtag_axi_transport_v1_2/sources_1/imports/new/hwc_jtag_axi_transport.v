`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  Xilinx, Inc.
// Engineer: Gunnar Gaubatz
// 
// Create Date: 04/09/2015 03:25:43 PM
// Design Name: Hardware Co-Simulation JTAG AXI-Streaming transport front-end
// Module Name: hwc_jtag_axi_transport
// Project Name: 
// Target Devices: 7-series and above 
// Tool Versions: Vivado 2015.3
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 1.1 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hwc_jtag_axi_transport #(
    parameter integer HWC_JTAG_SCAN_CHAIN = 2           // default to scan chain 1
)
(
    input resetn,
`ifdef XILINX_SIMULATOR // inputs for testbench JTAG stimulus
    input in_tdi,
    input in_tck,
    input in_drck,
    input in_shift,
    input in_update,
    output out_tdo,
`endif
// Master AXI4-Stream output (HWCosim RX)
    input  M00_AXIS_TREADY,
    output [7:0] M00_AXIS_TDATA,
    output M00_AXIS_TVALID,
    output M00_AXIS_TLAST,
// Slave AXI4-Stream input (HWCosim TX)
    output S00_AXIS_TREADY,
    input  [7:0] S00_AXIS_TDATA,
    input  S00_AXIS_TVALID,
    output jtag_clk,
    output jtag_resetn
    );


localparam SYNC_WORD_LENGTH = 32;
localparam SYNC_WORD = 32'h53474353;    // "SGCS"
localparam SYNC_WORD_READ = 32'h73676373;    // "sgcs"

// declaration of internal signals
wire tdi;
wire tdo;
wire capture;
wire jtag_clk_gated;
wire jtag_reset;
wire runtest;
wire sel;
wire shift;
wire tms;
wire update;
wire rst;

reg  oneshot_resetn;

initial
begin
    oneshot_resetn <= 1'b0;
end

always @(posedge jtag_clk)
begin
    if (rst) begin
        oneshot_resetn <= 1'b0;
    end
    else begin
        oneshot_resetn <= 1'b1;
    end
end

assign rst = ~resetn;
assign jtag_resetn = oneshot_resetn;

`ifdef XILINX_SIMULATOR // testbench signal connections
assign jtag_clk = in_tck;
assign jtag_clk_gated = in_drck;
assign tdi = in_tdi;
assign update = in_update;
assign shift = in_shift;
assign jtag_reset = rst;
assign out_tdo = tdo;
`endif

reg [SYNC_WORD_LENGTH-2:0] sync_word_sr;    // Note: the shift register is only 31 bits wide! 
wire rx_start;
reg rx_active;
reg [2:0] deser_counter;
reg [7:0] deser_byte_reg;   // [0:3];
reg [7:0] deser_byte_out;
reg deser_we_out;
reg tlast_out;
wire byte_received_wire;
reg byte_complete;
reg [1:0] byte_count;
wire rx_ready;


// TX signals
wire tx_start;
reg tx_ready;
reg [1:0] tx_byte_count;
reg [7:0] tx_byte_order_reg [0:3];
reg [31:0] tx_shift_reg;
reg tx_active;
reg [4:0] tx_shift_count;
wire tx_shift_done;
wire tx_valid;



/* TX Section: receive data from Command Processor via AXI-Streaming interface, convert byte-order, and serialize out to TDO 
1. when READY receive an 8-bit data word on S00_AXIS_TDATA (valid and strobe lines are asserted) 
2. capture into 32-bit shift register in 4 phases, then deassert READY
3. shift out data to TDO
*/
reg [1:0] tx_state;

localparam  TX_IDLE = 2'd0,
            TX_DATA = 2'd1,
            TX_READY = 2'd2,
            TX_SHIFT = 2'd3;

// continuous assignments
assign tx_valid = S00_AXIS_TVALID;
assign tx_shift_done = (tx_shift_count == 5'h1f);
assign tdo = tx_shift_reg[0];

assign S00_AXIS_TREADY = tx_ready;


//// TX state machine

// next state logic
always @(posedge jtag_clk or posedge rst)
begin
    if (rst) begin
        tx_state <= TX_IDLE;
        tx_byte_count <= 2'b00;
        tx_byte_order_reg[0] <= 8'h00;
        tx_byte_order_reg[1] <= 8'h00;
        tx_byte_order_reg[2] <= 8'h00;
        tx_byte_order_reg[3] <= 8'h00;
    end
    else begin
        case (tx_state)
            TX_IDLE: begin
                if (tx_ready && tx_valid) begin
                    tx_byte_order_reg[0] <= S00_AXIS_TDATA; // get first byte
                    tx_state <= TX_DATA;
                    tx_byte_count <= 2'b01;
                end
                else tx_state <= TX_IDLE;
            end
            TX_DATA: begin
                if (tx_ready && tx_valid) begin
                    tx_byte_order_reg[tx_byte_count] <= S00_AXIS_TDATA;
                    tx_byte_count <= tx_byte_count + 2'b01;
                    if (tx_byte_count == 2'b11) tx_state <= TX_READY;
                    else                        tx_state <= TX_DATA;
                end
            end
            TX_READY: begin
                if (tx_shift_done && tx_active) tx_state <= TX_IDLE;
                else                            tx_state <= TX_READY;
            end
            TX_SHIFT: begin
                tx_state <= TX_IDLE;
            end
        endcase
    end
end

// output logic
always @(tx_state)
begin
    case (tx_state)
        TX_IDLE: begin
            tx_ready <= 1'b1;   // always start ready 
        end

        TX_DATA: begin
            tx_ready <= 1'b1;
        end

        TX_READY: begin
            tx_ready <= 1'b0;
        end

        TX_SHIFT: begin
            tx_ready <= 1'b0;
        end
    endcase
end



always @(posedge jtag_clk)
begin
        if (capture) begin
            tx_shift_reg <= 32'hcccccccc;   // mark capture
        end
        else begin
            if (tx_shift_done && tx_active) begin
                if (tx_state == TX_READY)  tx_shift_reg <= {tx_byte_order_reg[3],tx_byte_order_reg[2],tx_byte_order_reg[1],tx_byte_order_reg[0]};
                else                       tx_shift_reg <= 32'h00000000;
            end
            else begin
                if (shift) begin
                    tx_shift_reg <= {1'b0, tx_shift_reg[31:1]};
                end
            end
        end
//    end
end

always @(posedge jtag_clk or posedge capture or posedge update)
begin
    if (capture || update) begin
        tx_shift_count <= 5'h00;
    end
    else begin
        tx_shift_count <= tx_shift_count + 5'h01;
    end
end




// RX Section: receive data via JTAG interface, send out to AXI-Streaming Master

assign rx_ready = M00_AXIS_TREADY;
assign rx_start = ({tdi, sync_word_sr} == SYNC_WORD);
assign tx_start = ({tdi, sync_word_sr[30:16]} == SYNC_WORD_READ[15:0]);

always @(posedge jtag_clk or posedge jtag_reset or posedge update) 
begin : shift_sync_word
    if (jtag_reset || update) begin
        sync_word_sr <= 31'h00000000;
        rx_active <= 1'b0;
        tx_active <= 1'b0;
    end
    else begin  // must be rising clock edge of jtag_clk
        if (rx_start) begin
            rx_active <= 1'b1;
        end
        if (tx_start) begin
            tx_active <= 1'b1;
        end
        if (shift) begin
            sync_word_sr <= {tdi, sync_word_sr[SYNC_WORD_LENGTH-2:1]};  // shift TDI in from the left
        end
    end
end

assign byte_received_wire = (deser_counter == 3'h7) && shift && rx_active;  

always @(posedge jtag_clk or posedge jtag_reset)
begin : deserialize
    if (jtag_reset) begin
        deser_byte_reg <= 8'h00;
        deser_counter <= 3'h0;          // otherwise, reset counter
    end
    else begin  // must be rising clock edge
        if ((rx_active && shift)                     // keep counter running for: a) regular data receive phase
            || (~rx_active && byte_complete)) begin  //                           b) when update has fired and rx_active is deasserted, but deserializer needs to run for the trailing end
            deser_counter <= deser_counter + 3'h01;
        end
        else if (rx_active && ~shift) begin
            deser_counter <= deser_counter; // stop counter if shift gets deasserted
        end
        else begin
            deser_counter <= 3'h0;          // otherwise, reset counter
        end
    
        if (byte_received_wire) begin           // when full word has been deserialized, start the byte order conversion (rx_active is implied, since counter is non-zero)
            deser_byte_reg <= {tdi, sync_word_sr[30:24]};  // parallel load SR into endianess converter register
        end
    end
end



always @(posedge jtag_clk)
begin : deser_output_buf
    if (rst) begin
        deser_we_out <= 1'b0;
        deser_byte_out <= 8'h00;
        tlast_out <= 1'b0;
        byte_count <= 2'b00;
        byte_complete <= 1'b0;
    end
    else begin
        
        if (byte_received_wire) begin
            if (!byte_complete) begin
                byte_complete <= 1'b1;      // raise byte_complete in next cycle
            end
        end
        else begin 
            byte_complete <= 1'b0;          // and drop byte_complete one cycle later
            if (byte_complete && rx_ready) begin
                deser_byte_out <= deser_byte_reg;   //[byte_count];
                byte_count <= byte_count + 2'b01;
                deser_we_out <= 1'b1;
                if ((~rx_active || ~shift) && byte_count == 2'b11)
                    tlast_out <= 1'b1;
                else
                    tlast_out <= 1'b0;
            end
            else begin
                deser_byte_out <= 8'h00; 
                tlast_out <= 1'b0;
                deser_we_out <= 1'b0;
            end
        end
        
    end
end

assign M00_AXIS_TDATA = deser_byte_out;
assign M00_AXIS_TVALID = deser_we_out;
assign M00_AXIS_TLAST = tlast_out;


`ifndef XILINX_SIMULATOR
// JTAG BSCANE2 primitive instantiation

    BSCANE2 #(
        .JTAG_CHAIN(HWC_JTAG_SCAN_CHAIN)
    )
    BSCANE2_inst (
        .CAPTURE(capture),
        .DRCK(jtag_clk_gated),
        .RESET(jtag_reset),
        .RUNTEST(runtest),
        .SEL(sel),
        .SHIFT(shift),
        .TCK(jtag_clk),
        .TDI(tdi),
        .TMS(tms),
        .UPDATE(update),
        .TDO(tdo)
    );
`endif


    
endmodule

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
