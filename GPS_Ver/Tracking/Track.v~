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
 // FILE NAME      : Track.v
 // DEPARTMENT     : RISE LAB
 // AUTHORS        : DAMARLA BALAJI,SYED M MD ZAID
 // AUTHORS’ EMAIL : ee15m033@ee.iitm.ac.in,ee15m039@ee.iitm.ac.in
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
 // Change history: Saturday 11 February 2017 03:47:48 AM IST   - Version 1
 // Description : This Module Tracks the GPS I,Q sample stream for its Doppler Frequency and Code Phase
 // 							It implements 
 // 							1.A Mixer(For Doppler Demodulation)- Implemented Using CORDIC CIRCULAR Mode Module in Vectoring mode
 // 							2.NCO - Since Code and Carrier Frequencies keep changing,They need to be updated,Which require Numerically
 // 											Controlled Oscillator
 // 							3.Three Correlators - Three Correlators for Early,Late And Prompt codes 
 // 							4.Loop Filter - This takes outputs of Correlators and Applies First Order Smoothing on them (PI)
 // 															Carrier Phase Error - Phase of Prompt Correlator atan(QP/IP)
 // 															Code    Phase Error - Offset Between Early and Late Correlators (|Early|-|Late|)/(|Early|+|Late|)
 // 							As a whole it acts as a First Order PLL

`define PI 3.14159265

//Testbench for Simulation
module Tracktest;
reg [31:0] Acquired_phase_per_sample;
reg [10:0] Acquired_CodePhase;
reg [4:0] Acquired_PRN;
reg Acquired;
reg clk,reset;
initial
begin
$dumpfile("track.vcd");
$dumpvars();
#0 Acquired_phase_per_sample=0;
#0 Acquired_CodePhase=0;
#0 Acquired_PRN=0;
#0 Acquired=0;
#0 clk=0;
#0 reset=1;

#35 reset=0;
#60 Acquired_phase_per_sample=32'hFFBE76C9;
#60 Acquired_CodePhase=11'd1317;
#60 Acquired_PRN=13;
#70 Acquired=1;
end
always #5 clk=~clk;
Track u0 (clk,reset,Acquired_phase_per_sample,Acquired_CodePhase,Acquired_PRN,Acquired);
//Acquire u1 (clk,reset,Acquired_phase_per_sample,Acquired_CodePhase,Acquired_PRN,Acquired);
endmodule
//Testbench for Simulation

module Track#(
parameter input_width = 12,
parameter fs=2000, //In MHz
parameter blk_size_log2=11,
parameter code_length=1023)
(
input clk,
input reset,
input [31:0] Acquired_phase_per_sample,
input [blk_size_log2-1:0] Acquired_CodePhase,
input [4:0] Acquired_PRN,
input Acquired);

parameter code_length_log2=$clog2(code_length);
parameter code_phase_per_sample_width=32;


//CORDIC ROTOR Parameters
parameter iter_rot = 18; //No of iterations denote No of bits precison required
parameter op_wdth_rot=19; //With Overflow guard of 2 output width is correct upto No of iterations plus 2
parameter iter_rot_log2 = $clog2(iter_rot); //Fractional guard for intermediate  Results in CORDIC


parameter crltn_sum_width=op_wdth_rot+blk_size_log2;//Overflows due to summation over ~2000 samples

//CORDIC MAG Parameters (Finds absolute value of Early Prompt and Late Correlators)
parameter iter_mag=crltn_sum_width; //No of iterations denote No of bits precison required
parameter op_wdth_mag=32; //With Overflow guard of 2 output width is correct upto No of iterations plus 2
parameter iter_mag_log2 = $clog2(iter_mag); //Fractional guard for intermediate  Results in CORDIC
//Scaling 
parameter scaling_ang = (1.0/2**(31))*`PI;

