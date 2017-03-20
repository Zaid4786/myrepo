//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
//Date        : Sun Mar 12 17:26:12 2017
//Host        : zaid-LIFEBOOK-A555 running 64-bit Ubuntu 16.04.2 LTS
//Command     : generate_target hwcosim_top.bd
//Design      : hwcosim_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hwcosim_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hwcosim_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=10,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=Global}" *) (* HW_HANDOFF = "hwcosim_top.hwdef" *) 
module hwcosim_top
   (sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire [7:0]axis_data_fifo_rx_M_AXIS_TDATA;
  wire axis_data_fifo_rx_M_AXIS_TLAST;
  wire axis_data_fifo_rx_M_AXIS_TREADY;
  wire axis_data_fifo_rx_M_AXIS_TVALID;
  wire [7:0]axis_data_fifo_tx_M_AXIS_TDATA;
  wire axis_data_fifo_tx_M_AXIS_TREADY;
  wire axis_data_fifo_tx_M_AXIS_TVALID;
  wire [31:0]axis_dwidth_converter_rx_M_AXIS_TDATA;
  wire axis_dwidth_converter_rx_M_AXIS_TLAST;
  wire axis_dwidth_converter_rx_M_AXIS_TREADY;
  wire axis_dwidth_converter_rx_M_AXIS_TVALID;
  wire [7:0]axis_dwidth_converter_tx_M_AXIS_TDATA;
  wire axis_dwidth_converter_tx_M_AXIS_TLAST;
  wire axis_dwidth_converter_tx_M_AXIS_TREADY;
  wire axis_dwidth_converter_tx_M_AXIS_TVALID;
  wire [7:0]hwc_jtag_axi_transport_0_M00_AXIS_TDATA;
  wire hwc_jtag_axi_transport_0_M00_AXIS_TLAST;
  wire hwc_jtag_axi_transport_0_M00_AXIS_TREADY;
  wire hwc_jtag_axi_transport_0_M00_AXIS_TVALID;
  wire hwc_jtag_axi_transport_0_jtag_clk;
  wire hwc_jtag_axi_transport_0_jtag_resetn;
  wire [31:0]hwcosim_cmd_proc_axi_lite_ARADDR;
  wire hwcosim_cmd_proc_axi_lite_ARREADY;
  wire hwcosim_cmd_proc_axi_lite_ARVALID;
  wire [31:0]hwcosim_cmd_proc_axi_lite_AWADDR;
  wire hwcosim_cmd_proc_axi_lite_AWREADY;
  wire hwcosim_cmd_proc_axi_lite_AWVALID;
  wire hwcosim_cmd_proc_axi_lite_BREADY;
  wire [1:0]hwcosim_cmd_proc_axi_lite_BRESP;
  wire hwcosim_cmd_proc_axi_lite_BVALID;
  wire [31:0]hwcosim_cmd_proc_axi_lite_RDATA;
  wire hwcosim_cmd_proc_axi_lite_RREADY;
  wire [1:0]hwcosim_cmd_proc_axi_lite_RRESP;
  wire hwcosim_cmd_proc_axi_lite_RVALID;
  wire [31:0]hwcosim_cmd_proc_axi_lite_WDATA;
  wire hwcosim_cmd_proc_axi_lite_WREADY;
  wire [3:0]hwcosim_cmd_proc_axi_lite_WSTRB;
  wire hwcosim_cmd_proc_axi_lite_WVALID;
  wire [31:0]hwcosim_cmd_proc_tx_fifo_TDATA;
  wire hwcosim_cmd_proc_tx_fifo_TLAST;
  wire hwcosim_cmd_proc_tx_fifo_TREADY;
  wire hwcosim_cmd_proc_tx_fifo_TVALID;
  wire [0:0]reset_gen_aresetn;
  wire sys_clk_net;
  wire sys_clk_wiz_locked;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;

  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  hwcosim_top_axis_data_fifo_rx_0 axis_data_fifo_rx
       (.m_axis_aclk(sys_clk_net),
        .m_axis_aresetn(reset_gen_aresetn),
        .m_axis_tdata(axis_data_fifo_rx_M_AXIS_TDATA),
        .m_axis_tlast(axis_data_fifo_rx_M_AXIS_TLAST),
        .m_axis_tready(axis_data_fifo_rx_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_rx_M_AXIS_TVALID),
        .s_axis_aclk(hwc_jtag_axi_transport_0_jtag_clk),
        .s_axis_aresetn(hwc_jtag_axi_transport_0_jtag_resetn),
        .s_axis_tdata(hwc_jtag_axi_transport_0_M00_AXIS_TDATA),
        .s_axis_tlast(hwc_jtag_axi_transport_0_M00_AXIS_TLAST),
        .s_axis_tready(hwc_jtag_axi_transport_0_M00_AXIS_TREADY),
        .s_axis_tvalid(hwc_jtag_axi_transport_0_M00_AXIS_TVALID));
  hwcosim_top_axis_data_fifo_tx_0 axis_data_fifo_tx
       (.m_axis_aclk(hwc_jtag_axi_transport_0_jtag_clk),
        .m_axis_aresetn(hwc_jtag_axi_transport_0_jtag_resetn),
        .m_axis_tdata(axis_data_fifo_tx_M_AXIS_TDATA),
        .m_axis_tready(axis_data_fifo_tx_M_AXIS_TREADY),
        .m_axis_tvalid(axis_data_fifo_tx_M_AXIS_TVALID),
        .s_axis_aclk(sys_clk_net),
        .s_axis_aresetn(reset_gen_aresetn),
        .s_axis_tdata(axis_dwidth_converter_tx_M_AXIS_TDATA),
        .s_axis_tlast(axis_dwidth_converter_tx_M_AXIS_TLAST),
        .s_axis_tready(axis_dwidth_converter_tx_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_tx_M_AXIS_TVALID));
  hwcosim_top_axis_dwidth_converter_rx_0 axis_dwidth_converter_rx
       (.aclk(sys_clk_net),
        .aresetn(reset_gen_aresetn),
        .m_axis_tdata(axis_dwidth_converter_rx_M_AXIS_TDATA),
        .m_axis_tlast(axis_dwidth_converter_rx_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_rx_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_rx_M_AXIS_TVALID),
        .s_axis_tdata(axis_data_fifo_rx_M_AXIS_TDATA),
        .s_axis_tlast(axis_data_fifo_rx_M_AXIS_TLAST),
        .s_axis_tready(axis_data_fifo_rx_M_AXIS_TREADY),
        .s_axis_tvalid(axis_data_fifo_rx_M_AXIS_TVALID));
  hwcosim_top_axis_dwidth_converter_tx_0 axis_dwidth_converter_tx
       (.aclk(sys_clk_net),
        .aresetn(reset_gen_aresetn),
        .m_axis_tdata(axis_dwidth_converter_tx_M_AXIS_TDATA),
        .m_axis_tlast(axis_dwidth_converter_tx_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_tx_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_tx_M_AXIS_TVALID),
        .s_axis_tdata(hwcosim_cmd_proc_tx_fifo_TDATA),
        .s_axis_tlast(hwcosim_cmd_proc_tx_fifo_TLAST),
        .s_axis_tready(hwcosim_cmd_proc_tx_fifo_TREADY),
        .s_axis_tvalid(hwcosim_cmd_proc_tx_fifo_TVALID));
  hwcosim_top_hwc_jtag_axi_transport_0_0 hwc_jtag_axi_transport_0
       (.M00_AXIS_TDATA(hwc_jtag_axi_transport_0_M00_AXIS_TDATA),
        .M00_AXIS_TLAST(hwc_jtag_axi_transport_0_M00_AXIS_TLAST),
        .M00_AXIS_TREADY(hwc_jtag_axi_transport_0_M00_AXIS_TREADY),
        .M00_AXIS_TVALID(hwc_jtag_axi_transport_0_M00_AXIS_TVALID),
        .S00_AXIS_TDATA(axis_data_fifo_tx_M_AXIS_TDATA),
        .S00_AXIS_TREADY(axis_data_fifo_tx_M_AXIS_TREADY),
        .S00_AXIS_TVALID(axis_data_fifo_tx_M_AXIS_TVALID),
        .jtag_clk(hwc_jtag_axi_transport_0_jtag_clk),
        .jtag_resetn(hwc_jtag_axi_transport_0_jtag_resetn),
        .resetn(1'b1));
  hwcosim_top_hwcosim_cmd_proc_0 hwcosim_cmd_proc
       (.axi_lite_araddr(hwcosim_cmd_proc_axi_lite_ARADDR),
        .axi_lite_arready(hwcosim_cmd_proc_axi_lite_ARREADY),
        .axi_lite_arvalid(hwcosim_cmd_proc_axi_lite_ARVALID),
        .axi_lite_awaddr(hwcosim_cmd_proc_axi_lite_AWADDR),
        .axi_lite_awready(hwcosim_cmd_proc_axi_lite_AWREADY),
        .axi_lite_awvalid(hwcosim_cmd_proc_axi_lite_AWVALID),
        .axi_lite_bready(hwcosim_cmd_proc_axi_lite_BREADY),
        .axi_lite_bresp(hwcosim_cmd_proc_axi_lite_BRESP),
        .axi_lite_bvalid(hwcosim_cmd_proc_axi_lite_BVALID),
        .axi_lite_rdata(hwcosim_cmd_proc_axi_lite_RDATA),
        .axi_lite_rready(hwcosim_cmd_proc_axi_lite_RREADY),
        .axi_lite_rresp(hwcosim_cmd_proc_axi_lite_RRESP),
        .axi_lite_rvalid(hwcosim_cmd_proc_axi_lite_RVALID),
        .axi_lite_wdata(hwcosim_cmd_proc_axi_lite_WDATA),
        .axi_lite_wready(hwcosim_cmd_proc_axi_lite_WREADY),
        .axi_lite_wstrb(hwcosim_cmd_proc_axi_lite_WSTRB),
        .axi_lite_wvalid(hwcosim_cmd_proc_axi_lite_WVALID),
        .clk(sys_clk_net),
        .resetn(reset_gen_aresetn),
        .rx_fifo_tdata(axis_dwidth_converter_rx_M_AXIS_TDATA),
        .rx_fifo_tlast(axis_dwidth_converter_rx_M_AXIS_TLAST),
        .rx_fifo_tready(axis_dwidth_converter_rx_M_AXIS_TREADY),
        .rx_fifo_tvalid(axis_dwidth_converter_rx_M_AXIS_TVALID),
        .tx_fifo_tdata(hwcosim_cmd_proc_tx_fifo_TDATA),
        .tx_fifo_tlast(hwcosim_cmd_proc_tx_fifo_TLAST),
        .tx_fifo_tready(hwcosim_cmd_proc_tx_fifo_TREADY),
        .tx_fifo_tvalid(hwcosim_cmd_proc_tx_fifo_TVALID));
  reset_gen_imp_1WK4TX6 reset_gen
       (.aclk(sys_clk_net),
        .aresetn(reset_gen_aresetn),
        .dcm_locked(sys_clk_wiz_locked));
  hwcosim_top_sum_1_0_0 sum_1_0
       (.clk(sys_clk_net),
        .sum_1_aresetn(reset_gen_aresetn),
        .sum_1_s_axi_araddr(hwcosim_cmd_proc_axi_lite_ARADDR[6:0]),
        .sum_1_s_axi_arready(hwcosim_cmd_proc_axi_lite_ARREADY),
        .sum_1_s_axi_arvalid(hwcosim_cmd_proc_axi_lite_ARVALID),
        .sum_1_s_axi_awaddr(hwcosim_cmd_proc_axi_lite_AWADDR[6:0]),
        .sum_1_s_axi_awready(hwcosim_cmd_proc_axi_lite_AWREADY),
        .sum_1_s_axi_awvalid(hwcosim_cmd_proc_axi_lite_AWVALID),
        .sum_1_s_axi_bready(hwcosim_cmd_proc_axi_lite_BREADY),
        .sum_1_s_axi_bresp(hwcosim_cmd_proc_axi_lite_BRESP),
        .sum_1_s_axi_bvalid(hwcosim_cmd_proc_axi_lite_BVALID),
        .sum_1_s_axi_rdata(hwcosim_cmd_proc_axi_lite_RDATA),
        .sum_1_s_axi_rready(hwcosim_cmd_proc_axi_lite_RREADY),
        .sum_1_s_axi_rresp(hwcosim_cmd_proc_axi_lite_RRESP),
        .sum_1_s_axi_rvalid(hwcosim_cmd_proc_axi_lite_RVALID),
        .sum_1_s_axi_wdata(hwcosim_cmd_proc_axi_lite_WDATA),
        .sum_1_s_axi_wready(hwcosim_cmd_proc_axi_lite_WREADY),
        .sum_1_s_axi_wstrb(hwcosim_cmd_proc_axi_lite_WSTRB),
        .sum_1_s_axi_wvalid(hwcosim_cmd_proc_axi_lite_WVALID));
  hwcosim_top_sys_clk_wiz_0 sys_clk_wiz
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(sys_clk_net),
        .locked(sys_clk_wiz_locked),
        .reset(1'b0));
endmodule

module reset_gen_imp_1WK4TX6
   (aclk,
    aresetn,
    dcm_locked);
  input aclk;
  output [0:0]aresetn;
  input dcm_locked;

  wire aclk_1;
  wire dcm_locked_1;
  wire [0:0]proc_sys_reset_peripheral_aresetn;
  wire [0:0]xlconstant_0_dout;

  assign aclk_1 = aclk;
  assign aresetn[0] = proc_sys_reset_peripheral_aresetn;
  assign dcm_locked_1 = dcm_locked;
  hwcosim_top_proc_sys_reset_0 proc_sys_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(xlconstant_0_dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_peripheral_aresetn),
        .slowest_sync_clk(aclk_1));
  hwcosim_top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
