//-----------------------------------------------------------------
// System Generator version 2016.1 Verilog source file.
//
// Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module sysgen_constant_ac2e9d5d48 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_e99010f12d (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_fc4affc38a (
  output [(12 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 12'b000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_09bde90a1c (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000011111001111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_inverter_2bb2ac50e0 (
  input [(1 - 1):0] ip,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire ip_1_26;
  reg op_mem_22_20[0:(1 - 1)];
  initial
    begin
      op_mem_22_20[0] = 1'b0;
    end
  wire op_mem_22_20_front_din;
  wire op_mem_22_20_back;
  wire op_mem_22_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire internal_ip_12_1_bitnot;
  assign ip_1_26 = ip;
  assign op_mem_22_20_back = op_mem_22_20[0];
  always @(posedge clk)
    begin:proc_op_mem_22_20
      integer i;
      if (((ce == 1'b1) && (op_mem_22_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_22_20[0] <= op_mem_22_20_front_din;
        end
    end
  assign internal_ip_12_1_bitnot = ~ip_1_26;
  assign op_mem_22_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_12_1_bitnot;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_45f4b84e39 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire signed [(17 - 1):0] cast_20_12;
  wire signed [(17 - 1):0] cast_20_17;
  wire result_20_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign cast_20_12 = {1'b0, a_1_31[15:0]};
  assign cast_20_17 = {{1{b_1_34[15]}}, b_1_34[15:0]};
  assign result_20_3_rel = cast_20_12 <= cast_20_17;
  assign op = result_20_3_rel;
endmodule
`timescale 1 ns / 10 ps
/*
Copyright (c) 2013, IIT Madras
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*  Neither the name of IIT Madras  nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 
 ///////////////////////////////////////////////////////////////////////////////
 // gedit:set shiftwidth=2 
 // -----------------------------------------------------------------------------
 // FILE NAME      : Acquire.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : SYED M MD ZAID
 // AUTHOR'S EMAIL : ee15m039@ee.iitm.ac.in
 // -----------------------------------------------------------------------------
 // ----------------------------------------------------------------------------- 
 // Algorithm is inspired from 
 //*************************************************************************************/
 //  Title: SoftGNSS v3.0
 //  Author: Darius Plausinaitis and Dennis M. Akos
 //  Date: 2006/08/14 12:08:03
 //  Code version: 1.1.2.12
 //  Availability: https://github.com/kristianpaul/SoftGNSS/blob/master/acquisition.m
 //
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 //                 1.Changing memory name angles Sunday 11 February 2017 06:16:46 AM IST
 // Description : Acquires Code phase and Doppler Frequency of Dump data 
 //								Collected from USRP with sampling frequency of 2MHz
 //                 
 ///////////////////////////////////////////////////////////////////////////////
`define SIM_N
`define WRAP_BACK_FREQ
`define ILA_Y
module acquire# 
(
parameter code_length = 1023,
parameter adds_per_clk = 4,
parameter input_width = 12,         // input sample width
parameter shifts_per_iter= 250,     
parameter samples_per_ms=2000,      // sampling frequency in KHz
parameter doppler_range=201,          // No of Dopplers
parameter flag_2=1)
(
input clk,
input ce,
input reset,

input [11:0] xsamples1,
input [11:0] xsamples2,
input [11:0] xsamples3,
input [11:0] xsamples4,

input [11:0] ysamples1,
input [11:0] ysamples2,
input [11:0] ysamples3,
input [11:0] ysamples4,

output [15:0] rd_ptr1,
output [15:0] rd_ptr2,
output [15:0] rd_ptr3,
output [15:0] rd_ptr4,

output [31:0] phase_per_sample,
output stb_in,
output strbe,

output signed [24:0] x_in,
output signed [24:0] y_in,

output reg strbe_vect,
output reg [8:0] pointer_mag,
output reg [8:0] count,
output reg [2:0] iterno,
output reg chunk_no,
output reg [7:0] ang_pointer,
output [99:0] iii,
output [99:0] qqq,
output [3:0] prn0,
output [24:0] sum0,

output [9:0] g10,
output [9:0] g20,
output [3:0] shift0,
output [31:0] cmltve_phse
);

//*************************************************************************************//
// LATENCY(For feeding in)                                                             //
//1.Iteration : 'clks_per_iter' CLK TICKS : 500 (samples_per_ms/adds_per_clk)          //
//2.Chunk : 'no_iter_per_freq' ITERATIONS : 8 (samples_per_ms/shifts_per_iter) : 500*8 //
//3.Frequency : 2 CHUNKS : 2 : 500*8*2                                                 //
//4.PRN : 'doppler_range' FREQUENCIES : 201 : 500*8*2*201                              //
//5.First Rotation : Some multiple of 'input_width' : 4                                //
//*************************************************************************************//


//*****************************************************//
// BIT WIDTHS
//1.Input width : 'input_width' : 12 or 16 : Scaling - 1
//2.Doppler Rotation : 2+input_width+ep1{extra precison} : 2+ 16 (or) 12 + ep1 : Scaling - 2^(-ep1)


parameter code_phase_per_sample=2196875771;

`ifndef SIM_N
reg clk,reset;
	initial
	begin
		clk=0;
		reset=1;
		#40 reset=0;
	end
	always #5 clk =!clk;
`endif


reg [31:0] angincr [doppler_range-1:0];
reg [9:0] ga [shifts_per_iter+2:0];
reg [9:0] gb [shifts_per_iter+2:0];


	initial begin
		$readmemh("/home/zaid/MTP/myrepo/sysgen/Angles.hex",angincr);
		$readmemh("/home/zaid/MTP/myrepo/sysgen/GA.hex",ga);
		$readmemh("/home/zaid/MTP/myrepo/sysgen/GB.hex",gb);
	end
	wire [7:0] SATOUTS [1:32];

	assign SATOUTS[ 1] = {4'd8,4'd4};
	assign SATOUTS[ 2] = {4'd7,4'd3};
	assign SATOUTS[ 3] = {4'd6,4'd2};
	assign SATOUTS[ 4] = {4'd5,4'd1};
	assign SATOUTS[ 5] = {4'd9,4'd1};
	assign SATOUTS[ 6] = {4'd8,4'd0};
	assign SATOUTS[ 7] = {4'd9,4'd2};
	assign SATOUTS[ 8] = {4'd8,4'd1};
	assign SATOUTS[ 9] = {4'd7,4'd0};
	assign SATOUTS[10] = {4'd8,4'd7};
	assign SATOUTS[11] = {4'd7,4'd6};
	assign SATOUTS[12] = {4'd5,4'd4};
	assign SATOUTS[13] = {4'd4,4'd3};
	assign SATOUTS[14] = {4'd3,4'd2};
	assign SATOUTS[15] = {4'd2,4'd1};
	assign SATOUTS[16] = {4'd1,4'd0};
	assign SATOUTS[17] = {4'd9,4'd6};
	assign SATOUTS[18] = {4'd8,4'd5};
	assign SATOUTS[19] = {4'd7,4'd4};
	assign SATOUTS[20] = {4'd6,4'd3};
	assign SATOUTS[21] = {4'd5,4'd2};
	assign SATOUTS[22] = {4'd4,4'd1};
	assign SATOUTS[23] = {4'd9,4'd7};
	assign SATOUTS[24] = {4'd6,4'd4};
	assign SATOUTS[25] = {4'd5,4'd3};
	assign SATOUTS[26] = {4'd4,4'd2};
	assign SATOUTS[27] = {4'd3,4'd1};
	assign SATOUTS[28] = {4'd2,4'd0};
	assign SATOUTS[29] = {4'd9,4'd4};
	assign SATOUTS[30] = {4'd8,4'd3};
	assign SATOUTS[31] = {4'd7,4'd2};
	assign SATOUTS[32] = {4'd6,4'd1};

	wire [7:0] OUT;
	wire [3:0] id1,id2;
	assign OUT = SATOUTS[prn_no];
	assign id1 = OUT[3:0];
	assign id2 = OUT[7:4];


reg [31:0] clkid;
	always @(posedge clk)
	begin
		if(reset)
			clkid=0;
		else begin
			clkid=clkid+1;
`ifndef SIM_N
		if(clkid[3:0]==0)
			$display("%d",clkid);
		if(clkid==1316000)
			$finish();
`endif
		end
	end


//*********************************************//
//.Counter: Tracks offset of current iteration //
//*********************************************//
parameter clks_per_iter= (samples_per_ms/adds_per_clk);
parameter clks_per_iter_log2 = 9;//$clog2(clks_per_iter);
//reg [clks_per_iter_log2-1:0] count;
	always @(posedge clk)
		if(iter_change || reset || stop)
			count<=0;
		else
			count<=count+1;

//*********************************************//
//.Counter: Tracks iteration number            //
//*********************************************//
parameter no_iter_per_freq= (samples_per_ms/shifts_per_iter)-1;
parameter no_iter_per_freq_log2 = 3;//$clog2(no_iter_per_freq);
//reg [no_iter_per_freq_log2-1:0] iterno;
	always @(posedge clk)
		if(chunk_change || reset || stop)
			iterno<=0;
		else if(iter_change)
			iterno<=iterno+1;
    
//************************************************//
//.Two consecutive 1ms Data chunks processed      //
// for a given frequency to avoid Nav bit boundary//
//************************************************//
//reg chunk_no;
	always @(posedge clk)
		if(reset || stop)
			chunk_no<=0;
		else if(chunk_change)
			chunk_no<=~(chunk_no);



assign iter_change=(count==clks_per_iter);
assign chunk_change = (iterno==no_iter_per_freq) && iter_change;
assign freq_change= chunk_change && (chunk_no==1);
assign prn_change = freq_change && (ang_pointer==doppler_range);
//****************************************************************//
//.<NOT PARAMETERIZED> Four samples are added in one Clock Cycle  //
// Angle inputs to cordic units to compensate Doppler modulation  //
//****************************************************************//
reg temp;// Vivado doesn't accept constant address for memory names
always @(posedge clk)
temp<=0;
	reg [31:0] angle [adds_per_clk-1:0];
	reg [31:0] phase [adds_per_clk-1:0];
	reg [31:0] phase_per_sample;
	parameter doppler_range_log2 = 8;//$clog2(doppler_range);
//	reg [doppler_range_log2-1:0] ang_pointer;//<NOT PARAMETERIZED>
	always @(posedge clk)
		begin
		if(reset || (iter_change && !freq_change) || stop) begin
			angle[0]<=0;
			angle[1]<=phase_per_sample;
			angle[2]<=phase_per_sample+phase_per_sample;
			angle[3]<=phase_per_sample+phase_per_sample+phase_per_sample;
		end else begin
			if(prn_change)
			begin
				angle[0]<=0;
				angle[1]<=angincr[temp];
				angle[2]<=angincr[temp]+angincr[temp];
				angle[3]<=angincr[temp]+angincr[temp]+angincr[temp];
			end else 
			if(freq_change)
			begin
				angle[0]<=0;
				angle[1]<=angincr[ang_pointer];
				angle[2]<=angincr[ang_pointer]+angincr[ang_pointer];
				angle[3]<=angincr[ang_pointer]+angincr[ang_pointer]+angincr[ang_pointer];
			end else begin

			angle[0]<=angle[0]+(phase_per_sample<<2);
			angle[1]<=angle[1]+(phase_per_sample<<2);
			angle[2]<=angle[2]+(phase_per_sample<<2);
			angle[3]<=angle[3]+(phase_per_sample<<2);
			end
		end
	end


//******************************************************//
// Doppler frequency is switched after all code shifts  //
// for a given frequency,for two chunks are searched    //
//******************************************************//
	always @(posedge clk)
	begin
		if(reset || prn_change || stop) begin
			ang_pointer<=1;
			phase_per_sample<=angincr[temp];
		end else if(freq_change)
		begin
			ang_pointer<=ang_pointer+1;
			phase_per_sample<=angincr[ang_pointer];
		end
	end

parameter mem_addr_wdth=16;
reg [mem_addr_wdth-1:0] read_pointer;//<NOT PARAMETERIZED>
//*********************************************************//
// Read_pointer fetches ip I,Q samples from Memory         //
// 1.Wraps back by amount <samples_per_ms> .............   //
// after an iteration of <shifts_per_iter> shifts          //
// 2.If a chunk is completed it continues wo wrapping back //
// 3.After a frequency is completed it either wraps back   //
//   or processes fresh samples as per directive           //
//*********************************************************//

	always @(posedge clk)
	begin
		if (reset || stop)
		read_pointer<=0;    
		else begin
			if(iter_change)  
			begin
				if(iterno != no_iter_per_freq)
				read_pointer<=read_pointer-samples_per_ms; // Point 1
				`ifdef WRAP_BACK_FREQ
				else if(chunk_no)    
				read_pointer<=read_pointer-samples_per_ms*2;
				`endif
			end else
				read_pointer<=read_pointer+adds_per_clk;
		end
	end

//******************************************************//
// I,Q pairs and Phase inputs to                        //
// <adds_per_clk> CORDIC_ROTOR units are driven         //
//******************************************************//
parameter adds_per_clk_log2 = 2;//$clog2(adds_per_clk);
reg [adds_per_clk_log2:0] aaa;
	always @(posedge clk)
		for(aaa=0;aaa<adds_per_clk;aaa=aaa+1)
			phase[aaa] <= angle[aaa];

wire [(input_width*adds_per_clk)-1:0] Xsamples;
wire [(input_width*adds_per_clk)-1:0] Ysamples;

assign Xsamples = {xsamples4,xsamples3,xsamples2,xsamples1}; 
assign Ysamples = {ysamples4,ysamples3,ysamples2,ysamples1}; 

assign rd_ptr1=read_pointer;
assign rd_ptr2=read_pointer+1;
assign rd_ptr3=read_pointer+2;
assign rd_ptr4=read_pointer+3;

assign stop=0;

//**************************************************************//
// A logic low pulse is inserted into CORDIC PIPE               //
// after completion of every iteration                          //
// This Pulse exits CORDIC PIPE after <input_width> ClockCycles //
// and serves as trigger for Hardware that computes Magnitude   //
// and finds max1,max2                                          //
//**************************************************************//
reg stb_in;
	always @(posedge clk)
	begin
		if (reset || stop)
			stb_in<=0;
		else begin
			if(iter_change) 
				stb_in <=0;
			else 
				stb_in<=1;
		end
	end
reg prn_in;
	always @(posedge clk)
		prn_in<=prn_change;

	wire [adds_per_clk-1:0] strobe_cordic,prn_out,iter_change_out,chunk_change_out;
	

parameter input_width_log2=4;//$clog2(input_width);
parameter width_dop=input_width+2;
wire [(width_dop*adds_per_clk)-1:0] COSout, SINout;//outputs of CORDIC ROTOR
genvar aa;
generate 
	for (aa = 1; aa <= adds_per_clk; aa = aa + 1) 
	begin: CORDIC_ROTOR
CORDIC_CIRC_ROT#(.width(input_width),
								 .iter_num(input_width),
								 .output_width(width_dop),
								 .No_of_cycles (4),//must be a multiple of iter num
								 .frac_guard(input_width_log2),
								 .overflow_guard(2),
								 .Piggyback_control_width(4)) 
								 ROTOR 
								( clk,
								  COSout[((aa*width_dop)-1)-:width_dop],
								  SINout[((aa*width_dop)-1)-:width_dop],
								  Xsamples[((aa*input_width)-1)-:input_width],
								  Ysamples[((aa*input_width)-1)-:input_width],                            
								  phase[aa-1],
								  {chunk_change,iter_change,prn_in,stb_in},
								  {chunk_change_out[aa-1],iter_change_out[aa-1],prn_out[aa-1],strobe_cordic[aa-1]});
	end 
endgenerate

assign change_code = |(prn_out);
assign change_offset = |(iter_change_out);
assign code_reset = |(chunk_change_out);
assign strbe =|(strobe_cordic);
parameter Num_Sat_log2=5;
reg [Num_Sat_log2:0] prn_no;
always @(posedge clk)
begin
	if(reset || stop)
	begin
		prn_no<=1;
	end else if(change_code)
	begin
		prn_no<=prn_no+1;
	end
end

//******************************************************//
// strbe==1 indicates outputof CORDIC_ROTOR are valid   //
// code_pointer increments for every such valid output  //
// so that prn code input to Adders shifts              //
// It resets for completion of each iteration (strbe==0)//
//******************************************************//
reg [clks_per_iter_log2-1:0] code_pointer;
always @(posedge clk)
begin
	if(strbe)
		code_pointer<=code_pointer+1;
	else 
		code_pointer<=0;
end

// For detecting a negedge on strbe //
reg rg_strbe;
always @(posedge clk) rg_strbe<=strbe;
assign strbenegedge = rg_strbe && ~strbe;

//******************************************************//
// Outputs from CORDIC_ROTOR are to be accumulated      //
// They are sign_extended                               //
//******************************************************//
wire [(crltn_sum_width*adds_per_clk)-1:0] II;
wire [(crltn_sum_width*adds_per_clk)-1:0] QQ;
assign iii=II;
assign qqq=QQ;
parameter samples_per_ms_log2=11;//$clog2(samples_per_ms)
parameter crltn_sum_width=width_dop+samples_per_ms_log2;
genvar ab;
generate
	for (ab=1; ab <= adds_per_clk;ab=ab+1)
	begin: sign_extend
		wire [width_dop-1:0] I,Q;
		assign I=COSout[((ab*width_dop)-1)-:width_dop];
		assign Q=SINout[((ab*width_dop)-1)-:width_dop];
		assign II[((ab*crltn_sum_width)-1)-:crltn_sum_width] = { {(samples_per_ms_log2){I[width_dop-1]}} ,I};
		assign QQ[((ab*crltn_sum_width)-1)-:crltn_sum_width] = { {(samples_per_ms_log2){Q[width_dop-1]}} ,Q};
	end
endgenerate

parameter capture = 62; //Integer part of (shifts_per_iter/adds_per_clk) : (250/4)=62
parameter capture_offset = 2; // shifts_per_iter%adds_per_clk :(250 % 4) =2
parameter  shifts_per_iter_log2 = 8;
reg [crltn_sum_width-1:0] sumI [shifts_per_iter-1:0]; // accumulators
reg [crltn_sum_width-1:0] sumQ [shifts_per_iter-1:0]; // accumulators
genvar i;
generate
	for (i=0; i < (shifts_per_iter); i=i+1)
	begin: Adders
		wire [adds_per_clk-1:0] prn;// <NOT PARAMETERIZED> 
		localparam [31:0] prn_code_phase_per_sample=(i+1)*code_phase_per_sample;//Residual phase for shifts : 0 to shifts_per_iter-1

		reg [31:0] cmltve_phse_frac1;
		always @(posedge clk)
			if(code_reset || reset)
				cmltve_phse_frac1<=prn_code_phase_per_sample;
			else if(change_offset)
				cmltve_phse_frac1<=phase_nxt; // Residual phase captured  during previous iteration
			else if(strbe)
				cmltve_phse_frac1<=cmltve_phse_frac4+code_phase_per_sample;

		wire [31:0] cmltve_phse_frac2,cmltve_phse_frac3,cmltve_phse_frac4;
		assign cmltve_phse_frac2 = cmltve_phse_frac1 + code_phase_per_sample;
		assign cmltve_phse_frac3 = cmltve_phse_frac2 + code_phase_per_sample;
		assign cmltve_phse_frac4 = cmltve_phse_frac3 + code_phase_per_sample;

		wire [31:0] neg_wire1,neg_wire2,neg_wire3,neg_wire4;
		assign neg_wire1 = ~cmltve_phse_frac1;
		assign neg_wire2 = ~cmltve_phse_frac2;
		assign neg_wire3 = ~cmltve_phse_frac3;
		assign neg_wire4 = ~cmltve_phse_frac4;

		wire [3:0] shift;
		assign shift[3] = ((neg_wire1)<=(code_phase_per_sample-1));
		assign shift[2] = ((neg_wire2)<=(code_phase_per_sample-1));
		assign shift[1] = ((neg_wire3)<=(code_phase_per_sample-1));
		assign shift[0] = ((neg_wire4)<=(code_phase_per_sample-1));

		reg [9:0] rg_G1;
		reg [9:0] rg_G2;
		wire [9:0] init1,init2;

		reg [shifts_per_iter_log2:0] temp1;
		always@(posedge clk)
		temp1<=i;

		assign init1=ga[temp1];
		assign init2=gb[temp1];

		// FOUR future states of PRN registers for generating four codes,required by Four adders (adds_per_clk=4)
		wire [9:0] wr_G1_1,wr_G1_2,wr_G1_3,wr_G1_4;
		assign wr_G1_1={rg_G1[7]^rg_G1[0],rg_G1[9:1]};//sum of shifts is 1
		assign wr_G1_2={wr_G1_1[7]^wr_G1_1[0],wr_G1_1[9:1]};//sum of shifts is 2
		assign wr_G1_3={wr_G1_2[7]^wr_G1_2[0],wr_G1_2[9:1]};//sum of shifts is 3
		assign wr_G1_4={wr_G1_3[7]^wr_G1_3[0],wr_G1_3[9:1]};//sum of shifts is 4

		wire [9:0] wr_G2_1,wr_G2_2,wr_G2_3,wr_G2_3;
		assign wr_G2_1={rg_G2[8]^rg_G2[7]^rg_G2[4]^rg_G2[2]^rg_G2[1]^rg_G2[0],rg_G2[9:1]};//sum of shifts is 1
		assign wr_G2_2={wr_G2_1[8]^wr_G2_1[7]^wr_G2_1[4]^wr_G2_1[2]^wr_G2_1[1]^wr_G2_1[0],wr_G2_1[9:1]};//sum of shifts is 2
		assign wr_G2_3={wr_G2_2[8]^wr_G2_2[7]^wr_G2_2[4]^wr_G2_2[2]^wr_G2_2[1]^wr_G2_2[0],wr_G2_2[9:1]};//sum of shifts is 3
		assign wr_G2_4={wr_G2_3[8]^wr_G2_3[7]^wr_G2_3[4]^wr_G2_3[2]^wr_G2_3[1]^wr_G2_3[0],wr_G2_3[9:1]};//sum of shifts is 4

		wire [1:0] shift_sum1;
		wire [1:0] shift_sum2;
		wire [2:0] shift_sum3;
		assign shift_sum1=shift[3]+shift[2];
		assign shift_sum2=shift[3]+shift[2]+shift[1];
		assign shift_sum3=shift[3]+shift[2]+shift[1]+shift[0];

		always@(posedge clk)
		begin
			if(reset || code_reset)
			begin
				rg_G1<=init1;
				rg_G2<=init2;
			end else if(change_offset) begin
				rg_G1<=rg_G1_nextiter;
				rg_G2<=rg_G2_nextiter;
			end else if(strbe) begin
				rg_G1<= (shift_sum3==0) ? rg_G1: (shift_sum3==1) ?
																	wr_G1_1 : (shift_sum3==2) ?
																	wr_G1_2 : (shift_sum3==3) ?
																	wr_G1_3 : wr_G1_4;

				rg_G2<= (shift_sum3==0) ? rg_G2: (shift_sum3==1) ?
																	wr_G2_1 : (shift_sum3==2) ?
																	wr_G2_2 : (shift_sum3==3) ?
																	wr_G2_3 : wr_G2_4;
			end
		end
		//Registers init phase and registers STATE for next iter
		reg [9:0] rg_G1_nextiter,rg_G2_nextiter;
		reg [31:0] phase_nxt;
		wire [1:0] shift_nextiter;
		assign shift_nextiter=(capture_offset==1)? {1'b0,shift[0]} : (capture_offset==2) ?
																							 shift_sum1     : shift_sum2;
		always @(posedge clk)
		if(code_pointer==capture) //
		begin
		rg_G1_nextiter<= (shift_nextiter==0) ? rg_G1: (shift_nextiter==1) ?
																			wr_G1_1 : wr_G1_2;
		rg_G2_nextiter<= (shift_nextiter==0) ? rg_G2: (shift_nextiter==1) ?
																			wr_G2_1 : wr_G2_2;
		phase_nxt<= (capture_offset==1) ? cmltve_phse_frac2: (capture_offset==2) ?
																		 cmltve_phse_frac3 : cmltve_phse_frac4;
		end

		// Calculating PRN code based on register STATE
		assign intermediate0 = rg_G1[0]^rg_G2[id1]^rg_G2[id2]; //sum of shifts is 0
		assign intermediate1 = wr_G1_1[0]^wr_G2_1[id1]^wr_G2_1[id2]; //sum of shifts is 1
		assign intermediate2 = wr_G1_2[0]^wr_G2_2[id1]^wr_G2_2[id2]; //sum of shifts is 2
		assign intermediate3 = wr_G1_3[0]^wr_G2_3[id1]^wr_G2_3[id2]; //sum of shifts is 3

		assign prn[3] = intermediate0;
		assign prn[2] = (shift[3]) ? intermediate1 : intermediate0;		
		assign prn[1] = (shift_sum1==0) ? intermediate0 :(shift_sum1==1) ?
																			intermediate1 : intermediate2;
		assign prn[0] = (shift_sum2==0) ? intermediate0 :(shift_sum2==1) ?
																			intermediate1 :(shift_sum2==2) ?
																			intermediate2 : intermediate3;

		// Correlator 4 ADDS PER CLK
			reg [adds_per_clk_log2:0] ba;


// Conditional Add/Sub of four samples
		always @(posedge clk)
		begin
			if(strbe) 
			begin
				for (ba=1; ba <= adds_per_clk; ba=ba+1)
				begin
						if(prn[adds_per_clk-ba]) 
						begin
							sumI[i]=sumI[i]+II[((ba*crltn_sum_width)-1)-:crltn_sum_width];
							sumQ[i]=sumQ[i]+QQ[((ba*crltn_sum_width)-1)-:crltn_sum_width];
						end else 
						begin
							sumI[i]=sumI[i]-II[((ba*crltn_sum_width)-1)-:crltn_sum_width];
							sumQ[i]=sumQ[i]-QQ[((ba*crltn_sum_width)-1)-:crltn_sum_width];
						end
				end
			end else if(reset || (strbenegedge))
			begin
				sumI[i]<=0;
				sumQ[i]<=0;
			end
		end
	end
endgenerate


//*****************************************************//
//.Copies the Accumulator results into other Registers //
//.For Magnitude calculation and MAXIMA finding        //
//*****************************************************//
reg [crltn_sum_width-1:0] ResultI [shifts_per_iter-1:0];
reg [crltn_sum_width-1:0] ResultQ [shifts_per_iter-1:0];
reg [shifts_per_iter_log2:0] ii;
always @(posedge clk)
if(strbenegedge)
	begin
		for	(ii=0;ii<shifts_per_iter;ii=ii+1)
		begin
			ResultI[ii]<=sumI[ii];
			ResultQ[ii]<=sumQ[ii];
		end
	end

//*******************************************************//
//.Turns ON strobe for CORDIC_VECT on the negedge on     //
//.strobe_out of CORDIC_ROTOR(completion of an iteration)//
//*******************************************************//
//reg strbe_vect;
always @(posedge clk)
	if(reset || pointer_mag==shifts_per_iter-1)
		strbe_vect<=0;
	else if (strbenegedge)
		strbe_vect<=1;
// For sorter to find Peak //
reg maxrst_in;
always @(posedge clk)
	if(reset)
	maxrst_in<=1;
	else 
	if((iterno==0) && (pointer_mag==shifts_per_iter-1))
	maxrst_in<=1;
	else if(strbenegedge)
	maxrst_in<=0;
//reg [shifts_per_iter_log2:0] pointer_mag;
//.Steers inputs one by one for CORDIC_VECT(Calculates Magnitude) //
always @(posedge clk)
	if(reset || pointer_mag==shifts_per_iter-1)
		pointer_mag<=0;
	else if(strbe_vect)
		pointer_mag<=pointer_mag+1;

//wire [crltn_sum_width-1:0] x_in,y_in;    
assign x_in=ResultI[pointer_mag];
assign y_in=ResultQ[pointer_mag];
assign prn0=Adders[1].prn;
assign sum0=sumI[1];
assign shift0=Adders[1].shift;
assign g10=Adders[1].rg_G1;
assign g20=Adders[1].rg_G2;
assign cmltve_phse=Adders[1].cmltve_phse_frac1;


endmodule
`timescale 1 ns / 10 ps
/*
Copyright (c) 2013, IIT Madras
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*  Neither the name of IIT Madras  nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 ////////////////////////////////////////////////////////////////////////////////////////
 // gedit:set shiftwidth=2 
 // -----------------------------------------------------------------------------
 // FILE NAME      : Cordic_Circ_Rot.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : DAMARLA BALAJI,SYED M MD ZAID
 // AUTHOR’S EMAIL : ee15m033@ee.iitm.ac.in,ee15m039@ee.iitm.ac.in
 // -----------------------------------------------------------------------------
 // ----------------------------------------------------------------------------- 
 // This is a Modified code of cordic.v
 //*************************************************************************************/
 //  Title: Cordic.v
 //  Author:Claire Barnes
 //  Availability:https://github.com/cebarnes/cordic
 //*************************************************************************************/ 
 // Modifications:
 //1.Addition of log2(width) guard bits as suggested in
 //  J. S. Walther, “A unified algorithm for elementary functions,” in
 //  Proceedings 38th Spring Joint Computer Conference, Atlantic City,
 //  New Jersey, 1971, pp. 379–385
 //2.Addition of Control signals which propagates through pipes along with 
 //  Inputs and this serves as strobe for outputs
 //3.Parameterization of 
 //  1.No of CORDIC Iterations
 //  2.Latency in CYCLES,ie.,No of Pipeline stages
 //4.Inputs are not Buffered thereby saving latency of One clockcycle
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns (x,y)*exp(j*theta)
 // Scaling-
 // x_out,y_out: 1.Due to padding of 'iter_num-width' number of zeros : 2^(output_width-(width+2))
 //              2.CORDIC circular mode scaling : ~1.6 (Product over sqrt(1+2^(-2j)) from 0 to iter_num-1)
 // 
 // Parameters-
 // 1.width - Inputs width
 // 2.iter_num -Number of cordic iterations required (Atleast > Inputs width)
 //             Output is guranteed to be correct upto 'iter_num' bits (excluding MSB overflow_guard)
 // 3.output_width - Required output_width (<(iter_num+overflow_guard))
 // 4.No_of_cycles - No of stages required. (MUST BE divisible factor of iter_num)
 // 5.frac_guard - Guard bits provided to avoid rounding errors (>log2(iter_num))
 // 6.overflow_guard - MSB bits account for CORDIC scaling(~1.6*sqrt(2)) 
 ///////////////////////////////////////////////////////////////////////////////
//`define BUFFER_INPS
module CORDIC_CIRC_ROT#
	(parameter width = 12,
	parameter iter_num = 12,
	parameter output_width=12,
	parameter No_of_cycles = 3,
	parameter frac_guard = 4,
	parameter overflow_guard = 4,
	parameter Piggyback_control_width=3)

	(clock, x_out, y_out, x_in, y_in, angle,stb_in,stb_out);

	parameter iters_per_stage = (iter_num)/No_of_cycles;
	parameter intrmdte_wdth = overflow_guard+iter_num+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	// Inputs
	input clock;
	//Coordinates
	input signed [width-1:0] x_in,y_in; 
	input signed [31:0] angle;
	//Control Piggyback Signals
	input [Piggyback_control_width-1:0] stb_in;
	//Outputs
	output signed  [output_width-1:0] x_out, y_out; 
	output [Piggyback_control_width-1:0] stb_out;


//******************************************************************//
//Padding and extension of inputs to make intermediate wordlength   //
//capable of avoiding rounding errors till precison of iter_num bits//
//******************************************************************//
	wire signed [intrmdte_wdth-1:0] x_start,y_start;
	assign x_start ={{(overflow_guard){x_in[width-1]}},x_in,{(frac_guard+iter_num-width){1'b0}}};
	assign y_start ={{(overflow_guard){y_in[width-1]}},y_in,{(frac_guard+iter_num-width){1'b0}}};

	// Generate table of atan values
	wire signed [31:0] atan_table [0:30];
	assign atan_table[00] = 'b00100000000000000000000000000000; // 45.000 degrees -> atan(2^0)
	assign atan_table[01] = 'b00010010111001000000010100011101; // 26.565 degrees -> atan(2^-1)
	assign atan_table[02] = 'b00001001111110110011100001011011; // 14.036 degrees -> atan(2^-2)
	assign atan_table[03] = 'b00000101000100010001000111010100; // atan(2^-3)
	assign atan_table[04] = 'b00000010100010110000110101000011;
	assign atan_table[05] = 'b00000001010001011101011111100001;
	assign atan_table[06] = 'b00000000101000101111011000011110;
	assign atan_table[07] = 'b00000000010100010111110001010101;
	assign atan_table[08] = 'b00000000001010001011111001010011;
	assign atan_table[09] = 'b00000000000101000101111100101110;
	assign atan_table[10] = 'b00000000000010100010111110011000;
	assign atan_table[11] = 'b00000000000001010001011111001100;
	assign atan_table[12] = 'b00000000000000101000101111100110;
	assign atan_table[13] = 'b00000000000000010100010111110011;
	assign atan_table[14] = 'b00000000000000001010001011111001;
	assign atan_table[15] = 'b00000000000000000101000101111100;
	assign atan_table[16] = 'b00000000000000000010100010111110;
	assign atan_table[17] = 'b00000000000000000001010001011111;
	assign atan_table[18] = 'b00000000000000000000101000101111;
	assign atan_table[19] = 'b00000000000000000000010100010111;
	assign atan_table[20] = 'b00000000000000000000001010001011;
	assign atan_table[21] = 'b00000000000000000000000101000101;
	assign atan_table[22] = 'b00000000000000000000000010100010;
	assign atan_table[23] = 'b00000000000000000000000001010001;
	assign atan_table[24] = 'b00000000000000000000000000101000;
	assign atan_table[25] = 'b00000000000000000000000000010100;
	assign atan_table[26] = 'b00000000000000000000000000001010;
	assign atan_table[27] = 'b00000000000000000000000000000101;
	assign atan_table[28] = 'b00000000000000000000000000000010;
	assign atan_table[29] = 'b00000000000000000000000000000001;
	assign atan_table[30] = 'b00000000000000000000000000000000;

//Pipeline registers to hold intermediate values //
//We have 'No_of_cycles' PIPE stages             //
	reg signed [intrmdte_wdth-1:0] x [0:No_of_cycles];
	reg signed [intrmdte_wdth-1:0] y [0:No_of_cycles];
	reg signed    [31:0] z [0:No_of_cycles];
//Register Passing control signals through PIPE //
	reg [Piggyback_control_width-1:0] strobe [0:No_of_cycles];

//******************************************************************//
//PRE-ROTATION : Make sure rotation angle is in -pi/2 to pi/2 range //
//Introduction of Pre rotated values into the CORDIC Pipe           //
//******************************************************************//
	wire [1:0] quadrant;
	assign quadrant = angle[31:30];
`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin // make sure the rotation angle is in the -pi/2 to pi/2 range
		case(quadrant)
		2'b00,
		2'b11: // no changes needed for these quadrants
		begin
				x[0] <= x_start;
				y[0] <= y_start;
				z[0] <= angle;
		end
		2'b01:// subtract pi/2 for angle in this quadrant
		begin
				x[0] <= -y_start;
				y[0] <= x_start;
				z[0] <= {2'b00,angle[29:0]}; 
		end
		2'b10:// add pi/2 to angles in this quadrant
		begin
				x[0] <= y_start;
				y[0] <= -x_start;
				z[0] <= {2'b11,angle[29:0]}; 
		end
	endcase
	end


`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin
		strobe[0]<= stb_in;
	end

  // run through iterations
	genvar i;
	generate
	for (i=0; i < No_of_cycles; i=i+1) //Block below is replicated 'No of stages' times
	begin: STAGES
		localparam integer j=i*iters_per_stage;
//All values are signed and hence perform signed operations such as Arith Shift
		reg signed [intrmdte_wdth-1:0] xi ; 
		reg signed [intrmdte_wdth-1:0] yi ;
		reg [31:0] zi;
		reg z_sign;

		reg signed [intrmdte_wdth-1:0] x_shr ;
		reg signed [intrmdte_wdth-1:0] y_shr ;

		reg [iters_per_stage_log2:0] lv; //loop_variable
		always @(*)
		begin
//Read Intermediate results from Previous Pipeline stage
				xi = x[i];
				yi = y[i];
				zi = z[i];

				for (lv=0;lv<iters_per_stage;lv=lv+1)
				begin
					x_shr = xi >>> (j+lv); 
					y_shr = yi >>> (j+lv);
					z_sign= zi[31];
// CORDIC Iterations
					xi = z_sign ? xi + y_shr : xi - y_shr;
					yi = z_sign ? yi - x_shr : yi + x_shr;
					zi = z_sign ? zi + atan_table[j+lv] : zi - atan_table[j+lv];
				end
		end
//Registering Intermediate Results for Pipelining the flow
		always @(posedge clock)
			begin
				x[i+1] <= xi;
				y[i+1] <= yi;
				z[i+1] <= zi;
				strobe[i+1] <= strobe[i];
			end 			
	end
	endgenerate
//MSB bits are sent out
	wire signed [intrmdte_wdth-1:0] sine,cosine;
	assign cosine = x[No_of_cycles];
	assign sine = y[No_of_cycles];

	assign x_out=cosine[(iter_num+frac_guard+overflow_guard-1)-:output_width];
	assign y_out=sine[(iter_num+frac_guard+overflow_guard-1)-:output_width];

	assign stb_out =strobe[No_of_cycles];


endmodule





`timescale 1 ns / 10 ps
module memmap_clk_ctrl (
    input clk,
    input rst,
    input [23:0] n_pulses,
    input start_clk,
    output burst_clk,
    output clk_busy
);
    reg [22:0] n;
    reg free_running;
    reg active_reg;
    reg busy_reg;
    wire [22:0] n_dec;
    wire active;
    wire busy;

    assign busy   = (n != 23'h000000) ?      1'b1 : 1'b0;
    assign active = (busy || free_running) ? 1'b1 : 1'b0;
    assign n_dec  = (busy & ~free_running) ? (n - 23'h000001) : 23'h000000;
    assign clk_busy = busy_reg;

    always@(posedge clk)
    begin
        if (~rst) begin
            n <= 23'h000000;
            active_reg <= 1'b0;
            busy_reg     <= 1'b0;
            free_running <= 1'b0;
        end
        else begin
            active_reg <= active;
            busy_reg   <= busy;
            if (start_clk) begin
                n            <= n_pulses[22:0];
                free_running <= n_pulses[23];
            end
            else
                n <= n_dec;
        end
    end

    BUFGCTRL #(
        .INIT_OUT(0), // Initial value of BUFGCTRL output ($VALUES;)
        .PRESELECT_I0("TRUE"), // BUFGCTRL output uses I0 input ($VALUES;)
        .PRESELECT_I1("FALSE") // BUFGCTRL output uses I1 input ($VALUES;)
    )
    xhwcbufgmux_inst
    (
        .I0(clk),
        .I1(),
        .S0(1'b1),
        .S1(1'b0),
        .CE0(active_reg),
        .CE1(1'b0),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(burst_clk)
    );
endmodule                                          
`timescale 1 ns / 10 ps
module sum_1_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 7, C_S_NUM_OFFSETS = 29)(
  output wire[0:0] gateway_in2,
  output wire[11:0] gateway_in1,
  output wire[11:0] gateway_in,
  input wire[31:0] gateway_out,
  input wire[0:0] gateway_out2,
  input wire[24:0] gateway_out3,
  input wire[0:0] gateway_out1,
  input wire[9:0] gateway_out16,
  input wire[3:0] gateway_out17,
  input wire[24:0] gateway_out4,
  input wire[0:0] gateway_out5,
  input wire[8:0] gateway_out6,
  input wire[8:0] gateway_out7,
  input wire[31:0] gateway_out18,
  input wire[2:0] gateway_out8,
  input wire[0:0] gateway_out9,
  input wire[7:0] gateway_out10,
  input wire[99:0] gateway_out11,
  input wire[99:0] gateway_out12,
  input wire[3:0] gateway_out13,
  input wire[24:0] gateway_out14,
  input wire[9:0] gateway_out15,
  output wire clk,
  input wire sum_1_aclk,
  input wire sum_1_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] sum_1_s_axi_awaddr,
  input  wire sum_1_s_axi_awvalid,
  output wire sum_1_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] sum_1_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] sum_1_s_axi_wstrb,
  input  wire sum_1_s_axi_wvalid,
  output wire sum_1_s_axi_wready,
  output wire [1:0] sum_1_s_axi_bresp,
  output wire sum_1_s_axi_bvalid,
  input  wire sum_1_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] sum_1_s_axi_araddr,
  input  wire sum_1_s_axi_arvalid,
  output wire sum_1_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] sum_1_s_axi_rdata,
  output wire [1:0] sum_1_s_axi_rresp,
  output wire sum_1_s_axi_rvalid,
  input  wire sum_1_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg  start_clk;
wire start_clk_wire;
wire blk_next_write;
wire [23:0] clk_n_steps;	// initial count for clock bursts. MSB (bit 23) is free-running clock flag
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign sum_1_s_axi_awready = axi_awready;
assign sum_1_s_axi_wready  = axi_wready;
assign sum_1_s_axi_bresp  = axi_bresp;
assign sum_1_s_axi_bvalid = axi_bvalid;
assign sum_1_s_axi_arready = axi_arready;
assign sum_1_s_axi_rdata  = axi_rdata;
assign sum_1_s_axi_rvalid = axi_rvalid;
assign sum_1_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign gateway_in2 = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign gateway_in1[11:0] = slv_wire_array[1][11:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign gateway_in[11:0] = slv_wire_array[2][11:0];
// map output 3
assign slv_wire_array[3] = gateway_out[31:0];
// map output 4
assign slv_wire_array[4] = gateway_out2;
// map output 5
assign slv_wire_array[5] = {7'h0, gateway_out3[24:0]};
// map output 6
assign slv_wire_array[6] = gateway_out1;
// map output 7
assign slv_wire_array[7] = {22'h0, gateway_out16[9:0]};
// map output 8
assign slv_wire_array[8] = {28'h0, gateway_out17[3:0]};
// map output 9
assign slv_wire_array[9] = {7'h0, gateway_out4[24:0]};
// map output 10
assign slv_wire_array[10] = gateway_out5;
// map output 11
assign slv_wire_array[11] = {23'h0, gateway_out6[8:0]};
// map output 12
assign slv_wire_array[12] = {23'h0, gateway_out7[8:0]};
// map output 13
assign slv_wire_array[13] = gateway_out18[31:0];
// map output 14
assign slv_wire_array[14] = {29'h0, gateway_out8[2:0]};
// map output 15
assign slv_wire_array[15] = gateway_out9;
// map output 16
assign slv_wire_array[16] = {24'h0, gateway_out10[7:0]};
// map output 20
assign slv_wire_array[20] = gateway_out11[31:0];
// map output 19
assign slv_wire_array[19] = gateway_out11[63:32];
// map output 18
assign slv_wire_array[18] = gateway_out11[95:64];
// map output 17
assign slv_wire_array[17] = {28'h0, gateway_out11[99:96]};
// map output 24
assign slv_wire_array[24] = gateway_out12[31:0];
// map output 23
assign slv_wire_array[23] = gateway_out12[63:32];
// map output 22
assign slv_wire_array[22] = gateway_out12[95:64];
// map output 21
assign slv_wire_array[21] = {28'h0, gateway_out12[99:96]};
// map output 25
assign slv_wire_array[25] = {28'h0, gateway_out13[3:0]};
// map output 26
assign slv_wire_array[26] = {7'h0, gateway_out14[24:0]};
// map output 27
assign slv_wire_array[27] = {22'h0, gateway_out15[9:0]};
// detect write to memory-mapped clock control
assign start_clk_wire = slv_reg_wren & (dec_w == 28);
assign clk_n_steps = slv_wire_array[28][23:0];
assign slv_wire_array[28] = slv_reg_array[28];
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      7'd0 : dec_w = 0;
      7'd4 : dec_w = 1;
      7'd8 : dec_w = 2;
      7'd12 : dec_w = 3;
      7'd16 : dec_w = 4;
      7'd20 : dec_w = 5;
      7'd24 : dec_w = 6;
      7'd28 : dec_w = 7;
      7'd32 : dec_w = 8;
      7'd36 : dec_w = 9;
      7'd40 : dec_w = 10;
      7'd44 : dec_w = 11;
      7'd48 : dec_w = 12;
      7'd52 : dec_w = 13;
      7'd56 : dec_w = 14;
      7'd60 : dec_w = 15;
      7'd64 : dec_w = 16;
      7'd68 : dec_w = 17;
      7'd72 : dec_w = 18;
      7'd76 : dec_w = 19;
      7'd80 : dec_w = 20;
      7'd84 : dec_w = 21;
      7'd88 : dec_w = 22;
      7'd92 : dec_w = 23;
      7'd96 : dec_w = 24;
      7'd100 : dec_w = 25;
      7'd104 : dec_w = 26;
      7'd108 : dec_w = 27;
      7'd112 : dec_w = 28;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      7'd0 : dec_r = 0;
      7'd4 : dec_r = 1;
      7'd8 : dec_r = 2;
      7'd12 : dec_r = 3;
      7'd16 : dec_r = 4;
      7'd20 : dec_r = 5;
      7'd24 : dec_r = 6;
      7'd28 : dec_r = 7;
      7'd32 : dec_r = 8;
      7'd36 : dec_r = 9;
      7'd40 : dec_r = 10;
      7'd44 : dec_r = 11;
      7'd48 : dec_r = 12;
      7'd52 : dec_r = 13;
      7'd56 : dec_r = 14;
      7'd60 : dec_r = 15;
      7'd64 : dec_r = 16;
      7'd68 : dec_r = 17;
      7'd72 : dec_r = 18;
      7'd76 : dec_r = 19;
      7'd80 : dec_r = 20;
      7'd84 : dec_r = 21;
      7'd88 : dec_r = 22;
      7'd92 : dec_r = 23;
      7'd96 : dec_r = 24;
      7'd100 : dec_r = 25;
      7'd104 : dec_r = 26;
      7'd108 : dec_r = 27;
      7'd112 : dec_r = 28;
      default : dec_r = 0;
    endcase
  end
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && sum_1_s_axi_awvalid && sum_1_s_axi_wvalid && ~blk_next_write)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= sum_1_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && sum_1_s_axi_wvalid && sum_1_s_axi_awvalid && ~blk_next_write)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && sum_1_s_axi_wvalid && axi_awready && sum_1_s_axi_awvalid;
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( sum_1_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= sum_1_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && sum_1_s_axi_awvalid && ~axi_bvalid && axi_wready && sum_1_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (sum_1_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && sum_1_s_axi_arvalid && ~blk_next_write)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= sum_1_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && sum_1_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & sum_1_s_axi_arvalid & ~axi_rvalid;
  always @(sum_1_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge sum_1_aclk )
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  always @( posedge sum_1_aclk)
  begin
    if ( sum_1_aresetn == 1'b0 )
      begin
        start_clk <= 1'b0;
      end
    else
      begin
        start_clk <= start_clk_wire;
      end
  end

  memmap_clk_ctrl   xhwcmmcc (
    .clk(sum_1_aclk),
    .rst(sum_1_aresetn),
    .n_pulses(clk_n_steps),
    .start_clk(start_clk),
    .burst_clk(clk),
    .clk_busy(blk_next_write));


endmodule

module sum_1_xlcounter_free  (ce, clr, clk, op, up, load, din, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 
 input ce, clr, clk;
 input up, load;
 input [op_width-1:0] din;
 input en, rst;
 output [op_width-1:0] op;
 
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
 
 wire  core_sinit;
 wire  core_ce;
 wire [op_width-1:0] op_net;
 
    assign core_ce = ce & en;
    assign core_sinit = (clr | rst) & ce;
    assign op = op_net;
 
 generate



if (core_name0 == "sum_1_c_counter_binary_v12_0_i0") 
     begin:comp0
sum_1_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate 
 endmodule
module sum_1_xldpram  (dina, addra, wea, a_ce, a_clk, rsta, ena, douta, dinb, addrb, web, b_ce, b_clk, rstb, enb, doutb);
 
 
 parameter core_name0= "";
 parameter c_width_a= 13;
 parameter c_address_width_a= 4;
 parameter c_width_b= 13;
 parameter c_address_width_b= 4;
 parameter latency= 1;
                
 
 input [c_width_a-1:0] dina;
 input [c_address_width_a-1:0] addra;
 input wea, a_ce, a_clk, rsta, ena;
 input [c_width_b-1:0] dinb;
 input [c_address_width_b-1:0] addrb;
 input web, b_ce, b_clk, rstb, enb;
 output [c_width_a-1:0] douta;
 output [c_width_b-1:0] doutb;
 
 wire [c_address_width_a-1:0] core_addra;
 wire [c_address_width_b-1:0] core_addrb;
 wire [c_width_a-1:0] core_dina,core_douta,dly_douta;
 wire [c_width_b-1:0] core_dinb,core_doutb,dly_doutb;
 wire  core_wea,core_web;
 wire  core_a_ce,core_b_ce;
 wire  sinita,sinitb;
 
 assign core_addra = addra;
 assign core_dina = dina;
 assign douta = dly_douta;
 assign core_wea = wea;
 assign core_a_ce = a_ce & ena;
 assign sinita = rsta & a_ce;
 
 assign core_addrb = addrb;
 assign core_dinb = dinb;
 assign doutb = dly_doutb;
 assign core_web = web;
 assign core_b_ce = b_ce & enb;
 assign sinitb = rstb  & b_ce;
 
 generate




if (core_name0 == "sum_1_blk_mem_gen_v8_3_i0") 
     begin:comp0
sum_1_blk_mem_gen_v8_3_i0 core_instance0 ( 
      .addra(core_addra),
      .clka(a_clk),
      .addrb(core_addrb),
      .clkb(b_clk),
      .dina(core_dina),
      .wea(core_wea),
      .dinb(core_dinb),
      .web(core_web),
      .ena(core_a_ce),
      .enb(core_b_ce),
      .douta(core_douta),
      .doutb(core_doutb) 
       ); 
     end 

 if (latency > 2)
   begin:latency_test_instA
    synth_reg # (c_width_a, latency-2) 
    regA(
      .i(core_douta),
      .ce(core_a_ce),
      .clr(1'b0),
      .clk(a_clk),
      .o(dly_douta));
   end
 
 if (latency > 2)
   begin:latency_test_instB
    synth_reg # (c_width_b, latency-2) 
    regB(
      .i(core_doutb),
      .ce(core_b_ce),
      .clr(1'b0),
      .clk(b_clk),
      .o(dly_doutb));
   end
     
 if (latency <= 2)
    begin:latency1
      assign dly_douta = core_douta;
      assign dly_doutb = core_doutb;
    end
 
 endgenerate
 
 endmodule

