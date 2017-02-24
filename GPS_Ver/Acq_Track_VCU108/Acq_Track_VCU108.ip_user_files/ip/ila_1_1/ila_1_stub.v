// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
// Date        : Thu Feb 23 16:54:25 2017
// Host        : abhogi running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /Scratch/vish/Zaid/gps/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.runs/ila_1_synth_1/ila_1_stub.v
// Design      : ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu095-ffva2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2016.1" *)
module ila_1(clk, probe0, probe1, probe2, probe3, probe4, probe5, probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17, probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28, probe29)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[8:0],probe2[2:0],probe3[0:0],probe4[0:0],probe5[47:0],probe6[47:0],probe7[7:0],probe8[0:0],probe9[5:0],probe10[0:0],probe11[8:0],probe12[10:0],probe13[31:0],probe14[31:0],probe15[31:0],probe16[9:0],probe17[9:0],probe18[9:0],probe19[9:0],probe20[9:0],probe21[9:0],probe22[3:0],probe23[3:0],probe24[3:0],probe25[3:0],probe26[2:0],probe27[2:0],probe28[2:0],probe29[2:0]" */;
  input clk;
  input [31:0]probe0;
  input [8:0]probe1;
  input [2:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [47:0]probe5;
  input [47:0]probe6;
  input [7:0]probe7;
  input [0:0]probe8;
  input [5:0]probe9;
  input [0:0]probe10;
  input [8:0]probe11;
  input [10:0]probe12;
  input [31:0]probe13;
  input [31:0]probe14;
  input [31:0]probe15;
  input [9:0]probe16;
  input [9:0]probe17;
  input [9:0]probe18;
  input [9:0]probe19;
  input [9:0]probe20;
  input [9:0]probe21;
  input [3:0]probe22;
  input [3:0]probe23;
  input [3:0]probe24;
  input [3:0]probe25;
  input [2:0]probe26;
  input [2:0]probe27;
  input [2:0]probe28;
  input [2:0]probe29;
endmodule
