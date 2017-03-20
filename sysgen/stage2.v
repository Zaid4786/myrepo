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

output [13:0] cosout1,
output [13:0] cosout2,
output [13:0] cosout3,
output [13:0] cosout4,

output [31:0] phase_per_sample,
output stb_in,
output strbe

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


parameter code_phase_per_sample=2^32*(code_length/samples_per_ms);//2196875771;

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
reg [clks_per_iter_log2-1:0] count;
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
reg [no_iter_per_freq_log2-1:0] iterno;
	always @(posedge clk)
		if(chunk_change || reset || stop)
			iterno<=0;
		else if(iter_change)
			iterno<=iterno+1;
    
//************************************************//
//.Two consecutive 1ms Data chunks processed      //
// for a given frequency to avoid Nav bit boundary//
//************************************************//
reg chunk_no;
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
	reg [doppler_range_log2-1:0] ang_pointer;//<NOT PARAMETERIZED>
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
wire [(width_dop*adds_per_clk)-1:0] COSout, SINout;              //outputs of CORDIC ROTOR
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

assign cosout1=COSout[((1*width_dop)-1)-:width_dop];
assign cosout2=COSout[((2*width_dop)-1)-:width_dop];
assign cosout3=COSout[((3*width_dop)-1)-:width_dop];
assign cosout4=COSout[((4*width_dop)-1)-:width_dop];

assign strbe =|(strobe_cordic);
assign change_code = |(prn_out);
assign change_offset = |(iter_change_out);
assign code_reset = |(chunk_change_out);
	reg [prn_offset_log2-1:0] prn_offset;
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




endmodule