parameter scaling_samples = 1.0/2**(16); // Inputs scaling
parameter scaling_cordic_rot = (1.0/1.646760241761972); // First rotation
parameter scaling_rot_prcsn = 1.0/2**(op_wdth_rot-input_width-1);
parameter scaling_cordic_abs = (1.0/1.646760258121062); // Mag CORDIC Scaling
parameter scaling_mag_prcsn = 1.0/2**(op_wdth_mag-crltn_sum_width-2);
parameter Crltr_scale = scaling_samples*scaling_cordic_rot*scaling_rot_prcsn;
parameter Mag_net_scale = scaling_samples*scaling_cordic_rot*scaling_rot_prcsn*scaling_cordic_abs*scaling_mag_prcsn; 

//Debug ------------------------------------//
	integer f1,f2;
	initial
	begin
		f1 = $fopen("in.txt","w");
		f2 = $fopen("out.txt","w");
	end
//Debug ------------------------------------//


//Memory Input -----------------------------//
	initial begin
		$readmemh("signalI12bit.hex", memory_I);
		$readmemh("signalQ12bit.hex", memory_Q);
	end
//I,Q Samples Dump -------------------------//

	reg [input_width-1:0] memory_I [39999:0];
	reg [input_width-1:0] memory_Q [39999:0];


// File in.txt dumps Input Samples,Code(E,L,P) and angle for samples going in//
	always @(posedge clk)
	if(strobe && loopcnt==2) // Iteration Number to record
	begin
		$fwrite(f1,"%b\t%f\t%f\t",code,$signed(Xin)*scaling_samples,$signed(Yin)*scaling_samples);
		$fwrite(f1,"%f\n",$signed(angle)*scaling_ang);
	end
// --------------------------------------------------------------------------//



// Only For Simulation --------------//
reg [31:0] CLKID;
	always @(posedge clk)
	if(~Acquired)
		CLKID<=0;
	else begin
//		$display("CLOCK - %d",CLKID);
		CLKID<=CLKID+1;
	end
	always @(posedge clk)
	if(CLKID==20190)
	$finish(0);
//-----------------------------------//

//------------------------------------------------//
//A Pulse is required to Start Tracking           //
//It converts Posedge On Acquired signal to Pulse //
//------------------------------------------------//
reg rg_Acquired;
	always @(posedge clk)
	rg_Acquired<=Acquired;
assign Acq_posedge=(~rg_Acquired)&(Acquired);
//------------------------------------------------//

// Keep Track of Iteration Count   //
reg [3:0] loopcnt;
	always @(posedge clk)
		if(reset)
		loopcnt<=0;
		else  if (Loop_Comptns_Cmplte)
		loopcnt<=loopcnt+1;
// --------------------------------//

//-------------------------------------------------------//
// Strobe is strobe For Samples Going into Cordic Rotor  //
// It turns OFF for Reset or Block_change                //
// During Block_Change Computations required to calculate//
// Feedback for Code and Carrier NCO s takes sometime    //
// Strobe Turns ON once the Loop Cmptns are completed    //
	reg strobe;
	always @(posedge clk)
		if(reset || ~Acquired || block_change)
			strobe<=0;
		else if(Acq_posedge || Loop_Comptns_Cmplte)
			strobe<=1;
//-------------------------------------------------------//


// Code NCO,CodePhasePerSampleDEL is the feedback
	wire [2:0] code;
	reg [code_phase_per_sample_width-1:0] code_phase_per_sample;
	always @(posedge clk)
		if(reset)
			code_phase_per_sample<=32'd2196875771;
		else if(Loop_Comptns_Cmplte)
			if(CodeSign)
			code_phase_per_sample<=32'd2196875771 + CodePhasePerSampleDEL;
			else
			code_phase_per_sample<=32'd2196875771 - CodePhasePerSampleDEL;


// CA code NCO,Generates Early,Late,Prompt Code
// Input is Code Phase Per Sample (inverse of frequency)
cacodeNCO#
(.phase_per_sample_width(code_phase_per_sample_width),
 .code_length_log2(code_length_log2),
 .code_length(code_length))
