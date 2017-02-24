/*
Copyright (c) 2013, IIT Madras
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*  Neither the name of IIT Madras  nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 // -----------------------------------------------------------------------------
 // FILE NAME      : Cordic_Lin_Vect.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : DAMARLA BALAJI,SYED M MD ZAID
 // AUTHOR’S EMAIL : ee15m033@ee.iitm.ac.in,ee15m039@ee.iitm.ac.in
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
 //4.PreRotation of Inputs - All inputs are made positive since Div works only in range (0,1) 
 //													 Sign bit is transferred along side pipe and final result is inverted if needed
 //5.Linear Mode - Algorithm for iterations changed
 //6.Inputs are not Buffered thereby saving latency of One clockcycle
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns (y/x) Provided that y<x
 // Scaling-
 // x_out,y_out: 1.Inputs scale do cancel(since div). Output range is (0,1) so Usual 2^(-(op_width-1)) scale exists
 //              2.CORDIC linear mode scaling : 1
 // 
 // Parameters-
 // 1.width - Inputs width
 // 2.iter_num -Number of cordic iterations required (Atleast > Inputs width)
 //             Output is guranteed to be correct upto 'iter_num' bits
 // 3.output_width - Required output_width (<iter_num)
 // 4.No_of_cycles - No of stages required. (MUST BE divisible factor of iter_num)
 // 5.frac_guard - Guard bits provided to avoid rounding errors (>log2(iter_num))
 ///////////////////////////////////////////////////////////////////////////////
//`define BUFFER_INPS
module CORDIC_LIN_VECT#
	(parameter width = 12,
	parameter iter_num = 12,
	parameter output_width=12,
	parameter No_of_cycles = 3,//n is factor of (iter-1)
	parameter frac_guard = 4,
	parameter Piggyback_Cntrl_wdth =3)

	(clock,x_in,y_in,Div,stb_in,stb_out);

	parameter iters_per_stage = (iter_num)/No_of_cycles;
	parameter intrmdte_wdth = iter_num+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	//**********Inputs*************//
	input clock;
	//Inputs
	input signed [width-1:0] x_in,y_in; 
	//Piggyback Control Signals
	input [Piggyback_Cntrl_wdth-1:0] stb_in;

	//********* Outputs************//
	output signed  [output_width-1:0] Div; 
	output [Piggyback_Cntrl_wdth-1:0] stb_out;
//******************************************************************//
//PRE ROTATION: Inputs to DIVISION are supposed to be in range (0,1)//
//However sign of  result is carried along pipe till end            //
//******************************************************************//
	wire signed [width-1:0] x_pre_rot,y_pre_rot; 
	assign x_pre_rot = x_in[width-1] ? -x_in:x_in;
	assign y_pre_rot = y_in[width-1] ? -y_in:y_in;
	assign sign_in   = x_in[width-1] ^ y_in[width-1];
//******************************************************************//
//Padding and extension of inputs to make intermediate wordlength   //
//capable of avoiding rounding errors till precison of iter_num bits//
//******************************************************************//
	wire signed [intrmdte_wdth-1:0] x_start,y_start;
	assign x_start = {1'b0,x_pre_rot,{(intrmdte_wdth-width-1){1'b0}}}; //Arithmetic Shift Right since ITERATIONS NEED BE STARTED FROM 1
	assign y_start = {y_pre_rot,{(intrmdte_wdth-width){1'b0}}};

	wire signed [intrmdte_wdth-1:0] half;
	assign half = {2'b01,{(intrmdte_wdth-2){1'b0}}}; // This constitutes 0.1000000 in binary corresponding to 2^(-1)

//Pipeline registers to hold intermediate values //
//We have 'No_of_cycles' PIPE stages             //
	reg signed [intrmdte_wdth-1:0] x [0:No_of_cycles];
	reg signed [intrmdte_wdth-1:0] y [0:No_of_cycles];
	reg signed [intrmdte_wdth-1:0] z [0:No_of_cycles];
//Sign bit for output

//Register Passing Piggyback  control signals through PIPE //
	reg [Piggyback_Cntrl_wdth-1:0] strobe [0:No_of_cycles];
	reg sign [0:No_of_cycles] ;

//Introduction of input values into CORDIC pipe //
`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin 
		x[0] <= x_start;
		y[0] <= y_start;
		z[0] <= 0;
		strobe[0]<= stb_in;
		sign[0] <= sign_in;
	end

  // run through iterations
	genvar i;
	generate
	for (i=0; i < No_of_cycles; i=i+1) //Block below is replicated 'No of stages' times
	begin: STAGES
		localparam integer j=i*iters_per_stage;

		reg signed [intrmdte_wdth-1:0] xi ; //All values are signed and hence perform signed operations such as Arith Shift
		reg signed [intrmdte_wdth-1:0] yi ;
		reg signed [intrmdte_wdth-1:0] zi;

		wire signed [intrmdte_wdth-1:0] xii ; //All values are signed and hence perform signed operations such as Arith Shift
		wire signed [intrmdte_wdth-1:0] yii ;
		wire signed [intrmdte_wdth-1:0] zii;
		
		assign zii=z[i];assign xii=x[i];assign yii=y[i];
		wire signed [output_width-1:0] xiii,yiii;
		assign xiii = xii[(intrmdte_wdth-1)-:output_width];
		assign yiii = yii[(intrmdte_wdth-1)-:output_width];

		reg signed [intrmdte_wdth-1:0] x_shr ;



		reg direction;

		reg [iters_per_stage_log2:0] lv; //loop_variable
		reg [intrmdte_wdth-1:0] z_delta;
		always @(*)
		begin
//Read Intermediate results from Previous Pipeline stage
				xi = x[i];
				yi = y[i];
				zi = z[i];

				for (lv=0;lv<iters_per_stage;lv=lv+1)
				begin
					x_shr = (xi >>> (j+lv)); 
					direction = yi[intrmdte_wdth-1];
					z_delta=(half >> (j+lv));

// CORDIC Iterations
					yi = direction ? yi + x_shr : yi - x_shr;
					zi = direction ? zi - (half >> (j+lv)) : zi + (half >> (j+lv));
				end
		end

//Registering Intermediate Results for Pipelining the flow
		always @(posedge clock)
		begin
				x[i+1] <= xi;
				y[i+1] <= yi;
				z[i+1] <= zi;
				strobe[i+1] <= strobe[i];
				sign[i+1]<=sign[i];
		end
	end
	endgenerate



//MSB bits are sent out on Div port
	wire signed [intrmdte_wdth-1:0] Div__,Div_;
	assign Div__ = z[No_of_cycles];
	assign Div_ = sign[No_of_cycles] ? -Div__:Div__; // Inverting if necessary(signs of ips are opposite)
	assign Div = Div_[(intrmdte_wdth-1)-:output_width];
	assign stb_out = strobe[No_of_cycles];


endmodule






