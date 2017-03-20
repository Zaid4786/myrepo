// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hwcosim:hwcosim_cmd_proc:1.2
// IP Revision: 20

(* X_CORE_INFO = "hwcosim_cmd_proc,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "hwcosim_top_hwcosim_cmd_proc_0,hwcosim_cmd_proc,{}" *)
(* CORE_GENERATION_INFO = "hwcosim_top_hwcosim_cmd_proc_0,hwcosim_cmd_proc,{x_ipProduct=Vivado 2016.1,x_ipVendor=xilinx.com,x_ipLibrary=hwcosim,x_ipName=hwcosim_cmd_proc,x_ipVersion=1.2,x_ipCoreRevision=20,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_AXI_ADDR_W=7,INTERFACE=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hwcosim_top_hwcosim_cmd_proc_0 (
  clk,
  resetn,
  rx_fifo_tdata,
  rx_fifo_tvalid,
  rx_fifo_tlast,
  rx_fifo_tready,
  tx_fifo_tdata,
  tx_fifo_tvalid,
  tx_fifo_tlast,
  tx_fifo_tready,
  axi_lite_awvalid,
  axi_lite_awready,
  axi_lite_awaddr,
  axi_lite_arvalid,
  axi_lite_arready,
  axi_lite_araddr,
  axi_lite_wvalid,
  axi_lite_wready,
  axi_lite_wdata,
  axi_lite_wstrb,
  axi_lite_bready,
  axi_lite_bvalid,
  axi_lite_bresp,
  axi_lite_rready,
  axi_lite_rvalid,
  axi_lite_rdata,
  axi_lite_rresp
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_fifo TDATA" *)
input wire [31 : 0] rx_fifo_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_fifo TVALID" *)
input wire rx_fifo_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_fifo TLAST" *)
input wire rx_fifo_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_fifo TREADY" *)
output wire rx_fifo_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TDATA" *)
output wire [31 : 0] tx_fifo_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TVALID" *)
output wire tx_fifo_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TLAST" *)
output wire tx_fifo_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TREADY" *)
input wire tx_fifo_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWVALID" *)
output wire axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWREADY" *)
input wire axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite AWADDR" *)
output wire [31 : 0] axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARVALID" *)
output wire axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARREADY" *)
input wire axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite ARADDR" *)
output wire [31 : 0] axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WVALID" *)
output wire axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WREADY" *)
input wire axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WDATA" *)
output wire [31 : 0] axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite WSTRB" *)
output wire [3 : 0] axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BREADY" *)
output wire axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BVALID" *)
input wire axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite BRESP" *)
input wire [1 : 0] axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RREADY" *)
output wire axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RVALID" *)
input wire axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RDATA" *)
input wire [31 : 0] axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 axi_lite RRESP" *)
input wire [1 : 0] axi_lite_rresp;

  hwcosim_cmd_proc #(
    .C_AXI_ADDR_W(7),
    .INTERFACE(0)
  ) inst (
    .clk(clk),
    .resetn(resetn),
    .rx_fifo_tdata(rx_fifo_tdata),
    .rx_fifo_tvalid(rx_fifo_tvalid),
    .rx_fifo_tlast(rx_fifo_tlast),
    .rx_fifo_tready(rx_fifo_tready),
    .tx_fifo_tdata(tx_fifo_tdata),
    .tx_fifo_tvalid(tx_fifo_tvalid),
    .tx_fifo_tlast(tx_fifo_tlast),
    .tx_fifo_tready(tx_fifo_tready),
    .axi_lite_awvalid(axi_lite_awvalid),
    .axi_lite_awready(axi_lite_awready),
    .axi_lite_awaddr(axi_lite_awaddr),
    .axi_lite_arvalid(axi_lite_arvalid),
    .axi_lite_arready(axi_lite_arready),
    .axi_lite_araddr(axi_lite_araddr),
    .axi_lite_wvalid(axi_lite_wvalid),
    .axi_lite_wready(axi_lite_wready),
    .axi_lite_wdata(axi_lite_wdata),
    .axi_lite_wstrb(axi_lite_wstrb),
    .axi_lite_bready(axi_lite_bready),
    .axi_lite_bvalid(axi_lite_bvalid),
    .axi_lite_bresp(axi_lite_bresp),
    .axi_lite_rready(axi_lite_rready),
    .axi_lite_rvalid(axi_lite_rvalid),
    .axi_lite_rdata(axi_lite_rdata),
    .axi_lite_rresp(axi_lite_rresp)
  );
endmodule