NCO
(.clk(clk),
 .reset(reset),
 .strobe(strobe),
 .PRN(Acquired_PRN),
 .phase_per_sample(code_phase_per_sample), // Scalling is 2^(-32) (Unsigned)
 .O_EC(code[0]),.O_PC(code[1]),.O_LC(code[2]),
 .block_change(block_change));

// Code NCO,CodePhasePerSampleDEL is the feedback, 
reg signed [31:0] Doppler_phase_per_sample;
	always @(posedge clk)
		if(reset || ~Acquired || Acq_posedge)
			Doppler_phase_per_sample<=Acquired_phase_per_sample;
		else if(Loop_Comptns_Cmplte)
			Doppler_phase_per_sample<=Acquired_phase_per_sample - CarrPhasePerSampleDEL;

//This Provides input to CORDIC DIGITAL DOWN CONVERTER
reg signed [31:0] angle;
	always @(posedge clk)
		if(reset || ~Acquired)
			angle<=0;
		else if(strobe)
			angle<=angle+Doppler_phase_per_sample;

//Read_Pointer fetches(increments) samples only when strobe is high
reg [15:0] read_pointer;
	always @(posedge clk)
		if(reset || ~Acquired)
			read_pointer<=Acquired_CodePhase;
		else if(strobe)
			read_pointer<=read_pointer+1;

//Word length = input_width
reg [input_width-1:0] Xin;
reg [input_width-1:0] Yin;
reg [2:0] code_in;
reg [31:0] phase;
reg stb_in;
always @(posedge clk)
begin
Xin <= memory_I[read_pointer];
Yin <= memory_Q[read_pointer];
code_in <= code;
phase <= angle;
stb_in <= strobe;
end

wire [2:0] code_out;

//CORDIC DOWNCONVERSION OF INPUT STREAM BY ACQUIRED DOPPLER FREQUENCY
CORDIC_CIRC_ROT
 #(.width(input_width),//12
	.iter_num(iter_rot),//18
	.output_width(op_wdth_rot),//19
	.No_of_cycles (6),//6
	.frac_guard(iter_rot_log2),//4
	.overflow_guard(1)) 
	ROTOR 
( clk,
	reset,
	code_in,
	code_out,
	COSout,
	SINout,
	Xin,
	Yin,
	phase,
	stb_in,
	stb_out);

// Word length = iter_rot +2
wire [op_wdth_rot-1:0] COSout; //Output from CORDIC ROTOR
wire [op_wdth_rot-1:0] SINout;

// Sign Extension before Summation
wire [crltn_sum_width-1:0] COSout_SE,SINout_SE;
assign COSout_SE = {{(crltn_sum_width-op_wdth_rot){COSout[iter_rot]}},COSout};
assign SINout_SE = {{(crltn_sum_width-op_wdth_rot){SINout[iter_rot]}},SINout};

// stb_out_negedge denotes end of block and this resets all Correlators
reg rg_stb_out;
	always @(posedge clk)
		rg_stb_out<=stb_out;
assign stb_out_negedge=rg_stb_out && ~stb_out;

//-------------------------------------------------------------------------------------//
//Three Correlators
reg [crltn_sum_width-1:0] Acmltr_I [0:2];
reg [crltn_sum_width-1:0] Acmltr_Q [0:2];
reg [1:0] lv1;
	always @(posedge clk)
	begin
		if(~Acquired || reset || stb_out_negedge) 
		begin
			for (lv1=0;lv1<3;lv1=lv1+1)
			begin
				Acmltr_I[lv1] <= 0;
				Acmltr_Q[lv1] <= 0;
			end
		end else
		if(stb_out)
		begin

			for (lv1=0;lv1<3;lv1=lv1+1)
			begin
				if(code_out[lv1]) begin
				Acmltr_I[lv1]<=Acmltr_I[lv1]+COSout_SE;Acmltr_Q[lv1]<=Acmltr_Q[lv1]+SINout_SE;
				end else begin
				Acmltr_I[lv1]<=Acmltr_I[lv1]-COSout_SE;Acmltr_Q[lv1]<=Acmltr_Q[lv1]-SINout_SE;
				end
