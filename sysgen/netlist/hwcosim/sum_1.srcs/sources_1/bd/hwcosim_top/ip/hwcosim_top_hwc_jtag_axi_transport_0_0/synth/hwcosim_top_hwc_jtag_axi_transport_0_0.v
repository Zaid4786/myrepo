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


// IP VLNV: xilinx.com:hwcosim:hwc_jtag_axi_transport:1.2
// IP Revision: 15

(* X_CORE_INFO = "hwc_jtag_axi_transport,Vivado 2016.1" *)
(* CHECK_LICENSE_TYPE = "hwcosim_top_hwc_jtag_axi_transport_0_0,hwc_jtag_axi_transport,{}" *)
(* CORE_GENERATION_INFO = "hwcosim_top_hwc_jtag_axi_transport_0_0,hwc_jtag_axi_transport,{x_ipProduct=Vivado 2016.1,x_ipVendor=xilinx.com,x_ipLibrary=hwcosim,x_ipName=hwc_jtag_axi_transport,x_ipVersion=1.2,x_ipCoreRevision=15,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,HWC_JTAG_SCAN_CHAIN=2}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hwcosim_top_hwc_jtag_axi_transport_0_0 (
  resetn,
  M00_AXIS_TREADY,
  M00_AXIS_TDATA,
  M00_AXIS_TVALID,
  M00_AXIS_TLAST,
  S00_AXIS_TREADY,
  S00_AXIS_TDATA,
  S00_AXIS_TVALID,
  jtag_clk,
  jtag_resetn
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *)
input wire M00_AXIS_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *)
output wire [7 : 0] M00_AXIS_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *)
output wire M00_AXIS_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *)
output wire M00_AXIS_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *)
output wire S00_AXIS_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *)
input wire [7 : 0] S00_AXIS_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *)
input wire S00_AXIS_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 jtag_clk CLK" *)
output wire jtag_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 jtag_resetn RST" *)
output wire jtag_resetn;

  hwc_jtag_axi_transport #(
    .HWC_JTAG_SCAN_CHAIN(2)
  ) inst (
    .resetn(resetn),
    .M00_AXIS_TREADY(M00_AXIS_TREADY),
    .M00_AXIS_TDATA(M00_AXIS_TDATA),
    .M00_AXIS_TVALID(M00_AXIS_TVALID),
    .M00_AXIS_TLAST(M00_AXIS_TLAST),
    .S00_AXIS_TREADY(S00_AXIS_TREADY),
    .S00_AXIS_TDATA(S00_AXIS_TDATA),
    .S00_AXIS_TVALID(S00_AXIS_TVALID),
    .jtag_clk(jtag_clk),
    .jtag_resetn(jtag_resetn)
  );
endmodule
