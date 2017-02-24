// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Thu Feb 16 04:53:34 2017
// Host        : mustafar running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_1_stub.v
// Design      : ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu095-ffva2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2016.3" *)
module ila_1(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[10:0],probe1[6:0],probe2[3:0],probe3[6:0],probe4[0:0],probe5[0:0]" */;
  input clk;
  input [10:0]probe0;
  input [6:0]probe1;
  input [3:0]probe2;
  input [6:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
endmodule
