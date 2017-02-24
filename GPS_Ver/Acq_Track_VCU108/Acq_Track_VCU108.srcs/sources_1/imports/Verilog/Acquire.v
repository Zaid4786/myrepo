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

`define WRAP_BACK_FREQ
module Acquire# 
(parameter crltn_sum_width=23,      // sample width + log2(samples_per_ms)
parameter adds_per_clk = 4,
parameter input_width = 12,         // input sample width
parameter shifts_per_iter= 250,     
parameter no_iter_per_freq= 7,      // (samples_per_ms/shifts_per_iter)
parameter no_of_chunks_per_freq=2,
parameter samples_per_ms=2000,      // sampling frequency in KHz
parameter doppler_range=201,          // No of Dopplers
parameter flag_2=1
)
(
input clk,
input reset,

input [input_width-1:0] Xsamples1,
input [input_width-1:0] Xsamples2,
input [input_width-1:0] Xsamples3,
input [input_width-1:0] Xsamples4,

input [input_width-1:0] Ysamples1,
input [input_width-1:0] Ysamples2,
input [input_width-1:0] Ysamples3,
input [input_width-1:0] Ysamples4,

output [14:0] rd_ptr1,
output [14:0] rd_ptr2,
output [14:0] rd_ptr3,
output [14:0] rd_ptr4,

output reg [31:0] Op_Freq1,
output reg [31:0] Op_Freq2,
output reg [31:0] Op_Freq3,
output reg [31:0] Op_Freq4,

output reg [samples_per_ms_log2-1:0] Op_CodePhase1,
output reg [samples_per_ms_log2-1:0] Op_CodePhase2,
output reg [samples_per_ms_log2-1:0] Op_CodePhase3,
output reg [samples_per_ms_log2-1:0] Op_CodePhase4,

output reg [4:0] Op_PRNID1,
output reg [4:0] Op_PRNID2,
output reg [4:0] Op_PRNID3,
output reg [4:0] Op_PRNID4,

output reg Acquisition_Completed);


parameter code_phase_per_sample=2196875771;
parameter clks_per_iter= (samples_per_ms/adds_per_clk);
parameter samples_per_ms_log2 = $clog2(samples_per_ms);
parameter clks_per_iter_log2 = $clog2(clks_per_iter);
parameter adds_per_clk_log2 = $clog2(adds_per_clk);
parameter no_iter_per_freq_log2 = $clog2(no_iter_per_freq);
parameter shifts_per_iter_log2= $clog2(shifts_per_iter);
parameter crltn_sum_width_log2 = $clog2(crltn_sum_width);
parameter doppler_range_log2 = $clog2(doppler_range);
parameter Number_Of_Satellites = 32;
parameter Code_Mem_Depth=Number_Of_Satellites*clks_per_iter;
parameter prn_offset_log2 = $clog2(Code_Mem_Depth);
parameter Num_Sat_log2=$clog2(Number_Of_Satellites);

// Only for simulation
//reg clk,reset;
//	initial
//	begin
//	clk=0;
//	reset=1;
//	#40 reset=0;
//	end

//	always #5 clk =!clk;
//Only for simulation


	reg [input_width-1:0] memory_I [39999:0];
	reg [input_width-1:0] memory_Q [39999:0];
	reg [31:0] angincr [doppler_range-1:0];
//	reg [adds_per_clk-1:0] prn_code [Code_Mem_Depth-1:0];
	reg [9:0] ga [shifts_per_iter+2:0];
	reg [9:0] gb [shifts_per_iter+2:0];


	integer f1,f2,f3,f4,f5;
	initial begin
//		$readmemh("signalI12bit.hex", memory_I);
//		$readmemh("signalQ12bit.hex", memory_Q);
		$readmemh("Angles.hex",angincr);
//		$readmemh("CodeAllSVs.hex",prn_code);
		$readmemh("GA.hex",ga);
		$readmemh("GB.hex",gb);
		f1 = $fopen("acc.txt","w");
		f2 = $fopen("acc0.txt","w");
//		f3 = $fopen("out.txt","w");
//		f4 = $fopen("in.txt","w");
//		f5 = $fopen("ang_in.txt","w");
//		$dumpvars();
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
// For DEBUG
	reg [31:0] CLKID;
	always @(posedge clk)
	begin
		if(reset)
			CLKID=0;
		else begin
		if(CLKID[3:0]==0)
		$display("%d",CLKID);
		CLKID=CLKID+1;
		if(CLKID==1316000)
		$finish();
		end
	end


//*********************************************//
//.Counter: Tracks offset of current iteration //
//*********************************************//
	reg [clks_per_iter_log2-1:0] count;
	always @(posedge clk)
		if(iter_change || reset || stop)
			count<=0;
		else
			count<=count+1;

//*********************************************//
//.Counter: Tracks iteration number            //
//*********************************************//

	reg [no_iter_per_freq_log2-1:0] iterno;
	always @(posedge clk)
		if(chunk_change || reset || stop)
			iterno<=0;
		else if(iter_change)
			iterno<=iterno+1;
    
//************************************************//
//.Two consecutive 1ms Data chunks processed ..   //
// for a given frequency to avoid Nav bit boundary//
//************************************************//
	reg chunk_no;
	always @(posedge clk)
		if(reset || stop)
			chunk_no<=0;
		else if(chunk_change)
			chunk_no<=~(chunk_no);



assign prn_change = freq_change && (ang_pointer==doppler_range);
assign freq_change= chunk_change && (chunk_no==1);
assign iter_change=(count==clks_per_iter);
assign chunk_change = (iterno==no_iter_per_freq) && iter_change;
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
	reg [doppler_range_log2-1:0] ang_pointer;//<NOT PARAMETERIZED>
	wire [31:0] a1; //Debug
	assign a1=phase[1]; //Debug
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


	reg [14:0] read_pointer;//<NOT PARAMETERIZED>
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
reg [adds_per_clk_log2:0] aaa;
	always @(posedge clk)
    begin
        for(aaa=0;aaa<adds_per_clk;aaa=aaa+1)
        begin
			phase[aaa] <= angle[aaa];
		end
    end

	

//10:00 AM Sunday Jan 29,2017
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
	
	wire [(input_width*adds_per_clk)-1:0] COSout, SINout;              //outputs to CORDIC ROTOR

wire [(input_width*adds_per_clk)-1:0] Xsamples;
wire [(input_width*adds_per_clk)-1:0] Ysamples;

assign Xsamples = {Xsamples4,Xsamples3,Xsamples2,Xsamples1}; 
assign Ysamples = {Ysamples4,Ysamples3,Ysamples2,Ysamples1}; 

assign rd_ptr1=read_pointer;
assign rd_ptr2=read_pointer+1;
assign rd_ptr3=read_pointer+2;
assign rd_ptr4=read_pointer+3;

genvar aa;
generate 
	for (aa = 1; aa <= adds_per_clk; aa = aa + 1) 
	begin: CORDIC_ROTOR

		CORDIC #(.width(input_width),
						.frac_guard(4),
						.overflow_guard(4),
						.Piggyback_control_width(4)) 
			ROTOR ( clk,
							COSout[((aa*input_width)-1)-:input_width],
							SINout[((aa*input_width)-1)-:input_width],
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


	assign strbe =|(strobe_cordic);
// For detecting a negedge on strbe //
	reg rg_strbe;
	always @(posedge clk)
		rg_strbe<=strbe;

assign strbenegedge = rg_strbe && ~strbe;
//******************************************************//he's a pirate
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



	reg [samples_per_ms_log2-1:0] shift_offset,rg_shift_offset;
	always @(posedge clk)
	if(reset) begin
		shift_offset<=0;
//		rg_shift_offset<=0;
	end else if(strbenegedge) begin
		shift_offset <= (shift_offset==(samples_per_ms-shifts_per_iter)) ? 0 : shift_offset+shifts_per_iter;
//		rg_shift_offset <= shift_offset;
	end
//******************************************************//
// Outputs from CORDIC_ROTOR are to be accumulated      //
// They are sign_extended                               //
//******************************************************//
	wire [(crltn_sum_width*adds_per_clk)-1:0] II;
	wire [(crltn_sum_width*adds_per_clk)-1:0] QQ;
	
	genvar ab;
	generate
		for (ab=1; ab <= adds_per_clk;ab=ab+1)
		begin: sign_extend
			wire [input_width-1:0] I,Q;
			assign I=COSout[((ab*input_width)-1)-:input_width];
			assign Q=SINout[((ab*input_width)-1)-:input_width];
			assign II[((ab*crltn_sum_width)-1)-:crltn_sum_width] = { {(crltn_sum_width-input_width){I[input_width-1]}} ,I};
			assign QQ[((ab*crltn_sum_width)-1)-:crltn_sum_width] = { {(crltn_sum_width-input_width){Q[input_width-1]}} ,Q};
		end
	endgenerate

//************	DEBUG	*******************//
//	reg [adds_per_clk_log2:0] loop_count;
//	always @(posedge clk)
//	begin
//	if (strbe && file_flag)
//	begin
//		for(loop_count=1; loop_count <= (adds_per_clk); loop_count=loop_count+1)
//		$fwrite(f3,"%d\t%d\n",$signed(II[((loop_count*crltn_sum_width)-1)-:crltn_sum_width]),$signed(QQ[((loop_count*crltn_sum_width)-1)-:crltn_sum_width]));//Debug
//	end
//	if (stb_in && file_flag)
//	begin
//		for(loop_count=0; loop_count < (adds_per_clk); loop_count=loop_count+1)
//		begin
//		$fwrite(f4,"%d\t%d\n",$signed(Xin[loop_count]),$signed(Yin[loop_count]));//Debug
//		$fwrite(f5,"%d\n",$signed(phase[loop_count]));//Debug
//		end
//	end
//	end




	reg [crltn_sum_width-1:0] sumI [shifts_per_iter-1:0]; // accumulators
	reg [crltn_sum_width-1:0] sumQ [shifts_per_iter-1:0]; // accumulators

	genvar i;
    
	generate
		for (i=0; i < (shifts_per_iter); i=i+1)
		begin: Adders
//			wire [samples_per_ms_log2-1:0] cp;
//			wire [samples_per_ms_log2:0] tempo;
//			wire [clks_per_iter_log2-1:0] code_addr;
//			wire [adds_per_clk-1:0] code1,code2;// <NOT PARAMETERIZED> 
			wire [adds_per_clk-1:0] prn;// <NOT PARAMETERIZED> 
//			wire [prn_offset_log2:0] prn_addr;
//			assign tempo = (i+(code_pointer<<adds_per_clk_log2)+shift_offset); //Addition,It calculates code_shift needed for this Accumulation
//			assign cp= (tempo>(samples_per_ms-1)) ? (tempo-samples_per_ms):tempo; // cp=tempo modulo <samples_per_ms>
//			assign code_addr = cp>>adds_per_clk_log2; // PRNCode is arranged in nibble by nibble fashion LSB 2 bits dont matter
//			assign prn_addr=code_addr+prn_offset;
//			assign code1 = prn_code[prn_addr];
//			assign code2 = (code_addr==(clks_per_iter-1)) ?prn_code[prn_offset]:prn_code[prn_addr+1];

//**************************************************//
// <NOT PARAMETERIZED> Selects nibble from the      //
// fetched two consecutive nibbles from Code Memory //
// based on LSB (offset) of code pointer            //
//**************************************************//
//			assign prn = (cp[1:0]==0) ? code1:
//								(cp[1:0]==1) ? {code1[2:0],code2[3]}:
//								(cp[1:0]==2) ? {code1[1:0],code2[3:2]}:
//																{code1[0],code2[3:1]};

        localparam [31:0] prn_code_phase_per_sample=(i+1)*code_phase_per_sample;

	    reg [31:0] cmltve_phse_frac1;
	    always @(posedge clk)
	    if(code_reset || reset)
            cmltve_phse_frac1<=prn_code_phase_per_sample;
        else if(change_offset)
            cmltve_phse_frac1<=phase_nxt;
        else if(strbe)
	    	cmltve_phse_frac1<=cmltve_phse_frac4+code_phase_per_sample;

        wire [31:0] neg_wire1,neg_wire2,neg_wire3,neg_wire4;
	    wire [31:0] cmltve_phse_frac2,cmltve_phse_frac3,cmltve_phse_frac4;        
        assign cmltve_phse_frac2 = cmltve_phse_frac1 + code_phase_per_sample;
        assign cmltve_phse_frac3 = cmltve_phse_frac2 + code_phase_per_sample;
        assign cmltve_phse_frac4 = cmltve_phse_frac3 + code_phase_per_sample;

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
				
        wire [9:0] wr_G2_1,wr_G2_2,wr_G2_3,wr_G2_3;
        wire [9:0] wr_G1_1,wr_G1_2,wr_G1_3,wr_G1_4;

        assign wr_G1_1={rg_G1[7]^rg_G1[0],rg_G1[9:1]};//sum of shifts is 1
        assign wr_G1_2={wr_G1_1[7]^wr_G1_1[0],wr_G1_1[9:1]};//sum of shifts is 2
        assign wr_G1_3={wr_G1_2[7]^wr_G1_2[0],wr_G1_2[9:1]};//sum of shifts is 3
        assign wr_G1_4={wr_G1_3[7]^wr_G1_3[0],wr_G1_3[9:1]};//sum of shifts is 4
        
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
        reg [9:0] rg_G1_nextiter,rg_G2_nextiter;
        reg [31:0] phase_nxt;
        always @(posedge clk)
        if(code_pointer=='d62)
        begin
			rg_G1_nextiter<= (shift_sum1==0) ? rg_G1: (shift_sum1==1) ?
                                 wr_G1_1 : wr_G1_2;       
			rg_G2_nextiter<= (shift_sum1==0) ? rg_G2: (shift_sum1==1) ?
                                 wr_G2_1 : wr_G2_2;       
            phase_nxt<=cmltve_phse_frac3;
        end        
        
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

			reg [adds_per_clk_log2:0] ba;


// Conditional Add/Sub of four samples
			always @(posedge clk)
			begin
				if(strbe) 
				begin

//					if(i==0 && file_flag) //Debug
//					$fwrite(f2,"%b\n",$signed(prn));//Debug

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

//					if(i==0 && file_flag) //Debug
//					$fwrite(f2,"%d\t%d\n",$signed(sumI[i]),$signed(sumQ[i]));//Debug

					end
				end else if(reset || (strbenegedge))
				begin
					sumI[i]<=0;
					sumQ[i]<=0;
				end
			end
		end
	endgenerate


////************	DEBUG	*******************//
//	reg file_flag;
//	reg [shifts_per_iter_log2:0] iii;
//	always @(posedge clk)
//	if(reset)
//		file_flag<=1;
//	else if (strbenegedge && file_flag)
//	begin
//		file_flag<=0;
//		for(iii=0; iii < (shifts_per_iter); iii=iii+1)
//		$fwrite(f1,"%d\t%d\n",$signed(sumI[iii]),$signed(sumQ[iii]));//Debug
//	end



//*****************************************************//
//.Copies the Accumulator results into other Registers //
//.For Magnitude calculation and MAXIMA finding        //
//*****************************************************//
	reg [crltn_sum_width-1:0] ResultI [shifts_per_iter-1:0];
	reg [crltn_sum_width-1:0] ResultQ [shifts_per_iter-1:0];
	reg [shifts_per_iter_log2:0] ii;
	always @(posedge clk)
	begin
    if(strbenegedge)
	begin
		for	(ii=0;ii<shifts_per_iter;ii=ii+1)
		begin
			ResultI[ii]<=sumI[ii];
			ResultQ[ii]<=sumQ[ii];
		end
	end
	end



	reg strbe_vect;
	reg [shifts_per_iter_log2:0] pointer_mag;
	wire [crltn_sum_width-1:0] x_in,y_in;    

	assign x_in=ResultI[pointer_mag];
	assign y_in=ResultQ[pointer_mag];



reg maxrst_in;
//*******************************************************//
//.Turns ON strobe for CORDIC_VECT on the negedge on     //
//.strobe_out of CORDIC_ROTOR(completion of an iteration)//
//*******************************************************//
	always @(posedge clk)
	if(reset || pointer_mag==shifts_per_iter-1)
		strbe_vect<=0;
	else if (strbenegedge)
		strbe_vect<=1;

	always @(posedge clk)
	if(reset)
	maxrst_in<=1;
	else 
	if((iterno==0) && (pointer_mag==shifts_per_iter-1))
	maxrst_in<=1;
	else if(strbenegedge)
	maxrst_in<=0;
	

//.Steers inputs one by one for CORDIC_VECT //
	always @(posedge clk)
	if(reset || pointer_mag==shifts_per_iter-1)
		pointer_mag<=0;
	else if(strbe_vect)
		pointer_mag<=pointer_mag+1;

//<NOT_PARAMETERIZED>
//No of Accumulators per iter should be less than or equal to
//Clocks per iter 
//clks_per_iter=(samples_per_ms/adds_per_clk)
//shifts_per_iter


wire [crltn_sum_width-1:0] mag_out;
wire [crltn_sum_width-1:0] max1,max2,max22;
wire [samples_per_ms_log2-1:0] maxaddr;

CORDIC_VECT#
	(.width(crltn_sum_width),
	 .frac_guard(crltn_sum_width_log2),
	 .overflow_guard(4),
	 .samples_per_ms_log2(samples_per_ms_log2))
	 ABS
	(clk,
	x_in,
	y_in,
	strbe_vect,
	mag_out,
	strbeMag,
	maxrst_in,
	maxrst_out);


sorter#
(.width(crltn_sum_width),
 .addr_width(samples_per_ms_log2),
 .number(2*flag_2+2), //2n+2
 .flag_2(flag_2),
 .samples_per_ms(samples_per_ms),
 .number_log2(2))
 MAX
(	clk,
	(maxrst_out),
	strbeMag,
	mag_out,
	max1,
	max2,
	maxaddr);
reg rg_maxrst_out,rg_rg_maxrst_out;

//.Delayed Posedge for signalling completion of processing of a PRN code //
always @(posedge clk)
begin
rg_maxrst_out<=maxrst_out;
rg_rg_maxrst_out<=rg_maxrst_out;
end

assign chunk_complete = maxrst_out && ~rg_maxrst_out;
assign prn_complete = rg_maxrst_out && ~rg_rg_maxrst_out && (ang_pointer==1) && chunk_no==0;

//***********************************************//
//After processing of chunk completes,this block //
//updates Maxima of correlation result and also  //
//registers Codephase and frequency at which max //
//occured,At completion of PRN code this block   //
//updates global registers containing data of    //
//Acquired Satellites                            //
//***********************************************// 
reg Acquired;
reg [crltn_sum_width-1:0] Maxima1,Maxima2;
reg [samples_per_ms_log2-1:0] CodePhase;
reg [doppler_range_log2:0] Hit_Freq;

reg [samples_per_ms_log2-1:0] Acquired_CodePhase;
reg [31:0] Acquired_Hit_Freq;
reg [Num_Sat_log2-1:0] Acquired_PRNID;


reg [2:0] loop_var;

always @(posedge clk)
begin
	if(reset)
	begin
		Maxima1<=0;
		Maxima2<=0;
		Acquired<=0;
	end else 
	if(prn_complete)
	begin
		Maxima1<=0;
		Acquired<=0;
		if(Acquired)
		begin
			Acquired_CodePhase<=samples_per_ms-CodePhase;
			Acquired_Hit_Freq<=angincr[Hit_Freq];
			Acquired_PRNID<=prn_no-1;
			$display("Hurray GOTCHA one output");
			$display("Acquired_CodePhase :%d",CodePhase);
			$display("Acquired_Hit_Freq :%d",Hit_Freq);
		end
	end else 	
	if((max1>Maxima1) && chunk_complete)
	begin
		Maxima1<=max1;
		Maxima2<=max2;
		CodePhase<=maxaddr;
		Acquired<=(max1>(max22));
		Hit_Freq<=(chunk_no==0)? (ang_pointer-2) : (ang_pointer-1);
	end
end

//Condition for 'HIT'is Max1 > 1.414 times Max2
//1.414 is implemented as (1+(1/2)-(1/8)+(1/16))
assign max22= max2+ (max2>>1) - (max2>>3) + (max2>>4);
wire [31:0] PEAK_METRIC;
wire [1:0] Div_stb_out;
CORDIC_LIN_VECT#
(.width(crltn_sum_width),
 .iter_num(32),
 .output_width(32),
 .No_of_cycles(8),
 .frac_guard(5),
 .Piggyback_Cntrl_wdth(2))
DIV
(clk,Maxima1,Maxima2,PEAK_METRIC,{prn_complete,(prn_complete && Acquired)},Div_stb_out);
wire [3:0] id;
sorter2#
(.width(31),
 .number(4)
)
pk_metric_sorter
(.clk(clk),
 .reset(reset),
 .strobe(Div_stb_out[0]),
 .in(PEAK_METRIC),
 .id(id),
 .Valid(Valid)
);

//OUTPUTTING results
always @(posedge clk)
	if(Valid)
	begin
		case(1'b1)
			id[0]:
			begin
				Op_CodePhase1<=Acquired_CodePhase;
				Op_Freq1<=Acquired_Hit_Freq;
				Op_PRNID1<=Acquired_PRNID;
			end

			id[1]:
			begin
				Op_CodePhase2<=Acquired_CodePhase;
				Op_Freq2<=Acquired_Hit_Freq;
				Op_PRNID2<=Acquired_PRNID;

                Op_CodePhase1<=Op_CodePhase2;
				Op_Freq1<=Op_Freq2;
				Op_PRNID1<=Op_PRNID2;
			end

			id[2]:
			begin
				Op_CodePhase3<=Acquired_CodePhase;
				Op_Freq3<=Acquired_Hit_Freq;
				Op_PRNID3<=Acquired_PRNID;

                Op_CodePhase2<=Op_CodePhase3;
				Op_Freq2<=Op_Freq3;
				Op_PRNID2<=Op_PRNID3;

                Op_CodePhase1<=Op_CodePhase2;
                Op_Freq1<=Op_Freq2;
                Op_PRNID1<=Op_PRNID2;

			end

			id[3]:
			begin
				Op_CodePhase4<=Acquired_CodePhase;
				Op_Freq4<=Acquired_Hit_Freq;
				Op_PRNID4<=Acquired_PRNID;

                Op_CodePhase3<=Op_CodePhase4;
				Op_Freq3<=Op_Freq4;
				Op_PRNID3<=Op_PRNID4;

                Op_CodePhase2<=Op_CodePhase3;
				Op_Freq2<=Op_Freq3;
				Op_PRNID2<=Op_PRNID3;

                Op_CodePhase1<=Op_CodePhase2;
                Op_Freq1<=Op_Freq2;
                Op_PRNID1<=Op_PRNID2;

			end
		endcase
	end


reg stop;
always@(posedge clk)
Acquisition_Completed<=stop;

reg COMPLETE;
always@(posedge clk)
COMPLETE<=Div_stb_out[1];

always@(posedge clk)
if(reset)
stop<=0;
else if((prn_no==Number_Of_Satellites) && COMPLETE)
stop<=1;

//Debug Signals
wire [31:0] phse1,phse2,phse3;
assign phse1=Adders[0].cmltve_phse_frac1;
assign phse2=Adders[1].cmltve_phse_frac1;
assign phse3=Adders[2].cmltve_phse_frac1;

wire [9:0] GA1,GA2,GA3;
wire [9:0] GB1,GB2,GB3;
assign GA1=Adders[0].rg_G1;
assign GA2=Adders[1].rg_G1;
assign GA3=Adders[2].rg_G1;

assign GB1=Adders[0].rg_G2;
assign GB2=Adders[1].rg_G2;
assign GB3=Adders[2].rg_G2;

wire [3:0] prn1,prn2,prn3,prn4;
assign prn1=Adders[0].prn;
assign prn2=Adders[1].prn;
assign prn3=Adders[2].prn;
assign prn4=Adders[3].prn;

wire [3:0] shift_prn1,shift_prn2,shift_prn3,shift_prn4;
assign shift_prn1=Adders[0].shift;
assign shift_prn2=Adders[1].shift;
assign shift_prn3=Adders[2].shift;
assign shift_prn4=Adders[3].shift;


ila_1 ILA_Acq1 (
	.clk(clk), // input wire clk


	.probe0(CLKID), // input wire [31:0]  probe0  
	.probe1(count), // input wire [8:0]  probe1 
	.probe2(iterno), // input wire [2:0]  probe2 
	.probe3(chunk_no), // input wire [0:0]  probe3 
	.probe4(stb_in), // input wire [0:0]  probe4 
	.probe5(Xsamples), // input wire [11:0]  probe5 
	.probe6(Ysamples), // input wire [11:0]  probe6 
	.probe7(ang_pointer), // input wire [7:0]  probe7 
	.probe8(code_reset), // input wire [0:0]  probe8 
	.probe9(prn_no), // input wire [4:0]  probe9 
	.probe10(strbe), // input wire [0:0]  probe10 
	.probe11(code_pointer), // input wire [8:0]  probe11 
	.probe12(shift_offset), // input wire [10:0]  probe12 
	.probe13(phse1), // input wire [31:0]  probe13 
	.probe14(phse2), // input wire [31:0]  probe14 
	.probe15(phse3), // input wire [31:0]  probe15 
	.probe16(GA1), // input wire [9:0]  probe16 
	.probe17(GA2), // input wire [9:0]  probe17 
	.probe18(GA3), // input wire [9:0]  probe18 
	.probe19(GB1), // input wire [9:0]  probe19 
	.probe20(GB2), // input wire [9:0]  probe20 
	.probe21(GB3), // input wire [9:0]  probe21 
	.probe22(prn1), // input wire [3:0]  probe22 
	.probe23(prn2), // input wire [3:0]  probe23 
	.probe24(prn3), // input wire [3:0]  probe24 
	.probe25(prn4), // input wire [3:0]  probe25 
	.probe26(shift_prn1), // input wire [3:0]  probe26 
	.probe27(shift_prn2), // input wire [3:0]  probe27
	.probe28(shift_prn3), // input wire [3:0]  probe27
	.probe29(shift_prn4) // input wire [3:0]  probe27
);


ila_0 ILA_Acq2 (
	.clk(clk), // input wire clk


	.probe0(CodePhase), // input wire [10:0]  probe0  
	.probe1(ang_pointer), // input wire [7:0]  probe1 
	.probe2({id}), // input wire [3:0]  probe2 
	.probe3(Hit_Freq), // input wire [7:0]  probe3 
	.probe4(prn_complete), // input wire [0:0]  probe4 
	.probe5(Acquired), // input wire [0:0]  probe6 
	.probe6(prn_no), // input wire [5:0]  probe7
	.probe7(Maxima1), // input wire [22:0]  probe7 
	.probe8(Maxima2), // input wire [22:0]  probe9
	.probe9(PEAK_METRIC), // input wire [31:0]  probe10
	.probe10(stop), // input wire [0:0]  probe10
	.probe11(CLKID), // input wire [31:0]  probe0  
    .probe12(count), // input wire [8:0]  probe1 
    .probe13(iterno), // input wire [2:0]  probe2 
    .probe14(chunk_no), // input wire [0:0]  probe3 
    .probe15(stb_in), // input wire [0:0]  probe4 
    .probe16(strbe) // input wire [0:0]  probe4
);



ila_2 ILA_Acq3 (
	.clk(clk), // input wire clk


	.probe0(CLKID), // input wire [31:0]  probe0  
	.probe1(Op_Freq1), // input wire [31:0]  probe1 
	.probe2(Op_Freq2), // input wire [31:0]  probe2 
	.probe3(Op_Freq3), // input wire [31:0]  probe3 
	.probe4(Op_Freq4), // input wire [31:0]  probe4 
	.probe5(Op_CodePhase1), // input wire [10:0]  probe5 
	.probe6(Op_CodePhase2), // input wire [10:0]  probe6 
	.probe7(Op_CodePhase3), // input wire [10:0]  probe7 
	.probe8(Op_CodePhase4), // input wire [10:0]  probe8 
	.probe9(Op_PRNID1), // input wire [4:0]  probe9 
	.probe10(Op_PRNID2), // input wire [4:0]  probe10 
	.probe11(Op_PRNID3), // input wire [4:0]  probe11 
	.probe12(Op_PRNID4), // input wire [4:0]  probe12 
	.probe13(Acquisition_Completed) // input wire [0:0]  probe13
	
);



endmodule