//Debug - Record Output 
				if(loopcnt==2)
				$fwrite(f2,"%f\t",$signed(Acmltr_I[lv1])*Crltr_scale);

			end
			if(loopcnt==2)
				$fwrite(f2,"%b\n",code_out);
		end
	end
//-------------------------------------------------------------------------------------//

//Debug Purpose
//wire [crltn_sum_width-1:0] wire_Acmltr_I;
//assign wire_Acmltr_I=Acmltr_I[1];
//wire [crltn_sum_width-1:0] wr_Acmltr_I;
//assign wr_Acmltr_I=rg_Acmltr_I[1];
//Debug Purpose


//-------------------------------------------------------------//
//Correlator results are copied into registers for calculations
reg [crltn_sum_width-1:0] rg_Acmltr_I [0:3];
reg [crltn_sum_width-1:0] rg_Acmltr_Q [0:3];
reg [1:0] lv2;
	always @(posedge clk)
	begin
		if(~Acquired || reset) begin
			for (lv2=0;lv2<3;lv2=lv2+1)
			begin
				rg_Acmltr_I[lv2] <= 1;
				rg_Acmltr_Q[lv2] <= 1;
			end
		end else if(stb_out_negedge) begin
			for (lv2=0;lv2<3;lv2=lv2+1)
			begin
				rg_Acmltr_I[lv2] <= Acmltr_I[lv2];
				rg_Acmltr_Q[lv2] <= Acmltr_Q[lv2];
			end
		end
	end
//-------------------------------------------------------------//


reg [2:0] Mag_stb_in;
wire [2:0] Mag_stb_out;
		always@(posedge clk)
		if(reset)
				Mag_stb_in[0]<=0;
		else
				Mag_stb_in[0]<=stb_out_negedge;

genvar ii;
	genvar i;
	generate
	for (ii=0; ii < 2; ii=ii+1) 
	begin: STB_MAG // One Hot encoding representing ID of value inside Cart2Pol module
		always@(posedge clk)
		if(reset)
				Mag_stb_in[ii+1]<=0;
		else
				Mag_stb_in[ii+1]<=Mag_stb_in[ii];
	end
	endgenerate


wire [crltn_sum_width-1:0] In1,In2;
assign In1 = Mag_stb_in[0] ? rg_Acmltr_I[0] :    // LATE
						 Mag_stb_in[1] ? rg_Acmltr_I[2] :    // EARLY
						 Mag_stb_in[2] ? rg_Acmltr_I[1] : 0; // PROMPT
assign In2 = Mag_stb_in[0] ? rg_Acmltr_Q[0] :
						 Mag_stb_in[1] ? rg_Acmltr_Q[2] :
						 Mag_stb_in[2] ? rg_Acmltr_Q[1] : 0;

wire signed [op_wdth_mag-1:0] Mag_Out;
wire signed [31:0] Phase;


CORDIC_CIRC_VECT#
(.width(crltn_sum_width), //30
 .iter_num(crltn_sum_width), //30
 .output_width(op_wdth_mag), //32
 .No_of_cycles(10), //n is factor of (iter) ie.,30
 .frac_guard(5),
 .overflow_guard(2),
 .Piggyback_Cntrl_wdth(3))
CART2POL
(.clock(clk),
 .reset(reset),
 .x_in(In1),
 .y_in(In2),
 .Mag_Out(Mag_Out),
 .Phase(Phase),
 .stb_in(Mag_stb_in),
 .stb_out(Mag_stb_out));

reg [op_wdth_mag-1:0] rg_Mag_Out;
	always @(posedge clk)
	rg_Mag_Out<=Mag_Out;

wire signed [op_wdth_mag-1:0] Sum,Diff;
assign Sum=Mag_Out+rg_Mag_Out;
assign Diff=Mag_Out-rg_Mag_Out;
assign Div_stb_in = (Mag_stb_out[1]==1) ? 1:0;


