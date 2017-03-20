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
