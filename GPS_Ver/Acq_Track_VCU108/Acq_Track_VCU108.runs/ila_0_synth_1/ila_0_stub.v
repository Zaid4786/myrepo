// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
// Date        : Thu Mar 16 17:03:22 2017
// Host        : zaid-LIFEBOOK-A555 running 64-bit Ubuntu 16.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/zaid/MTP/myrepo/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.runs/ila_0_synth_1/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2016.1" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[10:0],probe1[7:0],probe2[3:0],probe3[7:0],probe4[0:0],probe5[0:0],probe6[5:0],probe7[22:0],probe8[22:0],probe9[31:0],probe10[0:0],probe11[31:0],probe12[8:0],probe13[2:0],probe14[0:0],probe15[0:0],probe16[0:0]" */;
  input clk;
  input [10:0]probe0;
  input [7:0]probe1;
  input [3:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [5:0]probe6;
  input [22:0]probe7;
  input [22:0]probe8;
  input [31:0]probe9;
  input [0:0]probe10;
  input [31:0]probe11;
  input [8:0]probe12;
  input [2:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
endmodule