parameter code_err_wdth=32;
parameter code_err_iter=code_err_wdth;
wire [code_err_wdth-1:0] ERR_CODE;// 2^(-31) Scaling

//Division----------------------------------------------//
CORDIC_LIN_VECT#
(.width(op_wdth_mag),
 .iter_num(code_err_wdth),
 .output_width(code_err_iter),
 .No_of_cycles(8),
 .frac_guard(5),
 .Piggyback_Cntrl_wdth(1))
DIV
(clk,reset,Sum,Diff,ERR_CODE,Div_stb_in,Div_stb_out);

reg signed [31:0] CarrError,CarrErrorDel;// 2^(-31) Scaling
	always @(posedge clk)
	begin
		if(reset)
		begin
			CarrError<=0;
			CarrErrorDel<=0;
		end else if(Mag_stb_out[2])
		begin
			CarrError<=(Phase>>>1);
			CarrErrorDel<=(Phase>>>1)-CarrError;
		end
	end

reg CarrErr_stb1,CarrErr_stb2;
	always @(posedge clk)
	begin
		CarrErr_stb1<=Mag_stb_out[2];
		CarrErr_stb2<=CarrErr_stb1;
	end

reg [31:0] CodeError,CodeErrorDel;
	always @(posedge clk)
	begin
		if(reset)
		begin
			CodeError<=0;
			CodeErrorDel<=0;
		end else if(Div_stb_out)
		begin
			CodeError<=ERR_CODE;
			CodeErrorDel<=ERR_CODE-CodeError;
		end
	end

reg rg_Div_stb_out,rg_rg_Div_stb_out;
	always @(posedge clk)
	begin
		rg_Div_stb_out<=Div_stb_out;
		rg_rg_Div_stb_out<=rg_Div_stb_out;
	end

//Scaling
//1.(tau2carr/tau1carr)=662.162162162162; (Multiplier ip range [-1,1],so Scale1:2^(-10))
//  Represent it in 32 bit number = 32'h52C5306E
//2.(PDIcarr/tau1carr)=22.3703433162893 (Multiplier ip range [-1,1],so Scale1:2^(-5))
//  Represent it in 32 bit number = 32'h597B3B47
//THE FIXED POINT IN RESULT OF MULTIPLICATION IS ONE BIT LEFT TO MSB DUE TO ADDITIONAL 2^-10 
//SCALING,FIXED POINT OF (tau2carr/tau1carr)*CarrErrorDel IS 11 BITS FROM MSB SIDE
//AND FIXED POINT OF (PDIcarr/tau1carr)*CarrError IS ALSO MOVED TO 11 BITS FROM MSB SIDE BY
//RIGHT SHIFT '5 BITS'ie.,(10-5) 
/*****************************************************************************************/
//1.(tau2code/tau1code)=52.972972972973; (Multiplier ip range [-1,1],so Scale1:2^(-6))
//  Represent it in 32 bit number = 32'h69F22983
//2.(PDIcode/tau1code)=0.143170197224251 (Multiplier ip range [-1,1],so Scale1:2^(0))
//  Represent it in 32 bit number = 32'h125366A9
//THE FIXED POINT IN RESULT OF MULTIPLICATION IS ONE BIT LEFT TO MSB DUE TO ADDITIONAL 2^-6 
//SCALING,FIXED POINT OF (tau2code/tau1code)*CodeErrorDel IS 7 BITS FROM MSB SIDE
//AND FIXED POINT OF (PDIcode/tau1code)*CodeError IS ALSO MOVED TO 7 BITS FROM MSB SIDE BY
//RIGHT SHIFT '6 BITS'ie.,(6-0) 
/*****************************************************************************************/
reg [31:0] Mul_InX,Mul_InY;
reg [2:0] Mul_stb_in;
	always @(posedge clk)
	begin
		if(reset)
		begin
			Mul_InX<=0;
			Mul_InY<=0;
			Mul_stb_in<=0;
		end else
		begin
			if(CarrErr_stb1)
			begin
				Mul_InX<=CarrError;
				Mul_InY<=32'h597B3B47;
				Mul_stb_in<=1;
			end else if(CarrErr_stb2)
			begin
				Mul_InX<=CarrErrorDel;
				Mul_InY<=32'h52C5306E;
				Mul_stb_in<=2;
			end else if(rg_Div_stb_out)
			begin
				Mul_InX<=CodeError;
				Mul_InY<=32'h125366A9;
				Mul_stb_in<=3;
			end else if(rg_rg_Div_stb_out)
			begin
				Mul_InX<=CodeErrorDel;
				Mul_InY<=32'h69F22983;
				Mul_stb_in<=4;
			end else if(Carr_NCO_Freq_Cmplte)
			begin
				Mul_stb_in<=5;
				Mul_InX<=CarrNCO;
				Mul_InY<=32'h00218DEF; //(2/fs)*(2^(31-No of Frac Bits in CarrNCO))*2^31
			end else if(Code_NCO_Freq_Cmplte)
			begin
				Mul_stb_in<=6;
				Mul_InX<=CodeNCO;
				Mul_InY<=32'h00010C6F;//(1/fs)*(2^(31-No of Frac Bits in CarrNCO))*2^32
			end else
				Mul_stb_in<=0;

		end
	end
