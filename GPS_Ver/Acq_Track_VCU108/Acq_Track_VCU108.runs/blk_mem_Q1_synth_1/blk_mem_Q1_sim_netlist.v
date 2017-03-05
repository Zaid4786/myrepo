// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
// Date        : Sun Mar  5 02:13:25 2017
// Host        : zaid-LIFEBOOK-A555 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zaid/MTP/myrepo/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.runs/blk_mem_Q1_synth_1/blk_mem_Q1_sim_netlist.v
// Design      : blk_mem_Q1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu095-ffva2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_Q1,blk_mem_gen_v8_3_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_2,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module blk_mem_Q1
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [15:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [15:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [15:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "16" *) 
  (* C_ADDRB_WIDTH = "16" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "8" *) 
  (* C_COUNT_36K_BRAM = "10" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.536252 mW" *) 
  (* C_FAMILY = "virtexu" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_Q1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_Q1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "40000" *) 
  (* C_READ_DEPTH_B = "40000" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "40000" *) 
  (* C_WRITE_DEPTH_B = "40000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "virtexu" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_Q1_blk_mem_gen_v8_3_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[15:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[15:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_Q1_bindec
   (ena_array,
    ram_ena,
    addra);
  output [7:0]ena_array;
  output ram_ena;
  input [3:0]addra;

  wire [3:0]addra;
  wire [7:0]ena_array;
  wire ram_ena;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT_inferred__0
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[0]),
        .I3(addra[1]),
        .O(ena_array[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT_inferred__1
       (.I0(addra[2]),
        .I1(addra[3]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT_inferred__3
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT_inferred__4
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[2]),
        .I3(addra[0]),
        .O(ena_array[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT_inferred__5
       (.I0(addra[3]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[1]),
        .O(ena_array[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    ENOUT_inferred__6
       (.I0(addra[3]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(addra[0]),
        .O(ena_array[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    ENOUT_inferred__7
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ena_array[7]));
  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT_inferred__8
       (.I0(addra[2]),
        .I1(addra[1]),
        .I2(addra[3]),
        .I3(addra[0]),
        .O(ram_ena));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_Q1_blk_mem_gen_generic_cstr
   (douta,
    addra,
    clka,
    sleep,
    dina,
    wea);
  output [11:0]douta;
  input [15:0]addra;
  input clka;
  input sleep;
  input [11:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire [8:0]ena_array;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire ram_douta;
  wire ram_ena__0;
  wire ram_ena_n_0;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[15:12]),
        .ena_array({ena_array[8:4],ena_array[2:0]}),
        .ram_ena(ram_ena__0));
  blk_mem_Q1_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_0 ),
        .\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\ramloop[4].ram.r_n_0 ),
        .DOUTADOUT(\ramloop[1].ram.r_n_0 ),
        .addra(addra[15:12]),
        .clka(clka),
        .douta(douta),
        .p_11_out(p_11_out),
        .p_15_out(p_15_out),
        .p_19_out(p_19_out),
        .p_23_out(p_23_out),
        .p_27_out(p_27_out),
        .p_31_out(p_31_out),
        .p_35_out(p_35_out),
        .p_39_out(p_39_out),
        .p_3_out(p_3_out),
        .p_7_out(p_7_out));
  LUT1 #(
    .INIT(2'h1)) 
    ram_ena
       (.I0(addra[15]),
        .O(ram_ena_n_0));
  blk_mem_Q1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[0]),
        .\douta[0] (ram_douta),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[5]),
        .p_19_out(p_19_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[6]),
        .p_15_out(p_15_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[7]),
        .p_11_out(p_11_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[8]),
        .p_7_out(p_7_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .p_3_out(p_3_out),
        .ram_ena(ram_ena__0),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOUTADOUT(\ramloop[1].ram.r_n_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[1]),
        .\douta[1] (\ramloop[2].ram.r_n_0 ),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .\douta[2] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 }),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[14:0]),
        .\addra[15] (ram_ena_n_0),
        .clka(clka),
        .dina(dina[2]),
        .\douta[2] (\ramloop[4].ram.r_n_0 ),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[0]),
        .p_39_out(p_39_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[1]),
        .p_35_out(p_35_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[2]),
        .p_31_out(p_31_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[11:3]),
        .p_27_out(p_27_out),
        .sleep(sleep),
        .wea(wea));
  blk_mem_Q1_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .clka(clka),
        .dina(dina[11:3]),
        .ena_array(ena_array[4]),
        .p_23_out(p_23_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_Q1_blk_mem_gen_mux
   (douta,
    p_3_out,
    p_7_out,
    addra,
    clka,
    DOUTADOUT,
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ,
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    p_27_out,
    p_31_out,
    p_35_out,
    p_39_out,
    p_11_out,
    p_15_out,
    p_19_out,
    p_23_out);
  output [11:0]douta;
  input [8:0]p_3_out;
  input [8:0]p_7_out;
  input [3:0]addra;
  input clka;
  input [0:0]DOUTADOUT;
  input [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  input [1:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  input [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input [8:0]p_27_out;
  input [8:0]p_31_out;
  input [8:0]p_35_out;
  input [8:0]p_39_out;
  input [8:0]p_11_out;
  input [8:0]p_15_out;
  input [8:0]p_19_out;
  input [8:0]p_23_out;

  wire [1:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram ;
  wire [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [0:0]DOUTADOUT;
  wire [3:0]addra;
  wire clka;
  wire [11:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_3_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_3_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_3_n_0 ;
  wire [8:0]p_11_out;
  wire [8:0]p_15_out;
  wire [8:0]p_19_out;
  wire [8:0]p_23_out;
  wire [8:0]p_27_out;
  wire [8:0]p_31_out;
  wire [8:0]p_35_out;
  wire [8:0]p_39_out;
  wire [8:0]p_3_out;
  wire [8:0]p_7_out;
  wire [3:0]sel_pipe;

  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0 
       (.I0(DOUTADOUT),
        .I1(sel_pipe[2]),
        .I2(sel_pipe[3]),
        .I3(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .O(douta[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[10]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[10]_INST_0_i_3_n_0 ),
        .O(douta[10]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[10]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[7]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[7]),
        .I4(sel_pipe[2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(p_11_out[7]),
        .I1(p_15_out[7]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[7]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[7]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_3 
       (.I0(p_27_out[7]),
        .I1(p_31_out[7]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[7]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[7]),
        .O(\douta[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[11]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[11]_INST_0_i_3_n_0 ),
        .O(douta[11]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[11]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[8]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[8]),
        .I4(sel_pipe[2]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(p_11_out[8]),
        .I1(p_15_out[8]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[8]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[8]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_3 
       (.I0(p_27_out[8]),
        .I1(p_31_out[8]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[8]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[8]),
        .O(\douta[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[1]_INST_0 
       (.I0(sel_pipe[1]),
        .I1(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [0]),
        .I2(sel_pipe[2]),
        .I3(sel_pipe[3]),
        .I4(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .O(douta[1]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \douta[2]_INST_0 
       (.I0(sel_pipe[1]),
        .I1(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram [1]),
        .I2(sel_pipe[2]),
        .I3(sel_pipe[3]),
        .I4(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ),
        .O(douta[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[3]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[0]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[0]),
        .I4(sel_pipe[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_2 
       (.I0(p_11_out[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[0]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[0]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_3 
       (.I0(p_27_out[0]),
        .I1(p_31_out[0]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[0]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[0]),
        .O(\douta[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[4]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[1]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[1]),
        .I4(sel_pipe[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_2 
       (.I0(p_11_out[1]),
        .I1(p_15_out[1]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[1]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[1]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_3 
       (.I0(p_27_out[1]),
        .I1(p_31_out[1]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[1]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[1]),
        .O(\douta[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[5]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[2]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[2]),
        .I4(sel_pipe[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_2 
       (.I0(p_11_out[2]),
        .I1(p_15_out[2]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[2]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[2]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_3 
       (.I0(p_27_out[2]),
        .I1(p_31_out[2]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[2]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[2]),
        .O(\douta[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[6]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[3]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[3]),
        .I4(sel_pipe[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_2 
       (.I0(p_11_out[3]),
        .I1(p_15_out[3]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[3]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[3]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_3 
       (.I0(p_27_out[3]),
        .I1(p_31_out[3]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[3]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[3]),
        .O(\douta[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[7]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[4]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[4]),
        .I4(sel_pipe[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(p_11_out[4]),
        .I1(p_15_out[4]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[4]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[4]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_3 
       (.I0(p_27_out[4]),
        .I1(p_31_out[4]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[4]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[4]),
        .O(\douta[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[8]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[8]_INST_0_i_3_n_0 ),
        .O(douta[8]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[8]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[5]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[5]),
        .I4(sel_pipe[2]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(p_11_out[5]),
        .I1(p_15_out[5]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[5]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[5]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_3 
       (.I0(p_27_out[5]),
        .I1(p_31_out[5]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[5]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[5]),
        .O(\douta[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[3]),
        .I2(\douta[9]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[2]),
        .I4(\douta[9]_INST_0_i_3_n_0 ),
        .O(douta[9]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \douta[9]_INST_0_i_1 
       (.I0(sel_pipe[1]),
        .I1(p_3_out[6]),
        .I2(sel_pipe[0]),
        .I3(p_7_out[6]),
        .I4(sel_pipe[2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(p_11_out[6]),
        .I1(p_15_out[6]),
        .I2(sel_pipe[1]),
        .I3(p_19_out[6]),
        .I4(sel_pipe[0]),
        .I5(p_23_out[6]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_3 
       (.I0(p_27_out[6]),
        .I1(p_31_out[6]),
        .I2(sel_pipe[1]),
        .I3(p_35_out[6]),
        .I4(sel_pipe[0]),
        .I5(p_39_out[6]),
        .O(\douta[9]_INST_0_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width
   (\douta[0] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[0] ;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .dina(dina),
        .\douta[0] (\douta[0] ),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized0
   (DOUTADOUT,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]DOUTADOUT;
  input clka;
  input sleep;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [0:0]DOUTADOUT;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOUTADOUT(DOUTADOUT),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[1] ;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .dina(dina),
        .\douta[1] (\douta[1] ),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized10
   (p_15_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_15_out(p_15_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized11
   (p_11_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_11_out(p_11_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized12
   (p_7_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_7_out(p_7_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized13
   (p_3_out,
    clka,
    ram_ena,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_3_out;
  input clka;
  input ram_ena;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]p_3_out;
  wire ram_ena;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .p_3_out(p_3_out),
        .ram_ena(ram_ena),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized2
   (\douta[2] ,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [1:0]\douta[2] ;
  input clka;
  input sleep;
  input [15:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]\douta[2] ;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .\douta[2] (\douta[2] ),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized3
   (\douta[2] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[2] ;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .clka(clka),
        .dina(dina),
        .\douta[2] (\douta[2] ),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized4
   (p_39_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_39_out(p_39_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized5
   (p_35_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_35_out(p_35_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized6
   (p_31_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_31_out(p_31_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized7
   (p_27_out,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_27_out;
  input clka;
  input sleep;
  input [15:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]p_27_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .p_27_out(p_27_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized8
   (p_23_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_23_out(p_23_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_Q1_blk_mem_gen_prim_width__parameterized9
   (p_19_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .p_19_out(p_19_out),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init
   (\douta[0] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[0] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[0] ;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:1],\douta[0] }),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOUTADOUT,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]DOUTADOUT;
  input clka;
  input sleep;
  input [15:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ;
  wire [0:0]DOUTADOUT;
  wire [15:0]addra;
  wire clka;
  wire [0:0]dina;
  wire sleep;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;
  wire [15:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra[13:0]),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED [15:1],DOUTADOUT}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED [15:0]),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(sleep),
        .WEA({1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0 
       (.I0(addra[14]),
        .I1(addra[15]),
        .O(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[1] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[1] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[1] ;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h93A2EE519C0EE89EAD403D55C1C3F1155DFA7E51E7335A0D0618D2E5442A1D77),
    .INIT_01(256'h80B2A0CB4C136E169EE1066F0AF2266AFDE43520295A4C065C13A463545BE1DA),
    .INIT_02(256'h5977A43D840147AE097C6165995CA0CB2997183C7A43CA437CA2505C7D442936),
    .INIT_03(256'h42DEAFF390C60AE23F0CB189711A28CA807D657C6AA60CCB1BF7ADFDC16F9519),
    .INIT_04(256'h65178EB89B54EE55236AD66EAFFFC71C164994E694CE6263241ED501A6AD8B4C),
    .INIT_05(256'hD676BB2FF82450FFEDCA0ACFAF4209D93635795EA50E6B037DC844F813202A7D),
    .INIT_06(256'h20E157B6C5E89A69E7ED04F42FE8885E0B312E20AA5ADB601ACF43C124585B55),
    .INIT_07(256'h3129B617FA8088A781E79CC61A14C334EFF583DA22ABEA3F9A10AADB3DC0043E),
    .INIT_08(256'h19CDD830CF752317F7EEA7E56C9874D5D02C784B5CF89CC930F01A7BA0B0142A),
    .INIT_09(256'h4397985F289D3D8D7CB7FBA96CD282E205E63B16B0FA5005F2271D529255FFA6),
    .INIT_0A(256'h78CA97EF69D3599AF6B37F02BF3D273B30ECF23642BF2609F3DB35D9164316AE),
    .INIT_0B(256'h924C8B0454E25FA41889CB4B806FE0221CCA2392582AB02E47CE9072ED6A72C0),
    .INIT_0C(256'h00A478F30678A24A8888E4920BE2A4FE0EF84177419C32B5427B81B8B355D6C3),
    .INIT_0D(256'hFAC3B5726F0A5BFD45731F20370FDE972F1F7266DFBB53EC243082958D3536A0),
    .INIT_0E(256'h0C8C0FEC0D2880EFDC539D228BCD54AA440F30BE324177B7291025E1B948599C),
    .INIT_0F(256'h9EBAFD5AD9C0F4671E27BE6C495E49A512AEFEC3AEE4212838D110721A8BCACF),
    .INIT_10(256'h8DE21B7EC89E84DF3F79E068761D3E127097DD3693956B4E553635F6CA5D53D6),
    .INIT_11(256'hF93FDA83E2EBD984C48157690DE666C3373B3E77454F3DD896AD4E7844E43B10),
    .INIT_12(256'h62507541118DB2702FD89DE866D7D504CB0F4B9AFDD1B00834A60918AB9F3557),
    .INIT_13(256'h06F3F42F054D10FA86C5E35347F3AA7F5AB0A8C40E38593D3858E243D1480FEC),
    .INIT_14(256'h26E5FD145F8651E33CC991D44913DC913BD8619CD91F1E7164721751696FB55C),
    .INIT_15(256'hD1FFE7B564C528744D44092CBB08F8A526B4E35A435708212775C03EBC084432),
    .INIT_16(256'h176574F468C2017F5E34964E40349CE188C136FE558B17ADAF8D84D03736FF5A),
    .INIT_17(256'hB68DCD17B45355671245D670F3E7DB318588AF57C578DD5521C9F83B9D3BBE1E),
    .INIT_18(256'h272E7E8089A7BAD62F9183DF27BEF348B8BBBBB890A0F631B276BA2698016D50),
    .INIT_19(256'hABCC251EC20B181BC5BE65234574A7F8379E5B455FB09BBAD0511A830BB1F04E),
    .INIT_1A(256'h67B53F62AC6EA0808ACB850534E03457C41CC01F5CFF1A3760A34844A9E4DB40),
    .INIT_1B(256'hE390DDB443A61D4284F4CFF6BABD9586D87D90A905A1A43D54DE1E17B30988BD),
    .INIT_1C(256'h26EAD1498DABBD35E1D7B2C4D19EBB1ADF42E5F79D0649722750BEE07409D188),
    .INIT_1D(256'h75851ED4DC9BC6BBEF48FCF43CAF5707623F30D8CB15F47CD69E22120E16BA1E),
    .INIT_1E(256'hD27116A6074E347D57974CC1DFFE3513C4B7B4548FC06ABFACFADD41E1B64B7E),
    .INIT_1F(256'h3EC1BC266277EF67015B810FC99EB4FEFA906EC43AE0BFF8F925BB8CE35A111F),
    .INIT_20(256'h63F42267F9CB5BCF91E1258EE85F780A11BA93B4B9E886C1439E50FFB29AC073),
    .INIT_21(256'h7F22F0DA1F15F3B0562F915650B1D6849CE75A7859847A1680A441A214A9A324),
    .INIT_22(256'h3E9CE85E205C7FF5FE5E4523487FCC6A11EC257A21160A8ED701CC1BD6CA022D),
    .INIT_23(256'h74EE6C2903A65C3A40FA77D7EB1056730FCDF7254C0939F6B152E8D0F8A1468F),
    .INIT_24(256'h10C89DCA340BD5B90457952AA416B4CC4FE8A1FECC4C2895696D03B8F878B3A8),
    .INIT_25(256'hB9EE8DB9AB045116F50D3CB48FC145E5B5B84568CE29F0E350F7FBB8B287B47D),
    .INIT_26(256'hC343A81B558604B0634DECFC053203280C7BB8FE4270976D9B579F1DB9758C35),
    .INIT_27(256'h1361608FAD1AE57D56D1D7299353384B95D9147E735B6FE7D4E0DC38C292E129),
    .INIT_28(256'hB85ACB6F62B76C847EA298B51D0DA1DE030EFA32A85CA4B6579C04A67F350DA4),
    .INIT_29(256'h7B288F68B8E34AF84C30BFE0B088F43485F081398FA033160B9C2B8E65BE7067),
    .INIT_2A(256'hB51D1A6A9100EE0B2258C596649BA373F391083AA9E76DE8A6EF2A32A1E41612),
    .INIT_2B(256'hB6D397C0E972795700FED2849D6AB5A69310336785B3156315B2DA8DB8EAF0B1),
    .INIT_2C(256'h85E660F60153999C0ABE55D86C7D6FD4488EE8B48EDB596E8EA5735BAF3C30CE),
    .INIT_2D(256'h122884B1205654FACEC8F06983BF216B9815AB69D5F7C6CFE266FF3D1ADFC74C),
    .INIT_2E(256'h5541BB104C4A6FFBDE251F36CDC8B1D4CDF706F7AF93A6DB69E6CB9B283F1D22),
    .INIT_2F(256'h3746F799E8C916486E29D35B86FC27A2A3BB79E3965B4018434CED848D438DBE),
    .INIT_30(256'h686620372476C0015F24ED35F3F3F292361D75503DE46CDEB5FCCA0C9E397248),
    .INIT_31(256'h2F8DCF9EFECAA74051AC9BA9C09708358C20EB4FF4F65171CF37C195D383064F),
    .INIT_32(256'h4C6AA69FC8DA2DCB4AEA7E8D3630ECDBD377A5EEED44AEBEDC99EF1E7E640D6A),
    .INIT_33(256'hA1805646C365380E6A3B00C2B002D2231BFBBD1F8DB6C4AA2D1C6A93C8E728C6),
    .INIT_34(256'hCF73FD8271C9FD5EA027A967434D077532610A762295DAAE07A36FF3A6B3ECC0),
    .INIT_35(256'hB3DFDE3BF1C961A2F7CD189A2DBF8F8F1D050B8FBA32D6BA112342BEA6395AFE),
    .INIT_36(256'h45D6A6627D6679C2FCCBB5C82C2C5935AB1D9A395BF73D8BD5786014C9CA315F),
    .INIT_37(256'h95D2F486CAA152BC34A498CC5A9DC8239982CBB2A9B2B4F204889C7A3FA4B29F),
    .INIT_38(256'hA604D0022A479EEFA18F4A0A2083152A0EB6B116B0E2FA0DA1EFC79D389A775D),
    .INIT_39(256'hD092D57C06F4EF231DCC100B23DF7FB86F77292FDABA7B560F56D04308284370),
    .INIT_3A(256'h20BE643D946B145BE42B5AEB9EB09FF2E4EDF2FB94FF4D34A9E099E3337777D9),
    .INIT_3B(256'h8E6ED06845F09C544342F6A3C9E1B71F3539824C03348B605DBD7B7FB3D78E92),
    .INIT_3C(256'h0FD0D5794007A77CCCC934F656BA7030A506CB0F59F95F7F50DB29A9F2ADB32D),
    .INIT_3D(256'h1F99CBDF18E9CD07B245D21709193497198D74DCCC2C571F045E6C217C0B1C10),
    .INIT_3E(256'h4B83FD8AC8C37E7D56BE127B8FDF64AC7154F11A97406872BD708B800794B540),
    .INIT_3F(256'hD7A9DFDF6E5294DDFB8C72CE75BD5994107F197E3FE786A71D15080D44B9BF02),
    .INIT_40(256'h685DC1209F77FB63B0A08CB2297F6AF93C30A828EFCEE237E8C8C0F6106E28B9),
    .INIT_41(256'hCC2517F2C1FB7DC6783D2982156D7DDA5098A4913D24711E08DA581DE0E9B0B7),
    .INIT_42(256'hB433060B92956D089004C7DD7FDC4494FE432701551DD33181CBEA66BA36A723),
    .INIT_43(256'h59655CD391BCB116302A4770F242B355D343B3CD8C8EF1D3EAA46E4DDBC01003),
    .INIT_44(256'h64E922C33E7A3998D831D1A10A4526754F1FCC42AA5F971C944142292FB1228C),
    .INIT_45(256'h2C02F7563703BA9B90976D2FED1BB421CF53C8D01C831FF5450C9C019E22C0C6),
    .INIT_46(256'h3EBF76D79A1DBBFBDE64F60D6E3A7D0DB75E910047B05A8DFC71D128D3EED913),
    .INIT_47(256'h3DB8CE52DCF05CADA1091845938CBF6C47F481475A89FB4CC7B57CA06CE20200),
    .INIT_48(256'h5475E5D35907BFF81ED3C07BE6C1819D9E212EA796FC297032097B7812017FC9),
    .INIT_49(256'hEE7091DF4AF9B03DA8B052D890B79C153A6BEA2065B9D7672B1EB49840A194EC),
    .INIT_4A(256'hB5BB998754F97377AF5A78C0D5AB810B33B0BB0F4B93109FD0A3902AAEE38BAF),
    .INIT_4B(256'hDB18B08DDDDDE3BCAF6453EEF3B4CE2114E7B0B5E4EE9742ABE79B31D3A95ACC),
    .INIT_4C(256'h43021005C920FDE0498C6B374868D4D74EA27FA05916B89AEC14B77EB6A062F5),
    .INIT_4D(256'h204156B55AE7377F39C37E3A84C7AE168C7C2BFFEDF56B91B06456D13022A07F),
    .INIT_4E(256'h36AF6447D3048F78C72FEC4B59B2CABC5BEFDC1E9E75EBA525F90140A9045D22),
    .INIT_4F(256'h519E50503BE2FE5F633D05BD9175C93B7520917354FBB469AA8AD5741619A10D),
    .INIT_50(256'h3EEF551C99584EFDE55C0934DD078CAAA95BB348A1CCF9F1C6F085F130C265CB),
    .INIT_51(256'hC05F5FE0F8FA2BB7B5D9E1CEC0980CFA1EB91601CD7BD2992245B1F9ED3B626A),
    .INIT_52(256'hF151FD92DBA7035E563312296F1F87CE1C27A0444A7862E7DB16266758B60F13),
    .INIT_53(256'h6F350AA6F4E89BCD1EBCC85C4E1B6BA42C6CBE1968F1582B16887683BD22BFA2),
    .INIT_54(256'h1EE6D022ECEABD50149386CB067CE6503E81CEE0ABA7AF45BD8200A9EEB2CC37),
    .INIT_55(256'h06D37EED9E929D0A5BB025649CFB2E73A566C08B5DA9C241F9D129B215C5CD94),
    .INIT_56(256'hF735731195AB894AB6A2391499CC6B59548186DFCA51D43088B3A362DE985246),
    .INIT_57(256'h1918C8CBB277DD88A2DA7E6FF6820D6DC030BF3FA17EC465FF3045714EB6371F),
    .INIT_58(256'h3BC3F769C4572B7C42A915772926C17F71E00B2CF84EC02BE50D67D64BAB3F08),
    .INIT_59(256'h1CEE5E62148206E4C44F7A6DDA91B3AF64BD4D7F2B1CB81539D289192FD9F1CA),
    .INIT_5A(256'h972C493DB188EBD3BC69485A62A145FD364BA2EA59F68C0552A382D82F7EA44C),
    .INIT_5B(256'hAA0E70C27A242B1A5170168EB000D81BC6EBD0172E2C88335A372486350CE69D),
    .INIT_5C(256'hFDEE7CD9FA16655523BEA96DAAB90347B6353F5A80DAD8C9F24C9AFCD1111B90),
    .INIT_5D(256'h189737047980030DACD23B9F58FE96A485DE398067EBD1209356770BB128FE98),
    .INIT_5E(256'h91BF8AEAA6634BA86C96F79E033C228423789005081D0C3D9D23EBD2537F62BF),
    .INIT_5F(256'h24E23BBE70CB37F703615EE2F02FD6311C15BE46D4010E9EBC5136728AA8933E),
    .INIT_60(256'hEF0042D3547354D3B2916EBE7148298C6589E413BD77E433BFD5EBDE6A7985F7),
    .INIT_61(256'h4F998B960C9B72115A58B5932C203D1C59BE1C428D190A3041E7DEAA4D971EA2),
    .INIT_62(256'h5C085601C0D2939AD40F411737296AC158C4C6DD964D72E37282A133D1A3D8E8),
    .INIT_63(256'h945B4F573FD7083EFC9A0227BD92DFBF4755FB3DD2B6ED5067F60932FB64C63E),
    .INIT_64(256'hE06250EA7281428912FF9B0CE443C3EE5ADCFA4FB5BC16FDB19629EF6E5D5E24),
    .INIT_65(256'h48B12997216A2D9A046BB66171EF0796B349204160D579C35ADAB887EFAE15D2),
    .INIT_66(256'hEEAB8DD6CE0CC005A31C793741A2C2ECC575BF7726D7CAEE67E57AEBBAEFF870),
    .INIT_67(256'h07E658101967FD65D27990AA8EBB66E3DD139FB6A29C027CF2DD5B692768C694),
    .INIT_68(256'h9DDA3B348F894F06667DF2970AC27FC4EEC21EEAC3065EC9F2E0BC87A2DEC694),
    .INIT_69(256'hC0009164C13862DD95B12A399B5B2126B7D5DA5B0354A3109C738D3DC7580677),
    .INIT_6A(256'hD0B6B58ADC705D61420C4EC5369436718791C63DB0F7634C226EB79C318EFC1B),
    .INIT_6B(256'h38165C91FED3D3BC42129F2091EF7F51A14ED4B3A22B68E0FEEE309F40182E07),
    .INIT_6C(256'h063931EDFDCD8AE652CBBAE385B8A2DECC7295657AD5B5890820281F898CF992),
    .INIT_6D(256'h6F0D261B1314B0C1187533B614D27AD6AFDD81CCAE16F79789780D175B588D4C),
    .INIT_6E(256'hB26D0466CB2FBF576E73547852FAC2E47653A0362AF8B5E9D696966168A4366A),
    .INIT_6F(256'h127A0263A44F03751B7171C8F41EA199013CC76890DA77CFA620F03BDC7698B0),
    .INIT_70(256'h1E210258184930820130C5EA50294D6EDBB139574EE7BB97772D69BC1C22BC88),
    .INIT_71(256'hBE544EC4FDACBAF291E9352733503694F2DDCB59D9EBCD29A31781872FF6FC51),
    .INIT_72(256'h347404A883D0DBC5D2C8CC25B2D1D6DF163E1B8C2A2DCD61305EB89F505793EE),
    .INIT_73(256'hD7673896B168157312B4DEE62FE5D8CA4632818C00444C71B5E4EC1279A489FA),
    .INIT_74(256'h2C711467429B0D5333B5066322F4744121D842D2C3F203059DD593DE572F38AD),
    .INIT_75(256'hB0007878D1570AFD655CB92E45746459309380E12B560D2BDCF6F95A93A5FACC),
    .INIT_76(256'h90BE24FB0FB313862BDCCEF6B56965D17539DBB7F1845B226976D29B40CCD08C),
    .INIT_77(256'h2700755BBC138EBC306CD72BEB72B5F4DB48685473677E186D7AE8C2396A2840),
    .INIT_78(256'h7E57335F78B9D3551D46A143B289E4C4B92A63EA07B9FF823E3477061A8DAC86),
    .INIT_79(256'h69408501A935163D23ACE21B602FB1ADFD830A8D9E0CC6962FB62C2E1083F021),
    .INIT_7A(256'h97F5006826EA28A50218B1097FD6CD0ED890189B9211F55CFC56225F1AB51A33),
    .INIT_7B(256'h2C19443B80F64440F38A6D901C0AA496F4F0F5DBC3DF80D94E5D792599C05F61),
    .INIT_7C(256'hF3DD389A2C926A40505F31CA712DC36582D710CE6A509A01DEE090D53173B181),
    .INIT_7D(256'h244590D76DE78C0230E2B692AA60E6A561C3DE8B802CC57A24FDCD3F6DC4E92B),
    .INIT_7E(256'h060E1DBB3DCE58F288B14A1BF75FE4ED96CED08B168F3B4E0BEAA9AF64CD00C7),
    .INIT_7F(256'h2972E62715719BFEC8354760650FE8F5BDF8229E766BB63213559F751D75F19C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:1],\douta[1] }),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized10
   (p_15_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0018963C07E0FA8020A27F7D611417C1B807FE3C98981919CDEA041873B86C87),
    .INITP_01(256'hC72319070C060F43D9A9C70073D80F30EE4BF87D4A9976CF902207C0983CB3F0),
    .INITP_02(256'hFE3DB3BC9B18730829ECFE6DEC3BEFF4E4033ACB98808D3E1FEFF0DF86D84133),
    .INITP_03(256'h56F6F74BBD3AE45662BD8E33B3EF810274779FFBFBBE7FC68B2D4C54156DA874),
    .INITP_04(256'h99FE03F02385FA502DE80F04E4D81C378F8F0E6846D80192AC049FD06015D9F0),
    .INITP_05(256'h3EF01853F0F3ADB3434FB7C8FEC8E68FF1CC336D23F1D8CE5009E4DFF6B8042C),
    .INITP_06(256'hE7E58DC9E07480A9EE1B721000F7FC03BBE276869C6FBE49F989CF3D3C068F80),
    .INITP_07(256'h7156C0C1980FE6CDE93FBB1FC0C00F00D6F07BCB2A5F62F4E44478FB27A0C050),
    .INITP_08(256'h0424B09D9D18669E074073E7943BFF19C318120246C89FC03D83ED07C17D2B76),
    .INITP_09(256'h67AF7AC3C3D8912B5BDB0F74B8FDC0F048FC48FFF259125E014D8CB2F8423B0E),
    .INITP_0A(256'h96D280602CE6071CC0C773BE03DF0892C658F3C06809D614A19213E4C2E03246),
    .INITP_0B(256'h47BE03C4F635E82D683B38C308716A6C194DD4720FAFD88E6BC3918702838276),
    .INITP_0C(256'hF327B11B4C2533098DA1C3F7D100B3817387489D3E700FF1CD9D7EE0238094AC),
    .INITP_0D(256'h121F001ED0EE6C18734329F15BC304B0678CEDF3A8A3C323C07C771FC3F00F78),
    .INITP_0E(256'h8ECD4C790C8D603CE5018D04F683A0639FDF799CD3FCFC824D43271A4906113F),
    .INITP_0F(256'h189A2E07004F3C0E3F7C31EB5309CEE38F404EFFD00FB2D3E03E7D00EE1F327F),
    .INIT_00(256'h01FCFAED0701FFEEFF0AF8F1F904090B06ECEB03EEF40503F505010F06F6F4F1),
    .INIT_01(256'hFFFE0708F3FD07F4FBFFF007FD00FB020E1000080DFC0F0D0E0B08FEFB000909),
    .INIT_02(256'hF80C13FEF20E1E0CFB0407F5F7030F16030F01EAF30308FC0C0300FFF50E02F7),
    .INIT_03(256'hFC01F2F3FB061B060009090606F1F4FBFBF2E6F3FEF8EF030505FBF9FBF80201),
    .INIT_04(256'h06F8F4010C0807FA171600F104F80B0B090803FF0AFEF4F6F7F70A10111409F7),
    .INIT_05(256'h1009F10800060805F102FA081803FA090AFEFCF7F8F7EAF704EEFBF4F2F608FC),
    .INIT_06(256'h0414021608FFF1FBFCFDFB0D01081413F8F8FCFAFE02F808F405020400010506),
    .INIT_07(256'h21110507020509000A1312F6FA00030AF10D01EF22F4F809010BF5FDFBF10B07),
    .INIT_08(256'hFF0306FCF90600050800F8F6FDFC0009FF12FCE50601F0F5F6E9F1F90408060B),
    .INIT_09(256'hFE0804FE07030910060EFD131608ED070909000103FFFFFAF9F60B040403030D),
    .INIT_0A(256'h04FF0108FF06F700FE000CFDFD0915FA01FFFCFE0BFDFF07FDF60401F5FAF4F6),
    .INIT_0B(256'hF3E4FF0EFBFAFB0501F90F0AFB09FBFAE4FCF9F4F3040A0405F0F6F2F9F303FB),
    .INIT_0C(256'h05F7EEF60303F5F6F7F807F1F4180B0606120F02F9FBEBF30605F8F908010C08),
    .INIT_0D(256'hF8FB02FDF6031EF4FE06F209F50A02F1F3FB080205F9F9F608091A1615200403),
    .INIT_0E(256'h0B130303F0F2050C0911070003FAF80212040101FFF3F2FD08F80907080DF4E7),
    .INIT_0F(256'hECFC110501F3FBFB060BFF010B01FBFD100E07F8FA0C08F9040C010904FAFFF2),
    .INIT_10(256'hFD0C0C1002E9EC0CFAEE0FF9F502000417FD040009100EFE0307F8F90905F2EB),
    .INIT_11(256'h051315F6FFF5F5F6FFFCEF04F4F6FBF2F6F6EEFB00010001EEFD0AFAF8F6EDEF),
    .INIT_12(256'hEF0606FFFF000914FB010D0D03070D02FB0C1703F3FF06FE0C0AF0EFECFFFC08),
    .INIT_13(256'hFEFEE70B00FB0F01010103000109F2F31608F8FBFE02FD01F2F90D07EA00F9EC),
    .INIT_14(256'hEBEBF009F1F615070805FDFEF708FEF4FBFBF105F6FBEFF5FAF7F8F404FA0B03),
    .INIT_15(256'h1013FB01F50005F2FFF5FE00F7F30500E8F6F0FEFDFEFB0101F6F400FFF803F2),
    .INIT_16(256'hFC1200F1F107FCE9050401F9F90C070B0BFBF1F30808FFED0D0F0306FD1A0705),
    .INIT_17(256'hF3F1ECFCFAF8F40D0104F0E9FFFF07F1F804F7FE0103FBFBFA04FAF4F9F80303),
    .INIT_18(256'h0C1207FD0DFF09FE00FEFC0EFDFA08FDF005F911FF00170001F4FAF207FC0E0C),
    .INIT_19(256'hFB071306F500FDF90607FC00F8FF08FE01EC0514FEF7050303FD08F605FB0209),
    .INIT_1A(256'hFDF9F3F7F800FFFEF805FBF7FBE9F80B02FFF6FCF6F3FCFBFCF6090E0AFCEE00),
    .INIT_1B(256'h0BF9F0F401EC011002FAECFC05F8EDE9E30514F7F4FEF0F0FCF8F4F9F100F8E6),
    .INIT_1C(256'hF503F8F4140DF9FEF6F7FA0DFAE9F3F1F8020811110000FE021704050D04F901),
    .INIT_1D(256'h10EFEE060D0FFF03FF1AF9FAF9EF0FF5E6010F06F1EBFD0B0F03F5FF0200FBF0),
    .INIT_1E(256'hF60FF8FAFDFA02FA0901F8FBED01FF00EEF8F70E13FF030B09FD03FA02F8E608),
    .INIT_1F(256'h04F702FD04F4FD04F2F9FEE101F9EE08F1FCE7E704F8ECE703F20104FD06F0FB),
    .INIT_20(256'h17F9F80903010406060506FB0BFE01FEE7F604FCFE0302FDFDFFEBFD0010000E),
    .INIT_21(256'hFE03FE07FFF80A02060D081E0BFB0102F81204E0DFF5FEE5F3F105FB040B0505),
    .INIT_22(256'h0AFF0D0A07F3F80CFBF111F9FC10190106000613030605F6F20509FD0A03F80E),
    .INIT_23(256'hFA010F07FFF1EDEAE4050803FEF1ECEF01010006F7EEF8110DF6EF02FF03010E),
    .INIT_24(256'hFDF7F90107FB030DF4EF09F8F9130F0018120BF7F3F51D160306FBF801FBFAEC),
    .INIT_25(256'h130BFD04FCFE0AF4FBFEFF00EE0A0C1A12070201FEF0FBFE0D00030E04ED0905),
    .INIT_26(256'h1303F90D0002F7ECEB040E0F14FD01ECF9F2F6FCF709F40004FE02FE0805120B),
    .INIT_27(256'hFC0816FEF10802F6F4F7FAF7F0E9F7010B0505050908F3F5F2FCF9F207070105),
    .INIT_28(256'hF5F2F1F209FFFA03F711FCF4F605050F0C040E0005F00B000210FF03F4FA0400),
    .INIT_29(256'h01FB0FF60509050B04060201FC0003FCFBEFF90A02FE1107FEFF15F3E1FFF9FE),
    .INIT_2A(256'h0907FD0A1313F9E6FBF5EBFA130405F8F1FB09F5FB010400EFF50805FFFCFD09),
    .INIT_2B(256'hF7FEFEF5050406FFFBFE0507FEFD04000903F8FD0606FDF80EF3F505F3FF05F4),
    .INIT_2C(256'hFEFAFFF4F4F2F700EBF00109FB020C06EFFAFF0705EEFE00FF010A0AFDFFFDF7),
    .INIT_2D(256'h03FC130A0715FFF201FC0207F8F3EAF4F304F7FE04E0F7F6F9F20508F3080901),
    .INIT_2E(256'hEDF0FBFD021F0E04FCF8FFEC0D01EEFCF103FF00F9FF1FFFF001F7FB0909F7EC),
    .INIT_2F(256'h0202EFE9F5F0FA04F9F9EEFC0106031B140D06F3ED03090109FE04FE080AFBF1),
    .INIT_30(256'h0000EEFCF9FB0709110D080B07F0FC07FD100D0BF8FEF9FCFB04040408090703),
    .INIT_31(256'hE9EBF8ECF60305FEF302140BFF0E04F9FCFD0701F8FDF7FB0C19FEF4F7F912F6),
    .INIT_32(256'hEF060AF6F7FE090906FEFE03FEFAFAF3FE04FCE4F9FCFD0C03FE0207FC0908F4),
    .INIT_33(256'hF803F8F2FC04F6F1F0F6FB050E05F30B0BFDFDF607F8F500F90B120409F7EB04),
    .INIT_34(256'h10120B101C080F0CFEFEF3F602FDFFFAF7EBE0F2EEFD0A03010905050701FBF1),
    .INIT_35(256'hF6ECFC00F3DEE309041907F8F403F4FA06EFFCFE0A10F7060F0D19FB040A080E),
    .INIT_36(256'hFEFEFC061002020D04F5F4FB02FC0E03F80A1808030B0706FC02FE00F40B0EFF),
    .INIT_37(256'hF3F9FE0A02F5FBEFE8EFEC0714FE12FCF6040005F8F300FCFEF80403EE0605F3),
    .INIT_38(256'h0F0CFD110DF7FEEBF602EF0004040701ECFA020004070B040CFC01FC06160400),
    .INIT_39(256'hF8FBFC0300F1101301FC0E0002FD0F0F00EFF7F8FA130707F9EEFBE8F703ECF7),
    .INIT_3A(256'h1208FB01F800F70B0FFE03F8FEFEFDFA01F6F8041000FB07F9F8E9FE0FFB0009),
    .INIT_3B(256'hFEFC02F307FDE90AF7FBF5FC0F0E150E0BFBFBF5F807FFF0FDFA0C20F705F3F4),
    .INIT_3C(256'hF9FF09010B080B03FCF10408041201060E14170CFCE5F1EF000402150B1A0D0E),
    .INIT_3D(256'hFBF4FF04F80B10FB0D02FFF2F8F2F4FBF702F8FDFC02FEED030B08FCFAF4F9F8),
    .INIT_3E(256'hF7030EFAFC130B0E05070514FBEDFBEEEBFBFC1008F1F90DF5E50301F9FE02F5),
    .INIT_3F(256'h0DF4FBFF030901FE01FE04FB02F8FF00F5F30316190D1301F6F90314120C0CF8),
    .INIT_40(256'hEFF4051509070DF503FDF1EDF1FE0AF40303FC02FE01F9F802F6F6F200EEF906),
    .INIT_41(256'h1A04FFFDE1F305F7F102021C1C00F9E6ECF1F204FFF707FE0610040C01F3F0F8),
    .INIT_42(256'h07FE080F04F2FD05F6F20E03FB050306F60300FEF8F7F2E8F9F60F0A030D0700),
    .INIT_43(256'hFFFC0F070004FFF3020703F8F906020A11160DFB030DFA000402030F0A03EB03),
    .INIT_44(256'hF50709FE06FF0800070BFBF7F704F9F6F9FAF9E6F7F0FDFD010A0DFBF5010AF5),
    .INIT_45(256'h0510030307FDFDF700F20E04050E00050DF7F8EE0511FFF8EFF0F1060AFBF7F7),
    .INIT_46(256'hF90F1DFDFFFF09FE01100CFAFA00140E07F2F00C01FDEC00FF040BEAFBEFF40D),
    .INIT_47(256'h0408080200F705110B05F80211F4040BFF04F1FA0301090AFB0B05FAF4F30BFC),
    .INIT_48(256'hFCF7F4FDF80B04080BF70312140EFE0F0902DFF8FC0AFFFF0807020EF3EBF70A),
    .INIT_49(256'h0A070A060E1400FB04FA1100FDFA06F5EF020604F5F40005FF13FEF50704F203),
    .INIT_4A(256'hF6F2FAF60305FA0200FE12F9EC0600FB050403F50E0BFA0A09FF0AF8FFF3F003),
    .INIT_4B(256'h05F80304F8030202ECE3FCEBE0FF080F0EFC000DFF0A1908E1F6ECEFF1F2FDFA),
    .INIT_4C(256'hF203F9F3FD031E05FAF6F0FBF0E800F1F9FD0E00000C1002FAFAF3F70B110F08),
    .INIT_4D(256'h00F70DFDFB0BFFF2F3F504EEFB10F3F4050D1104FFFCF5F505FEFEF507F90F16),
    .INIT_4E(256'hE7FD11091303FCFCF9F40CFDFF070203F2020EFE0B1B02FC0B01FC05FE11F2F8),
    .INIT_4F(256'h09FBF51015FBF7F8FF00F703FCEEF2FA02FDF4FBFF01FE03FEF400090902F7FD),
    .INIT_50(256'hF5FF090E180CE900FFFEFB0507060D02030BFBFF0705FA0B01FF0E0205F1F40C),
    .INIT_51(256'hF810FB050B0704FBFF0309F10706FC05050403FD070CF7FDFFF7F70B06EF090D),
    .INIT_52(256'h02FAFB0DFD050C0B0F110D03FB0601F4FDF302FF05F4F20C030203FD03FB0703),
    .INIT_53(256'hFFF8010909FAEE0005F901F5F904070BFAF2ECFD0604FBECF0F6070210080701),
    .INIT_54(256'h060117060C07FFF1F2FE09EFE8F0E9F300090614F8061208FA0315FD1811F904),
    .INIT_55(256'hFBFD0401070F0900F7FD070804F6F7FD01F8F9FE0603FAF2FD02F2FCF7EDF80E),
    .INIT_56(256'h0704FF07F8F50204F4F1F90110FCFF0D04030D0C02FCFCFA060B14F9F3F50E07),
    .INIT_57(256'hF00415FC03FFF50FF7F303F90C08F600FD0D1F0F060D030203F1FB0A0D010308),
    .INIT_58(256'h0B05041A1701F900F8070A0B0D04FCF3F20D0A0B100BF2120DF9F5FC00F6FC07),
    .INIT_59(256'h02FAF903FC06F7FCF8F2050B0501E9ECFC0102FB090503FBFE07070A06F4F1EF),
    .INIT_5A(256'h0B02110EFBFCF2F4FE00FB04F6FEFDF7FCFD02F8FF0A0506F7000D08FCF6FD08),
    .INIT_5B(256'h090A03FBF61506FA02F70906F4FB1FFBE3F400FF0FF8001005E9F6FD0307F108),
    .INIT_5C(256'h0D070001FC06120B00F5F9F2030202F610FEF301FA02F9090CFFF605FEF40706),
    .INIT_5D(256'h0AFCF000EF0705010B09FFF5FA00FBF70202F3F3F704160CFDFF00000100FAF7),
    .INIT_5E(256'hFCF5FCFD04EFF4050607FFF608FD11FDFFFFEF02F2040F050009F908F5FD06FF),
    .INIT_5F(256'h03FE031E0DFEE9EAEC02FBEBFDEDFC07050D080B0204F8FCE9F0000702FE0610),
    .INIT_60(256'h2304FA10190AFFF2F40204021B08180FFB0301FA11FF0F14FF03F60AF3FA0A0B),
    .INIT_61(256'hFFFF0F0AF3ED04F5F0171DFFEDFB05FB01FFEFF5FBF9FA0BF4F0FE0200181E21),
    .INIT_62(256'h0603F7F8F9F6F50800FCF6F5100C0D04030D0102FFF8EBEEF0F5F3FE140509F2),
    .INIT_63(256'h09F9F9F80D0DF4FBE906130101FBF7EF0AF6020BF506040AFF1B05F3FFF70BFB),
    .INIT_64(256'hF0FF01FC07070EFA09130A0510081407F90CFEFC0B04F8E8F9070304101600F7),
    .INIT_65(256'hF8070702F0FF05FCF702FE00070207F0F0EE15160F05FDF9F9FAFBF90CFAF5EF),
    .INIT_66(256'h0CF90C07F3FD0F141304FB110FF702FD0308EEF50B00FFED050C1209F80807F3),
    .INIT_67(256'hFDF9F2F70605FCF60C0DFC060BFEF1F9F505EDF10A100FFA090404F8F20CF8FF),
    .INIT_68(256'hFAFC04000802F5FDE9ECFBFE0405040A03030709FAFEFCF205F6F4F2F10D000B),
    .INIT_69(256'hFCFD040D271F05040BFCF3F8FCF71A0003F5F7F204FAF5FB08060DFBFBEFF8F0),
    .INIT_6A(256'hF701F308F7080E06FD07F7030109F5EDF6EA060A0A0AF7F80302F1011112FCFA),
    .INIT_6B(256'h07FEFC0904F9F0E1F9020611FEFA1513FEFFFF05FBFF01F7FEF7F1EB0403FBE1),
    .INIT_6C(256'h07FB12F9EB03FAF4FAEC020A080DE2EE0406020702FC0600FB03F7FE070A0D00),
    .INIT_6D(256'h01EBFBF60009E6F104F002170D0CFFFB0C05FF16F80701F3F7F5F0F10A1D10F5),
    .INIT_6E(256'hFCED01FE04090900F3F5F404FAFDF30302EFF313FAF813140F0A05F4F814100A),
    .INIT_6F(256'h0F0600F90A0EFD05091002FFFAEBFDF700120F100F170701080604FAF9EAFF0A),
    .INIT_70(256'h09FA040BF50A0CF7081613120CFFFE00140307F2020403FD050BFCFEE7EEF7F6),
    .INIT_71(256'h02F91020F8FB00F811F903040E03F7DB0407F30704F2EFF0101206FEFE08F703),
    .INIT_72(256'hFBF905FA010EF3F7EAFFF7E5F4FF0205F8FBF6FCFEF3050FFC0C15040C11F808),
    .INIT_73(256'hF80F0CE7EAF9EEFAEFF206F8EBE7F8FB0BF8F5F8FE0D0FF1FE061CF6F7FB0706),
    .INIT_74(256'hFCFBE8FD17FBF414FF0010090D03FDEBFC12FA0606161A0C07F1EE040B09F1ED),
    .INIT_75(256'hEFF6F40806FE03EA090A010A050408F2F9010909F0F208F80701040F07F8000E),
    .INIT_76(256'h020A1405FCFE0607FA071808F6F502FF01E2FD0302080F180709F6F9F4F70508),
    .INIT_77(256'hF4020604EBEDF705FBF90D12FEEA00F406F20508FAFB0B0801F7F6F0F50704FF),
    .INIT_78(256'hF7EDFB01F4FCF4070A0B11FBFEEBEEFC0801FEFB1506F10A08FCFAF6F4F5FFF3),
    .INIT_79(256'hFAFDFF0B0D0D0C150801FDFCFBF5FF0511F9F0F7FBF800FB0B01060A0320150C),
    .INIT_7A(256'hFBF703F30F14081E0B030503FCF5F4FFFC00FDFD0C08FD03FBFA0CE91005F6FF),
    .INIT_7B(256'hEF000E04FDFFFAFD04EC07091C0F001303F70C16FAFCFE12FDF2EDEFE6FCFCFC),
    .INIT_7C(256'h06FB11FD0007ECFB150C0203F10F09FEEEFE0202EBE9FF00FCFBFB0F0D12FCFE),
    .INIT_7D(256'h0C05F2FAFCF9FDFF08F9EBE8FBFB030F0609ECF0040507FCF6F6FB0DF803FCFC),
    .INIT_7E(256'h0512170E0804080800F80106FDFBF1F90B08F8F7FFFB040004000202FFFCFB02),
    .INIT_7F(256'h080608F5FE0E0711FE0405F1FC07F905040BFE0EFAFBFD040309130000FEF9F7),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_15_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_15_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized11
   (p_11_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_11_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_11_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h2C4644C3D6978FC83819BF6E070C05A837E9642FF5C7DDBC19127174345991BC),
    .INITP_01(256'hFA3FFFB1C1918609A8FEE0696F5A74B422F4499C0517600C67F21364213D862E),
    .INITP_02(256'hF3601E3EA7F499DBC884824EC18D1E27F871DF4108F0E48040FFE73DFE10C76D),
    .INITP_03(256'h0E8FF962B3030FC7CF021B5BA392031B80DF23B3BF363BE6FC98E9784C21FD80),
    .INITP_04(256'hF8B31D0986CF26163203DFF9FC74197ED462641BE186F033261EEC51981A01C7),
    .INITP_05(256'hEC3783E4FE7163D7B1F3DF3981DFE60013F7877E6776DA6F3A86778EF27E99CD),
    .INITP_06(256'hC1C8F0070DE366C3F7BE18E1C6EFD3BA9F300C3D80BF27824870760109131E20),
    .INITP_07(256'hFE066D6EE37309BB1EB54830D0286430971C00E0C5206F9000D39EA00780C457),
    .INITP_08(256'h9E0076D3F06CA4C813B124D9D061C278B74A07B380358E06CCCF17732C631AFE),
    .INITP_09(256'h6E90F22848C0440611031E53272C4618B734F83CDBE18807FE587E123F8FD790),
    .INITP_0A(256'h8E3539C3E00204879FEF47798687F1E4931F07C1BF3882FB1CC11EE649ADCC36),
    .INITP_0B(256'hDF89CFDC3E72101E34FD85FF791E045C21A462F740E1F1DB019BB7D000478659),
    .INITP_0C(256'hE1E07E8BE926E4D83814CA6401DEDDB03CBE69A7B2E006D81F932F0276ED33F0),
    .INITP_0D(256'hCD210E430907D9614F33683BFC20F43202738FFBF17C6D80E1F8BF005E1F3831),
    .INITP_0E(256'h59390A1B5F0C40ED650747EF485B1FC09811FCE328B01D1C79D3340323D2841F),
    .INITP_0F(256'h4E03060D08F2123E1BF609FE6D8345DD2FE17F78123FCB385F738F266F67FBE2),
    .INIT_00(256'h150AF9FE00F8110303FD0BFAFA1004E2EF1301FE080D05F8FF17FCF2ECF60708),
    .INIT_01(256'h060808FEF60604F80D0610FD0103F81A07ECFAFD161D15FF00FFF8F108FF040B),
    .INIT_02(256'hF2F1EBFE0CF101FCFDFA060A00FCFCF9EBF700F6F0F603FEFF09FAEDDEF80608),
    .INIT_03(256'h0200F6FF05F9E6F4F9F3FA03F41007EA02EFF9030DF30C04060DF000FFF8EFEC),
    .INIT_04(256'h161511140BEDFBFC00160201FEFD14081309080103FF07FAF809FC07FE121602),
    .INIT_05(256'h0A06F3F3FE0D0B020B1105FDF4010CFCE305FDF4FFFBF8FC02FEF301FEFEF912),
    .INIT_06(256'hF2EA09F103F7EF0AF00510FF09EDFEF9F60F1F0CF7FDF8FFFBFB0702F80C090C),
    .INIT_07(256'h0200FF07ECF4070809FA020B07FFF90D0AF7030902F90603F3EF0406050BFBF5),
    .INIT_08(256'h0B09F801141503FF0C16FCF8F9F509FAF80E07080BFCF61A0804FE04FDFFEE05),
    .INIT_09(256'h02F0F81005FFFAF5F6FAEDED0105FF00040506FC0309E9F90AFAFB0A05FF0006),
    .INIT_0A(256'h020C031100FF09F9050302FC02FEF6FC0EF7FE0911140E0405170D0EFAFE020E),
    .INIT_0B(256'h1005FC080D0EF909F4F8FBFE09FC020A05FD0412FC060DF1F90203FDFEF80C0C),
    .INIT_0C(256'h03F1EF07F4F6F5FC02FE12F3EE00FE090AF3F7FE0AFA0506FD01F2FE08FA0B0C),
    .INIT_0D(256'hFE06FD00ED070905FBF3F2ECEEE8F300FDFAF501080A040A0AF9FE09F7040EFC),
    .INIT_0E(256'hF2FE04050B0502FFEE0205F8020900FBFE0205070AEDF70615150901FC0300EB),
    .INIT_0F(256'hFEF8FAF2FC13F4021500E5F3FBF3FEF8F7F1E7FFFAEAF0F3F406F9F2070215FB),
    .INIT_10(256'hEEE3FEF4F6F8FB03080A14FA06060C0CFCF3090900FEF7FC04F3FA00F7FB11FA),
    .INIT_11(256'h00F4030A0D051001E7F6FBFBFBF8FBFAF4F8F50207F0F1F10101FAF7F4FA06FE),
    .INIT_12(256'h09050A12FB090803EFFCFEEE02130716F8FBF90002F70607FC010C090800010B),
    .INIT_13(256'hF2F4F1F7F9030C1001F1FDFE020800FBF0FA00E4FCF9EDF90AF90E120E0804F7),
    .INIT_14(256'hFDFC010D071301F6FC001111FDF40BFF010906F5FDEEF00C0910FB0709F9F5F6),
    .INIT_15(256'hE7E2060CFD050700FD090B0E07FA0703FF0C100A0207FC0505F40A00F6F3F208),
    .INIT_16(256'hF905F50A0CFAF1E5F3FFECFD00FA0605FA0518F5F31F08F8EEFA09FFF606FFEC),
    .INIT_17(256'hF8EAFFF30100FEF802FDFB180E000507171405F3EFFBFA000001F9F7EFF2FC00),
    .INIT_18(256'h03F80A0AFFFD00130B0AFD050A0E14F9F9F8EBEFFFFD02FEF708090D0F0F0600),
    .INIT_19(256'hF8F0F2F1F1F00308F90205EBFA120400F3F0F805FA0504FE03F6FCFBFF030202),
    .INIT_1A(256'hFD07FEE9F3FAFCF70404F7F20AFBEF040117FDFDFD04F6F6EFF5FA0F06F3F90D),
    .INIT_1B(256'hFE08110C060A090CFBED02FDFEEFFFFC0B05FC010F04F0FEFC00F0FE0A0BFFFE),
    .INIT_1C(256'hFE12FF010D02FDF8F20003F6060FFF06150F1B0C0F04F8EB030A04FAF201F3FA),
    .INIT_1D(256'hFFFE0C0AF5F3EFF608011A0F020AFE120A1015FBF901E1F805F90CEDFF0CF1F5),
    .INIT_1E(256'hF002ECF7040CFEFE05160C0D170FF1F711030A06F9FCFFF8F4FA060002FEF9F6),
    .INIT_1F(256'h08090A08FCF1FF05FB00000CFAFAF7FBFEF3FAF8F8141FFB06F2EA10230EFE0F),
    .INIT_20(256'hFA1B02EEFD060108070E0FF9FC09FC070819161A130A01E8F0FF041901FEFDF6),
    .INIT_21(256'h0A05FA0302F6FB090F1205FBFDF4FE02F6FEFB00F1FF0E0000FA07F9061A0DF9),
    .INIT_22(256'hF3F8FE080C0C08F2FD0201020DF8FD02EBFAF7F9020409020200F6FE0514F7F2),
    .INIT_23(256'hFEF604FD0BF5041707F6F1031201F20803FAFB0103FA0D100A0E1EF6FC0BFCF6),
    .INIT_24(256'hFBFEEBEEF5F9000B06F9EFF102FF0302000D0CF7FA0F09FB0CFFEFFAFAF2FF13),
    .INIT_25(256'h0304FCF30203F7000215050A0400F1F9F3FF0EF5F9FEF9F4FFF8F5F2F70605F6),
    .INIT_26(256'hFD00070109F7F30DFDF90B10FEFCEFFC0900F40009FEF705070600F800FAF806),
    .INIT_27(256'hE2FAFDF6EE091A00FE03F6FF0607F1F6030305FCF0F006F600111606FD0E12F9),
    .INIT_28(256'hFFFAEDF50608FD010AFFF9FCF9EFF90CFA0100F7F40702FEF3F40808FFF406F7),
    .INIT_29(256'h0700FDF0EB09FD07FA03040902F5FA0F07FDFCFA01FDF8E9F1111D09FDF8FC06),
    .INIT_2A(256'h05F5FE1407FEFEFC09F4EFF90BF1F706F9FA05FDF002FD150EECFC04FCFAF4F7),
    .INIT_2B(256'h0E0205EB0200F2F9F0FCF3EF02F9F1FBFF050D0E05F7F2F605FDFFF3EDE9FD0D),
    .INIT_2C(256'hFC120C040A0A04FAF4FB00F9FCEDFDFBEFFEF70202FBFD060C000E0E0D101002),
    .INIT_2D(256'hF400EFF3000B06F8EDEFFFF90D02FCF4F4FA0BE9EEFEFBF61807FAF5FF1806F7),
    .INIT_2E(256'hFBFBFAF7F4F5FF050BF3F2F6021206FB0AF4FA040205F6FCF1FF06F813FEEFFE),
    .INIT_2F(256'hFBEEFB11FFEC040B040CEFF002F8FEFEF700090A0F02FBF4E2F2ED0D03FE0401),
    .INIT_30(256'h10090405FB1203FA000E06F30308F7F6060305F4FBF9FF0F0A00FE0D0E050308),
    .INIT_31(256'h08FD1308FE06010805F8EEF30B080A110CF5F6EA04F9F20812000501050406FB),
    .INIT_32(256'hFD060F0905010201FB0CFBF9EEEEE0F6120BFA0618FEEDF6FC020A090409F412),
    .INIT_33(256'hFA0907F9E8E4F1FF0800EAF2030D0D01020D0B04F8EE08071E03ECF9F5F700FB),
    .INIT_34(256'hFAF7040306F8F902F2EBFE0AF3FCF6F1E6F804FB0A0BFAFAFB00F5F7FE09FA02),
    .INIT_35(256'hEDEDFEFB00F2FCFBFC05FAF7F9F3F806021011F2EF011C11FFFEF50B190309F5),
    .INIT_36(256'h0D110703EEFE0AFEFFEEFD07080AF7F706F3F00706F9F700FEE606050A18FDFF),
    .INIT_37(256'hF7FF060A040B03FFF9FD0300F5100500F8EFFBEE0B0B0D090C08070F0CFFF7F2),
    .INIT_38(256'h000509140BFEFDFBF407030405060B06F8FE000607FA0D0307FF07FA00F2F9F1),
    .INIT_39(256'h00030712040F160BE8F504FF0D17E8F8EC030EF4F8F1FB10EF03FA0C09051001),
    .INIT_3A(256'hF6F70F0109F400FF0708FF0F0212110718F8F504FDE6F9F6FD0208FB0811130A),
    .INIT_3B(256'hF40005FB03EEEDFB021408FAF1F4000A00110E1004020C02F5F5FE0503080A0C),
    .INIT_3C(256'hFFFE03FF090902000904FD08F402060404F0F00E1BFF020B0601F8FB101A1506),
    .INIT_3D(256'h05060EEDF3F9ED01FE04F1FE0BFE0AF309FB0701F4000C080E05F1F4010A0202),
    .INIT_3E(256'hF1F7FB06050DFAFF0DF7FDFB0010EFF2100D0305FE0100FAFF04FEF9FE04FDFF),
    .INIT_3F(256'hF6F6E7F2F7FBFE02010005040DFCF60804FFF60BF6FD01F10AF5F900FCF7FA10),
    .INIT_40(256'h0B00F904FCF70B081BECED0B0204F8F7070511FDF500FE09FDFEF6D7F7FAF403),
    .INIT_41(256'hF7F90303EDFF090BFCED0202F5EDF7F30C030FFF09F9EEF702FFDDFB100CF6FB),
    .INIT_42(256'hFA0E0B0607100F041010FEF502F802F6FE02080BFBF3FB03010E051B16F0FA07),
    .INIT_43(256'hFB09F7F60CF8FDFF13F50D04F313FB0405070D0101F5FCFBF70DFFF70A06FEF9),
    .INIT_44(256'hF8F407FC0603030D06F9FC05020C0EFEF8FD02010812F30D10F6FEEDFF041101),
    .INIT_45(256'h110F01EF0407F8FBFF02F1F5100506FB0E00FF1601FC0806F0F70DF4EE090FFC),
    .INIT_46(256'hE5E3E9F7080F0F010BE8E703FEF60A06FE01E90304F7040CF7E40301FE07060E),
    .INIT_47(256'hFF0F05F8F8EBEE07100B0F040E15031508FFFEFD13F8FE08F7FB07FD1408E2E8),
    .INIT_48(256'h0A07F6F8FCF4F2F3F703120BFEEDF9F6ECF904F70CF7EBEEF81209FF0C0B1005),
    .INIT_49(256'hF9FBEAF6FFFFFD0E0BFE01FBEE00040109EDE2F6FBF7FB06020300FA000CFE01),
    .INIT_4A(256'hF6FC09F7F603EEEBFAF2F10A071810F8FE020015FF0910020900080A18F7E2F3),
    .INIT_4B(256'hF90CFEF200EDF8FD0000E4F907FD0507F7F6FDECF30504020305F8FEF2F30002),
    .INIT_4C(256'h0105F50802F5F5FE0D05FB04F6FF080E02F7070705F8F90303040BFDFA0B0400),
    .INIT_4D(256'h020E19FA000802EB0315070F0107F8FB02110CEEF5E8EF1208F500FF040DF4F5),
    .INIT_4E(256'h00FB1109FF090C02F2F2050B0B08081705FE050805FF05080F12061303F5F519),
    .INIT_4F(256'h06F2FD09F7EFFB0DFB0806F10802030FF2FAFDFD0806FF060405F905F5000905),
    .INIT_50(256'h00F80306F20705F8F605FE05F7FC04FEF9FC0D0BF7F902040504FAEE04FEFA0D),
    .INIT_51(256'h140D0FFBF2F21103F1FE02090A1203FF0E0201F4FFFCFC02F5EEF80506F9F113),
    .INIT_52(256'hF703EAE8F3F6F2F40201F8EEFF080910FC041000030DFD00F8F0F2F8F205F0FD),
    .INIT_53(256'hFC020CFD0809FBFA000604F5FEFAE9E70D10110A0AF9E9F3F9FE0B0E050517FF),
    .INIT_54(256'hFD090F0301F7F705EF15190205FCFCFAE4FFFEFC060C06FAEFF8EC0208FA0E0F),
    .INIT_55(256'hFF0C03FAEDF8EDF7F5FFFC06FCF6F8FE02F8001F0BF8F1FB03F1F0FCFE0705FE),
    .INIT_56(256'hF8FDF70506050C0C09000506140AFB02011320080AFB010DFD08140203FEFCFD),
    .INIT_57(256'hF80C0201FCF7FC030406FAFE07FD0BF10C01F0FAFA0B0CF2E9F7070C0901FBF2),
    .INIT_58(256'h0204081C13160C1306FF0C1204F8FFF0FF110B0312FCE50C06F10DF9F30503FE),
    .INIT_59(256'h0A08080A130601FDF8040AF8ED0FFDE8FB08EFF300FCE5F8F6FC08FA01000A10),
    .INIT_5A(256'h06FA0E0F01040507FEF8FD13030816FFFAF0EDFF040F09F4F4FA01FFFD0BF5FD),
    .INIT_5B(256'h0902FE07080607FDFD06FB0607F9070E0AFEFD0E1406F410FBEAFEF500E9EAFB),
    .INIT_5C(256'h14F4F6FCF10000F20C000AE5F1F3F80A0516120E05FC000506F506F7E5E60703),
    .INIT_5D(256'h0509FBE401FF0402FFFAFAF9F8F001FBE904050A03FB06F2EDF7EFEFF1F1EFFF),
    .INIT_5E(256'h0100FAEEFAFDFE0B02F5FEF70D02FF07030502FD0F0905090D1C07F9FFF6FE0F),
    .INIT_5F(256'hF2FF03F9FCF0F6F1FD130F00FE0600FEF3FD1107F5E1DAFFF6FA04FFEDF90005),
    .INIT_60(256'h0AFDFEEF08F9F503F9EBF600F5EB0DF80824FDF51503FBF5ECF9F2FF10170106),
    .INIT_61(256'h110907E8F3F7F7F3F10D14FD0604EFF80E03F309FFFDF5F400070712150DF90C),
    .INIT_62(256'hFF09FBF40308F600FDF8F80202041108060A010A0CFFEA00ECFD06FBF00C0D13),
    .INIT_63(256'h1103FCF4F8FA0208F806FBFCFDF1F60908F8F309FA010DFCFF00FE0904F5F3FE),
    .INIT_64(256'h000D0E130D040BFAF9FE00F3EEF7FD06F8FD00F5F0FA11FEF30BFFEB04060F0A),
    .INIT_65(256'h050AFAEEF90A04050A1201FF02FB0108F9F80B08FE03F0010AF4FE030BED040F),
    .INIT_66(256'hF4E8FA03FB0505FF1403F70207FEFD01FDF4F20303FC120DF6FC01F2F3020911),
    .INIT_67(256'hFDF6EC09031502E3F8ECFA010908060609FBF9EAEDECFA0DFD000100F806F4F5),
    .INIT_68(256'h05E707FFE9ECFE180D1005F1FCFCFCF20D00F8FBFF0505031702F0F60F1204FA),
    .INIT_69(256'hFAF5F300060906FAFEF1FEFDEF051005FC00F4FAF5F6FEF8031100010E00050A),
    .INIT_6A(256'hF2F7FBF9000F0AF801F5E9FEF1F2010304F8F004F8F104FFF903130C0200070F),
    .INIT_6B(256'h0E150C040101FF030CF5EDFF090BF7F4F5070400F4F4F7F7F7F2F0F3EE01F1F5),
    .INIT_6C(256'hE9ECFFF4FDEF03040D07FE07040C0103FDFEEFFC0AEF0112070CFAF50510FC03),
    .INIT_6D(256'h00EC0908F2F5FFFB0005FCF80500F3F803FFFC09FE0517071B0FF7EBF007F2FB),
    .INIT_6E(256'h06080F05F90C01F90306030C03F3FBFDFEFD00FBF60E06FB02F6E7080B070AFB),
    .INIT_6F(256'hF4EE0A06F2FB05F61104FA02010F04F611060300FFFAEC1206F500020406F5F6),
    .INIT_70(256'h0603FE050C0CF5EFEFF702F9030FFE02FA0A0F0504FC090404080FFBF7FEF8FF),
    .INIT_71(256'h03F9FCF8F4020BF8ECF00DFC0003EEF70E01EAFA13FB0601020808080E07F7EC),
    .INIT_72(256'h0A00FE03F60D040AFD01FEFF13060C06000505FDE5ED09F4041401FCFCFB0508),
    .INIT_73(256'hF90400EFF50E0410080206FC060907F9FBFFF6FAEDF20B11ECFAFE0E1913FCF2),
    .INIT_74(256'h07FD0207FF060C1A08F308F7FF0EFCF40F1B09FDF0F4FDE1EFFB0F0E080E0A04),
    .INIT_75(256'h04FEEF0C04FE07FB03040C050CFFF0FB00F20B0200FCFDEAF3FFFC05FBFBEEFC),
    .INIT_76(256'h04EF06FCFEFAF7F700080303FEFA031802EB010808020202FCFFF802F3FF0DF9),
    .INIT_77(256'h0BF906FFF60A0DFD090BFAFAFE0702F406100A00F602F80C0B0405F7FE03FDFE),
    .INIT_78(256'h17FFF206F9FFFAF803F3F40415FFFEEBF9FEF3F2F904F5E9F8FEF506020AF701),
    .INIT_79(256'h00FB12FDFDFCFCFF0AF9F2F71202F5FFFB090E00FDF9FDF91402FC0505FEF705),
    .INIT_7A(256'h000300F40905FE091210FAEFE4F4F4F7E3FD1E07F801FEF91213FAFCF0010D10),
    .INIT_7B(256'h0004FF09F3FCF9E2F2FDFD0A000309F000EFE9EEF2F5FEFE02F8EAFDFE120101),
    .INIT_7C(256'h06F5F105FFEF00FCF5070D000901E7F504F8080509F508FBF8F501FFEEFB0DFD),
    .INIT_7D(256'h030B23FFF101FAFCF8EDE9F90CF4EC0719180005FA000DFAEFF7F5F7EFF8FE01),
    .INIT_7E(256'h08080800F609050BFEF8FAFA090EF5000E0A01FD0F09FC080803FEFCFCF4F600),
    .INIT_7F(256'h02F91102F9FBF61322050D02040AFFFC1613040C15FDFB0101030207F1FD01E9),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_11_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_11_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized12
   (p_7_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_7_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_7_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h371C003E04977EF3C70C0000B582C50B462AF24F868721FCFC2BF1CE26A8E043),
    .INITP_01(256'h3F4CB06A23ED8C1E7D16920466A74CC3E1991CC8F0A54F0D2DE1473B8F43FE0F),
    .INITP_02(256'hA0038B0D3FFC9FF83CDBD05C21E9A2FB659D1980CF7821C6CF35ACC0BE2C66CE),
    .INITP_03(256'h52185E7E71CFBE0277FFBB4EAFC0706C3DAC333FCB471306BDC67CE1E8AF1801),
    .INITP_04(256'h70FDDEB9E79B5C2E2C76910849D2B8278D98106B063F7FCEDC4A43F332FDC67F),
    .INITP_05(256'hBF4FFBBE1044BFC39FACCEB2F7C481D48F701F7D62E2793BC6D9BC9C600061CC),
    .INITP_06(256'hCF7A4A40087EF76DD8E5F7CC9BE487A06E162EF667B0676C2F2C5BEF89FE213A),
    .INITP_07(256'h7E8C523670E041FBB391213E00CD627E79D0065F93664C93C3F34C4B04E02522),
    .INITP_08(256'h611DBFE47604F80FFE2C013801D8586DC3EADC7C3E4BCC8657E84DE49E6B4200),
    .INITP_09(256'h418C3F1065F39984EF98C9CC731620CB980E1F11FC90491322DE2841B83F073B),
    .INITP_0A(256'h5DCB7239FA450066FB087A016723812C4FBEDE64E2624037C4FC0F9F9821F007),
    .INITP_0B(256'hC01AC80840FA5E9DD027FB4A81B000231D3F1FD9F6DD39C9B4687A169F5B5FC3),
    .INITP_0C(256'h38081EF936441BBED2A488080AE1C2F5A6D04F76CEC45F70E6416960BD7FC7B3),
    .INITP_0D(256'h2D2B03A351A4DB0408801880E605FD9FF8E6E97C1DEA4E5907E9B34DFFAF5E7E),
    .INITP_0E(256'hCC03C27884BE3F007F75A2074FF1D81CC61240C4998083D4847D03C7FFFEB302),
    .INITP_0F(256'hB30F89C93BE466E3184F93F998CCC02F8D0C01F7A8CC1C202523CFB2BDBCAFF3),
    .INIT_00(256'h0513F90311F9F904FF02FF07FE0B090EF6FDF7000402011501FC0A0F0E05F9FB),
    .INIT_01(256'hF2FBF4F5E9F51008100BF609FE01FAF7F8F6F9F600040BF6F6F50305FFFBFE03),
    .INIT_02(256'hF80E1A1907FAF100FF170D0108FCEEED0E02FC0D0A0402FCFEF8EFF3F4E41400),
    .INIT_03(256'h08FD090506FEFE0A0103F303FB05FF0AEAFAF6FF0E02FE0709FF090FFBF3F9F1),
    .INIT_04(256'hF911FBFE13FF00FBFE0E0D010603F001E6EC020004FF0AFA020A0805FD03F3FC),
    .INIT_05(256'hF1F8050B0CF8F9F505140410FEFC0B080D11160D1009020C040D0C0505050401),
    .INIT_06(256'h000D120E07F60B10FC0806FA03FCF9FE06FBFBF3E4E6F00BFAFAFAFA0B04F0EC),
    .INIT_07(256'h0A0EF9F500F5F7EE05100EF8EBFB080807020B04090801110502F3E7F5F6EF06),
    .INIT_08(256'hFF040A06F3EDEAF804F003011708FFF9FEF7EFFAFCF9F90E0D0E0C01F3FFF8FB),
    .INIT_09(256'h000AF80CFCF907FAFAF5EE020B0B06F601F9060D0AFBFDFE0304FDDAE902F6F3),
    .INIT_0A(256'hFDFAF3FB010D0D04F506FC1509FD0CF909F3080CF9FAF7EA03090001F8FA0DF9),
    .INIT_0B(256'hFEFFFF11090305F7FC0708FAFA0202FD0D1309FFEAF40514FDF70714EE0B1807),
    .INIT_0C(256'h04F3FB010AFAF20FFE0DFF0202FAF7F90AFA0308FEF30F0BEEFD02000206F8F3),
    .INIT_0D(256'h04FCFBF2F4FD00FC000D00F904F9FC01FE0504FF0607FF000002050718FA081C),
    .INIT_0E(256'h0300FE0C0A08FCEFF2FBF809F3FD0CF2F609171DF1F00A0110210DEBFAF2FE1D),
    .INIT_0F(256'h0606FDF8F1F8F4FF02FD0205FAFB0308F703FAFF1000120807EEFD0CFC04F702),
    .INIT_10(256'hFF00FEF6FFF5FB0C0908FE04FDFE000210FBF00D08FDF704FEF20102F1FBF000),
    .INIT_11(256'hF6FF020DFFF9EDF2040AFDFD00F515FCF405EF03F8F91201F7F400050B080A0A),
    .INIT_12(256'hF2F80A06F0FDFFFC0BF4F1F4F7010B120803F803040201FAEAFE070D01FDFD09),
    .INIT_13(256'h05F5F40601FC05FAF40400FCF7F601FB04010CF4F10606FEFE000E0805020E04),
    .INIT_14(256'h0700F410090203EDFFFCFF0BF90105FAFA03FD050E0BFD03FCF1EBFFFC06FAF0),
    .INIT_15(256'h1105FAFFF0F50E07EEF30CF8F80EF3F6F2FE0AF40111020D15FA03FFF8FB1806),
    .INIT_16(256'h0613FEF1F2DFDEF4F9FDEFE7F6FA1809FF1301FEEBE7FDFBF2F2F6FDF403080D),
    .INIT_17(256'hF70FFE03160B0908060F01040B03FEE8FD160509FD03FDF60F060606ECFD07F9),
    .INIT_18(256'hFDF0F207FD010E0AF90EF909F9FAFDFB02001EF8FD030610060B090E090207EB),
    .INIT_19(256'hFE09EBF7F7F302F8FAF7040C0CF9FF180AFEFFFFFEFB1208FDFAF3030C1116FE),
    .INIT_1A(256'hFDF41017FB06FDFD01E7010D06ECF2EE081307FB0401EDF80B0A0A0500FEF503),
    .INIT_1B(256'h0D0AFBFBFBFC0CF4FA0AFB06FEFA060E0100FBF70B03F7FC0502FEF4F4EEF6EF),
    .INIT_1C(256'hEA06FD02F8FAFCF2EDFB000F160A090E03F8F4FD1004051108FCF20DFBF90000),
    .INIT_1D(256'h0AFFFEEF0CF6EFF1ECEFF5FCF0F0F0DFF600F6FFFF05F9F300F70000F1DEF603),
    .INIT_1E(256'h05F2F0FC030601FBFDF00409FDFAF8E9ED03FFEDFCFBFB00060606071509EE01),
    .INIT_1F(256'h0CFE08FF1500F9040F0E05E8F40C0A0904FE07FEF7E7FB0005F8F7F4FEFFED01),
    .INIT_20(256'h0600F9F20116FB0DE8FBFCEEF5FA07FCF9FC080E08F7E90100FFFDF9F5F5F5F2),
    .INIT_21(256'hF6F601ECEFED001203F90107F901FC0C08F70B130B19FEEAF6EEEFEE0E17FFF7),
    .INIT_22(256'h0A0F180301F4FF12120DFFFEF0EEF6FF02FCFBF5F2FFF3F7F3F71000F3F5F901),
    .INIT_23(256'hF8020E0CEDED03ECFE160BFDED0B1A04020305F00A10040B0CFBF804FD05F6FA),
    .INIT_24(256'h0FF50408F6070EFDFBFA03FF0703FD04F20EFEE9F50107021B13FF0000F0FCFA),
    .INIT_25(256'h1508FC00F5F5030100F6F0FB0AFCFF02FA0A0BFE020304FA06020709FF080802),
    .INIT_26(256'hFCF6FF0402F8F0FFFC120CEBF208F7F400F501FAF6FF07150706F705FDF7EE08),
    .INIT_27(256'h0AFBF0FB02031313EAEEEFFBF3FB0BF2F0FD07FFF3EFFF01F100FAF6FF1512F6),
    .INIT_28(256'h05FEF7010E0308160A131C070709040B05F0FA05021209F8FAFB1207FCFE0425),
    .INIT_29(256'hF8F1051209FCFF08F3FE0DFAF60808F5FF0CF9F8F8F60C07F90A09F9F6F50407),
    .INIT_2A(256'h02F8FA0D0E00FD00F4FCF8050E00FC0D08FCF8F2F80304F90600F6FCEF07FCEF),
    .INIT_2B(256'hF7071213FDFCFEFB02F3F0FF0E070C09050C04FFF6F5FDFB00F5EFFDEBF808F3),
    .INIT_2C(256'hF9F5EBEA08FDF9FCFCFE02120AFA0105FB0D0D09010507FFFAF904FE09FC130D),
    .INIT_2D(256'hF2020AFAE9F3F1F3F401FE0AEFFA1103F8F3160EF3F6FC13FB03F5F7080DF901),
    .INIT_2E(256'h040406FC00170A0F01FD0C180DE90104F004F5F4FCF9F7F8FDFF13050307F4FF),
    .INIT_2F(256'hF306F9F8F2DAFDF400FD0501FCF7E6FCF9FAF4FCFC04FAFBF304EBF8FEFEF602),
    .INIT_30(256'hEF090308FF0F08FFFAF5FFFBFDFDFF020B06F70C050A00F80B01FDEBF200FF04),
    .INIT_31(256'h0D0BFE03FFF9F7F51603F002F3FE020902F705FFFC08EBF7F4EDF907F5EFFCEA),
    .INIT_32(256'h0DFFFD0E0AFCFCF1FC05FDF90910030903FCFE0410F7FAFE01F9ED02FCF60C09),
    .INIT_33(256'h0EFBF506FFF3FD01000B09FF01FBFC030D04F902F8F6EE00FCFFFFF707FFF400),
    .INIT_34(256'hFB170FE2FA0AE9E6FAF9F90402EC0A13FE040B0303FCFFF2F200FE0F0101110F),
    .INIT_35(256'hECF401FDFE02090BFCF8F6070BFF02FFF4FCF7FE09FDEEF1F0F3130BFDFF030B),
    .INIT_36(256'h01080002FD0900050EEEF7FAF0FDF406FBFDF9FF09FDFFF503F6F806F4FD02F1),
    .INIT_37(256'hEFEC0409FEFDF9F707FDFFF3F608F0040AE40004FB04F9070CF5080B05061709),
    .INIT_38(256'h1301130404F5010BEEF0F406010708050005FE0304F509FB090FF5030500EC00),
    .INIT_39(256'hF8FB110D0308FDF6EFFDFEF00407F3ED03FF0612FBF50D0E07FA1307F502F7FA),
    .INIT_3A(256'hF40301F80502FCF004F8EA0600FAF71706FB0606F7F8050EF40D09F40705EFF4),
    .INIT_3B(256'h0BECF9FBF90D0AFBE3F509E9000E0E0A000F0E0407F5FD0604FE07F6FAFEFFF0),
    .INIT_3C(256'h0D0703070309080CFBFC0D12FDF309FC00F1F305050AF50207F5FCF9F7F6FE0E),
    .INIT_3D(256'hF304F6F9010BF6FBF7070BFD180E15FF0317FF09000500F50408F6FAECFAFC06),
    .INIT_3E(256'h0FFBF2ED0F0E0801ECECFD0B0006090304FE040900091DF7E9FEF5F8FD04FFED),
    .INIT_3F(256'h0BE8FBFEF2FFF90AFC0D1B04F7F6040C0FFC09FC0006F8090109EEF201F8F607),
    .INIT_40(256'hFF0209F9EFFAF4000AF4FC01FB07FAFA00F80E070915FD07020004040E000B01),
    .INIT_41(256'h09F909F806F9EFFEF6F0F801F9021B1400FE0900EFFA02F9F5FDFB0806FD070A),
    .INIT_42(256'h1406FAEDFAE4DF0307F8160EFC05F9F9FEFE1303F6FA0B06FF020A0003F9F40E),
    .INIT_43(256'hECE606040605F8F2F8FBF500FE0EF601F8FD09F3E8FB101301FEF4FBF6E91313),
    .INIT_44(256'h1213100F130607F4F7FF05ECFD030B120AF703FCFF050C0D01F6F409F8F30CF5),
    .INIT_45(256'hE8FAF4EDF2F5F7060C11FF0AFAFD0A021C150D0C000108FA0B01F7F7FD170B15),
    .INIT_46(256'h0CF6E9E602FFFC040304080908FD0202FCFFFFF6FF030A03040D0A0DFDDFF8FF),
    .INIT_47(256'h01F9FA03060007FF0C1014FDFEFB04FEF300F7FBF7FDFCEEFBFEFE100FF20318),
    .INIT_48(256'hF40BFDE1FA0503060003F7F8F3F7F9F40D17081712F1F9FC0813F5FDEF02F4F0),
    .INIT_49(256'h0503FD000101E802FAF104F4F4FBFA03020EFA01F2020A0E05FA070C0B1713F9),
    .INIT_4A(256'hF9F9E8F1F7F90101E90603F702030A0400FD0802FA020CE203070AFC0604F4FC),
    .INIT_4B(256'hFA0200F0FB020C0E04090D08FFFFEF07030001FCF4FCFAF20D0301ED050011FE),
    .INIT_4C(256'h03FFFCF80307F6EC021211FE02FEFB08130BFF0E030A1402FBFC0B03FC03EBFB),
    .INIT_4D(256'hF7F4F50BFFFBEFF7FE000DFBF1000505E6F7030BFA0809F7F8F70502F3E60303),
    .INIT_4E(256'h04F2FA0C06F701FCFFF8FAF30804FBFDF70907F3F70D0AFDF8030B0509F90502),
    .INIT_4F(256'h07FC0D1B0E0616F3F40E1104F1FC06130007F5FEFDEDE8F20D0706FA040F1411),
    .INIT_50(256'hF00805FEF1080E091404F805030417F5FCFFFCFF010007050203020708FDEAFD),
    .INIT_51(256'hEBFD080315F20007F9FFF8E6E2FB030015010205FFFCF9EDE1070BFCFEFEFBFD),
    .INIT_52(256'hFCF8F1030E09F80200FDFD010904FC0609FD080706050B101D08E7F500FFF8F2),
    .INIT_53(256'h01F11902F7EBF0EFFA05E3EEFCF2EA02F8F709F5EFF6F30011FDF6080BFC0807),
    .INIT_54(256'h00EAF90017FEF5EE0307FC0C0902FCEDFD090213030106F9050FFF04F7FA0B0A),
    .INIT_55(256'hFDF4F2ECF516FDF707030603F20B1A0E06F8FAF5FE0BF10B1E19140F090010FA),
    .INIT_56(256'hF8F7FCEFF806FF0A0EEB010002FA05F706010A0A0206060000FCF4050AEFF407),
    .INIT_57(256'h00FA03F9EBFF04F9F7E90401F102F0ED13EAE4F80010FD03120BFDEBF20D00FD),
    .INIT_58(256'hF90106F4F3FEF4F80FFA00FEF002FCF003FD03FEF8F1E9FFF5F603051309FAEE),
    .INIT_59(256'hFE0DF4F304F702000BF3FE03F3040F0F07F4F0FAFB08FE02110315FF01FFFD00),
    .INIT_5A(256'hF5F4FAF30AF0EC07FAF706FEFBFC07FD000CFDF8F70000FBFEF60610FF010CF9),
    .INIT_5B(256'h0B0D09EEEDE902FF0707FAFBF5EEF1F6060F04F8FFF6F2ECF1FF02F9F70B00F1),
    .INIT_5C(256'hEE010C0D040605F4FE02E7F601000B10110309181B160A020001FE101814FCF8),
    .INIT_5D(256'hFAF300F6030D01050D04FC040AFFF7FFF4F7FBE2F706F4F904FF0104FE03F803),
    .INIT_5E(256'h01FF020D0B0D1204FDF6FCEEEF00FE0903F706FEFCFAE409F40C03FEF6FE08F6),
    .INIT_5F(256'hF9F6040D09020607040D0BF3F613FE02E9E50107EE020F161B230100F9050200),
    .INIT_60(256'hF000F8FBECF308FA03EFF9FAF8FCDEFAEFFA130E0AF6EDEFFF12F2F00612FEF9),
    .INIT_61(256'hF7F0FB0400F9F91300F61F07020E06FA05F7F909FD0101FE04F6F9020F040800),
    .INIT_62(256'hF4DD0206FCF1FD00F4F6080409F5060F03F900FAFDEBF1EA00F5FBFF00100805),
    .INIT_63(256'hF407EF0712FEFC0FF3F001F40A0703050BFF0108F2FAE7F306F2FAF60AFBFB01),
    .INIT_64(256'h1518120EFB05FE08F4EFFB09020401F6FFFF0A0A0800FC06ECEFF2FE04F608F8),
    .INIT_65(256'hF5F600F10710FE01F70CFD0408F80508FD000206FD08050905000207FF0B1711),
    .INIT_66(256'h0300FCF70AF7F00005F9020403FD0806070A04F1F603FCF5FF01FFFEF3F9F700),
    .INIT_67(256'h0A09F0F8F2040B0B0A141B04F20C030E070311FFF5F9FC06FDFCFDF6FA0800FB),
    .INIT_68(256'hECE3EDF6F8F6F8FAFE01FE07FBFAE8EE08FF02F7FDFBF21505FCFCFCEEF5FB05),
    .INIT_69(256'h0503020711F9F8FAF6EEED03F20418EBF502FCFD0115F3E70CFD0B06F1F202F6),
    .INIT_6A(256'h08021CFDF6FA08F8FDF9F100FF00FC0507FF0807F8F1F8110FF501F2FF0D00F3),
    .INIT_6B(256'hFDF1F7F5FA041107FDFEF80902E6F904FEF2F904FB0202FC04FBEEF3F9F20309),
    .INIT_6C(256'hFCF5F20306FDF900061106080EFC02FAF0FDF0F8E9F905E7ED0802FDF3F6F1FA),
    .INIT_6D(256'h010E0801FF061202F6020A06110D020E01040AFAFF050A01F503151707060E0E),
    .INIT_6E(256'h00FE08FF040702F7FC03F90304F91B12F4F705F9FE07FFE41014120900F6060D),
    .INIT_6F(256'h020DFE0BFAF918F50D02F904F400FFFD0D0008051304EDF7F403F9030206FDFC),
    .INIT_70(256'hE9FAF1F6FBFCFAFAF6F5E7F0F8FDFB0DF903F5EB070EF8F90006080C0301FA02),
    .INIT_71(256'hFA06071614F501190BFEF0E5F8FD0CFC03120908120FF8F9F7F8020F10F2FEF9),
    .INIT_72(256'hFD0701FEF70617FEF8050B080A021027FF010A101509F7F2F2F812F602F80901),
    .INIT_73(256'hFFF2070905F5F506030418FD0103FB0710F90D130B010801FBF9031206FD1001),
    .INIT_74(256'h05FF0A0CF8F8EEFBFDF6FBFD15101CF2FCFF07FFF2081102040303FDFCFA030A),
    .INIT_75(256'h07F3E9FAFCEEECF201EEEFFD0FFE07F2F502F3070805F70112070B0409FAF0FB),
    .INIT_76(256'hF108000806FA0E11FF02F9F8FCF0F5070204FAEFF3FDFFFA03110A0D0B0F140A),
    .INIT_77(256'hF3F40508FCFD0D07110B0F02000AF6EDF9F70A040D04F81011EEF2F4FF081001),
    .INIT_78(256'hF90CFDF5FAFF09F7F20BF9F3F8E70C0EFF0BF703FEFDFCE4F4FAFAFD0D12FAF8),
    .INIT_79(256'h0B02FB0100FD07F91401F4000303F8F1FFFB0B0FF6F2FCFFF800FAF60502FB01),
    .INIT_7A(256'hF407FF03FD000309F0F20804F4FC231B020605F8FDF301070609FF0A0900060D),
    .INIT_7B(256'hFC010212F9F201F80B0B131DFFF702160F0004170F0D0BF9EBFBF0FA02F0F3FA),
    .INIT_7C(256'hF00703E6F5020412FEFF0E0CFBF61207EDFD01110C070603000CFC02FDFCFEF4),
    .INIT_7D(256'h000404FBF907080B06FF140DE8F0FFFFFC1206FA0B03FAFAFEFAEDFAE1030EF9),
    .INIT_7E(256'h030BFDFAFF00F4FCF6F9EF010AFC010303FDFD0803FAFC0AF9F4FC090F15FEF8),
    .INIT_7F(256'hEE05FEFE0609FDF800060106FCF9F3F1ED0C0708F70A17FEFCFD0B04FA0303ED),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_7_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_7_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized13
   (p_3_out,
    clka,
    ram_ena,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_3_out;
  input clka;
  input ram_ena;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [8:0]p_3_out;
  wire ram_ena;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h7F644D7843624DEC96C6FCDBACFEACBC545ED86840C6064BFB858003BCB8784F),
    .INITP_01(256'hE6F1CC025EE10A1D001F285BE2239A3F3E0306F3C221E670EDCE4842F5C40CC8),
    .INITP_02(256'hE7B861244FE17B4813E5335DCBC09332C70E0C8DD0B0308907F1A0333589F6FA),
    .INITP_03(256'hA761E77733F29FC312058C9960F00F000C1B8D2750A06D2BA03E1F10BFFF3367),
    .INITP_04(256'h0E792C71C01A9DA8353839304761121810EB1E6C042D761B046294C38C9918FC),
    .INITP_05(256'h961C8327839A3C5A38463F421FE08FB9FF9B0307D3C891CE8D807D18D650E801),
    .INITP_06(256'hF87B9FCEE686F23C7C8FF1C8C2C1D07C5E3E260F5646027BA7F408E638070C03),
    .INITP_07(256'hFFF8C2F105F87DFA73E5C45280DC3B14EC2048127F9A42B05F9C7823E68A3CCD),
    .INITP_08(256'hDC4F1E7EE9DD0BA448DB7BCEF197F49903C1C865EF03FFE0178848C598FD9DDB),
    .INITP_09(256'hCF1EF025D007FE141A1191C2F3180CD1F83BCF24D8F26612463720FE0BB671A8),
    .INITP_0A(256'hE82801796AC28C1B9B2807DCA5EBF9D1B874CF81E54E6C32167B6F93189BB216),
    .INITP_0B(256'hF20DC367D27E9603FA93D977B125F986120E3EDCCC60B0CE8560605320D10E6F),
    .INITP_0C(256'h00000000000000000000000000000000000000000000000086D0181C19D13D3F),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFB03F7F5FBFB0404F614FDFDFA0110150AF6FAFFF604030615F40607FEFAFEFC),
    .INIT_01(256'hF7F7F3F7FB08FBF8FF07141A0DEF01F9FE0F09050310190C0D14020E140DF9FA),
    .INIT_02(256'h01FC0E120B080B0CFDF9030806FCFF0F030C0B1115F1F00201FB070EF203FDDC),
    .INIT_03(256'h03FE09FC03FD0A0104F105EBE3FAF704EDFE00F3F11C010703F8FB00F8000804),
    .INIT_04(256'hF900F704F9F41102F9F5FBF0F8FBF900FC01F508FBFD0C01F30FFEF8F6F80C05),
    .INIT_05(256'hF50902F603FDEC05FCFE030F02E9F108F4FCFBF7EEF70D10FBF705FFF704FDE6),
    .INIT_06(256'h05F100091209FDF80BF4FE170305F40A03F4011AFBF600F0FCF8E700FDF50206),
    .INIT_07(256'h00FEEDF6EDF1F0F904F4EF0716FC080709F6050FFFFC0AF003F2EDF4F5030905),
    .INIT_08(256'hEAFCFEF500FD0AFDEAF4011415F8050A0906141CF4F9020DFFFC0500F5000503),
    .INIT_09(256'hFFFCF307FCF70CFBFBFF0911F6FEF80013F20D08FD01090F0DFE0B02000CFB01),
    .INIT_0A(256'hF7F20A150106FC080F04FC0418010CF6EFFBF30605FFFA0301FAFAFD0800080D),
    .INIT_0B(256'h0615F8F3F9FAFE031115050F1007F9ED0A06070A01FBFA03EBEEF9F6040CFDFC),
    .INIT_0C(256'hF8F9F0060D08FF020B0DF5000F10F8EFFD0103FCFA02FA0F080CF5FDF5EDEFF6),
    .INIT_0D(256'h01020005060E0909070714F9F8F9F9FC0600FF01FD0E0A170CF701FEF005FBF5),
    .INIT_0E(256'h02FE02F7F4EDFB01FBF8FA090C0018FA0B1A0F09FE06F105030009FFF1EF00F2),
    .INIT_0F(256'hFBF7FE2102EAFC0AF2F9F2FC030F06EBEEF5111AFFED010B0C00090E1301F801),
    .INIT_10(256'h0206EEEE0CEF04F7F30A1217FF0107F9F5F6F4F908F4FB14F5F4FDF9FD05FE04),
    .INIT_11(256'h03090B0104F4FEFAF7E6FAFC0F0C00F4E608FF05080B13110603F0EC0803F4FE),
    .INIT_12(256'hFBFE06FE06070B05F808FCF1030300040209F0FD05000800FF100A0BF80508FF),
    .INIT_13(256'hFDFC00120AFDF6FC0108030AF9F7F50808011310F7EC030EF905030BFDF603FC),
    .INIT_14(256'hF5F30009FC06F7FFFEEE07100D04150FFE0500FC0901F9FF0F12FDFF0506FD02),
    .INIT_15(256'h060F02F60318FDFCF1F2FF0D04FE08F50303F6FC070EF1F303FF01F7F6F701F5),
    .INIT_16(256'h00F3030FFBFEFDFAF3FDFF08070502FD07FCFCEFFA14F5FE0AF80701FD020A0C),
    .INIT_17(256'hEAF9FA0905FFF8FBE90DFDEFFB0902040CFFF600070808FC0400FD080DFC0705),
    .INIT_18(256'hFA0EFCF2F8F6FBFDECF7EEFFF9F1FAF20601F5F30507EBFA14F9FE0905F0FEFC),
    .INIT_19(256'hFA01F3080B0D080E030EEFF6F5ECF50A000B05E0EEFCFBEF040A0AFF09020100),
    .INIT_1A(256'h01F401F3021F0201F900FB050C030B0E08F7FE0BFBF70DF90B06F204F903F4F6),
    .INIT_1B(256'h00040A00F9F90F0F020704F8FE09FBF7F5060509FEF200F90A0BF61900FAF8F7),
    .INIT_1C(256'h09F2FD110E0A0904F5FCFFF00001080E0D110C06F4F2FCFF020D030D08120A09),
    .INIT_1D(256'h1B030DF40502F1070B05000406F606FCF9070917FBF90107FB1406ECF20306FB),
    .INIT_1E(256'h0D02F6FD040EF1F4F2FCF9EF0601FF08FF0A01EAEFF7FEFCF9FF09040B00E7F3),
    .INIT_1F(256'hFE04EF0706F6FCEC02FCF50A08070EFCFFF6FC0315FAF2FF06FEFAFB0CFAFFFC),
    .INIT_20(256'hF50C0202FEFA0E12F80D02F5F20C05EE03130BF4FB0A0B0BF6F6F2EBF1FE1406),
    .INIT_21(256'h08050C0602F800020DFAF9041A0AFE04FA0708F904FF0507FAEE050B120AF1FF),
    .INIT_22(256'h0904010C06F8040B1604FF02F6F905F202F5E8FD06FDFD09110300FFF80AF7F6),
    .INIT_23(256'h020407FC100F0710FCFCFA0CFF07FCEA030E0FF3E6FAFC0606FBFC0AEFF8150A),
    .INIT_24(256'h01FC12040DFCE7F817F9FB0A050104F6040E05FA0305FB00170E10F7F8030213),
    .INIT_25(256'h0211ECF602F003EF0406F6F4F512090D0103F7F4F4060EFD0B0BEFF90B0E0F09),
    .INIT_26(256'hECFB0709060402070A1905E6F902FD00FF0409F9F1F406FFFB02FD0CF501060E),
    .INIT_27(256'h030A0001F0F8F5050CFDF3EEFE1008FA090AFD00F8FD0D0000F6F8FE130002FF),
    .INIT_28(256'hF6F917FE12FEFE0D00FC04F208060902FFF3FC03F2070801110D08030C0A11FB),
    .INIT_29(256'hFD010B04F7F60CF6F70F00010A01020A05FFFFF7F5FD02F8000007FBF1060410),
    .INIT_2A(256'hFBFB00FE0615F8FDEBF81308FE051618FD0F09F402110DFDE7FB0C01F7FCFC0A),
    .INIT_2B(256'hF0F2F7FFFDF1F2E7F80200EEFC0AFAF1040D0E050501F0E50D0D000D0CFDEFF7),
    .INIT_2C(256'h08080DF7FEFFF4F0E2EDFD0E000C1601FD0E0305F3F4FEFCFA06F5ECF50007FD),
    .INIT_2D(256'h0C0FF8F5F807020911F80F0802F5FF03010DEEECEFF5F6EC06F107040006FB13),
    .INIT_2E(256'hFD04000D0711F3FCF5150FFAF605F8050607F2FAFFF9081D16FE0AEEF506FF0C),
    .INIT_2F(256'hDB000BFF03FBFD021F1503FFF8FE130FED0C0C00090AFDFD0105FF050CEEF4F2),
    .INIT_30(256'h0916FBEEEB19060D160A100709F1FFF20B051B0AF4F30A0B081015020B0CF2F0),
    .INIT_31(256'hFB04EF0904FEF5F6FCECFBFA05FA130D00151302F90A160AFDF7F7080DEDEE03),
    .INIT_32(256'h0DF805FD02FEF31108FF0F0F09F3EA06080502021C05FB0503F9F9DCFF00FFFB),
    .INIT_33(256'h09FC07FCFFFEF6000C02F9FDF1F3F9010B02EB0B0CF0F8030A040B07F4FCE8F6),
    .INIT_34(256'hFEF6060B0E09FB02EFE7000B120E00FFF4F908F40803051200FBF8EDF1F90012),
    .INIT_35(256'h12FAF1F9F2E50206FC0C0602F6F3F4FDF6F7FDF7020B0EF4FBF70001FB010401),
    .INIT_36(256'hFEF0FB0C06F9FA01FD0406120EF6FA02FCF0EEF80505FD021B01F8F7E8F90C1C),
    .INIT_37(256'hF3F7FFEEFF00070700FCF7F9FF0EF7F4FF0108FCF9EBF4F5FCF60701FFF4F609),
    .INIT_38(256'hFBF3F30C03F4FF0BF7000405F803FC000C01FBF5F9FE0A03E9FB0400FCFD01F6),
    .INIT_39(256'h07FD09F1EEFDE5E6FD0C14FCFEFA070409FAF0F3FF07050B0409FE000001F4EC),
    .INIT_3A(256'h0CFEE8EBF0FAF8F1FE040BECFB02F1050AF707080409FF04FB06FCFD07130E13),
    .INIT_3B(256'hEDF7FD0CF7E6020C1501FC03020602120DFC0F08FD000D03080602FF0303FB03),
    .INIT_3C(256'hEA0102070C020802F5FE04F8FEFD03130105F1FDF803EEFD040D11F804F50E03),
    .INIT_3D(256'h07FBE2F7080EF7FEF7E8F91601FA0CFBFAFF060706FA0A0600FE07FF0403F806),
    .INIT_3E(256'h170C100805F50AFAFEFEF2EDFF03000301F6F6FFF5FA01FCF6FBFFF4F908FE00),
    .INIT_3F(256'hEAFCFEF2E9EDFCFBFFEEEEEBF1160606FDFD07040C03FD00FBF7FBF7070709FD),
    .INIT_40(256'hEB0806FEFB050E0FFEFCF9F7FDFA01FFF80303F6FAFB04F5F7F702F4F903FBF3),
    .INIT_41(256'h030601FF1AFAF7F2F7050A00FB01130A06F40202F5080D0EF9F1110701FB11F7),
    .INIT_42(256'hF9FCFB0CFFE9EFF80D0502030A0EFEF6FAF2FAFCF4F0F7EFFDF5FF0A0A050A08),
    .INIT_43(256'h010004040E19F4FAFEF300090B0907FEFCF10007FE0403060AF9F30B03FE14F1),
    .INIT_44(256'hF6FBF4EF0A0C0AFAFE0C10FA06FDF8F9FFFBF4F308FF0D03F4040BFCFC0214FB),
    .INIT_45(256'h09FD0C0BF8001307F6FF05FAF902F6FA04F4F7FBF603FBF6FDFB0C01F6FFFC09),
    .INIT_46(256'hF5DBFB00FD1225F6F9FD00F0F9F802FB100E030DF709F5E9F90CFE1307FC0905),
    .INIT_47(256'hFBF80EFAEBE0080A07F40006F9FAEFEF091512ECFBFDF30502F4F4EBEDF2F703),
    .INIT_48(256'h07030400FB03FBF0FA0BFCFE00F5F00000F6EDF60A0E01E4FF15FB06F3010213),
    .INIT_49(256'h01DE030906FBFB0A0105F5FD04ECFCF5120DFD090003050BEBF3EDF7FFF8E50A),
    .INIT_4A(256'hF1FA07F9EB021506F0EBF2F9080CFB0608F7FF0E00F1FE0C13060FF8010AFE08),
    .INIT_4B(256'hF2FAF9FBF50C10040305FDF4FA06FEFBF6FE0800F5E8F8F40209F40704F80402),
    .INIT_4C(256'hF7F1F6FC0002F6FD07181CFDF5030106070D0904FEFD0D0BF1F804FB0B1104E5),
    .INIT_4D(256'h08050AFCF707FF0511030CFA02080DFCF20002F600090AFAEFEB03060000FE0D),
    .INIT_4E(256'hFFEE02F50A0802031B00040909FEF2F1FDFEF4EBEDFEF9110A1B1CFC10FF0F1B),
    .INIT_4F(256'hFBF00402F6E5FDFF060400EAF9FAF705F5FBF4F30D03040B0B01E80B0AFE00FB),
    .INIT_50(256'h0D0C06F9FC082305E40704FAF60CFCF8F10BFDF40102F80C0B0E0BFA07FBF203),
    .INIT_51(256'h000607F706F2FE0E05F4F5F8F400FCFD07E6FF13FAEAE8E7FB0305F50410F7EF),
    .INIT_52(256'hFFF8FB080CF801FC00FF0D0EFAF4FC090FF1FC07FFFD00100204F9F50407FD17),
    .INIT_53(256'hF104F8F7FC0D080103EFDCFB08FF000AF9FA0400F8F5FCE6FB1606010A0A00F1),
    .INIT_54(256'hF407FC030DFF06F9FCFDFF02FA03E9FBF3F1FDECFA0900F1F4FC09FB070C03F1),
    .INIT_55(256'hFC020BF3F202FFFC1B10F708FF010402080F050903FCFFFCFCFB09FFFCFB040C),
    .INIT_56(256'h04EFFB04FF04F305FEFC000C0C04FD00EF0F0405FBFC07100A030CF7FB00F1FD),
    .INIT_57(256'hF5F3F406FB03000A0708F40BFE071E0E0A0101080E0C00F10AFDF5F3FA0807F3),
    .INIT_58(256'h0302F70702010002EFF80AFD020405EB0D140904F8F7FE000EE2E101E8F8F5F5),
    .INIT_59(256'hFC06110400FE03FA02FBF30B02030E0703F5F4131009081209F506F00A16FCEC),
    .INIT_5A(256'hEEF70C08FAF6040F05F5F8030D060603FA03F8EA00000405FEF70C08FAE7F406),
    .INIT_5B(256'h0D0900F80003F403020E0319FBEEF4021C1BFAF4F1FFFF15FDF600F7F0FA0205),
    .INIT_5C(256'hF213FFF30D2413FD0611FB0602F707FDF4F7EDF6EF080DFAFE00040E02FFFC00),
    .INIT_5D(256'hFDF9EDF1FD07FB04FA0302F60A10FFF7F1EB03EDF30901FB05FDE8FA0BEEF3FC),
    .INIT_5E(256'hEAFE15F30419F8100EF1EEECFDF5FC00FA0A04FF07FDFB060A0D07080509F4F5),
    .INIT_5F(256'hF9F7F4F20302EF1808000802E6FC01EEF9F70B151000FDFF03F6F40801F3EEF4),
    .INIT_60(256'h0C0F0EEEF10903F7F3F900F80F0708F50106EBFAFBFF0AFC050AFFF2FEFCFEF7),
    .INIT_61(256'hF90E061115FEFC0FE7FA05EA0D0807190E0A00E6F80B0804050402F8EBE80205),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_3_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_3_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ram_ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[2] ,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [1:0]\douta[2] ;
  input clka;
  input sleep;
  input [15:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ;
  wire [15:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]\douta[2] ;
  wire sleep;
  wire [0:0]wea;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED ;
  wire [15:2]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hD623845AE741260B5C62CC99BC41DE52CD8ADFB70769B793AA43F4C87E5D1DC4),
    .INIT_01(256'hC6921DF6275D89D486E180F2DE38EA8C1F7857C680140DF0987ACBCEF6D1953C),
    .INIT_02(256'hCD41682B874F4B7315D5F1996BA229A3B39A7CC8F09554B37F359BD33D71AD7A),
    .INIT_03(256'h8767B0BC71963AE66A1C33D789661F29E32C942F45FD06BAC8204D7DD3EB8018),
    .INIT_04(256'h807653D34D0690281B313021FBA1E72C1913F8A0A62042E7CC8BA033D9EA6567),
    .INIT_05(256'hCF0CB5A5E83E8E34F82903BD72EAEAD1AADA2F941680F20157E9282420016095),
    .INIT_06(256'hD6B700FB91CD948EF1575A7DBFA55232A2EDE0B4EFF89E5C78EC59847727D619),
    .INIT_07(256'h8640CA4CB857907EBA49506B793B4CA3DEA23EC3A190230E0FA310228174B348),
    .INIT_08(256'hC89C49D99B21AEDD86A211C67E90F0CE9C5B06FE2832B046A05EDD5BE7512DAC),
    .INIT_09(256'h524634137D8287E460CC15D60B2796073DD3B7522BA73EC377285B582F6CD5AF),
    .INIT_0A(256'hCA12D8F9EBC58280E566E46A4172174F5814A110BCFF94D2F1ED046341C7CA4C),
    .INIT_0B(256'h79004C2E7718248EF258C7BB4D675D92710B72AF5138F0BD998ACA1C40E266A4),
    .INIT_0C(256'hF2628096F878C2EB3BA92AC212657C73E3F2ED175EE869EDAD5C5036EF1EAECC),
    .INIT_0D(256'h7D66E49CFEBF3447A18E62B95EE6936FF5B7AD701126E45A780BBAC016E9791C),
    .INIT_0E(256'h64A01BC3D10700F483B1169F6346AD99E41C7A6CC35DCF8933823A52CF296141),
    .INIT_0F(256'h681A5F77E1F32219DCC05DD7DC3A5E5573DEC333ED1382F8D38CA77194B78CA9),
    .INIT_10(256'h5F5873740181E8BA042C5ED31F7E333B91A369E7F1AEE41186161AD375B2C4F9),
    .INIT_11(256'h7E31A256F3D551187EF8DD3E90F2D2BE19B2B7755735CF8D1B75541116683115),
    .INIT_12(256'h77005994ADBD314B87D6B5D2E674F40E920E2D0080E2BB9F3990AE9C7FAF28DE),
    .INIT_13(256'hA1CEBEFB326B0317F7B2007B137F59D211044BD4BE2FDA2C8E83C0C732212A05),
    .INIT_14(256'hF4539D759B1895C3D7E62CCCE97895AC2DB7E082C298658EB7B41EC7EE5FB198),
    .INIT_15(256'h06008DEF0DB6FFD31A3219C8DB21DD9E84109E4EBF95023D142936FD609E9FE1),
    .INIT_16(256'h1B33B0A16276F27771C941A4610B40A1996FECFE58171EF408ED82E8661C3154),
    .INIT_17(256'hE5CCF2DC6E066510111BE16018E58C0973449D06B80DB54DF12A97708EE832A9),
    .INIT_18(256'hCD5AE6A6CF89E5DAF52E5FD9CBCF5AFB3AF0A078862C75B16B69A3E5150659B9),
    .INIT_19(256'hF47E1543A16D7DE6EE68D10125F6BC8EA91BEEB3D56DAA3711404A57E4BCAF88),
    .INIT_1A(256'h7B2D1B0D9242F31A0B22E747A9190FA531138A767E06B1D7807027E0D0F9FE41),
    .INIT_1B(256'h6AECE9FD4B493D1059D550B35D8EE1F13B2E0952C05DEC74224C9A7AD644211C),
    .INIT_1C(256'h5E887AE8DA62BC1C5AE401A8FD1046A4856C935A19B80A82D1097A7B73ACE4AB),
    .INIT_1D(256'h68F6999E7D56CF9FD0CFF0492039F8FC673FE7C9D741776E9519AE9ACACD3D61),
    .INIT_1E(256'hE9D3E99D789F8C7361F6B7CA30A45863F5EB642E474F79BA8AC37D41EDA3FE23),
    .INIT_1F(256'hE611A201CACA54946900EC1BC90062482F49B2A4B2A3ECA9C5A7941C30D3A9A8),
    .INIT_20(256'h20FFF39EDF22500690AFAB79930AC14AA3CDE215FA0CBE7F2C30EA35DF0B84B7),
    .INIT_21(256'hA01D845DEA90D3E30B1E4F6488858826DA5457681D8DEDABFCFF24727A83FC0E),
    .INIT_22(256'h1F670B6A09A78689CAB1D861CE08D16996179637D521E9BCF74E0F1AC6C64826),
    .INIT_23(256'h54EEF0A30AC860D9EF5E4CBA503D182FBD3B920D5517FD890829522A4C6EAFD5),
    .INIT_24(256'hBE1287832612217B305646E99FEE848A8386F91EE35178581D1DFB7BE3388CDD),
    .INIT_25(256'hCEC634CDE6681838B9BAF9E29F003EB935EAA6AFBE6DF766DB206B2A4D7A07EF),
    .INIT_26(256'h7E99436A909E0BA739D011711353836873A89D4B8DC43A2AEE21B6375CC93BA2),
    .INIT_27(256'hD6E63DA20452FADDB02072F2BAFD26B266E77C402A5B17D66E04883192F87C57),
    .INIT_28(256'h53F635AE39F89E263E71C4A120B03DA9E03CCF33422933046D134E8FCF30B689),
    .INIT_29(256'h848AE6D4DE9E467329A4E6B29E9B44752AC8353DD5999EECE9C68D1380D2D800),
    .INIT_2A(256'hDF22023D627B55AB63D5F5F348624CC351E8450CF516FFB5E1CAE797592C0507),
    .INIT_2B(256'hEE9522F7922C8D6534785BD83FEE645EF60843C2D89BA6ACB033D01BDF6CE677),
    .INIT_2C(256'hDC3DE61B65C0CAD659D232F0241A160EC40A0282DF591D21468E7E6572FCD040),
    .INIT_2D(256'h412698A01CF03EA84A0A153EF4E975091224EA6161DE731B13B10CDD51C20C15),
    .INIT_2E(256'hD2B2568A2FC8F94112AC75006796FC3FBC6368445038DF0A1A4F8773684C3568),
    .INIT_2F(256'hB05592EB4D6A573189F60EC72874CE8690D22D6CF39E4564895815C929375969),
    .INIT_30(256'hF2098E6A736065410300D7DC9C1E47B63F3A6F77BD38384B4FF38EF546FFC2C5),
    .INIT_31(256'h8F476A1C28F30D707C794760838688B887336C19E5800273EABC8FA942F50CB5),
    .INIT_32(256'hAAE3AA102D01050EC4D674F14E72AA333EA53A7DFD7AC495FA337B3C2E4736C3),
    .INIT_33(256'h5A12205F053C93CA94866467F9A8D0C6DE70B77E5990502722EFF48AFF1430A4),
    .INIT_34(256'hDF24663B7BB9D242446EA13ED8067CCA582BED08761CCF11E92779D82D37347E),
    .INIT_35(256'hA957A699E346524EC9E72C1E85C7EE6D7EFC7BA1ECD319DD58D6DFF441E6ED86),
    .INIT_36(256'h22064B63894B33CD5B5AE1CCB7DA430FE9824B52395C65C2483D22F788C17F20),
    .INIT_37(256'h423ACE0B921DA0FFF1F059D43610C419FD11F94DE578369B57D404F9F6FDF869),
    .INIT_38(256'h00000000000000000000000000000000B48D6E3E677D0DE4AA56B13052B06B70),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[12:0],1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED [15:2],\douta[2] }),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED [15:0]),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(sleep),
        .WEA({1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[15]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[2] ,
    clka,
    \addra[15] ,
    sleep,
    addra,
    dina,
    wea);
  output [0:0]\douta[2] ;
  input clka;
  input \addra[15] ;
  input sleep;
  input [14:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [14:0]addra;
  wire \addra[15] ;
  wire clka;
  wire [0:0]dina;
  wire [0:0]\douta[2] ;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4903A55696E319FBF7BA876C11139E224EC6CD9307787563EF6186452AF7766A),
    .INIT_01(256'hF677649B0D384B8C0F80E7B68696130B1991F1EE57E2A4CEEFB510B876A04475),
    .INIT_02(256'hEAAA6BD91FA846CE56FEED318FF9BEA877C7A4991E8E0EB5920E4CAD152E220B),
    .INIT_03(256'hAA9E70C927F6EF8DE45EC979A2ADDF19237F03C19FB7FBA55E681CCC2E20E7FE),
    .INIT_04(256'h55F4B82CF3DC5F0F4B127C9876412C53219B444B946E4664C4A3CFDA8E0A3BF1),
    .INIT_05(256'hE6CFEFF3AC8C6955231BAD9AD98054D78772C344348E13D5DB22A6B30D73B394),
    .INIT_06(256'hF94DFAECB61DCFD063597DADE106C2690C198892367BBEBD180A3846CCE31DF5),
    .INIT_07(256'h90F01EC1A51837BAE63024E383CC8C0A39C7E468B296441D307D823B82782B5A),
    .INIT_08(256'hADC4C956CE743F982D5CF077595001B996E7E9ED2639A7E6BF140677029D4790),
    .INIT_09(256'hC337B19A5F7226A0C968DBF0C4DA1A2DA0661453731D8E63D6CB4CB525556271),
    .INIT_0A(256'h140892DA35E32CE5D9D2847B527296F11EC705BC4D5F957E4A0ABE83EC61ED78),
    .INIT_0B(256'h785A2A8C5C43F1E7C44B5508A9DE37F89264002CD78FB2C8329DEF1FDD5C0157),
    .INIT_0C(256'hB552412635B2AE90FEF7B455E3C8164EFF6B01DB4051561701ED6E5325404AFC),
    .INIT_0D(256'hCEA2D301C007A6697E1F0FBED8A8539B09D23F0374790C5586DA0C7BA0BECA34),
    .INIT_0E(256'hDF89D08D292D318508FE7D06D2B3A83B843C1A5CE6DB6C103FCF3A5F452D740C),
    .INIT_0F(256'h293BDA54AF931C1CCFEE5DE59067BE22FA72044375B0A89FA141058D2471F5C2),
    .INIT_10(256'h9E9075B06226B77AAB36FD55A99D3348F0184C2B9398CFD880E5FA0460CD6D25),
    .INIT_11(256'h4F3210312119EF231362DEAA65FDD6FD0DE859F0248ABDF915D2782DDD196BEC),
    .INIT_12(256'hB0F57845488E112FB92B8EC9893ED9CDF37201C0C1608F46541801F6B07BC285),
    .INIT_13(256'h7556805A8BCB984DF19B595A249D8DA4AC615DED4833892A2083BF75A39BE559),
    .INIT_14(256'h77D1B4923798261D0DEE9C37825A3F6C67476638BD7D7DA62EDDA1E819AB10D8),
    .INIT_15(256'hE720558E46C3454FF2185A502ABA2485D91A1D83AB454D353CF16A04C48F596E),
    .INIT_16(256'h4E0724532149CBD975574FEFBD702D5CCB72F327D41DEA3E6075EB901D94E46F),
    .INIT_17(256'h633B397CF1D7AF54F8A25E8B679D192C199575A65D992594F5A50CE603ABC089),
    .INIT_18(256'h46692064DB090BB47AF931F548F4E79FFF81D7B05226B73E7A7AD2A89115349A),
    .INIT_19(256'hDFD7EE17B6C36BE5A993BA56DB335DD56A4DCC9CF0FFD2062BADB6052EB228FD),
    .INIT_1A(256'hE94C8E4C3042326BAFF2CC24B53C5AD29386213A296B211BFBE817E98A2D96D7),
    .INIT_1B(256'h182EED4E96E4EF689220EE5873D7381D127221ABB0C6FD1F4E3C163F5FAB04F3),
    .INIT_1C(256'h1C33A737A5B504A9AFA94CDDCE757ACECE0313E77FED03D3087A4332FBAA8864),
    .INIT_1D(256'h20E85F9A147CD153CACCA24B13EEB5F066482AAB606098B1268047ED89DD5880),
    .INIT_1E(256'hD0BF5AACF029EB1DF04E47035D14DFE4C62CA2150A3FD214082965487D9983A4),
    .INIT_1F(256'hE1FF56811772D0A8F3A40CE659961F931834251D68AD9430FE9535347E50AF62),
    .INIT_20(256'hCDB9EE5401690CEFCFA2FB1F60260141ACA633E70DFB16CFC60C905ADCABA047),
    .INIT_21(256'hC37C4A3BD31CBA394D66D778AEE5A6D2C260A7BA0C1A870C9CB92C55B109DF03),
    .INIT_22(256'h6601635A4CEA57ADA28279616477AB303D07C6DBAF094767B8853D91A54EB62D),
    .INIT_23(256'h1AC912AB3AC09CD787A6AE65CEC3F7695C0A8C0FC7F0D495C0CB0B4F4462938F),
    .INIT_24(256'hD4D14DF996B7C4BE8EC6850569B2D904829CB7EAA67EC78E3CF83697570164E6),
    .INIT_25(256'h2F49946AC521176F13F725E02465BDA7F13C0F892ADC5EBE0FE92C4C425394D2),
    .INIT_26(256'hE0660BA2292FCD376C204BC54316CC6D5E548B6567F3B50C48C8260818CAE8D8),
    .INIT_27(256'hA11A48DA20C49585C45903C2DB3AD496692E9F390A330E5E8AB0BC076A6191BD),
    .INIT_28(256'h3936EC7F96ACE1BB65A88D7FD4D8E000B6D093689CD93EFEAC635E625686AFFE),
    .INIT_29(256'h590881B8AB44D592DBDEE27384F90E26DFF05A232230E20435A221597E5A0AEB),
    .INIT_2A(256'h3C488F5BC7DD2AD08139679B9A3799ACA9F0630FADE55F5FFA6F98469353DA9F),
    .INIT_2B(256'hFDEDE31D4B85E05C59C65C9A6E2893A92CE20441F4BCAEDDFB765CFB0E4FDB18),
    .INIT_2C(256'h85CFFF1E588C58F3EB527F789218249C3D15435B52AC9E292F0E2157A2EC9183),
    .INIT_2D(256'h8B17CECC97FEC2B6FA031F3281B067D137CA72D7D951C58078D3E9E33E4BA314),
    .INIT_2E(256'h7A3F7260A40BC405DA87F00AF38118D293BF8103CC7C6D56EFCADBECBA91C304),
    .INIT_2F(256'h46B4A06B616220581FACA75BAF3B8BC0B3C798DC24C7B42944F095DE4BE46231),
    .INIT_30(256'hCDF9A7EDC1DA6AA28CC99F063B66BB8D531712708AFE13462907AED1D2C4D388),
    .INIT_31(256'h146DF3604B26A77412C6B930759D1D03013C9630BFC9923752AC50AA39033197),
    .INIT_32(256'hE4AE5DD6005B625C8A9EFA862BD1C2B07A5A45A90D98EA826268010D28E05FB2),
    .INIT_33(256'h9A8302F6571F82722B745AEF6F96B01B75BB38FD43710219403E91920EB52B89),
    .INIT_34(256'hD16ED061E8070757D3B185613EE0491278A6298A71A5785FEDE2F227CCA66773),
    .INIT_35(256'h4EB4D4D7B9378A05B9A4835BE253FA7229B814494211F1D9DAE3C269C36C046D),
    .INIT_36(256'h2C71B78603549FB147B5EB887F14C65663CD3FB642E6CECDB51BD11BF19D4C4D),
    .INIT_37(256'h757E03AAE432AE6A5DA26D8F61C73BBDA7D131BBFA395C247100E9DFA8A4508A),
    .INIT_38(256'hC3D2E3BBF0F22E7CED45636C5549ABFC0BD03147589A6B404B89417505105B3C),
    .INIT_39(256'h702FF23CF46E4515F84FDA554F13B79472CA2097E2AE88027AE37BF24B18C6B6),
    .INIT_3A(256'h33D19AE2624FDB55D2D559E9070D976280075DDCCE02ACA4FC43DE158EC3E374),
    .INIT_3B(256'h485D5DF2AB5E6DF926D1F7D14C86751F89DFBB8C97B496BC66B5278C5915E182),
    .INIT_3C(256'hDD18A743A3DD1AA3FF51F518659A4946544DFA253AC7AFFD0B72A53ED3D7D86B),
    .INIT_3D(256'hED0706F938E857C771B22AD0D63C92ED69FD118C04F7458BAD31487E4152EE54),
    .INIT_3E(256'h5D47BAF368E51518341BBF6E9622E78B1A1F5242780220F368294110E1FAF003),
    .INIT_3F(256'h1A72662F0622DF11278CF868D44823BF64AA4712D8EAB9D0A7129B69061EB661),
    .INIT_40(256'hE63D6247A73BE614A93EF6BF7426A77198242DC10FD8136894BD08B8463EAD81),
    .INIT_41(256'hAAF8F9F5127194C0415FB2FE2115B9D3AA096E0D8C4F03EC68847D5D05A9576F),
    .INIT_42(256'h9FAC0A28DC44D98AE8B9205F839CD7A4F3E443B507C5BDAF903C16ACFA52957B),
    .INIT_43(256'h73231366A33DE0EA701B181A6055C1F0A9828BD2E41F0A8B29B46D961E1D60EB),
    .INIT_44(256'h14DDE893DD4B7196AF1C443BEC08727477A7FF0B9CFABD356FC73BDD7250247C),
    .INIT_45(256'hF69035B97A403E3A739A184DF9D81EE9E891D10813AE4B079B547213ADA569F1),
    .INIT_46(256'h0D8CCDA72F088227540F1155889DA9A18C638136324FE7A8D7CB9353E4B5A557),
    .INIT_47(256'h1139C4CE4182FCC976BB2F334A7390A479F58145C936B5257736FD0E5FE2BF6C),
    .INIT_48(256'h958B8B5C31D5BCB7E4C0CC51283857E4E4568D4EED0D4DDD03CE7F4F58399453),
    .INIT_49(256'h708E356276F35A3AB1F0006947AD95EB4C7B7C50595D635C7CDD15107BF5CC4A),
    .INIT_4A(256'hFD9768E0EE5A42862DFA61DB61531080CFA31B23829ECA16C2B6480E8AD42C81),
    .INIT_4B(256'h433E37B13A63B4A1DBC89B4E8E97C54CAB63B819ADCDD94D4318C3BB70BD13A2),
    .INIT_4C(256'h8A966B3782EB3751A631CAF856755484953291849E0A63336FB9D20EB426EB64),
    .INIT_4D(256'h0F1E368D2880F90214DD8F4F931D16596724D97E0F5922B7AB2C5D29C03F952A),
    .INIT_4E(256'hC7EB5611695B2DB2A911A1B5A01A5A18DA28A8AF514CD854C0071C443962E2EC),
    .INIT_4F(256'h9EB94863EB8C5C7E40A59060A1081FCA06D01266F1751E64A4F089D5C413A422),
    .INIT_50(256'hAD6AFA7C229FC5B7A2CA2C9EA2458A585C46510540C4AE58FD9A1AD4FF4FB1FD),
    .INIT_51(256'h95D3B496E87F3128A95EFC9965B0F3F976C734A8D8937F62FD15F37F3F135D3C),
    .INIT_52(256'h702C1B2A32FE0B5F6C292850841C2DEA7B9DC7DD2D35D69C17F5151186C42D93),
    .INIT_53(256'h6EFE3511B2E9DBE730918F85783FBB8B8A2836982C2482E8A9FAECC1C90A527D),
    .INIT_54(256'h01E5D4997C19113BCB9E451C596C754657F486092825A382F7EB29D4116C1FFA),
    .INIT_55(256'h3131A5DECAB4096066361AF458381781F9C70B61A5FA7A0D98798F1B0C35F447),
    .INIT_56(256'h29389DD38233B0E1E8D0CE28FB3F97804D7D2AB8349BAF977BE71E75451C706C),
    .INIT_57(256'hB91B048FF9830EC787641F6B251E5C2ED3904E7176CBB7EFBC05FC48ACB6EA64),
    .INIT_58(256'h88C99FE7837480DB4B9CE18087E8D38EF0A48EAE5FAC4BF8CF9735689E13C44E),
    .INIT_59(256'h435D2894C94A4C41C8D20918AE56FC363D7AB482421C985A781C76F58DAA1163),
    .INIT_5A(256'h710E4E2EC5DB5B7728563DC117CC2105C062EF11F750033A86C38720A2AF1F78),
    .INIT_5B(256'hF0EC0D0D3B5F70B3FA3FE11719C4F00350B3D2E0BB59FC29B2040B49FEF2905D),
    .INIT_5C(256'h669CF7669C34B8AE31B00EFB29DF31364386AA71F3919D05C9B8986D217D4488),
    .INIT_5D(256'h81374C7BA3143B83FE1EB424BC4399136E07CD9D648FD43B4FE115C04DD1B3FA),
    .INIT_5E(256'h8A9A14EF3C126E5FA9E3A7C5091D000AD011C5890F3F4E14E77E849BDC3930EA),
    .INIT_5F(256'hDE679BF1E3F075D83FF2E8C273065EAF37C5EF99475BE4222C9E49C2F1977388),
    .INIT_60(256'h57F941FACA196272DC9754BE626AF5D2291B8A482FAEFB6A4A62F41F5AB8907C),
    .INIT_61(256'hC0459320D6476DFEC053DAE8D62FF73AA2DD3E4F87D4F0195273F8FB242A3A13),
    .INIT_62(256'hA4F5AE4189FB63ECBFC51BDEEE48722786C2CBC4B188512C31103D30D6B0F09B),
    .INIT_63(256'hC207C87FF3349303AAFD0322806E26FB8A49F6B4C4859512D51D7E80918FFEF3),
    .INIT_64(256'hEC43A66E4D76618BB094C26D71A21B08E62EDC8C9790E53F8B9484CFECEC1F3B),
    .INIT_65(256'h90F2B4171D221DCCD636FBDADFFBE331F6D32EF9F19C7F9E6A8771B11529313E),
    .INIT_66(256'h68A996628E44DCA553D5E678FE1A7F5BFC03F761772CC60B6622551491A34343),
    .INIT_67(256'h048A71A3A6FD3F13C47D8B8C54C7359CB0BB58FD58E96A77ED5132946ACE5EE1),
    .INIT_68(256'h6653369A69FB8EAFBC11DB7E85B006BFB52F02D8F858E0B2509D6271B280CE6B),
    .INIT_69(256'h83B70F908EAEE7C3903AA4DBEDB6A93F3DB817ED4C3844F18557A87C3936D08F),
    .INIT_6A(256'h40702FE5F31551A6F20C2FC54D76AD25FC0E1D89BA29783964B1517471487102),
    .INIT_6B(256'hF31AF6C5B9870D29D2A45F07EC9B5AB994E714C4D84D58B4B1F9A314BEFCF478),
    .INIT_6C(256'hEA7E7834736FF485250E8231D3C61B8DC67616AEABE5E78C9FD3503EF1361E31),
    .INIT_6D(256'h03CC1FEF0DDF9E6FA4C4849F05F3CBFD1B2793A32181B69B73554A56821DF783),
    .INIT_6E(256'h8FC09268D0AA7ECC91E60C1E60F00A1A53046439B35A9B86ED71737284C628A1),
    .INIT_6F(256'h616F3252F1FB0C3470923B835883AB8BB26D0B0059A7BD8AA5E1EDA640D2FDC0),
    .INIT_70(256'h177256717EC77B0E316D20F5A3DE98A929BFB7DD51608A164F72244531D4CFA7),
    .INIT_71(256'h91BC3E6EFDA955410BD75C71EDE176917D7E8A391706FA905D81B938AE76260C),
    .INIT_72(256'hB144E753667A5B1C55B917F3FBAF710EF990FF575F87F5063CEB81C80E72184D),
    .INIT_73(256'h4FD87D85BA588803F0FBFBEBD3F6C68EB7515788DC0E07842F7A24420546503D),
    .INIT_74(256'h1046734A4EDA21312A2E7165C781023FF1C5B33654EE8ECDB7D0654D0B448D7E),
    .INIT_75(256'hE564E0F0310108495D87F0F37ED1A51497604D7B60C290420D77B8738EFAC322),
    .INIT_76(256'h44653CFDD5CA71EF8044E78BB4A02CC9FE6CF304D137E7DED0F177C32C9B367D),
    .INIT_77(256'hA48C2208DE91284E27BCC6C70B8781E5EDD24156433AF4C2CF78ECE05FA14043),
    .INIT_78(256'h432EBC2008AFDDFA8595F2EA430498FB3370039B82C695D48C4C43F1732B9332),
    .INIT_79(256'h080E14B8DF2ACAB477A8E60F67F032509274139BCA5442C101DD1AB2552483D0),
    .INIT_7A(256'h65DB47554827141CCF5F6FA58E8F8B6BFC8D634760E2195659C2648B3635D30B),
    .INIT_7B(256'h1D7C1CAD9D8B2C039879703707D97DDDE62C9749FAF91F8DB634F67F8655F336),
    .INIT_7C(256'h4C88A81C8EADD1CD6AD8B719036F370FD144F8931D4C66659E6586DF8FEDD124),
    .INIT_7D(256'hCCF41A3B5C6DBB4E7C6C1D043D49AAF22592C8ECC4D8010D6969B541F1B87DDA),
    .INIT_7E(256'hD26AD75B3232A32FA2EAE54AFA1E3001627FADA0698F3CC4FCAE8772C02CE1FC),
    .INIT_7F(256'hE286B6275907D095243A19C17D16105D2A29354ABAC4A53740362B0109BCA001),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:1],\douta[2] }),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized4
   (p_39_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_39_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_39_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4B13E81E18CD63C841D8DF30BE88785B8044019430434D83034CDF104D966E36),
    .INITP_01(256'h1A1393037BEBF80878C3840E46002068F376C4E3C079F828770E911FBF2DD2B8),
    .INITP_02(256'h44847113D8E25920D27E201E38F8AC68F33B20BB129CC64630B44A9CB5F8E75A),
    .INITP_03(256'h7D89B616011A6406463CD60B3426A24BF09960D06784E01642FF96DB183C698C),
    .INITP_04(256'h40C178F9772E461E0F5FDE57FA2343C7834D2401B1903E3487E6776692D40666),
    .INITP_05(256'hD864325B1C389EB23898B196839DBDF4E6FA11BD1C205C5E46B3E6FEF707C26F),
    .INITP_06(256'h8F3008A6D8FF220670606FC464B1282807FD094FF04FA707FA10DFF1801D5A9F),
    .INITP_07(256'h79638880416377E262E661980C2DBD3F633018E8663A3F9037C0A1F00B8185B3),
    .INITP_08(256'hFEDE48334E566C883DFE0E30BB372A0C3047EC9B27899FDED267C01FAC339092),
    .INITP_09(256'h99BAE5FCCEDA12451FCCDE858CF0FC1207E0277261C072E403AB169630F085C8),
    .INITP_0A(256'h15B10C7260331B3D80D31FFDD00EC8A31F0D4A1FE8E4E8817D701C27E476E7EE),
    .INITP_0B(256'h740C85918C0B407E8B29027AF750660B6E13AFC17E880006EFCEBBC948CCA206),
    .INITP_0C(256'h22171F8FD3BC7EEB697871878C363B43C459DB9FDEFE7A929FCE1A17B8C7CDBE),
    .INITP_0D(256'h3A071F84C0066B6989FAEC03D121FB0DAEF9BC1AE07900E701F841E4C32E0EB0),
    .INITP_0E(256'h698ECC78E163DDF790B71E1C4FC1F000CEF40C17C2A9FEE278C2DC43D7A87E8C),
    .INITP_0F(256'hC9048930E45F87C37FA7BC8D880B39FF8989C1BF6570EF73418F098C35F39B37),
    .INIT_00(256'h0AF60000FAFB09FBF30305F804FEF90502F5FD0DFEFBF9000904FCFD01FDFA03),
    .INIT_01(256'h04000C000500F7FD05F7050CFCF2040EF4F409F7F5F4F3F900090AFF1213161A),
    .INIT_02(256'h021CF2F409090C0305FF00040706FBFB06F7010BFEF600EAF6070B0E0F00E4F0),
    .INIT_03(256'hFF04060311060B0800FF130707FA0712080C1708010304ECF60405FF00FB0905),
    .INIT_04(256'hF600F6F4F8FAFD06F9090E05F7000A090AFCFEF5FB160C0905FD0AF5FA07FCEC),
    .INIT_05(256'h05EE00170A0802F6E9F90EFCFA000E00FEF602FDFDF9EFF51107F5F707070C01),
    .INIT_06(256'h080303F8FD120A08F9F10900FDF20AF500FBF70F0302F9F6EFFB0400ED030101),
    .INIT_07(256'h0BFB0D03FA08E9F40C0100F80306FAF6F6FFF510FC040501090209FFF4F9FB12),
    .INIT_08(256'hF304F0F1FBFFFFF10203FB08FCF70AF4F2F709FF0D09F701FB04FFF0F90C0911),
    .INIT_09(256'h26FBF8FC01FCFDF801031604F8E9F203F70502FF020701F0100208F8F7FEF4F0),
    .INIT_0A(256'hF9F40B061309000312EEEAFAF80E01FBEFF1F5FFF60C05021109FA02FE0A0D15),
    .INIT_0B(256'hFDFCE1EA0B09F0F70CEDFAF600F0F30DFAF1070A09F80608FCFEF2000F08FBF5),
    .INIT_0C(256'h14F3000803F6FD02060E190D0E0409101710FF071212000402F2FA0CFF08070A),
    .INIT_0D(256'h09FCF4EEF5130703F9FF00060605EEEAFC05040601FA040504060304F6F8F50C),
    .INIT_0E(256'h12E4F9F1F111F9E3F8ECF707F60BFCFCF4EAFCFDFB070C0E01080707FB0C040A),
    .INIT_0F(256'h05040BF0F812F7140F0018F90700FCF5F8180CF60E02F8F808011109070AF1F8),
    .INIT_10(256'hF108FDFC05FE02FCF1FAF6FAFB151103FDEFE60003FCF6F80DF600F5F606FF0C),
    .INIT_11(256'h0501FFFC1B130C0EF70AFCFC0AFF020C08FD0708F505FF03F80511FDFFFE0A04),
    .INIT_12(256'h0D0615FC0609F502FF1310FAF7FB0701F6F9000D02F5E7070EFC060B0FF6F40C),
    .INIT_13(256'hFCF8FEFA0D0AFDFB0007FBEFF900FDF80E03F5090F060708F701FBF0F801F3FE),
    .INIT_14(256'h0C03FFFBF80C0B04ECF7FFEBFB141B01F003F801FBFD040004EFFB06F70B010C),
    .INIT_15(256'hFCF409F9050EFA0209FCF7E5FEF9FE0F0F09FC000B070108020201FAF3E9FF05),
    .INIT_16(256'hFFFD01F5FC101300F2E3EC000A12EE0601F507FEF90500F90309FB050A091405),
    .INIT_17(256'h02F5001009FA0909F500040E01F900110DFAF8F8000C09FD020C08FD0901F0F4),
    .INIT_18(256'h121005EEFB0B15090310FAF4F7FF150A05EFEA08F00317FFE9050902FCFB1206),
    .INIT_19(256'h0DED0200090BF704FEFEF4F7F5EEECFCF00B08FC05FBFF14F1F207FBFD07FDFC),
    .INIT_1A(256'h13F8FE0502FCF9F4FD040D0014F40A1CFFE8FE1512051201050103F609F1FE0B),
    .INIT_1B(256'hF4E8F4F1040D0202F60307F9FC0B01F704F6F809110A0B01F7FB02FD0201081E),
    .INIT_1C(256'h1912F6FA0AF6030C0704F70708F7FF07F30BFC050B06F80803F90E06FE06E4EF),
    .INIT_1D(256'h0AFE120301F5F610130AF9FEF1F80A06FFF900FF02F5FD0300110505F60FF4FD),
    .INIT_1E(256'h13110707051000FC0D0705F7F004F30E14E9EB0B0DFA0007070B0E1E0DFCF609),
    .INIT_1F(256'h03FEFDF3F5FD01F9ED031108FA0202F1FC1CFCF008EAF80401020AFF07EFFC09),
    .INIT_20(256'hFB0C08F70A04F607FBEB07F405FB0411050E070905F4FF0B0BFFF60408F9EE01),
    .INIT_21(256'hFA02070E09ECF7F5FEF9F80804FBF3010AFFFDF707F7EBFB0EFBFD0402FCFD14),
    .INIT_22(256'hF90BF2FB110601F8F80411FF0D05060D0102FDF4F2F9FF070A0EFBFD0BFA0203),
    .INIT_23(256'hF00D110B0101F9F30FF60209FCFC00FA1307FD1300F6080B0309070C060304F6),
    .INIT_24(256'hFDFCF5FDFF0CFF0C0608FF000706EDEB0CF20902070AFFF1F0F7050C0CFDF9F2),
    .INIT_25(256'h03090506FEFFFAEA02FD00FCF3F0FCF9FBF901F2F4F5F70404F70FF906F6E4F5),
    .INIT_26(256'h06F2FAFF0CF6F0F90802F501F8F2F90305F9010714F9FE01031005FFFCEEED01),
    .INIT_27(256'h03FF000103050603EDFD0A060C0B0DFB07F9FAFEF2020E00F5EEFBFBEB0B09F0),
    .INIT_28(256'hFEF4FBF708FAFCF90001000104F0F5F3F3F1010A0702F60406F1F305ECECEAFA),
    .INIT_29(256'h01F3080617FFFA0AFF0AFFFB020BF9F5F6FFFD010FF6F905F0F1FDF4F2FCEF07),
    .INIT_2A(256'h070E0AF9E7F607030311FB0302000C0605FB07F2F5F5031B0AFA01FCF2F1EF03),
    .INIT_2B(256'hF7FEF5090BF6FA0EEBE2E2EBFB06EE0F101308E3060104F7F40EF1ECFBFD05FD),
    .INIT_2C(256'hFD051C0A1004F3F9F8140FF6F9F710FAF713FCF6EEFA09EFF4EFFCFD02FA0704),
    .INIT_2D(256'h0903F6F0FE051206F00A12F9F8121209F606EEEF040C07FAFE1000F30BF1F708),
    .INIT_2E(256'h060E08FEEEFB08030701FDECE70B1409FE1503EBE5EAFE02FD09FEF70102F604),
    .INIT_2F(256'hF5F409F8FF0B110C05FCFF0611FB02081005FDF40306FE0102FC06F8F100FEFB),
    .INIT_30(256'hF2000503060E12050E0805FFEEF704F706FA03FFFE03FB06FE0303F9F2F5F5F8),
    .INIT_31(256'hFCF3FDFBFD06F9060C0306FA04131108FEFE01F7F4FBEDFDF2E8F2FE000009F5),
    .INIT_32(256'hF8F8EDFF0F0C09050EFA0701F2EDF2FEF90CFD0315FBF7FA0501041613F6E5F3),
    .INIT_33(256'h1017180E03F9F6FEF6FAE9F9F4F20EFC00010805FE0106FD07FE0807F8E7F1FD),
    .INIT_34(256'h02FEFD1209FF0507EE00F9FB070E16F40201FA0AF50907100901F903F6020904),
    .INIT_35(256'h0FFBFEFD071B090A0CF8F7000604060505EFF506F5FBF7FCFBFF09030DF1040F),
    .INIT_36(256'hFFFE06F8FF051014F9F3FFEFF8FFF7F8000AFD040C09FD030601050A0EFAF61B),
    .INIT_37(256'hF3050A09F4F5FFFE0100F9F30F04090E02061300F9100701FD02FD0805F3FE02),
    .INIT_38(256'h0A080701FE07FCF4EB151D06060001F6F904060D03F800F1FD0EFBFE0C02F3F2),
    .INIT_39(256'h040AF4FA07FBFCF2F1F4070D14080B10FB01F40B090A0DF6FCEFF9FB090A0700),
    .INIT_3A(256'h02FCF50600ECF2060F0AFDEFF900FA011008FCEFFFFEF9F6F71705FC00030E0E),
    .INIT_3B(256'h0FFFF0030D0DF1F70F01F6F905050F03010C04FFF7040F05FDFCFD0AF7060803),
    .INIT_3C(256'h02040906FAF90B161103FC07FBEF07F2ED03F1F4F2FA0BFE1611F9F9FCEDFAFD),
    .INIT_3D(256'h09EFFE0B0700FE09F8F6F1050CFCF90511EFFB0B06030BFFFD0208F9F5061117),
    .INIT_3E(256'h00F60420120300E408FCF5030806F4FA05FBF5FE12F7F3F1E0F0F1001307FC04),
    .INIT_3F(256'h03F6F0F7EE0405E700FAF7100F03F0EFF7112002F8040404FF0E0C0315100907),
    .INIT_40(256'hFC01FC06FDFC17090409F3FA0704F0F4F70504F81B151C0FFD020CF90603F90B),
    .INIT_41(256'hECFE07FD0800F50403F3F30200FCF3F9FAF605040C07090C150108F3F5F0EFF9),
    .INIT_42(256'h0D0CFD030AE8E5FEFD011114F40004FEF90811F6F7FDF4F9F5FD02F7EEF1F30A),
    .INIT_43(256'h0B08F2F40209090B01FF0F110AF7F8FAFAFBFD09F9F11A0CF00208EBEC00F8FE),
    .INIT_44(256'hFB03F4E7FE02E6F40B0BF1FE0BFDF1FF1908F902FE04FA0D130A0A05FDFF151C),
    .INIT_45(256'h0709F0F4EAFF0FF1F2F5EAFAF9F5F00E150F0300F4F7EC090C03FDF30D120E07),
    .INIT_46(256'h13FA0701FDEEED0F06F802F803FFF40006FFF911F2E90002FC0A120FF7000A06),
    .INIT_47(256'hFBF8FDF4E8E3F507F1FE05F9FCFEF70A0FF90805FA1A0D111706FBF10004E7FB),
    .INIT_48(256'h0516FCFB03010905F4FBF5F003000C00F900050516F902EDF0F8050DFA09140F),
    .INIT_49(256'h030204160810F4ECF903FA04F802F9F30B0B06FF17FBFF11F8080DFE06ECFC0A),
    .INIT_4A(256'h08FFEF01050F0EEEF7FA0D0A0B0A030511F9F8FC0B00ED04FDF5F70D13FD0409),
    .INIT_4B(256'h0112000608F8FEF2F5FCFA0002081E050A08FA1000EEF1ED0EFBFCF30819EF05),
    .INIT_4C(256'hFF010007F7F20907FCFDF3E10009150EF9FBFCFDEFE4020309130CFE0D05F617),
    .INIT_4D(256'h0D0F05F9F8F1EEF5FEF10400FEFE0406E7EF02F9FEFCFD0AFA0C110B00FD10F5),
    .INIT_4E(256'hF8F3000DFEF5FF02F7F608F6ED0EFA00010C05FC0C03F7100AFB041201FD04FE),
    .INIT_4F(256'hF80308EDEF1608F4FA0CF8E2F706FB00FEF4FF0705FD04F6FFFDF7FFFFFD0802),
    .INIT_50(256'hF3F0F7010AFB0D0E13F6E7F20FFCFF13EEF7FD0A07F2F0FDFBF6F405F5F0F801),
    .INIT_51(256'h01FBF6F2F3F901EC0BEFF5EA030B0E02060100FEF6FF05070006F10300EFF9F7),
    .INIT_52(256'hF3F9FA0AF7030E00F5FDF90304FF0105FDF0EC02EC0A2110F3080A040E0D0AFD),
    .INIT_53(256'h010A03F5F2F5F0FE08050305F8FD11FC03FB0907FD01FA0D161300F3FFF8FEF7),
    .INIT_54(256'hEDFF00FE050D0B0E0A021412ECF7FD06FFEB0A03F70C1209F104FD151101EDF6),
    .INIT_55(256'hFE070D0415050001EAFD13FF0000F1FB070407F7F6E1E6EFEDFFFBF8F3F402EA),
    .INIT_56(256'h0CFBF10013110503040BFAFB0109FAF1020201F7F804F4F90D06F2F6F9F302FE),
    .INIT_57(256'h0C160DF308F906FFFC07FFFF1F1603FC00000109E8EA0B1707FCFEF00003FF0D),
    .INIT_58(256'h04FF1103F6001409FDF40608FDFE0A0AFF00FA0A0105F102160109130EFDF413),
    .INIT_59(256'hFDF9F503F6FCF1EAFDFF0C08EAE9FD02FE02FAFCFA08FBFBFFFF1A04ED0001FD),
    .INIT_5A(256'h10F9FDFEFEE0F205FC101507FF05120B091610030305060404101C1209FBFA01),
    .INIT_5B(256'h00ECFF15F8F2F307000A05F70B07EBF2FA07FE01F9F5F3F8FEFC1416000C04F9),
    .INIT_5C(256'hFCFAFCFD00F5F9FC00FD06FA0314030C07F3FD0403FEFF03080E1105FB10FAF3),
    .INIT_5D(256'hF905120AFD0EFEFE2401F506FF0602F70C020F07090BF8110EF7F5E9EC02FF0E),
    .INIT_5E(256'hFA100504FAD7002225110A04F106FAF303F50308120F030D09FBF8ECF9F6FB16),
    .INIT_5F(256'h02F8FFFA00F90F110F09040BFAFD1008FD0612190CEF02F8E61713F402070AFB),
    .INIT_60(256'hF705EEEDF8090002FEF4070C05FBF8F2F9FF0104FEED05F5F70CF2FEFEFEF904),
    .INIT_61(256'hF80808F8FBF9FDFEF0FB160FF9E6F6010E0C11F8F201FC010B0A01F608F9F4F7),
    .INIT_62(256'hFEF902E8E4EFFD00E7DBEFF5FDF0F00205F7FBFFFD00FF03FF0100FB080EFF01),
    .INIT_63(256'hFDFF120C05F80B0C0CFC0DFDFE1B07FBF4F106FAF612FEEAFD0D08FBE8EDEEE7),
    .INIT_64(256'hF5080D12FAF10303130DF2F905FEF90B0811FFF6FE08FEFB0CF304030309F6F4),
    .INIT_65(256'h00F9F80AFB0613F108F4E7ECFE0D010408F3FAFB0E0C09FDFF0B0E0802FAFAF9),
    .INIT_66(256'hF8F800F60403FCF7FD05F2F8F4F3020903FCFCF0F9F2FE03FFFFFD0FFD00E7ED),
    .INIT_67(256'h0A07FE0C0D0EF903040D06FE04F7F7F7030606F9F7F1FBFFFC000901F7F6FBF4),
    .INIT_68(256'hF3FB0600000EFDFD0B00F90EF0FFF70C08030F06F8FEFA04F603FAEF04050700),
    .INIT_69(256'h02070D01010912F4F7FCFBFDFC00060102FE09060A0009F1F9FBFA0B09F70201),
    .INIT_6A(256'hFAEFFC0F0D0308070BFCF3F6F60211E90A14010B0902120CF6F5FE0400F7F1F3),
    .INIT_6B(256'hF707FF04F5E7FF09FEFDFCF1FE0709FFFE08FAE6F3FA1210010812FDF910FD11),
    .INIT_6C(256'hF4FF02F809000BFE0304F80B071214FFF1FCFAF4FF0FFCFB0D10010BFEF915FE),
    .INIT_6D(256'hF0081001F60504F2F7FEFEE5FA07FB05F2F3F909F4F00C030C0B06010610FDF9),
    .INIT_6E(256'hFBFB04030603070F0C0609090DF6EE0E0AFCFF09F50AF4F30FE9F102FE0607FA),
    .INIT_6F(256'h0B02F9F8FA04FF02090D091605ECDAF5000D0EF2FEF6F8ECF90E090602FF050F),
    .INIT_70(256'hF4FD00EB03F3FCF8FC07FC07FB0202050BFCF0F9F6F8FA0EF90E1F08FAF30101),
    .INIT_71(256'h0AFDFBF4FC050E04FAFD09151003FE11F4F50CFEF8FD0C0304F500170806FFFC),
    .INIT_72(256'hF7FF02050E04EF02ED00FD0AFF1203F4F8F5FEF7EFFAF802F0F3F5091618F80A),
    .INIT_73(256'hECF80513F9E7FC00F6FFF3F407F801030D040A02FDF80003011502F306EBF8EF),
    .INIT_74(256'h02FD050CFCFEEDEEFFF10E04000103F6F5F8F3EC080A04120A02100704020A15),
    .INIT_75(256'hED0A04FD02030D00FB0EF5FE0CF8F5FA010002EED9F0E40412110DFFF8EA040E),
    .INIT_76(256'hF6F3F30A040803FB08F6FF0C060AFEE6FBFD0FF3E7F001FEDFEBEFE800EEE9DB),
    .INIT_77(256'h0BFCFD0DF8000EF7E8020C06F5F6FE03F5F20505F9F0040F0EF3F0FAF2040102),
    .INIT_78(256'h050FF7EF09FB00F5F9FDF4FE0706F7E3F40004F2F60CF8EF1202F4FC01FDF6FD),
    .INIT_79(256'h06FE0005070A01FFFF152012FEFAEFF4010C0105FF0406E8EE030E02FFEE0A0C),
    .INIT_7A(256'h00F7F8160AF904F903FFF9F0060A1B0AF9F8EF02FFF0EFEB07F5FDF30009F1F1),
    .INIT_7B(256'hF6060D0AFE0F00EFFA010105F7010FFFFDFF050B130808F8FC0BFEFCF7EFEDF1),
    .INIT_7C(256'hFA051101FC0D120C011A0A0AFC02FCFE0201F7FDFC0606FCFDE7F2FFF6F2FDF7),
    .INIT_7D(256'h05F9FEF2F0FFF4E8FC05EF0401EBFAF9F806F9E9ECF60515F2050302F9F203FB),
    .INIT_7E(256'hF6FDF80904F8011503FB00FAFDF6F5F3FE0C091A11EAE9F7FAFF0B020710EFF4),
    .INIT_7F(256'hF3FE0C01F00411FD08010F1708FA0C07F2051F0DF40A00FC0012F6F414010201),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_39_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_39_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized5
   (p_35_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_35_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_35_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h2C7EF1C8C20E92C0387D03E18D033F3DE240DBF95848034037E1DF7F73CE120F),
    .INITP_01(256'hB37F8EED901C1AFD739ED618017DAC7BB6E409BF8800837352CB863AE279326C),
    .INITP_02(256'h9179A2E30AC2C46780373C16F0F813F29EA479B7F993189612F8531A5CD185B0),
    .INITP_03(256'h1FBCB090C000730070CDE987C567FB834D940D120481EEF3E7A0F9E227FC631A),
    .INITP_04(256'hE18FBF75B72A10049FD27F20B3270B3FF84D949CD3DFFE3C61323493767B59C4),
    .INITP_05(256'hBA1DA72123310E893736171264051438C026020F216302EC2D742F3E1982C1FC),
    .INITP_06(256'h6813E01C1B7B7A4FCDEF12071B60C132DBBCA01621F011C9CF7BF3674CDEC269),
    .INITP_07(256'h065BF3387B22F80D38739A014538D7DB9EDF641BA61D884F5F71A412040FDCE0),
    .INITP_08(256'h5F0609D87A0BF174424FCC5C26403F004620CEE0719C70E698006FE41970F710),
    .INITP_09(256'h7EF8BDE1B7A3BE4D634723E1016F9FC1733CED41FFE2187829FF18277627711F),
    .INITP_0A(256'hD1987DEB4211F3EE6FC619E70FE9F8DA8400B824E3032360458DBDDF0602C6CE),
    .INITP_0B(256'h36C10FDFF09E1704324A6767479F0CC4F07D8EFE16512FF37D3191FFE00AD20F),
    .INITP_0C(256'h588DF8343FA7186C69AC7FE5C13F81E0FEBB119F8101973982FBF5CFF002768F),
    .INITP_0D(256'hBB487F745E19986E90FEC8EC72D277DF37A2FC9AE3678FF0CC603FA2A0196183),
    .INITP_0E(256'h0191C9AEED800F7FA430205DE7183F7C1622E691BEE7F0EDFA1BF2C3BC6FB3FC),
    .INITP_0F(256'h79C83061F3907C3DB87259A00DA3D1159CD892F0E299FBBFFC778C124056E688),
    .INIT_00(256'h03F8F5FA070AFCFAF9F90009FCE8F407131B04ED0901F41007080D0CF5FBFDFA),
    .INIT_01(256'h0C08F3FE0EFDFAE3F7F8EA06011507F5F1FB04F9FBFDFEFB02FCFDFDEFF0F8F8),
    .INIT_02(256'h05F909FAF7251B180DFD030AF701010D010C1301020BF7EE09FC01000417150C),
    .INIT_03(256'hDFFBF50D0905FC030FFD050101040A03F2F402F2F509F8FCF7F9FEF5F91105FE),
    .INIT_04(256'hFF1A0007F7EC02F5050D1A030711FCFB0704F3FCF5E7F9F2020DFAF1FEDC0AF2),
    .INIT_05(256'h060FF4EDEB071B0C0AF3F5F7E9F616FD040304020505EBFDF5FFEE02020905F5),
    .INIT_06(256'hFDFB010B180CFD0409120E00E8F8F907F80406FB0300ED09F7F7100F0A091410),
    .INIT_07(256'h0A03F505FCF3000109FEFDF4FAFFFA07FDEDFDFE060B08FDF4F60D0CF9110C00),
    .INIT_08(256'hFDF6FD08180BF5050DF3F9F5FE0801FE0002FDF01304FD0109F9FE01F4FC1210),
    .INIT_09(256'h05FA0BEF0C0DF213F4F30B0FFB07FCE6E403050605F7FD150D0CF7FAFC03FA08),
    .INIT_0A(256'hF4011100FA0611131A08000314140600F60E05070208F6FB00F8F8FE0105FAFA),
    .INIT_0B(256'hFA05F9FE05F0FB03F7F8F70101F0010814100A02F40A04F2FE0BFDFDFFF0F4EF),
    .INIT_0C(256'h00150405000909F105FEF5F7E6EC0DF9F908F707FCF2020504EEFEFFF900FEFE),
    .INIT_0D(256'h03F3FDF50010F7E9FD0502FDFFFDF60FF5FC04F902F5F30404030AF8F0060807),
    .INIT_0E(256'hF40E05F601041001041202FDF3F9040A110104FCF801FA07FCE4F5FAEEFF11F7),
    .INIT_0F(256'hF307FCF50A0AEEE105F9F0F7FFF8E8F6EB061701F5FBF010F1F6FF0DFAF705F2),
    .INIT_10(256'h0BFA13FAF3F4151CE5E70EF90C0A03F8E90B140803FF07FDFD06F3F91203070A),
    .INIT_11(256'h1F0603FA0C0AFD04F6FFF6FCFB140A0102F108ED050CF9FC131202EDF517FD0B),
    .INIT_12(256'hFCF6F6F3ED0511F3EF0C09FE0609FFF8050201FAFE0C0A11F60812F804F4E40F),
    .INIT_13(256'hF80413EEF6F8FC07FE00E80103F9030409F8EDFFF40807F5FC07F9F10CF7F8F4),
    .INIT_14(256'hFBEEF8FC09081708F0FEFBFDF7100F09000A0BF60706F1F8FCF1E9FE0A0AFA00),
    .INIT_15(256'hF70C0A0A0511090C1C0FFBF000EFEDFA0A06F2FDFBF90007061207FB03FEFA01),
    .INIT_16(256'h140D0312FE04FD07F7F41005190DF806EDF504020CF4050E0DF8F90D12F3F8EC),
    .INIT_17(256'hEF0200F80C0104FD03DAF4F3FE0F01F6F605FB021319FC02FBF1FF030601FFFF),
    .INIT_18(256'h0F0DF60307F5FBE8E5FEFCF6F0F806130DFCFC03160EDBEC021100F4EE0CF401),
    .INIT_19(256'hF9FDF20408F5EBFCFE05EA001E0C0F02FBEAF2EAF11002F5FCFBF5030202F303),
    .INIT_1A(256'h0B09000701F50E04FA0106070A000DF1F6F7FE09F5E4FF05F0FCFAF90300F7FD),
    .INIT_1B(256'h0AEF0901F1F601FCFB0607F406FE09060C0E0406E6F803FD040A00F90108FB04),
    .INIT_1C(256'hEFFD051B00F40AFE05FDF90800FFFAFAFDF0E6FAEA03F9F9FC0603020904F6FD),
    .INIT_1D(256'h04FEF7F710190905F9F4180AF7FD0FF8F4F6FE0FFF0407FDFF00050300FDF5FC),
    .INIT_1E(256'hFFFF030604020302080A0D061A0B070B10FAF4EE0105F7FD120D0A0F0F060C05),
    .INIT_1F(256'h090D10F8F7F8F3F7FB0BF3F0EFFF0C05FC01FBFF03040814FB060AFA07060A05),
    .INIT_20(256'h00F8F1FF02FDF8000BF1F1E5FA03F0F300EE03FAF60803F7EEFD041204FC0E0B),
    .INIT_21(256'h01FAF100010309FF0002FFF20006FA010418F7FA12FC0A0BF20118F90E11F7F1),
    .INIT_22(256'hF6FB02F60B12FDF8FFFC07FFDCF3FDEEFFFBF0FDFCF3F5000403FDF4FDF00007),
    .INIT_23(256'hFDEEFBF1F507050110F40410FFFF06F3FD0E08FB00FE0101FA020EFAF6F30D02),
    .INIT_24(256'hFC01F6F9130AF0FA0704FC0B13FEF2FD080B1304FF01EBF41309FEE5EFFBEFF8),
    .INIT_25(256'hFB0909F8FCFBF3FFF9FC08FC0608F9000AFFF8FFFCFFF5FA020FFC16060B0903),
    .INIT_26(256'hEF08FDFD0BF0FEFC1109F901F804FC12070302F80205030E0311140F06FD0A0B),
    .INIT_27(256'hF7F1F403000401FCF3090908FFF8FEF8F20DF5F9F9F2F4F702FDF0E804FC0EF6),
    .INIT_28(256'h010502FAF10504FAF4001C0E0303F408FDEC000D040405FAF8F7EFE6E9F90201),
    .INIT_29(256'h1609E800FEEB01FE01F8FCF108F502290302F601FAF8F7FA0805FDFFFCF8F105),
    .INIT_2A(256'h0702FA02000604FB08FDF7060309FFF801060F03110DF906FFF8F900FAEC0505),
    .INIT_2B(256'hFAF80205160706080C09FA100FF5F70A010105060702FB0B03021009FEFAF7F1),
    .INIT_2C(256'h02FBFA0701EE03110609040D04FF0AF0061410FD06FA0E05040DF7EDFE0B0316),
    .INIT_2D(256'h0402FAFD0CFEFAFA0D00ECF601FFFC020A0803FD00FFF0FD130D06EB0E11ED02),
    .INIT_2E(256'h0406F70F1B08FCF70B15F1F4020B08F60510180DFDEDF003FE0A0601F20405F6),
    .INIT_2F(256'hF70AFEFFF900FA0D011109FDFEFC0AF6F100FD0100F1FAF20100EE05000300F4),
    .INIT_30(256'h05FE0B00EBED0503F9FF03FCFFF7EC02EFE40C010509F80B0DEBFE02FE0D03FB),
    .INIT_31(256'hF9FD0604FEF5F0F800F8F8F7FA08FAF7FDF4F2F80813FEF601EBED0102F6FEF6),
    .INIT_32(256'h120EEE030C0107F7FDECE7F70D0407070B0316EE001A03FCFFEF0400F00806FC),
    .INIT_33(256'hFFFD02FFFE05FEFAF90AEBECF9F10602FF03FE01111204060A0C0EF604F6FD0A),
    .INIT_34(256'h030201F3F407FAFA08FCFB1501150302FFFD0D16020907F90008FFFA000BFD09),
    .INIT_35(256'hF4FA0707F5F502F6FAEEFC05F4F6F3F5010303FD0B0EF5071A0D120A02FCF4F8),
    .INIT_36(256'h070808FBF919F9FE02FEF6EDF902FEEE02FFF9FAF800FB0C04FF0B00FDF6FCFA),
    .INIT_37(256'h01FEF103FC02080B070D00FB0307F4FFF9FEFE050D02020C080309FBF6FC1909),
    .INIT_38(256'h0F090F0802F4001A08010311F8F3EFF5F9FF02FBF4FC030BF5F4ED001B161602),
    .INIT_39(256'h10F406ECF5FEE9FA01EFF5F4040A1EF2F60CFA0A0BF20417150D06FF0101FD12),
    .INIT_3A(256'hFF0EF60306EDF00F170209FAEDF905F2FF030407FC01080E09FE1302F3F6E8EA),
    .INIT_3B(256'hFC0E01EBF5ECF003FFF303FCF9F6F6FD09F9FC0B05F9010408050FFEFC04F5F4),
    .INIT_3C(256'h05F4071412F903F90A0CF5ECF4011002FBF200EF0BF9F0F6F7FE08FAF107FDFE),
    .INIT_3D(256'h0300F0F4F603070001FAFDF50002F8FEFF0805F0F804EA02041710000A0C0CF6),
    .INIT_3E(256'h14F5EFEFF601F8FE0606FC0B0800F508FDF6FAEDED00010902030800ECF605F7),
    .INIT_3F(256'h100C070D0BF4EF160DF30AF2F702FBE8F8F5F2FF0201FDF90D08F9F2E9010A07),
    .INIT_40(256'h060403FDFF0106EF00FBF9F5080A080AF7F8F7FF0FF1E7EF050B0AFA01060001),
    .INIT_41(256'hFA0002EFFA180A0002060902071601010DF5FC01ECF5EAEFF5F8FC020CF50305),
    .INIT_42(256'h0AF5F2F6151D03F3F80200FEEBF6040500FDEBF708000E17FFF5FB060FF8FC02),
    .INIT_43(256'h02F3070600F5FE03150EFA07011B0B08FCF90705FDF4F50EF7F0FB1203130F11),
    .INIT_44(256'h0A02F6090DF8FB0A00F70401030B0F040B0BFFFDFCF9FCFF0A0A020F1F140906),
    .INIT_45(256'h0CFB0B0B0601F60315FF0C13FCF3F4F4F9FD0805FFF8010806F904EAEDFB0803),
    .INIT_46(256'h00FEFBFDF501F9010B060B0CF80AFFF2F6FDFAF5030E05F509FBEBFB0EF70514),
    .INIT_47(256'h06F503FAE7F7F3FC0D0D03020CFEF80318020503F70510FCFAFA02F2F3010105),
    .INIT_48(256'h13F9F4F209FCE60E0204F70809DEF3FC02FEFDF9020607F9021504ECE6FBFBFB),
    .INIT_49(256'h1A01F501F60A02F1F5F7FEFBE9F1FCF8030600FFFB0605040D00FF1104FCFFF8),
    .INIT_4A(256'hFCF2F9E5F2FDF8FBFFF7F20E0D03F105041308F4FD021E0F07FFFFFAF9030C18),
    .INIT_4B(256'h0AFDEBF00807F1F50B03F4EDFFF5090CF6F9FF0FF9F102FF00F6050904030AF8),
    .INIT_4C(256'h04020307070201FF07F7FA01FCFEFFFDED0100FAEFF0E9F8F5F0060700000FFF),
    .INIT_4D(256'h0DFEFB040504F6FB10F6040D02FBEAF30A0BFA060901FFFFF5FAF608040207F5),
    .INIT_4E(256'hF603FDFF01FEFCF9F800FB0C0F01F7F9F601EEE1F5FEF80B08FC0300E8F306F4),
    .INIT_4F(256'h10F4F1F7FEEFFF04FDFFEEF0F20C0305FF00F6ECF9EC05FAF6FFF400080002FD),
    .INIT_50(256'h0605020711F7F104010003101E0AFE07FDFC040D07FCF908EEF90502FBFBF408),
    .INIT_51(256'h07F8080000F500FBF501011CFAF309F7FE00FEFAF6F804EDF8FC06F6DEFEFFE1),
    .INIT_52(256'hFBEDEA081014F7F403000A070802F7FE0E06FA090B08FDE908FDF81402131312),
    .INIT_53(256'hFC051D0C07F80209050F1B0B0801060DFF17FFFEFF0207040603FF0311FF0209),
    .INIT_54(256'h11090D06EFFEEFF2F4F6FE0BFE030EFEFBFFF8FFF80C0004FDE807F3F400F50A),
    .INIT_55(256'h0AFCFD05F7EDF8FEF2FD02000BF3FC0C0E0903F9F90100F8F4FBFB010EFAF5F4),
    .INIT_56(256'h0EFD00001423FF02060C07F2070405F6F2F4FBFF0506F8F8FEF8FF01F4E9EE0E),
    .INIT_57(256'hF0F206F101200CF1EE0103F0FD12030B08E8ECF3F7ED02EEFDFEF700FD07F0F6),
    .INIT_58(256'hF3EEF6020000080113150505FA04F804FDF207FD0414FB05110B0204FCF6F0F3),
    .INIT_59(256'h05F5F7FBF9F809EA060AEFF9050209FEF71400F6050C05EFFFFBECFEFEF7F2F1),
    .INIT_5A(256'h081000FE0FFCFB0407F800FF090310FC0207FD02F8F5F9F2E9F7ECFC0B12F8F6),
    .INIT_5B(256'hFFEEFAFE00010E0B02F5EFFDF7FD00EEEC0C0C0CFEF2F008F2F5FFFFF4ECF103),
    .INIT_5C(256'h08FB000D02F6E5F1F30504F9F1F5EFEE070D0009FCFF0800F6F50D0B0CF60100),
    .INIT_5D(256'h1400EEF40505F50C00FD1003FF0AF80202E6FC0D0AFDF9FB07FBF80606FDEEF1),
    .INIT_5E(256'hFAF8FCFA00071215F50F05F2F7F9FD09081705FE15F9EDFA08160C100EFF000A),
    .INIT_5F(256'h0507FAF205FFFE15E7EF0109150007FC00061008F0FBECF9F5FE00F8F9F8FCF0),
    .INIT_60(256'hEBEFFCFC0707110D110D00150F09E50914FAF7F90EF1EE0EF70D0B00FCFCF6FB),
    .INIT_61(256'hF7050A0B0A03F808F2F8F7F0F10DFAF8F2FFF0F601FF0BFBFBEE080DF4EDFAF8),
    .INIT_62(256'hFA02030C030401F60B0F1008030A03FEFA0805FD01FAF1F00801FAF0E90305FD),
    .INIT_63(256'hF1F3EEE7F7F5FF09FD00FDF7FE0CF8FA010001F2020810F3FD180CF1E7DAFBFC),
    .INIT_64(256'hEFFA0008060103F5030EF2FBF4F6F4F5FC000804050604F7FCECF90211150E00),
    .INIT_65(256'h0AFCFC18F81008FDFE05FE06F1F1040105FEF3F3EFF6E6F7E9E9EF080DFF04EE),
    .INIT_66(256'h0208FEEBEEEDF3F4FC07F70001FCF5F7171002F9F506080802EFF507F1FA0B05),
    .INIT_67(256'h04F503EEFA020D02F90D0612FFFE0BF4F4F4F6FDFC100A04150AF9F011FE0B07),
    .INIT_68(256'hF600F8070D060506080C03E8F50413FE02F4FB18161609FEF10017001903F4FA),
    .INIT_69(256'hFAFF0815F4E7081708F5FC0C090205000A02F9F6F9FCF2FEED05F3130401EC03),
    .INIT_6A(256'hFDEAF40F1106E0EF04FCFA0E10F8EEECF206080AFBF8F6F1EBF0F6F90E030600),
    .INIT_6B(256'h0505F4FB01FBF9FAEB01FD0A0903FD02F0FFF4FFFAF90A08F5030BF7F903FF0E),
    .INIT_6C(256'h0AFCF1F60304EE05EEFA00FB0B03FA0703F6FEF606FEF3F5DAF506EBF9F7FFF4),
    .INIT_6D(256'hF80607FD08110214FEF4FFFEE8F8F40FFCE1080DF7141215FEF9FE04F6FB0706),
    .INIT_6E(256'h12FC00FEF4F3F40608140BFCF4070EF2FA0105FFFA1A180A11FBFE08F9F9FC02),
    .INIT_6F(256'hFC04FAF9FC04E8FF04F60400F908110202FFF1F3FCFCF7F706F2E6FB08FB030B),
    .INIT_70(256'hF900F7F6F9EE040F08DFE403F4ECE3E4F70AFFF00405F0FAFBFDF8EAFEF40105),
    .INIT_71(256'hF7F7EFF9FE00F901020400FDEC04FDFAF1F1EDF10D0CFB0AFCF80A070A0DEAF8),
    .INIT_72(256'hFD19FAFAFFFBF001EBF0ED0C16FBF7F8FFF6FCF500091404FDFCFF17F8FE01FC),
    .INIT_73(256'h080706FE0BF2ED000300FF061007F312F3F1F9021DFFEB04F50505FE0B020FFB),
    .INIT_74(256'hF0FDFB0502F6FDFE000000FCFF17000C1401FDFAFAF2FFFA07FBE7E8FBF80817),
    .INIT_75(256'hE506FF0A09FD0D0C0808F0FD0C0A18110804EE000D060C0204F703FDF6F800EF),
    .INIT_76(256'hF1F6FE03F5EB00F1FD0E16040B0F0604090D0304EBEFFCF804ECECF0F7FCF4EE),
    .INIT_77(256'h08130A09190A01EFF6000BFD131503F8FBF90101F90C1AFFFF12FD10EFF4FF02),
    .INIT_78(256'h05FD061A100C120F04FE09F903FBF501F9F1FF0D05FAF803FD020107FE08130C),
    .INIT_79(256'hFAE1F4FBFAFD0E0D00FDF6F00AF7FAFEEA0B0E15F8F205020C0808F90E02FD0A),
    .INIT_7A(256'hF3FFF8030301F402F20609F9F5090CFAFAF7FAF7FC02FEF9F810FDE9EEF7F0FF),
    .INIT_7B(256'hF90201F7FBF3050BF0FA01F5FB0A130BF80009F50A03F913F3EFFFF3120D0901),
    .INIT_7C(256'h0B0E130EF1FD19FFF607FC010503F6FEFDFF08F5000409FF060602FC05FD07FB),
    .INIT_7D(256'hFD0AFBEEE90B130A01F7F1F6100DFE0C06FF04FDF2090EFFFC07FD0403001707),
    .INIT_7E(256'hFCF2FCF80A04F2EDF90A0DFF0C1B0B0100FBF7FCFDEC020A110AEFFFF9FE09F5),
    .INIT_7F(256'h05FCF9F8FE0402FCFBFA0602FB0206160C0CF9EF010E090207FBEE03080409FC),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_35_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_35_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized6
   (p_31_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_31_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_31_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h4E9DEE4E058AF13BCFC83F38BC35904B3402C6F11D33B8130719344FC7F27EDA),
    .INITP_01(256'h198103C7FBEA5CC020DFB03BD3F85FC651118B63C1602C16F00C1BEC8372F9A8),
    .INITP_02(256'h273C33447FF64C60489C7F87E0C9E8F1B480703A62F1B1C38081EE30C725B8A0),
    .INITP_03(256'h07097BE01E0660183910CFC1E960FE5DE050060308007CD7CBF60C580E3DC34A),
    .INITP_04(256'h100F3CD3D37F039F7F1097B31E4B7824649803F0D1377F3700C38E14BF4847A4),
    .INITP_05(256'h00E9DCFEF140080F05ADF783D86FB40F0E143C7048099EA9D8411862624A3537),
    .INITP_06(256'h07E99F9BBFCC016C6C7CCB407B9F18BC2B003FD80310E301C80C589DED7FC938),
    .INITP_07(256'h1F877C790D05F080AEBF86734894A60C31CE703B21620BF1BF6304FE1C6306BE),
    .INITP_08(256'h41E87FFA30067032C6CBC63F661EDE087BC270F1C439409D819FC3403B6FF04D),
    .INITP_09(256'h1B507E4801F74A7CC00660D08032096B02DB5AF0FE03301E8CB05B0865933810),
    .INITP_0A(256'h9CF3567F89C0CC77E8FE113946C82082C98F6CCD607725F83383643FB80DE6F0),
    .INITP_0B(256'h5B7186643C063616182DF801FFCB00F1C68F6C7E0825DC0BF7163E1F0B20503B),
    .INITP_0C(256'hD0F186038081C721DE7D1260170FFE0241F768CDAF9C11D221CF883CFD881990),
    .INITP_0D(256'hBA25CC41D98A55C6D239C709CF88F01368309049F787FDBFE66CF32A45C75823),
    .INITP_0E(256'h0DF3829C43F427C24B75E8FE9119C480C9E01C7E4F34BD0CDBDF963E3191F980),
    .INITP_0F(256'h3E7909C27C8F33030AB083F241E402E87EBE947300F7C414E03F4D9E342D6F27),
    .INIT_00(256'hFBF30C040FF7F6EEEFF6FDF9080DFE0303F1F1E8F3F5F600F6F902F4FD05FC12),
    .INIT_01(256'h0B0000010BFCFCFB050A06F3F40302FE130DE8F70AFE060D0BF5010BF9F3F4FA),
    .INIT_02(256'h050004FBEAF003FE0603FEF80601FFF0F607F9FFF50815080B090AF80F07F0FB),
    .INIT_03(256'h100DEEEE03F202080E0C06050F0CFD05FCF60B0706FCF700F8F4F4F9070B0EFD),
    .INIT_04(256'hF403F8E2EFEF0E110601F3F605FE07F7F00306F90303111212FA000BF607F8FE),
    .INIT_05(256'hF0FD1203EFF4FCFDF6F21307E1030007190EEFF0FEF0EAFC1309F8F1F6050202),
    .INIT_06(256'h1003050800FC06F9FC210E07F802FB0AF4FDF8FD03120BF80001F5EBF902F0F2),
    .INIT_07(256'h02F70F06F4E8F807FA0907F4ECF200FFFDF4FC0AF4E2FE1A12F60201F5F5FF07),
    .INIT_08(256'hFE0C000B030AFDFF23FAE9FA0E09F200F0FFF8EFF30406EDF909FE04F803100C),
    .INIT_09(256'hF4F7FCED020A0E0015130312F5F50405120A02FAF406FEFDFDFCFC02FEEA0C05),
    .INIT_0A(256'hF4FA0E19080600FA02F7FB03000B05130F0AFD10FAF704040E1506F10BFBFD01),
    .INIT_0B(256'h03F202FE171606FC0F0602F9030B11F9FA0F1215F50BFBEA0FFCFD0C0D0AFBF0),
    .INIT_0C(256'hF3FE05FE0C0EF9EEF7FAF8FDFC000E0C04FC01EBF0F8FEFBEEFE071205F2EA15),
    .INIT_0D(256'h1504FF12000E0F0CEDE809F4FCFEF3F1FA02F9F6110604100203EDEBF801FEFC),
    .INIT_0E(256'hF6F1EFEDFD12FCFDFAFCFF03FC02F60A01FF04FFF1F80009FAFF050902000A06),
    .INIT_0F(256'h021110FAFC1004F4FE0D08030B0103F10A1711150300F5EEFCFB050700F2F6F8),
    .INIT_10(256'hFEF7121309F2ECF80B0BFD0608F203F9FD07FBFBF9080D09FF05FD08060B0A0E),
    .INIT_11(256'hF708090A22060905F80E08030D0F00F8FBF9FF0CFCF4FC020416F9EB03030319),
    .INIT_12(256'h05F5FD000804F100FBFDECF9150308EEFA02FCEB030F0DF6EAFA02070A07F8F2),
    .INIT_13(256'hF707F6FC0AFA060BFD020A06130A170504FDFCFF050105030406F9FAFF04F20A),
    .INIT_14(256'hF0F8FA08081A1B08EAF10105FE090AFDF2F9F901F7070E09F3F6F6FA0C1307F2),
    .INIT_15(256'h0EFE100CFC040B01EC000EEFEAF30A1708FDFCF6F5EDF4F2F30F0A0205FFF6F4),
    .INIT_16(256'h05FAFAFCF2EAF9EEF1F9FBFF05F7EC0904FB070BFCF711030BF9F1011207050B),
    .INIT_17(256'h1409F90708F6F5FE0A04FFFEEFF8040A1700DFF4040DF6F305FD090D05FA030F),
    .INIT_18(256'h13010601FBFAF3160702F7F2F5F807F1F6FC0F090B00F9F81AFA000CF409FA07),
    .INIT_19(256'hF0F80108FC07F9FBF6E3F3FD02FFF50B0202080BFFFD080600F511FBFC0F0411),
    .INIT_1A(256'h0A140C08FF05080A09020806010E0C1809F7FEF6FAFC0006F3FC00F405FDFAF2),
    .INIT_1B(256'hFFFCF70B05130C120CF703FD09110D07020E0C0A01FFFC0D03000B030D02EAEC),
    .INIT_1C(256'hF3F1FA00FF0D0EFF02FBFC010C050601F2FDFFEAF2F3F60202F70DFBFEF903FC),
    .INIT_1D(256'h1002F0FDF20515FC000A0AFB060C1F06FFFE0D08F2F3FFF7FFF7000C020104F1),
    .INIT_1E(256'h00051BFFFAFBFF090107140708FDFF0606FEF81015150517070B07F9FC101211),
    .INIT_1F(256'h0E08050F05FEFEFE04081901FD0E0FFE10F5F1F5F405FBF9FCEFEF0F04041400),
    .INIT_20(256'hFC07FCF6F9F1EDFE00F70404FD07010613FD030F09F2FCFEF601FF0B05F90605),
    .INIT_21(256'h0612000D060D0902E7ED060A0409F8F4F7010B0FFFF8FB0C001004F409F90907),
    .INIT_22(256'hF4EF03F90D0605ED0408F6F501F5F2F905F1FFF8F4FBF5FA0B01FCFC08FDFCFF),
    .INIT_23(256'h12F3F00403FE0302FE0A06FCF8040C160B1002051506F9E8F1FDF8FD06110009),
    .INIT_24(256'h100607F8FCFCFA0B11FF1304F204FDF60EF6EEF7F50406070504F40107F5160C),
    .INIT_25(256'h0FF6EFFBF5F4F2FA04060FFC01000807F4080EFF13F3F5EBF20AE9F30C07FCF6),
    .INIT_26(256'hEEFB07FF1413ECF60EFFEDEBF2FEF3FD07080B040913FEF7F41214F8FEFEF3EF),
    .INIT_27(256'h100E01ED030E0E1800030105F3EAF5FC0D04E3F3F1FA0504FBFC0EFA0103FEF7),
    .INIT_28(256'h0AFAFA0C1614F50100EC080CFC00F50C100FF8FA16FD05FB0801F6FE01F4E8FC),
    .INIT_29(256'hEBFE07FCFD010E0505FA020E041209F9000109FCF5040A1902EEFD140D05FD06),
    .INIT_2A(256'h08FF0109F9070C0F110F1D06FA0007FFFC0503F1DCE3EF01FE16FA09F80103FF),
    .INIT_2B(256'h04050314FFF4F70A07010AED0CF20B140C0BFEE8EAFA041509F2EFF4081F0C07),
    .INIT_2C(256'hECED03FEFB140B0A0EFFF809FEFBE9FCF908FEFF10F601030610180DFEF7EFFC),
    .INIT_2D(256'h1215060A06F70FF4FA16FF00F6FA0FF0F2FDFAFF05F9FFFEFE0101011916FDF1),
    .INIT_2E(256'hEAF8F9FB170D05FB00EF030B0D19211A09000300FC11080B040A020AFEFDF4F9),
    .INIT_2F(256'h09000102070A0A05FFF5FB03F10B02F6EEFD04E9F2FB0906FFF6FCF5F9FDFE01),
    .INIT_30(256'hE7F9FC01F5FF01FD05FFF2EFF9F7FCFCF7FA010AF50C03FD1110F8F9F8040B01),
    .INIT_31(256'hFEF80202EB0B07051E141305FDFA050500FC04F0FB02020DFD0003F9F0F303FF),
    .INIT_32(256'h050E110F1605FFFF170A0DF800040500FCF7FC0D1707F5F7010008100A0404FA),
    .INIT_33(256'h0701FB08F805FCF90E030E0D02140A0C0F07F5EBFBF5FBFFF6FC03F7F70D0003),
    .INIT_34(256'h03F7F8FEFC06FBF2F4090BF1F4FAFDFF050C06EFFB09020BFE00FCFFF5FF110A),
    .INIT_35(256'h17FDF012F6F8040B12F8F9FAF6F7040AF2F6070DFC06F8F604F2020100080000),
    .INIT_36(256'hFB0FFCF7F6F5F5FAEBF80402F7FB1815090B020E0A0707FA02F4F60AFDFF080E),
    .INIT_37(256'h08010C1008F3FFF5F8EEF80AFD0901F9FE0005FAEEEAF2F6FB151BFCFC03EDFA),
    .INIT_38(256'h0E0602F9EFF5010106E5FB080B0BFBE1071302060EE7FC14FD06FDE2DAF5FD07),
    .INIT_39(256'hEF02FDEEF3F9FFFD02FAEA050702F6FE0401140705FB0101F8F4F5FDFCF7F207),
    .INIT_3A(256'h0301FD05000206FA01FAF1031415FB040D070804FE0CF7F3F0FEFEFB0A0001FF),
    .INIT_3B(256'h0905FAF6050009F4FAF80D04FFFBF50B00F6FBF7021003070A07F0F8FD03F8FA),
    .INIT_3C(256'h06FA070EFF0F0701F0090FFB09F4000BF40AFF050CFEFE010C160C0BF3FF0901),
    .INIT_3D(256'hFE05FF0CFDF0FE0CFE09FEF8FCFBF8F8F80F0F0000FCFD1213F6F4FD0106EEFD),
    .INIT_3E(256'h030C0904F1EF01F40908030407FC02F5EDFBFDFD0C090106FB03070A07090D08),
    .INIT_3F(256'h021101EDF9FCF5F8FA0B030B03FCE1EF05FBEDF3EBF507010FFAF2F5FB0308FE),
    .INIT_40(256'h0A05FAE6EF13FFF302F3FD03EEEFFBF8F8FFF2FA070F0C0711F30E12F8FE12F7),
    .INIT_41(256'hF1030700020F06F2FC000AFCF7F1F6FCFDFD16080206F3FF0EF9041804031908),
    .INIT_42(256'hF6F0000410F401020302F2F4F60102F604FB0C0C06090D09F90B0DEBF9FC01F1),
    .INIT_43(256'h03E7F3F5FE06FEEFFAF1050A1206EA0905F5F4EA04050F06FEF8FDFD0B1C01FB),
    .INIT_44(256'h04FBFD0201F8FD180E0502FDF4EFFC01F5F705FAEFD8F40401070D04F2100712),
    .INIT_45(256'hFBF8010306F6F303FDFB1006F600FEFDF4FB070507FEED01030FF1FDF3F8F7EA),
    .INIT_46(256'h0702FAFC040F19060E0F0B0F17FDF91003F4FDF3000504020803F2F1140FFA0B),
    .INIT_47(256'h05EC0505010508F1ECE6FB03FE0A050E04F6FFFCF9F2EFFDFEF9F9FAF802FC0E),
    .INIT_48(256'h03EDF50302F403FBFD0400EC0105E7E60607E8FCFC0A0505030105FD03120402),
    .INIT_49(256'hF9000900F8F71704F103F8FA0B0F070802FF0AFAE904FCFC131C050CF4000C08),
    .INIT_4A(256'hF8F1FEFFF7FAFC0009070004130FFAF90408F5F1140E090D011905F4F3F3FD00),
    .INIT_4B(256'h000405010708F604F2E803F8FA21FEFB01F90CF5FE06F207FAF2FFFF0F010804),
    .INIT_4C(256'hFF00100C160A0B0F0309F9F71200FA061313030CFA150AFC0AF3F701FC08E8EF),
    .INIT_4D(256'hF8FB160C0B0C0B10030E0B0C04FAF00A06FDFB020B11050AFFFD05FC0C050D0F),
    .INIT_4E(256'h151E000A031104FBFCFFF1F40FFDFBF804FC1303FF02FE0308FEEFFDF7FE1A0E),
    .INIT_4F(256'h0F0117F9F70DF2FF01FE15FF080C141600F0FBFBF2EEF7040CF6030FF70B200C),
    .INIT_50(256'hEC00F6F1F7040403070E0219EAE209FCF1F8F40C07FFFF01F6FAEDF7050B0407),
    .INIT_51(256'h1207F7FF0105F5F8F8031614000BFCFC0EF9F8110FF30A0B0615F7ECF2FAFADA),
    .INIT_52(256'h02F1F20C05170A0B16F4EEFF04FCFCFE0703FE0900FB09EEFDF1E5FAFE0F0F02),
    .INIT_53(256'hFAFE000FF10304EEF5051615F9FBF7FE07F4FF00FEF90300EBF60600F5F102F8),
    .INIT_54(256'h06FF041110F0FE10F1F00B09FF010F030B08FE09150E0906F90B0D0C0A01FE0C),
    .INIT_55(256'hFCECEE07FF0C0D09F2F2F9F8FCF7F605090204FD030804FC0815F9F3FC090FFF),
    .INIT_56(256'hF3020507FC090EFCEAF80B080E010B0BF5F90801EFF2050E08F3FFFF03F8F4FD),
    .INIT_57(256'hFD150BFDFAFA0606F6FFFBF10D14F5F40CFF01FD04FADA070BF1FDFEFDFCFBFB),
    .INIT_58(256'h0B000404FF0DFBFD1300ED010707090B10FE0DF101130E091306FFFDEC00FAEB),
    .INIT_59(256'hEDFBFDFA0AFCF5FB0C1E0BFD05F4F1110508F8F2F7FEFC01120605FCEAFAEFF2),
    .INIT_5A(256'h08001B0AFF0F12071402F80009F607FCF1F00CF3FAF8080409080E18FC02FFF4),
    .INIT_5B(256'hFBFD060409E7F210F6030B02FAF1E6F208FAFD0EE9F5030601F0F0ECFCF0F80C),
    .INIT_5C(256'hF3F8F2DBEAFEF9F0E9FA0405FA04F8F0061E0D0806070F02FDF9F4F80F1914EE),
    .INIT_5D(256'h15030AFFFC0003040E0DFB01FEFE03EDEEF4F9FAFD0100080A020104111701EA),
    .INIT_5E(256'h0804F9FAF8FE0803091009010AF5F9090709F9FE0BFDF003040908FA09F2FA0E),
    .INIT_5F(256'h02E503F3FF14F9FA07FBFDF50A0D0BFAF2080D1104FFF70A0BFCEF0200F20817),
    .INIT_60(256'hF0F8F3F8F2F40AF2FC140E03F602040B120C05EDFE050AEDF60A09FC01070314),
    .INIT_61(256'h0D08F10801060CF8F2F50700EBEDF1EDFC0C0800EF0C11080B07FEEAF5FE0A09),
    .INIT_62(256'hFC0EFE0EFAF8FDFCF90900EFF2F60502011A0CFD050B07F3EBFE04F90903FE05),
    .INIT_63(256'h04FE0F13060201FFFAFDF8EF03FBF4F507EFF704EC060A06FBFD2010FAF902ED),
    .INIT_64(256'h000A0BFB02F9FCFC020D0505F9F0EFF8FEFBF2EAFAF5F40A0E1B0A080004FF01),
    .INIT_65(256'hF4F601F2FFFDEE0509F3E1F8F0F503F8010203FD0A02F20708FBF5080B050407),
    .INIT_66(256'hF00A03020F001614FF1B0B0A00080CF1FEFE181100FAFBFD1810F406020506FD),
    .INIT_67(256'hFBFE08FE05050204F2E6EDF7081002F9FE02150B07FDFB000E0E0F120507EBFF),
    .INIT_68(256'h02FB030B13FD0AFFF1FC0E0A01F0E5FC02FC0DEEEB0806010500F8040501FDF6),
    .INIT_69(256'hFEFDFC0C04EAE70002F8FC08FFF60209F9F5E1F2010EF5F00007FE04FE02F303),
    .INIT_6A(256'hF9FBF1EE02FDEDEBF4050E0908F2E4FEFCEAF2FFF5F203FEF007FDE2F7FCEFFC),
    .INIT_6B(256'h05FCFE07F4040B070C03FEFD0D010C10E20908FB0F040A1110F92412F80004FA),
    .INIT_6C(256'hEAFA0005FBE3F9F4F5181407FE070300F9E7EFF804120B0D050501F4030CF7F9),
    .INIT_6D(256'hF9EA07F20602FF100903F4FEFA0602F6EFF90C0F0AEDECF302110D07FF0201F1),
    .INIT_6E(256'hEDF002FDFD0605FCFC0A1902F606FF0905FC05FE00F700EDE9F4041913FEF602),
    .INIT_6F(256'hF609FAFFFA00FB020605F20E00F70CFDF5F10102FCF5000801F2040B091410E9),
    .INIT_70(256'h0401F8F303090AFFF5050FFD100104F8F3FFF2FAF60502F6F103090D0F050A01),
    .INIT_71(256'hFEF905F7FC00F5FFF8F601EEF9FDF8F9FE030DFD02FFE4020402FEF9F5FEF600),
    .INIT_72(256'h02F40101FDF3FCFB050CF8F801FE0A06FC15EEF8FDF807FE030A070BE7EC1002),
    .INIT_73(256'hF5F4060CF6070CF6FFFAFE1001020306080000FDDEF60D0608FAE8F7FCFBF20D),
    .INIT_74(256'hFB0201F1120806FD051004FAF6020EFFFAFD15020BFF0703F91804040F070103),
    .INIT_75(256'h03F80D05FE03FDFA00FFF6F903FD0AFFF6F5FE09FD020304FFFFFBFFEDF2F304),
    .INIT_76(256'h0DF7030B010AFBEDFBF6F8F300FE01090001F80C08FDF0FDFDFB05040103FE07),
    .INIT_77(256'h05050301F9F805FAFCF7FEF50515F7EDFC0702001814FD03FC1909FAF7FD0014),
    .INIT_78(256'h1705F0FD00F4020C0305FC05F6F302FD0DFAF303F7F3FEF40306FF0B00FFFEEF),
    .INIT_79(256'hF5FFF90108100008020CFFF8F6F2FBF708FE100BE8FB00F1F60104FDF7FEF010),
    .INIT_7A(256'h070801050310000EFBFBFFFE03EBF7F2EDF9011413EA04070A1309FF0EE30009),
    .INIT_7B(256'h05F8F3F7FBF0E910FC00FCEBFAFEFA05F81205FE08FA04060CFBEFF30C12F9FD),
    .INIT_7C(256'h03FC050409070AF7FBF9F40807EE08020C0509040000FA03EEEFF605FF090D04),
    .INIT_7D(256'h0B0B1007F407FF07FF05F1E30E060607F60717130804FAF3F3F3F1FD0A05F507),
    .INIT_7E(256'h0DE9EBF6F8FB0501FA040100FBFEF6E6030BFEF70807FAFF1403030F0503F4FF),
    .INIT_7F(256'h0109FCF5F9F7F60709FDF9FDFC0E01F707111004F50901F3FFF100040403ED09),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_31_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_31_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized7
   (p_27_out,
    clka,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_27_out;
  input clka;
  input sleep;
  input [15:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [3:3]ena_array;
  wire [8:0]p_27_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h01CBC89CF6703E18D720FF3C6719F5F7F426937300370070F1923CCD7E867E3F),
    .INITP_01(256'h380C6893CB3981A1DBB7F00B34C0BFC1A59FF96EBECC6B064E4B98387164223F),
    .INITP_02(256'hC2078401E734FEF7C8025D0AD7EF64C651D925784EC184C193CB7C8099799C83),
    .INITP_03(256'h70CFFB81F134C2F99C44343FDD38F9F6D800CC837BC243C107C0C3001AFE0864),
    .INITP_04(256'h017C64230001C73023EC9BCFB6C6C44EC9093A56F0C4D837E07E2703F980EC80),
    .INITP_05(256'h13E74FE2033648FE1181FB25B2F9E0BA9E0FD317C3DAFCC58638937F8467909F),
    .INITP_06(256'hC703F1599E26FE995C01ED4C5E6F14E72C0F1905F0CF87A3012CA160D8FF1092),
    .INITP_07(256'h0790E86CF300C4340ECBEE003191C5FF8FBFBDEED263E7DDF23C787F93BC79B8),
    .INITP_08(256'h8A7A0638258CEA7ECB68913D9DFB8178C7BD81F6E0EBF0FC2F43E1C936C18CFC),
    .INITP_09(256'h37FAC8D9A98DE7DE02700330E5F929C00F8F93FCC3C03399E9B8891B03B11E1F),
    .INITP_0A(256'hE9E17C6D6425A52DC3BF79027C289F1993830F00A6E16D3039A6F6F61961C225),
    .INITP_0B(256'h9F72767D37001CC69884FF7DCE1A13C32B5100981D6FA3B2C10408F2F49C080D),
    .INITP_0C(256'h8F0103D301F9B43C004867FE20B04F6443EDE1C99CD680666D734270676C623B),
    .INITP_0D(256'hE7400003AD8D9A31D2999C6007E7001F30BD3E72D31C853091A60D4F000F270C),
    .INITP_0E(256'h9C40840EC6090B67881E09AC98C27705F863F63070E08DE1FE588FE1C1C4E413),
    .INITP_0F(256'h0F04888D683E3183A39687294A01B38C2E241077E07AF8B041478460F93DA3AD),
    .INIT_00(256'h0AF5E4F4F7FDFA02FF08040101F5FB0E17FCF4F1F4FDFE19030EFEF0F5F4F5F2),
    .INIT_01(256'hF7E4FAFC060106F9F90603F60400F1101200FDFDFFFD080AFAF80006FFFB07FA),
    .INIT_02(256'h150C0805000E090A0204F5FE0AFAF6EE0E090105000A010404FBF8FA0C0E0A06),
    .INIT_03(256'hFCFAFCF600FE01090C0BEB0E26EDFD11FF000BFF0606FEF903F9FBF60302F6F9),
    .INIT_04(256'h03FFF6050DEDF7F4000214FAF00009FFFBF0F3FA08F002F9F5F7FEF107F9F8F6),
    .INIT_05(256'hFEF603F711FAF8FB0002FF1B1C050208FDFEFCFFEBFDF6FA1803ECFEFBFE0913),
    .INIT_06(256'hFFFFFEFB10F8F40903F4FBF20A070901060FF9EBF6F0EF13090608FDF0020706),
    .INIT_07(256'h0114030C020B07F7F4F60109EF01FFF0F1E60120FE03150CFA1A17F7F9FE0407),
    .INIT_08(256'h01F0F5FC060509F802F7F60E09FC09060006FA0B0500FE08030DFFFBF9F5FCF9),
    .INIT_09(256'h02F00B06EFF9FB0A04F70E10F401F9F2F6000AF4F80602040C01F9F4F00A0F12),
    .INIT_0A(256'hFE02F4FDFAEAFC07FEFE0304FDF50E1804FBF100FC04F0FA090B0E0406FAEF07),
    .INIT_0B(256'hF603F7020CFF03FCF61A05FFF7F0F0FDEBF6FCFAFA0204F10AFEF705F7FCFB06),
    .INIT_0C(256'h030EFAEE00ED0708FFED030D0A040C0FFB0BFBF8FBFCF4F8F2ED00150B0E09F1),
    .INIT_0D(256'hFEFE1BFBE200F3EEFE0AFBFE06F3F3F7FBF4F5E90C08000410070010FC01FDF6),
    .INIT_0E(256'hECFA0F11FA03FCF8060AFDFAFA0C0EF0FF010F0E040606F8FA0BF601050200F7),
    .INIT_0F(256'h0404FDFDF2060C0D0908070BF8EB0F0002FDF603FC010302FB0D03FD0707FFF9),
    .INIT_10(256'hF20403FBF5000EFC05FEF1FBF90709E6EE0010FBFAF30204F0010F010002F9F2),
    .INIT_11(256'hF9120CF60408E8FBEEF10A12FE03F3FB08F1F6F3F6F62113FE0E0A0904040001),
    .INIT_12(256'h02FE1208FEF1F506F7FF0A0002000FFFFB01000004EC0202FAFA0A07100905F8),
    .INIT_13(256'h00FE07FD010C05F7FDFC0FFAFE0F06FF1006FF0500F802FE0DFCFFFFFD100D06),
    .INIT_14(256'hFEF90EFF02F7F5F3EBF3FB04FAFCF8F706FCFC0303FE0C15FCFD0A0A04FFF405),
    .INIT_15(256'hE6FB0706FE041B0A0F0002091311F40700F802FDF0FC01F80C0E0400FA02FF1D),
    .INIT_16(256'hFEEBFB0301F5FAFE0500F8F901F50907F4F1FEF7EAF7F605FFF7F9F709FEF4FF),
    .INIT_17(256'hF9F603040B0AFB181C07050206F6E6F7F90D0C1B14EE090C010D0209050D05FA),
    .INIT_18(256'h0B1300EEFF00FD08F6F6FAF2F6EAFB1007080509F705170C06FAED0305EB150A),
    .INIT_19(256'h040C02060CFDFFEEF4FC090C1B190903F3FD10040202FFFD19070D0F040C1112),
    .INIT_1A(256'h02EEF7F7FD01F8FEFDEC02050409FD0C04F20F060304FBF7F6FE0800030009F4),
    .INIT_1B(256'hF3FB02FAFB08000908060604140B0B00F8F20008FEFD0112FC0E12130C03F7FE),
    .INIT_1C(256'hF3F80BF8F9FA02FB060FFEDCFC0C0F09F8F5F9FBEA0001FFF6F5FDFA05F6FB02),
    .INIT_1D(256'hF11208F5F9F80D0F04FC070208FF030E0703F5FB11EE130F0406EEF9E7FEF6F3),
    .INIT_1E(256'hE5F0F4F6100601F30A01E7FE06F70E0CFCFE0C070001FE13F6F8FCFDFA060DF9),
    .INIT_1F(256'h06F7F9F1090C1009F7F00901FBE6E5FAF8F7FBFCEE0AEAFCF007060110070AF1),
    .INIT_20(256'hFAF9F3F9FD0307F5FD09031103040201FBF7F709FAFC040BF3040E05151A1610),
    .INIT_21(256'hF5FFFE0E08161A090DFBF8FDF7F6F904040DF50500FDF5F702070A0B0C03FBEC),
    .INIT_22(256'hFBEEF1EA0D010109F7FC101C18FF0D09F4F601FEFB12050D0010F7F807FAF4FA),
    .INIT_23(256'hF5EC060AFF0205FE02050001F6111CFE0A12EDF7FA02FE1207FE09FC00F5F70B),
    .INIT_24(256'hF800F9F806FAF004F2FB0D1205FDF600FEED010C07F5090C0BFD0901F5F0FE09),
    .INIT_25(256'h0808EF020407FAE2F7FCF704F3F20708FA010AFCFF07F7F0ECEB0608F2FAF0FC),
    .INIT_26(256'h0400010D0C101809030203090E1D08EBFFF506120DF5FAFC0A0EFCFB07060013),
    .INIT_27(256'h040410090F0E06FA02EFFFFFF3FB0F1000F8F90107FF0A07170CFA08020BFBF4),
    .INIT_28(256'hF900030108F5040606F9F80E08FEF6E9FE0A00F713120606F51109FAF8F8FDFD),
    .INIT_29(256'hFA0D181609FCFF0A0604F6F6E8010802F10213F9060EF4F700F2EFF5F7F5F6FA),
    .INIT_2A(256'hF9FB120E0609F9F3F2EF01FBF701F70AFCF3F9FAFDFA0B0AF0FB090B04F700FD),
    .INIT_2B(256'hF7040EFAFEF8FD0A05090805FDF6FFEEF2FE0BFD1B0EFEF3020F01F101EAF5FC),
    .INIT_2C(256'hF502E4DE000DFA00F9F4F6FBFE0F07F2FDF9E80B0D020103F903F4F9FC06FB07),
    .INIT_2D(256'h000200ED050E0BF8F4040208040E14E9FCEDEAFBF903FFF60915F40806F902F6),
    .INIT_2E(256'h020104040F03F9FB010BFBF506F8F70601F60805FE090C03FBF9F3F9F2F4F308),
    .INIT_2F(256'h060901FF0E00FEF4EAF3F70001FEFBFF09F80200FBEBE9F0EFF7F8101603FD0E),
    .INIT_30(256'hFEF304EEF70D1606F7EBF2F7F5F4F4FC040F04EC02010903F40300FB0D08F90F),
    .INIT_31(256'h14040B0B0C1006F70617FE05FEFF0A0CFF0CF600050202F203F8EE00060B0A08),
    .INIT_32(256'hEFEDF3F6180D0A09F8F20C09FBF7F7EEFC140A0903F9F0F7FC0DFC010B08E8F9),
    .INIT_33(256'h080AFD0BF9F90B050B07040AF3FDF9F4080E0AE9FF040AFD0A15050400FD08FC),
    .INIT_34(256'h03FF03EFE2F7F50712FDF902FCEBFBFA03010FFF02F5020AFBF3F30A07F8FEF4),
    .INIT_35(256'h06F204FAF9F906040601040A030303F5FEFFF204F6F803F501F60506F5FC0802),
    .INIT_36(256'hFB100FE8EBF1F8011006F80314F1F006F9E9E9FBFAF9FE06F60B05F3FA0B02F5),
    .INIT_37(256'hF6F90C040CFBFAFD0804030B1013FCF9E8F1EFFC021300F605EE04F5E80303FA),
    .INIT_38(256'hFD0702FC040AF6F5FD0AEDECFDF8060F14F8F5EFEC0301FDF602ECFCFE070303),
    .INIT_39(256'hFBFBF8FA0A0DF3050B00F8ECF9F7060700FEF4EEF110050505F7F9EFECFFEEE2),
    .INIT_3A(256'hFCF909FF0A04FD110BF2F6010E13F3F5F1F7F60F0ADEECFEF4FD03F9E9FC02EB),
    .INIT_3B(256'hFD0D060CF6FAF2F1FB02F4F7E3F1F3EDF402F9FFECE804F5FAF5F102F9F9EA07),
    .INIT_3C(256'h0B14FBF70C0404FEF40101F3130E05FBF2F9040202FD10FEF6ECFBFAFFFBFCF6),
    .INIT_3D(256'h0500130CF3EFE203F2EE0107FD08F1F0FAEEEB06F5F8FC0A0912110812010008),
    .INIT_3E(256'hF4F5FBF9030CF4F51510060D0207140EF2FE041A12F202090511F7EA00F80B09),
    .INIT_3F(256'h060A03130AFAF7F8F80710F905080413FAF3F508FC0A130501F4FF08F0F20C0D),
    .INIT_40(256'h0505F0F412FDFA04F7F70A0216140EFEFD070501F4FC0704F3F1F4FFF4F50705),
    .INIT_41(256'h1E06FE03FCFFF8FC00FE0F1C1610FAEBF0EDFF0706010BF5FFE90501EE0B01F6),
    .INIT_42(256'hFBF8F70A0C161906F7F7F10DF707FBF8FEE8F5FD0E0C0E00F3FCFBF0EAEF0104),
    .INIT_43(256'hF2E8031008FFF4F1EE03FBF0EDF801F4F6070B05040C07F9F4FCFDFB0AFDEC01),
    .INIT_44(256'hF21106FCD9FC0BF6F7F1FFF6F403F4FEEE030A0C0F1605F700F3FAF0FB130D02),
    .INIT_45(256'hFBF90104F103FCFF08F6FE13ED010401F70607FD090704F50201F9EAEFEB03F8),
    .INIT_46(256'h080EEF1011FA02F7F9000F05FCFE0406F7DDFA06F60BFA0F06F8F3F6F0EEFA00),
    .INIT_47(256'hF7100B01FE03FB0208F7FBFBF304F80D0800090000F0F40C1007F2ECFF050503),
    .INIT_48(256'h01000308030EF3FCF804F2FC0B0001FA030204FCF7F0F1080A020BF6F6ECF6FB),
    .INIT_49(256'hF4F2FA09FF0202F5FD03F8F7FA031105FF090A02F50201FE02010CF1F706F5FC),
    .INIT_4A(256'hFDFA07080B1CF3F7EBF0100D021F0D060705FBED1004F1FFFC050EEFF90600FB),
    .INIT_4B(256'h0419190BFAF4FFFDF508020BEFFBFDEFEB000DFF0E0FFCFDEBFFFCF7F8FE0307),
    .INIT_4C(256'hFBEDF00600FC0DFEEEF8FDEEF70501FB0106FD02FE0700F4F7F6030705090E00),
    .INIT_4D(256'h0E0C09000A04F40204FEF6F51505081B210F031D1305FDF40705F7FE020A1503),
    .INIT_4E(256'hFC16FF05FB0800FEFD030A01F2F504EEF5F9EC0302F3FFFFEFF401EEF5FAF706),
    .INIT_4F(256'h0413F7F503F9F5FCEEF6FAF6FA04ED0AF8F60504F604180CF1FB06F7F00200F0),
    .INIT_50(256'h0B1116F7FE070CFB00FBFF0B0E1000FEECF002010005FE030E0DF80C06FB06EA),
    .INIT_51(256'h0A00F1F6F50503FEFD07FE0206FDF60FF8F5F5F005E9F801EFF5F1FB0CFDF208),
    .INIT_52(256'hF719FA050AFAF60BFCEDFB061A1802FC04FAF40FFAF804F90F0AF4F6000E030C),
    .INIT_53(256'hF2020AFD0E1AF8EFF2020502060BF0FA08080101FCF6EDFC0800020616120306),
    .INIT_54(256'h07F7FEFCEEF402090C14FB06FD0A0B14F90110FAF8F6DFFF0A1002FAF80C11F5),
    .INIT_55(256'hFFFA04090903FBE9FA02F5F2F1FBFCFD0BF1F4FBFD0906FF00100B030905EF00),
    .INIT_56(256'h10FAFA080DF4030B1108FB0806FE09DFF801F30805FC06FE0210F40FFCF904FC),
    .INIT_57(256'hE8DFFF11F20119FCF3FBF20000060FFA09F2FBFFF0E706070AFFF700F0FB05FD),
    .INIT_58(256'hF9EBEEFC01FC0809FE0707F2E5FD020D0B0A1201F70E0A0A0A090404F2F507F3),
    .INIT_59(256'hFAF9150A030801FB0005040B09FA1C020F131509EF040401FEF9FAEF0008FF03),
    .INIT_5A(256'h09040BE5F2FD0CFD05FEF406FEF5FBFAFE05EF0B1806FEF6F101FCFE0A08FD0D),
    .INIT_5B(256'h0004F900F106F3F60EFE0EFF0A0900FC110D010C0F09090FFA0B07F3FC040310),
    .INIT_5C(256'hDFF40314F2F7EF020A0C0FEFFB08FA06090602FB0801FCFFF6F90414000DF2EC),
    .INIT_5D(256'hFC0707EEFB040F01FD06010604FC0802F6FAF6F9FFFCFBF303FAEAECF9F407F8),
    .INIT_5E(256'h0107FEF30CFFF5F600000406000A0A0507060EF9F1F8050FFBFB010305FEF602),
    .INIT_5F(256'hFD070DF5FFF3EDF505FCEDFE0706EF0D00F3F5F80DF2F30E04EEF7FFF4EB0AEA),
    .INIT_60(256'h06FFFE0104F9E5F208FAED03FBF9020301FAFD070E02E8041007F5F9F308F8F6),
    .INIT_61(256'h01FFFD02F7FD06F806EEF3FD0B11F4F101F007020A00F91718FDF6FC0C0B0108),
    .INIT_62(256'hF50107F7FDFF0F11FEFB03FE0CF6FD10F90C09010206000302FDF70A03FDFB08),
    .INIT_63(256'h03FE04120B09FEECEAFAFE01FAFC0AFDF9F5F2040F0300FDF6F8120EF20709FA),
    .INIT_64(256'h0F0AFE090F08050BF306FFEF0616100407FB0502F6FCFCEE03FBF7090AFB0809),
    .INIT_65(256'h180806030206021307FD0F12F407000D00F4F21705F9F5F0FFF9F4F9F7F2F909),
    .INIT_66(256'h0C151602030709F4FCFFFAEBF90014FFE90FF4EB0AF40E130D0BF2FBF9FA0515),
    .INIT_67(256'hF3060102EDF5F2F301020701090B06FD0409030A0A01EFF9FDF705F60106F5F1),
    .INIT_68(256'h080A040B00070F10070D1208FCEEEEFE0606FD0604F9F3F708060102F9F80302),
    .INIT_69(256'hFD020AFC000A08EAFB04EB130CF1FB010411090DF5F102F102FC0306EBF3F7FF),
    .INIT_6A(256'hF8F001F91006F0FE010601FBF3F0090BFD0C081209F903F80601FDFB0B150201),
    .INIT_6B(256'h0C10F3F920030B0DFA04FBFFFAF507F7150BF7F4FEEDFC0808F7EEF60002FD03),
    .INIT_6C(256'h0200050109EBF2F5EBF3FF0408F4F3FB141A010508050A09000102F7F7F4F1FB),
    .INIT_6D(256'hEEFC02FF0604F302F10714F7F9051CFBFD0200FFF5F6090407E7EE0D0401030F),
    .INIT_6E(256'hF703FB0EEEF610FDFC160211FFF309F9EF060BF7F813FE0D0600F3FB0E020EF1),
    .INIT_6F(256'hF5F4FE1100F6F4FE0DF7070913010508060E18040E060503060D080F0703F9E9),
    .INIT_70(256'hF8FA0602021008FEFAFC010B07F3180AF4F7F90C17FE0A0F0E0D05FF0306F9F9),
    .INIT_71(256'hFAE0E8E6F4F5E60509FC01F4FB010313FB060D06F2FEF6F0FBF6FC0A12010AEF),
    .INIT_72(256'h01FCFFF605161809FDF4EB050C080106FE03140EFCFC05F8F9FDFF0406080BF9),
    .INIT_73(256'hFFF5F5F7EE090B0413F0FC0F0208F6FBF9E3FCFA03FDFF0E030DFEFC01171C0F),
    .INIT_74(256'hFA0510FFFF110201FDF303080B01F60700FBFEF302F7F1F80105100D08FE00FB),
    .INIT_75(256'hFF02050AFD0300040D1409FAF8F9F30108131503FC0805ECF90EFC09FBFA140D),
    .INIT_76(256'hF4FA060E01FBFF06120E1407F60A09FA010A0103F909FDFA04FEFD0004FFF8FE),
    .INIT_77(256'hF00603F5F4FC040003FF010010040D03EF030B1C08F705051913190DF4F7FF01),
    .INIT_78(256'hFCFEF9FBFC0103F50201FDFCF7F70BE9EA06FF010409FFEFF903F80AFAF412FF),
    .INIT_79(256'h03FA0A0E040001F400FA041D09F9F4F2FE23070807FA050311F2F00907040105),
    .INIT_7A(256'hFBEEEE01010C05110FFBF9EEFF12FC0AFDFDF6F7FD0B0E03F909F6FE14161911),
    .INIT_7B(256'h0D05F502F7FBF90D1304EB0D01FE0807060E12FD040C000B0BFBFFFE03F9FEEC),
    .INIT_7C(256'h03F60101FB01F1090B211A15130A03F7F700FAFD0704F8F9F9020302FDF60D0C),
    .INIT_7D(256'hFF07F0080C06F6EEFD090AFA09FDFA0CFD04080D05ECEFFF0F0CF70CF40A02FC),
    .INIT_7E(256'h06E6EE04FD170706010AF7ECF3FAF7050D00EFF8031307E1F206090A0E0BECED),
    .INIT_7F(256'h070C100CEEEEF4FC1E19050B03FF0309FD09110AFF0C1603F30B1302F6F103FB),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_27_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_27_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h1000)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[14]),
        .I1(addra[15]),
        .I2(addra[13]),
        .I3(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized8
   (p_23_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_23_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_23_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h98789E76043833209991A11037F0D8D0F80001869AE4910933F998186F7FE4AE),
    .INITP_01(256'hC92C0DFC3BBCB84025288FC201B78C6C123B273CB7101FFECD6007CB2F2DE650),
    .INITP_02(256'hE9A00187379FF9A2BF5841FCEF5BFFB11DE5507C68CBF097027DB899180366A7),
    .INITP_03(256'h25A7ECE74E566C8F6BF3C08D0A86606BF5813D3FF104065A0CEF2204C781F8F3),
    .INITP_04(256'h64167072BD9FD4AF3C0F81FF01E01FEE167B5A1CC0B65A010D8DADB60DA444C0),
    .INITP_05(256'hEDD0D3B178013C8081A4E64C481BF088BF05F193E7970C7CC7F0B4E30535E782),
    .INITP_06(256'h31FC38C502FF57FF084E37E002E394F38C3D7B5C65EB060F4BF3DCBD68FB43F0),
    .INITP_07(256'hFF0213D016C0D260F235B663E27E17FA7FCFA27BFF872D37A9C42BE273808C5F),
    .INITP_08(256'h30400CF404FE688CC9F9E32C4DA05FE66C05E8139FE4E10B1360E1C3B24E35B9),
    .INITP_09(256'h079BDDEF1E041A76F62C0CA0CFA9721BA2E67886479B137CB6A83FF799F86CB0),
    .INITP_0A(256'hF96F46AFC05C6F90B0A269A1FFFDEC79B8C2DFEC7C17F119E6E1061F606F25DE),
    .INITP_0B(256'hE33413FEB2605CA4EF632F19EC4804D8D6F0E67CE0F93D813833360113B18247),
    .INITP_0C(256'h4CE83113968C63EC227FBE6CB6079014BCF0700498CEC0C020659DBF79F6701C),
    .INITP_0D(256'hE3C82F13F39FBCD918610E47F59BDE92437A30C333A4E4F80CE0CC8F06FA480B),
    .INITP_0E(256'hD2CD1DC700D95BB40163D8076200984CC723C807883D986FE6C9E7C07C2C0D02),
    .INITP_0F(256'h0F7F43C154D2FD11700FE079BF5F9ADA456FE0389891901C3D8FF2DCA0013697),
    .INIT_00(256'h1DF3F713F4F9EDFA01E9F6FFF4EAF6FEFDF5F20815FF0309FE08FF09F9E9FE05),
    .INIT_01(256'h0805F5FF0B06F6F1F3F9F9F7F80706F3F60318F8E800020F070C05F2F704060B),
    .INIT_02(256'hF60D10F0F904FC00F5FEF90204F10202FA0A0BFC071007FC00070001FE0C0FFF),
    .INIT_03(256'hF3F4F6FDFB03140B0504080613020102150F050205020DF0F202030B08F8F709),
    .INIT_04(256'h0600FCF704F6EEF0F1EEF6FB0A080201E6F606FFFC141D08F6FB0CF912070A05),
    .INIT_05(256'hF60308EDE60C0CFAFA0412FF071C07FEFD0FFD08080703FB0E0400FE04090702),
    .INIT_06(256'h090E040305FC07070909F7F3FB0507000500F6F40701F8FE0603FF0013011701),
    .INIT_07(256'hFC0408F3FC00090403EBEEF8FE031004FB0112EEF2F5F90500F0F1F604FFFD08),
    .INIT_08(256'h0501E900FFFCFCFE160EF60EF6F701F8FAF8FF0305F5F8150BFD09F2080F0006),
    .INIT_09(256'hF5FC1300F8F904F102F8FB1D1306060C110A080405FEFEF5EDFC1509FE05F4F2),
    .INIT_0A(256'hFB00EEEC00FBFFFD030606FB0709010B15070AF6F4F8FAF7EFE4E3F8F9FFFA02),
    .INIT_0B(256'h040306FB0405FB0A0D03F5F1F103FCF00C01F70605FEFFF10718FFF9F5FC0705),
    .INIT_0C(256'h05060C07030A0AFCFC08FDF405FFF6FDEE041307FAF60C0611FAF30EE6FC0414),
    .INIT_0D(256'h0C10FE0A05F40CF70103FD06FE0E0701F7000A03F1E2EBF9F8F303010103FF00),
    .INIT_0E(256'h0407F8F6FF03FDF4FD04F7F4ECFB0501F300F7F9F905090407F2000200020C0E),
    .INIT_0F(256'hF6F20002FF1002FB0803FF04F5F7010F0C0E0C1BF7F80BFCF7FFFFF2F3EF000D),
    .INIT_10(256'h061501FDFC0E100B21030212110EF6FF07FFF91003FAFD0FF901FC0D16FBF5FB),
    .INIT_11(256'h0B150C0F0103F80C0EF8F6FDF3F614FEEB07F4F6FD000B0CFE0208FAFB0B04F4),
    .INIT_12(256'h0BFEFD02FE060F01EDF70B06FF01FDFEFEF0F5EF040D2003F80603F900F7E0E5),
    .INIT_13(256'h1B1C09EBEDF707FFF8FAEF0A12F806FF19FE03F9040905070BFCEFF6F6FA0904),
    .INIT_14(256'hF6EFF301EFF3FEFA01FE00EFF300FCF3F2FEFFFFFFFEFFFCF502E2FA000801FC),
    .INIT_15(256'hFF04FCF5FAFEF5FF06F314FEFB08090C00F8020A0B0A00FDFCF3EFE7EDFC0604),
    .INIT_16(256'h040BEFF807FEF7FAFC0C00F9EEEEF8F2FAFEF3F9FA0E04FDFF12F8090705F802),
    .INIT_17(256'hFCEDF102F50510F7F109FF111305020A0306000C010C0CFBFB18001101F9FCFD),
    .INIT_18(256'hFEF601010FFFF3F6FC03090804140AECF8E7DCF2FF030200FCF1F8F60304EAF0),
    .INIT_19(256'h07110A04FEED010DF9FFFF04F5EAF6FB040EFF091A02F70C240E140600F90611),
    .INIT_1A(256'hFBEDECEE061510FF0900040F0BE3060E161E04040BFBFD0700F60AFCF702F408),
    .INIT_1B(256'hFCF9F3FF01F107F7F7060D070C0606FF0E03FAF4E3F711FE0D05F0FAFEF2ECF7),
    .INIT_1C(256'h10050201FC00F801F5070D0102FAF70902F5FD040001070607F6F908FA02F0FA),
    .INIT_1D(256'h09F4F900F002FFF7FFF7F5F90609FDF4FCEE101B07000006EC040C0AF5F603FB),
    .INIT_1E(256'h06FA0609F6F9F90501FA04FB00FFEE0302FAF406FAF50C08EF05150CF1F6FDFE),
    .INIT_1F(256'h0305FC0007EF08FCF80CFD000EFFFAFCFBFBFC03EAFF060DFDF8E80806E6FFFD),
    .INIT_20(256'h14051B07FEFA00F7E900FD140EFA030400FF100407FD0005F9F8000C0B08010B),
    .INIT_21(256'h0F030210F4F104FBFF0E0700E2FD0FFCFF05FC06F6EE06EEF605FDF401F9F703),
    .INIT_22(256'hFCFB170E00030405F804FBFC04F6ED080AF703F4EB04FA0A061610010D0202EF),
    .INIT_23(256'h03060FFC01FEFD0402F6E2F4F504FAFC02F901ECF806FA03010100F1E5FD0102),
    .INIT_24(256'h07020010010D15F4F4F6EF00030C0906060A06F8FCFFFBF8FEF6F001FFF7FE00),
    .INIT_25(256'h0606FBF8FEF80218050E1801ECF8FCFFFA0A05010F0F03DDDDEAEEF4F5FAF8E7),
    .INIT_26(256'hFC00F2F9FCF602F5FC0A0BFFF9F6FAFDF3F900F707FE0400F004F901FEFDFBFA),
    .INIT_27(256'h00FCF80808F10013111500FE0CFFF90301F0FAEF0B110A0A06FCF6F40404F70E),
    .INIT_28(256'h0007060A01F905F70303F1FA0BFD01E8F2F9FE150CEEFBF9FC0305130008FD01),
    .INIT_29(256'hF9F8120805F7FBFAF5FEFAFD1608060EFE05FBEA05FC0015F0EEFB050601F1FF),
    .INIT_2A(256'hEDF8FF0504F4FAFDFE2311F301FCF8F40A191111F9FA090601F0E9F6F8FB011A),
    .INIT_2B(256'hF215FFF0ECF1FBFD0302070B03FD10F9F1FCEEEB060C0AECFC0C0AFF090EF4F3),
    .INIT_2C(256'h01FD0102FF050F0E181803F9FE13F6F2E5FAF8F204121200F4060E05F6051702),
    .INIT_2D(256'hF906030F12040BF3F509F80318FF050FF5F3EE0600D9F90F09FF0509F5F70203),
    .INIT_2E(256'h04F8FBF9ED061303121010030D070BF20012FFFDF0FE0106FE0A02070A071A06),
    .INIT_2F(256'hF3F1FE0BF8EF05F4ECF506FD100D0608F6F300F7140AF8EAFA14FBFC0D0803FD),
    .INIT_30(256'h0DFAF603F704050EFBEFECF5F900F3F403F7000D0D0EE9E4F1F8FBFE14080707),
    .INIT_31(256'h08F61606FF06E9F8EEF0F5FD0A13FAE9F2FF02FEE8F10400F403F9EFEBFA07F7),
    .INIT_32(256'h16FFF0090EFD10F0E8F6F508F70CF6F606030B0902F5FC0301100E14FEFCE2F9),
    .INIT_33(256'hEE040104F7F00B020F08FCFFFCFD09F804FDFFFAEF10FBF202F804FDFBF10B1B),
    .INIT_34(256'h040C0F050E04FB00FDFBFB00161AF4F9FF0400F602F7060BEBF1FEFF0816FFED),
    .INIT_35(256'h04020D00EA0C11160FFE0502FBEBFD040302FDF502FFFAF1FDFAEC0D0D050302),
    .INIT_36(256'h040B180E0208F705F5E8FDF9FDF3F5FF02FF09FF09F3EDF2EFF8F9FAFBE4E7EE),
    .INIT_37(256'h0600F0FB080F0FF9FBF6F5E1DFF311020007FCFEFF051A08F6E9020202FD04FF),
    .INIT_38(256'h0AEEFEF60004F3FEFB05070011160D03FC170908F8EF090E05FC04FEFDFDFBFB),
    .INIT_39(256'hF700FD05FE030EFEFCFA12010CFD0A0A1E06F401FF05F1E9E1E0F2060F05F509),
    .INIT_3A(256'hFAF1F6F8FDF2E7EEEF00040209FBE8FF0107FB08FAFD00F40F0DFBF905FDF2FD),
    .INIT_3B(256'h11FDFDDFF7FDE8FCF7FB0B10FFF6F9E1FD1DFE090607FE0809FEF8F1FF04F7EE),
    .INIT_3C(256'hF9FFF307000BFE0414F9FBF2E6E2FF15080209FE03FBE7F6E9F9FBFFFD0DF909),
    .INIT_3D(256'hF8F2FAFD1105F6060308FEFB03F701F9FC0BFEFA09FAFF1915FDF3000608FFF8),
    .INIT_3E(256'h040707FC04FDF808F9FC030A05130B06EFF705F60901F00203EEFA0608030307),
    .INIT_3F(256'hFFF6EBFDF4FAFDF91309080F0D06FF02191B01FB0F06E9F6F2FD07FF0311020C),
    .INIT_40(256'hEE1CFBF81C0EEB0505FF0707FCF8F703020FF5FB1BF212F3FF00E9F4F00103F4),
    .INIT_41(256'h050806F80402EEFF00FAEC07100B0F07FFFEF80B0B0A00FCFCF40B020A07FCE4),
    .INIT_42(256'hFB0F05F5F7F8E8F5F1E9E80403EC0704EBF6FD020C0D08F907051501F80AF5EF),
    .INIT_43(256'h04F8F40AFBFB070A0605061D0AFD04F0F9FEEB02FF05170A040907FE0703FDFA),
    .INIT_44(256'h04F30205FDFB09F2F90CF90818000C0800F805FBF9FFF4F3F9F3F60905F9FE0D),
    .INIT_45(256'hFBFB0302FD050FFAF7FDF0F7FC040BFCF9EDF30B080CEEFD1006FD09FAF60406),
    .INIT_46(256'h1006030C03FC0A08FFE7F2EAE5F5FB0C00F5FF0AF60B0A06FD090606FFE70306),
    .INIT_47(256'h080AFAF20106041902F1010C0208090B0E050504EDF10002FCF5EEFD08FE0207),
    .INIT_48(256'hF90608FBEC0C08F7F8FFF9FEF900000B0AEDF809FBF8140BF907E9F105011413),
    .INIT_49(256'hFE04FCFB0EFCFE06F901FF06FD000B070506FEFFF9ECF0E5FFFEF7FF04FBF7FB),
    .INIT_4A(256'h03F207110EFBE8F7F70302F9F900F1FA061003FB0003FFFB06FAF8E5DEF30808),
    .INIT_4B(256'hF907FD120B0BF700FFEAFE0307F5F50B0BF9FDFBFB100F04FD00120C0BFEF903),
    .INIT_4C(256'hE9F3070AF8F5F4F3FE05FF05FB1400FF01FEF9F8060CF60C17050CF7FD12F6E3),
    .INIT_4D(256'hF4FEF7F90BF4E50D0D07FB00F7EB02060C0B0700EFFC0A02F804FC0100061001),
    .INIT_4E(256'h091509FEF1F9F9050F050B0102FD0A01080304ECFD02E90A12FAEDFD08F9EA05),
    .INIT_4F(256'h1B0B070B0AF7F9EDFD100DF7F902F7FFF1F904FEFDF702EEEEF2F600EDE5EAF4),
    .INIT_50(256'h00FAF40510080B0405F9FA00EEEDFCF70100FE060DFB00F9FCF009FFECF3F807),
    .INIT_51(256'hFEF2F90F06FFF102E4E7F00000070BFF0B11090400F5FA0701070BFFF4F8F5FA),
    .INIT_52(256'h01F1F4F3F4FE0B0E070104FD08FBF9F8F7F4F9FC030E1AFC0E1207FDFF0F06FD),
    .INIT_53(256'hFC02FBEDF5020007F5F102060104F008FDFF09F7F8F7F9F9F3FAFC13FDF70002),
    .INIT_54(256'hF8F9F7F1F2FFFEF6EAFFFAFEF7FA08FCF4F4F804F8FE0C040FF0EDF2F10504EF),
    .INIT_55(256'hFD0EFBF907080200F608FE030900F90305FBF80BFB0713FBFE01FD0306020AEF),
    .INIT_56(256'hF8ED0905140A061109FC09FCFDFA020805F5F202F5F8FFFAFE0002FE0B120D09),
    .INIT_57(256'hF6F8F7FDEB0013FF19F8F502FAFEF8FE05FC0C080CF7F30BFE08FF05EFEDF1F9),
    .INIT_58(256'h03110AFE0C00F1FFFD06FBF8040816E8ED010E0F030AFA0505EE0B0600FEF8FC),
    .INIT_59(256'h0903F7FEF71307140305F6E60505FFFA0406F0EB09F5FB130C0E0810040711F9),
    .INIT_5A(256'hF7F1ED09200C0307F1E8EEF1ED0201EE0001FBF8EFF004F9FB0B1E05010007F9),
    .INIT_5B(256'hFFFC01FC05FDFB05EAF3F1FE0101030AFBE9FF070BF7FE0505FBF7F0F4F40203),
    .INIT_5C(256'hFCF5E402FAFA030402FD0A09FC0D020704050D100BF40901FBFE01FBF1060F00),
    .INIT_5D(256'hF2FEF90BFCF4FDF608FFF7011408FEFE020EFC01FBFBFAFA061205F9F90305FA),
    .INIT_5E(256'hF809FBF50E01F91001FBF61A0518160500F406F0F3FF0001FD09FA030BEE0006),
    .INIT_5F(256'hFFFEEA010F05F3FB1304FFF102F80102030300FD0400FDFEFFF6FDECF5E1FB02),
    .INIT_60(256'h0BFDEFFCFC0901F4EBE1E6F401F8F40402F5F2FE0C051203061502EDF5F7040E),
    .INIT_61(256'h1A0AE3010F0F111B0CFBF90403FE01F3F20503FBF4FD03F3FD0AF6E6F7FAFAFE),
    .INIT_62(256'hFC030BF2FB120101EFF50B0BEDF0F401E8EB150A01070500FAF408191610040B),
    .INIT_63(256'hF504FDF4F1E10808EAF0E8E2120D0B0404EDF1FF0A0902010505020003FF0100),
    .INIT_64(256'hF706FBEF0DFCFA1B140E061003E7F7F6EF0408FA060108170D0712F606F70108),
    .INIT_65(256'h0108FF061606F30304FAF8F7F5F5FCFDFB04FDFFFEEDF90107F4F708F9F60201),
    .INIT_66(256'hFC0603F412FAF507FF0D0E05EEF2161610F7EE040403FCF5F2F8F903FFF30810),
    .INIT_67(256'h01F20516FEFC0000F5F8FE10FD06080D0502F3FD03060FFF010906FE0505FBF7),
    .INIT_68(256'h0107070403FCF501F9F7FCF4FE0CF00213F2040CFE0300050A0F0505FC04F4ED),
    .INIT_69(256'h01070F05FFE70004FDF0DE040100050AF1F40100FEF70107F910110BF7EBF9FF),
    .INIT_6A(256'h0219FAF51612F5FBFD00F80509F90304F8EEFC0607FD000AF8F1F4FCF9020502),
    .INIT_6B(256'h1EFF10090000FDEE07F2E9F3F801F8020703F4FB07010A02FAFE0003020AF4F1),
    .INIT_6C(256'hFCF9EEF905FA02F5FB0503EFF309EAFBF7F703FEEFEFFF0CFE080AF70D09FD14),
    .INIT_6D(256'h0A0703F6EA030A1A14F7FB10080901F9070A0E12FDF3F50000FE030B19FEFCFD),
    .INIT_6E(256'hF5EFF9FE0606FBFCF90A03F4F2FEF8F6FA06FEFFFAF50D02F0FF09F9F80205F7),
    .INIT_6F(256'hFEFBEB020303EAF6F7EE0903FE170C080710F80AFEFDFBFF0C0B06F91205F6F7),
    .INIT_70(256'h0EF9FFFFEEFD0E140A07FE0DEDF30607000A0F06F4F906F7090902030C00F305),
    .INIT_71(256'hFDF6F7000AF9FF08F7FD0D10F40208F5EFFCFE0207ECF3FEFCFF09000B11010C),
    .INIT_72(256'hFD0E0D13F700081A0302FDEDE5F300FBFF1509F6FB150B0007F6F702E7E2F4F8),
    .INIT_73(256'hFDF80C070FF9F8FF0E08F9020508FEE8F2FF0820F804010C0805020907EEF9F9),
    .INIT_74(256'h13F9FE07000AF80100050F0C02131009FE0409FAF6130E0C09FE0100FEFF0001),
    .INIT_75(256'h0203170B0D0604F100FEF9050E03FEFBF8FB02F1FA1713140609060303FBF1F8),
    .INIT_76(256'h070008020B0D0F0CF7FB03EDEB0E04FE02F509FBF30AFCEDFB11FDFD09ED0C0E),
    .INIT_77(256'hF0F80DFC0701F005FEEC0B0AF8FF06FA080E01FDFEF706FBEDF9122501E6F9FF),
    .INIT_78(256'hF404F7010D080E0602070205010701FE0005FFFA06FCF702EC000BEE03FDFFFF),
    .INIT_79(256'h1001FDFFF7F708FCF3000303FAE2EAE5F3F6FEFA0305F80EEAF309F5E7FC0103),
    .INIT_7A(256'hF70805E8FD17120CF5040CF4022718F5FE170DFC01020903040100FDECEF070B),
    .INIT_7B(256'h03FC020200FB09FD09F0EC02EEFEF5FFFEE0E6030B0801080105F2EFFC000403),
    .INIT_7C(256'hF206F0F8F9F5F0EF00F601F5F7FDFBFCF80401F7FB08EE00F7E10BEBF509F80A),
    .INIT_7D(256'h0BFBEEED06000A0103020A0EF6EDFEF1FAFEF9010C1605060BF4F6F2E0060CFF),
    .INIT_7E(256'h00FB08FF03EB0001F1FA00FD020FFB01F6EDF7FBE0FA0EFC101B05EF091704FF),
    .INIT_7F(256'h0A0B0702FFFFF7FB06FFEFEAFAF9FEF904EF05100705F4F9FAF91006070006FF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_23_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_23_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_Q1_blk_mem_gen_prim_wrapper_init__parameterized9
   (p_19_out,
    clka,
    ena_array,
    sleep,
    addra,
    dina,
    wea);
  output [8:0]p_19_out;
  input clka;
  input [0:0]ena_array;
  input sleep;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [8:0]p_19_out;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h33280C5C5F340E5296C0203B0818033E83E25827A066AC25AF1650C79BCD609A),
    .INITP_01(256'h8197028CDC2910F0011F166F96E5E3CC6BD9F0E85E19E13F821AFD98C4A37E16),
    .INITP_02(256'h6E203F0810ADCF00C9F33DE634DBE0A00BFE1E43EFA21E0E1DD48747F00183A2),
    .INITP_03(256'hF0887812CCB2971E5D809786364DF23FFD864C438C9E810C5C30D200564DFFCB),
    .INITP_04(256'hB8D0198CD8F01C328E3AEFCCDF405E003801D7F1D93C7EE65FB6DFA674FC44C0),
    .INITP_05(256'h769CA7F074100C6B1ED2E6B7FF7B6BCCDFF82E85079F2C76060B84BF6D87C500),
    .INITP_06(256'hE76EDFBCC020A0071E36EBF73C8799520D830AC43F24C76DF3E921CBCE80751F),
    .INITP_07(256'h6521A418916D10097E10C9A306E299698D8CDC208E99397A4F1DE878A660007A),
    .INITP_08(256'hE813B1C6097893EFFB0BFDF2F6ECFBA65F9BF983839033DC726364B4EC239C7C),
    .INITP_09(256'h05FDE3E1803FAC82FDFFE3973F3375831993F3B8C373E6CF2973FBC39B22844E),
    .INITP_0A(256'h71308D7958EE2EF1ECEB9BE1D63271EF2B0EAD2EF804B33627F860C87DD24599),
    .INITP_0B(256'hA5200AD8890646E4E0FC10F6801001B50E3C7A405B3B9478241293C318D774C0),
    .INITP_0C(256'hCCE721A6864E0A7C5306E0D33CB1BFCF979D72787F13CC7880FC4425EDF8EA39),
    .INITP_0D(256'h13079368707F845D078DAC2D1B8642870F864006CF07C3690FC0D2500131CEC1),
    .INITP_0E(256'hF85780BCE87881BC9F3763E8A3CE48CE7577CF880D07647A49005D248F4CC394),
    .INITP_0F(256'h0E700E4FB9DE2747DF7E19821FFCFCFB1F82CD1DBF19E81F9FF8372FF9065E01),
    .INIT_00(256'hF80D01E3FA01F2F4FDEF0B02F7F60BF805F0F20B10150500F10A1CF6FD0AF305),
    .INIT_01(256'hF204F904FAEEFBFB010304F405F4FE1106FA0CFF05150903F8EE100601FBF8FE),
    .INIT_02(256'hFB0CF5000400050A0FF8F90413F0F402F203EB05FDFB070F0F03F80000F70EFF),
    .INIT_03(256'hF3060B0E1406FAEEF1EAF6000310FE0B0AFE11FAF10503131302FD040DF4F5F4),
    .INIT_04(256'h04081803F900130A010C04F7FE070C051100070C0500FFFE0105F5F2FDFDF607),
    .INIT_05(256'hF70818FF0AFEFE0EEEF50402031113010504FA07090408030500F1F8FA07EFFB),
    .INIT_06(256'h0DFF01FDF1F1FBF6070FF6F602FB000E00010E09FCF9F70210FE02FD0F0EF803),
    .INIT_07(256'h090DFBFE151AFDF70200F009FE04020109161E03F9FD000304F710F7F7FE0211),
    .INIT_08(256'hFDF810040BFA0D0BF710F801130EFFF50AFDF7F2FAFAF713090304F90AFFF706),
    .INIT_09(256'hFB070E050B02F801101805EEF200FD01FEEAFBF6ECFF0CF7FC0407F4FC050509),
    .INIT_0A(256'h07F806F3FDF1ED02010908F4F60B00FDFCFDFE0F050204EF0901F0F4FCFBFBF8),
    .INIT_0B(256'h0BF2FB08F804EEF3F2FD06FFFB0802F7F5FAFBF70A131505FFF1EE06F3091713),
    .INIT_0C(256'hF0110DFC01F7FC06FAF2FD0B13F805FFE3FBFE050E03F3F2FAFE0214F7FE0410),
    .INIT_0D(256'h1218181A011D16FE030206FFF7E6E8FC000615FE04F5F60710F5FE05F9F4FFFE),
    .INIT_0E(256'hF0F40EFEF9FD0C01070BFA01F10008F50D0609FE04120801FDFAF1FC01001106),
    .INIT_0F(256'hF30D0A010B0D01F6ED0709FC0EF6EEFE010409140605FD08FE020901FEFA0012),
    .INIT_10(256'hFDF7F8F8100E0806060E0303051407EFF30C120C0C01ECE9FD05FF120E02F603),
    .INIT_11(256'h0A0703FFEAF000FEFCF700F904FB0605FF0A0A0B01F5EEFC08F10B1B06FAF4FF),
    .INIT_12(256'hF5FAF40AF7F4F2E4F70CFF000007FC0804090DFBFBF9F8130504050AFDF5F513),
    .INIT_13(256'h0C0B0204FD07F9FDFDF9F6FAF0F0F80C050E13FFF9EEF80C07FC0A0A0E0BF9F9),
    .INIT_14(256'h0A09F2F702F60B06FEF407EDF803FDFAF9FAFE00090C0600FC0EFE0108031507),
    .INIT_15(256'hE8FD1907FB0707F7EFFBFFF40318EBF40201F9F1F1F40CF7EBECF30505E6F504),
    .INIT_16(256'h150203FD0705060DFD08F903FEF501F4FEFE0B03FDF7FDED0207080809030607),
    .INIT_17(256'h0EFEF400FEFAF9050E08FB00080804130201FEEEF3FDEBF604010305F5000009),
    .INIT_18(256'h06FC04FF01F6E60A06F31B19F3FE0CEDE5F2FCF6F2F1EEF9F8FD0C00FD0EF5F9),
    .INIT_19(256'h01FC01FFF0FD12171513FFFE100E0400F8F610FA0105F30B08020A12090B0017),
    .INIT_1A(256'hFA070E0CFAFB1313FD0603F4FAF1F908F60D0A08120D0CF406071602F5FD1006),
    .INIT_1B(256'hFCFAF9E7F2FA0FEFF409040A01FCFA0602F91107EFE0000D09F806010300ECEF),
    .INIT_1C(256'h090DFCFB01FBF70207F90D0CFEFA0DFEFFFBFCFA0904F4091010EFF9FAFBF5FB),
    .INIT_1D(256'h04FA05F7F4F200F7F900150B0B0D0910FC0B0EFB0DFDFBFEF812170604FFFE01),
    .INIT_1E(256'hFAF50A03FBFB0005F902EFF70403FB03FF1013EC07F8F2FC031208FCFEF0F807),
    .INIT_1F(256'hF8F2F0FB0808080DFE0A0311FC06000609FBF9FEFE0709080D0C06FB100BFD05),
    .INIT_20(256'h12FFF3FD05FD0101FFF8F6FBE9F1080E01F2030105F60002EBE9050908060E16),
    .INIT_21(256'h0AF601F3F0F2F2F5FD06F0EF10F1F203F7F500F7EFF9F7EFFB09F5010EECF206),
    .INIT_22(256'hFBFC00FDFA0A11F90203F9FEF7F602090EFBE0E7ECF7F807FDF0F90E1AFFFB03),
    .INIT_23(256'h0A03FCF7FB110F11031009060F180DF5F0F608FF0CFEF5F8F7F8DEF5021604FD),
    .INIT_24(256'hF1FD04FAF5F4F4F404F80704090F020903FD08F3F4F7FC030303020508050511),
    .INIT_25(256'hFC011101F0FAFE09050FF8F8FF02FA01FBFCFD05FEF3FEF9FBFB060BFCF60505),
    .INIT_26(256'hFDEC05EEF6050C13F3FCF5F205090D191B0E0EF4F3F606160808FCEA0900F102),
    .INIT_27(256'hFD0AFAF5F8020409FFFC00FE00050B03070714FCFD0510F9F0030104FBFD0821),
    .INIT_28(256'h03FDF30BEAF603FCF906000C0BF3EBEFF6F9100D03F507FC091508041812160A),
    .INIT_29(256'h0208030000FEFD010917120CFC07EFECFE1306110BFA0A09FD06FEF0F2F8FEFA),
    .INIT_2A(256'h0106170501FFF2F4F70802FEF2F6F0F81307FF0AF6F5041D04FFFCF80AF9FC05),
    .INIT_2B(256'hF7EB00FAF8E3E2F2F2F6EDF0FD0706181106F606F9EFF918FE110B0714F502F6),
    .INIT_2C(256'hFCF7E6FFF1F9F5EE06F7E3F4FD02FDF902FCF401F803F4ECF4FF0F00FAE80910),
    .INIT_2D(256'h0C0416F9EFE5EC0EFFF503FA0406FD12F5EEF1060BF8F208F902F6F006E5F7FD),
    .INIT_2E(256'h04F6E9FC06FB090B16000BF3001304030B0A0E01ECFA091115F9FC02FD06F6FF),
    .INIT_2F(256'h11FCEAFB0DEAFA0AFC1309F7ECED0400FF09FE1112FAF1F2F9F9FCF80F1C060E),
    .INIT_30(256'hF1FB0A14FEFEFF04F90B11090A03070304F6F7EF01FF03F2070803F4E3F1FBFC),
    .INIT_31(256'hFDFAF9F80B03FCF5EEE0EF0BFA0A08FF0805FB0B0A0E0CF6FAF7011DFC0AFBE8),
    .INIT_32(256'h000BFCFBECF9FFF70A07FA080CF30509EAF0020709FDEFFE01E8EE0BFAF10FFE),
    .INIT_33(256'h06090C02F8F404F2FE100D060007F7FE0F040806FA03FB07FCF30A0B01FF0B02),
    .INIT_34(256'h0909E9F1F8FF0D0AF50909030AF8F3F1FF0C09F5F40209FF09FA00FF0101F70D),
    .INIT_35(256'h100D00ECFFFBF9070214FFF916FDFD10F8EDF401FB02EDE9FFFFFBF800FDF4FE),
    .INIT_36(256'hE7F40309090312200403FB0D03070D01FF09F2060B0603000603070D10ECECF5),
    .INIT_37(256'hF7F5F30003F8F4FA03F0EE0CFBF1FA00FFF708FBF9F1F3F6FD05F7F1FDF1010C),
    .INIT_38(256'hFF02F70C00F8F80006F5FC0F0C0702071007050A010F051110E9EFF6FB03F006),
    .INIT_39(256'h0DF50A17FBEDFFF50C0F0BF0F4F206FFFCFDF909F503060718FFF6FAFF04070B),
    .INIT_3A(256'hF5110A18F8F2F803F51320F7F60C0CF9040FF6EAF61501FE00F9EFFFF808FD04),
    .INIT_3B(256'hF700090CFCFA08FBFB0B0403F1FD0006FEFC01FFF9FB0B09090FFE0410031300),
    .INIT_3C(256'h0103090310FDF003F7F1F9100202FD01FC0508FFF31212F40EF6FD05F30407F9),
    .INIT_3D(256'h00FDF0FCF8FBFF101C0302FD02110A0AF9F80805FF0406F7EA09F5030204F6F1),
    .INIT_3E(256'hFF0600FE0D0502F601FEFE01FAF904FB060B04FA080B040F060C0B05FF0204F3),
    .INIT_3F(256'h0DFFF00E0BF403F30E0EF800010E0DFFFF05F80D01F704090B0505F8E7031A20),
    .INIT_40(256'hFFFFFB08F9FE06000C03FD020604E7F0FF0102FCEFF6080105FAFDFCF3F40204),
    .INIT_41(256'h00F8F4EF0403F51108E7FD0F000AF6F104FBF30A04EC120CFE07EEF908F71406),
    .INIT_42(256'hFB0B0A0A1605F4EEFF130EFF06000013201AFAED0A0EF4F3EEF902F0EFFF0800),
    .INIT_43(256'h15FA01FEF8F5FAEFF6010FFDF902FFFAE7EFF4F6FC0104FDFD0D03080005FEFD),
    .INIT_44(256'hFDF9FEF60AFCF905E9E9FC06FBE5090EF1E7FCFFFF0DF7EBFE08FE0401FEFC04),
    .INIT_45(256'hFFFEF8F9FE04FEEA02000A0AF903F1E7F5F8E4F0F5FD0BEDDCF8F3FA020CF903),
    .INIT_46(256'h0F232307FF080DFE01F1F7FEF4081005E40904F20709FEEDF3FBFB03F0F5ECF8),
    .INIT_47(256'hFEFAFF02F4020309090604F70500F2E8FC00FBF2000C09FEFAFB060D07FDF208),
    .INIT_48(256'hFE0B05EEF000F8FF0E0CF509040AF001FE150D0A00FA0A1A0FED000DEFEEF612),
    .INIT_49(256'h100DFE0CFE080CF507FDFCF90205FFFDECF3F0E0E701F8F5FEEF02050200F7F1),
    .INIT_4A(256'hFEFE09040403FFF80AFDECF50908F8EFEFF8F6160AF8F911FEFD040AFCF8F5F7),
    .INIT_4B(256'h041108E6FF1D0BF8F00C0CF4130AF5FAFFFFECF30915F3FCF702FCFCF1030301),
    .INIT_4C(256'h0108F1F5F5F9F3F50C08EBF60F0AFDFD08FFE6FF15FE00FEEE0A09080F01F6FA),
    .INIT_4D(256'hF2EAF8FFEDEA0AFCF6FAFBF8EEF6F6FCF5E8F60A0502FAF8FA0A05F603F7F5F6),
    .INIT_4E(256'hFC191303120816040004FEFAFBF6F9F1F907FE09FDFD0801FF1F0F0D0200F901),
    .INIT_4F(256'h0407120000FF00FCF6ECF0F3EBFE01FAF4F6FE000919F9EEF6EAFF070A100EFE),
    .INIT_50(256'h02FFFFFFF4FD0AFCFCFD10F9071AED0500FA010515FD03F7FB050EF5F01D0CF8),
    .INIT_51(256'h0202F90B08F6F9FDF9F2F8F2FE10121505E7FD0B131C1511F0FF020AF9000604),
    .INIT_52(256'hFBF1FFFFFE0B01030F04020609ED051FFB01FDF30306FEFC1106F7FB05F6FA0A),
    .INIT_53(256'h0502FC03FF10EAF010010511F5F3FE02F602F702F6FC05FD100CFE10F2FEFB04),
    .INIT_54(256'hFAF603F003F9E1060709F7FC1602ED0A0DFEF8FE080C01FCF0E7F607EAE1FFFC),
    .INIT_55(256'hEBF3FA0AF4FA0E05F2F9FF02FE09FAE1FC0C0BFBFB03FFFEEBF6EB0C06060CF4),
    .INIT_56(256'h01F404FCFB0A1306F8E1FA0EF7FDF3060804F60FFCFBF907E6EDF6FB070A0AFC),
    .INIT_57(256'h07E6F0FF0C0702EF0B0AF8FD030B1301FE010813FFFE00F810F9F4FDFD1803FA),
    .INIT_58(256'h160D03F1FD060816F7FA00F209F7F0F60BEEE8FA00FE0006FBF10209030A0701),
    .INIT_59(256'h180EFE0505F703140D010EFA0103FB01EE120DF5080EFFFEFEF301171009FBE7),
    .INIT_5A(256'h05F702FEFD11F4F80405F1ECF401FCF6F7010BFF08FE06130CF3F4EAFC0B0002),
    .INIT_5B(256'h010B0B06FFFEEB060008F9F7F4F0041008F8EDE8F700FD080EF90F1C04060709),
    .INIT_5C(256'hF80700161A1B0902060805FF020F0D000D040B14000A0CF9FA03E6F80DF807FC),
    .INIT_5D(256'hFBF0F4090003060DFFF8F7F2FFF40912140E07FC03010100F0F2EEFC06EBFB05),
    .INIT_5E(256'hF9010A10F60404FB020E120405F2FF1106F9060F14FCFF01ECF2F9080CFD0703),
    .INIT_5F(256'hFF11F90911F803FA0E0FFA010102100006131707F907FF00FDFC02FCF9031105),
    .INIT_60(256'hF3EBE707FEEB06FCFFF4F6FDFF080A0AFEF7FD07FC08ED000E00F8FAF60907F9),
    .INIT_61(256'hF90406000904100CF3FBE9EDF9FC090C0AFF020D05FC0916060AFF0F05FB0AFE),
    .INIT_62(256'h04EEEBEEF9F9F7FA041001FC1000F7F3FBFB0505F7FA0C1013F5E3EBF7050102),
    .INIT_63(256'hF50E08F308F8FCFFFE0614FEEFFD03FB03F9EFF40507F8090FFBF7F0F8031504),
    .INIT_64(256'h0F08F2F4F7EF0904F212FFFF080E02F8FB00F1EEFAF9F2F0E3FB0B06F4F3F6F1),
    .INIT_65(256'h04F503FE010EFAFD0A09011711F9EC01F7F7FE050A130905F8F713FA0309FFFD),
    .INIT_66(256'hF104120D09F2FB0908FE0605FEEAFB060A0B1604FF0FFC0104F5EEF5F9FB070A),
    .INIT_67(256'hFAF4040EFBF5000AF7FCFD0609F6EEFB111AF703050E09F9FE07EE050DFBEC04),
    .INIT_68(256'h060D1015020E0FFE0417FCF5050C12F4F9FD0206FEF8FB0FF9F40806000212FE),
    .INIT_69(256'h060A0C03FAF3F2FBFCFC0001060F0003F5F903FE0204FF0115FC0BF202120205),
    .INIT_6A(256'hFBFA1B0EEAF4F7FD0007060910FDF1F9F9FC0804030AFAF908F6F504ED0303F8),
    .INIT_6B(256'h01001108EAFBFFFCF60E0E0B02F9FA0202F30709050002030F13050C06F5FD00),
    .INIT_6C(256'h040A12FCFE15F9E9FA0A010C11FCFB0409F905020107FF03FC05020307F8EAF2),
    .INIT_6D(256'h031708040CF5FAFDF6050519F5F714F7F804F902FAF806010D04F707FCF405F9),
    .INIT_6E(256'h0CEFEEF40111030608F4F4F9FEF5DFEBE800070806F5041207F601F9E6FA04FA),
    .INIT_6F(256'h000D12FD0514FBFC0D0001000FEFE8F6F00216F60105FFF60CF4F603F70A0A0D),
    .INIT_70(256'hFC090E05F6F1F6FD08FF1916FBF10104F7FF0D120B02FEEEE70000F502FB0101),
    .INIT_71(256'h02FE1211FA0C05FE080D010101020B1002EE02F7FCFB0BF51A07F60805F60012),
    .INIT_72(256'h0E0C0702F5F816F90A09031102FCFAFB05F6FE0F05FC030009FCFCF7FA04FF02),
    .INIT_73(256'h06F6E6FD09FA02F505FEF1F108F9EFEDF8FA060AFEF9FCF2EE100904FE040905),
    .INIT_74(256'hFE07F5031213FCFDF5FC0400FCEFED060BED0511FA000B04FCF4050BF5E7FE05),
    .INIT_75(256'hFA0E04FAF1E2F0FD1B0BF5F310FEF7FE05FCED090709FFFFF7F5FF06F3090B03),
    .INIT_76(256'hE6FAFD00F50004020AFFEFF9EF000807FE000511040B05F5FC10FEE9EDFF0700),
    .INIT_77(256'hF9F9F4EEE6140F0E0BFA03FA0EF7E5F4FB020401050D050DFB08FDF7EEFA0606),
    .INIT_78(256'hF5E6EFEDFF0204FF050D000304F8F7070EF500FCEEF2EB030700020302010BFD),
    .INIT_79(256'hF10A0FFEFEFBF1F3E8FDFEE8F90B06080203F5FC0AF3FBFB0503FB02FBEDF1F9),
    .INIT_7A(256'hEF07FCFBFAF7FAFA0C0A05F7FF0205F3F3FBFD00FC0A0001040601FDEAE8EEFD),
    .INIT_7B(256'h121606FCFEFFF8EFFF0C0D040E05FE01F5F10719E2F90FFC08040BFCFBF201F2),
    .INIT_7C(256'h080402F7EFFFFAEDECF9F9F8FFF1000AFDF7FDFEFAFE0402FAFCF8F5F801F7FB),
    .INIT_7D(256'hEDFF03F7F6FCEEE503F0EFFAF9FDFC0200060CF3FD070CFDFC000806010BF907),
    .INIT_7E(256'hFC02FEF9F80E0AFDFBEF00FEFBEDF0020502F2000DF8F6FF0BFC000911FEF9F5),
    .INIT_7F(256'h0B120307FBFBFA0105F8F6EC03020B0B0B1D1700F6E6ED0500F30905F2F6F1F6),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DINPADINP({1'b0,1'b0,1'b0,dina[8]}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],p_19_out[7:0]}),
        .DOUTBDOUT(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:0]),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],p_19_out[8]}),
        .DOUTPBDOUTP(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_8SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({1'b0,1'b0,1'b0,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_Q1_blk_mem_gen_top
   (douta,
    addra,
    clka,
    sleep,
    dina,
    wea);
  output [11:0]douta;
  input [15:0]addra;
  input clka;
  input sleep;
  input [11:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .sleep(sleep),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "16" *) (* C_ADDRB_WIDTH = "16" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "8" *) 
(* C_COUNT_36K_BRAM = "10" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.536252 mW" *) 
(* C_FAMILY = "virtexu" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_Q1.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_Q1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "40000" *) (* C_READ_DEPTH_B = "40000" *) (* C_READ_WIDTH_A = "12" *) 
(* C_READ_WIDTH_B = "12" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "40000" *) (* C_WRITE_DEPTH_B = "40000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) 
(* C_XDEVICEFAMILY = "virtexu" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_Q1_blk_mem_gen_v8_3_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [15:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [15:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [15:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [15:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [15:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire sleep;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_Q1_blk_mem_gen_v8_3_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .sleep(sleep),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_2_synth" *) 
module blk_mem_Q1_blk_mem_gen_v8_3_2_synth
   (douta,
    addra,
    clka,
    sleep,
    dina,
    wea);
  output [11:0]douta;
  input [15:0]addra;
  input clka;
  input sleep;
  input [11:0]dina;
  input [0:0]wea;

  wire [15:0]addra;
  wire clka;
  wire [11:0]dina;
  wire [11:0]douta;
  wire sleep;
  wire [0:0]wea;

  blk_mem_Q1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .sleep(sleep),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