reg signed [31:0] CarrNCO; // Q11.21 11 bits for int 21 for fraction
	always @(posedge clk)
	begin
		if(reset)
			CarrNCO<=0;
		else if((Mul_stb_out==1)) 
			CarrNCO<=CarrNCO+(Mul>>>5);
		else if((Mul_stb_out==2))
			CarrNCO<=CarrNCO+Mul;
	end

reg signed [31:0] CodeNCO; // Q7.25 7 bits for int 25 for fraction
	always @(posedge clk)
	begin
		if(reset)
			CodeNCO<=0;
		else if((Mul_stb_out==3)) 
			CodeNCO<=CodeNCO+(Mul>>>6);
		else if((Mul_stb_out==4))
			CodeNCO<=CodeNCO+Mul;
	end
reg Code_NCO_Freq_Cmplte;
always @(posedge clk)
	Code_NCO_Freq_Cmplte <=(Mul_stb_out==4);

reg Carr_NCO_Freq_Cmplte;
always @(posedge clk)
	Carr_NCO_Freq_Cmplte <=(Mul_stb_out==2);

reg Loop_Comptns_Cmplte;
always @(posedge clk)
	Loop_Comptns_Cmplte <=(Mul_stb_out==6);

reg signed [31:0] CarrPhasePerSampleDEL;
always @(posedge clk)
	if(reset)
		CarrPhasePerSampleDEL<=0;
	else if(Mul_stb_out==5)
		CarrPhasePerSampleDEL<=Mul;

reg signed [31:0] CodePhasePerSampleTmp;
always @(posedge clk)
	if(reset)
		CodePhasePerSampleTmp<=0;
	else if(Mul_stb_out==6)
		CodePhasePerSampleTmp<=Mul;

wire [31:0] CodePhasePerSampleDEL;
assign CodePhasePerSampleDEL = CodePhasePerSampleTmp[31] ? (-CodePhasePerSampleTmp)<<<1 : CodePhasePerSampleTmp<<<1 ;
assign CodeSign = CodePhasePerSampleTmp[31];

//Multiplier----------------------------------------------//
wire signed [31:0] Mul;
wire [2:0] Mul_stb_out;
CORDIC_LIN_ROT#
(.width(32),
 .iter_num(32),
 .output_width(32),
 .No_of_cycles(8),
 .frac_guard(5),
 .Piggyback_Cntrl_wdth(3))
MUL
(clk,reset,Mul_InX,Mul_InY,Mul,Mul_stb_in,Mul_stb_out);



endmodule
