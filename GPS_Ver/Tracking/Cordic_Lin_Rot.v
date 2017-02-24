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
 // FILE NAME      : Cordic_Lin_Rot.v
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
 //4.PreRotation of Inputs - Not Required Mul has range (-1,1)
 //5.Linear Mode - Algorithm for iterations changed
 //6.Inputs are not Buffered thereby saving latency of One clockcycle
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns (x*y)
 // Scaling-
 // x_out,y_out: 1. The numbers accepted have to be in range (-1,1). So ips x,y are scaled down
 //                 with 2^-(ip_width-1),And fixed point position is one bit right to MSB.The result also has
 //                 fixed point position in same place(shift adds wont affect). Result comes with scaling 2^(-(op_width-1))
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
module CORDIC_LIN_ROT#
	(parameter width = 12,
	parameter iter_num = 12,
	parameter output_width=12,
	parameter No_of_cycles = 3,//n is factor of (iter-1)
	parameter frac_guard = 4,
	parameter Piggyback_Cntrl_wdth =3)

	(clock,reset,x_in,z_in,Mul,stb_in,stb_out);

	parameter iters_per_stage = (iter_num)/No_of_cycles;
	parameter intrmdte_wdth = iter_num+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	//**********Inputs*************//
	input clock,reset;
	//Inputs
	input signed [width-1:0] x_in,z_in; 
	//Piggyback Control Signals
	input [Piggyback_Cntrl_wdth-1:0] stb_in;

	//********* Outputs************//
	output signed  [output_width-1:0] Mul; 
	output [Piggyback_Cntrl_wdth-1:0] stb_out;


//******************************************************************//
//Padding and extension of inputs to make intermediate wordlength   //
//capable of avoiding rounding errors till precison of iter_num bits//
//******************************************************************//
	wire signed [intrmdte_wdth-1:0] x_start,z_start;
	assign x_start = {x_in[width-1],x_in,{(intrmdte_wdth-width-1){1'b0}}}; //Arithmetic Shift Right since ITERATIONS NEED BE STARTED FROM 1
	assign z_start = {z_in,{(intrmdte_wdth-width){1'b0}}};

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

//Introduction of input values into CORDIC pipe //
`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin 
	if(reset) 
	begin
		x[0] <= 0;
		y[0] <= 0;
		z[0] <= 0;
		strobe[0] <= 0;
	end else
	begin
		x[0] <= x_start;
		y[0] <= 0;
		z[0] <= z_start;
		strobe[0]<= stb_in;
	end
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

		reg signed [intrmdte_wdth-1:0] x_shr ;

		reg direction;

		reg [iters_per_stage_log2:0] lv; //loop_variable
		always @(*)
		begin
			if(!reset) 
			begin
//Read Intermediate results from Previous Pipeline stage
				xi = x[i];
				yi = y[i];
				zi = z[i];

				for (lv=0;lv<iters_per_stage;lv=lv+1)
				begin
					x_shr = (xi >>> (j+lv)); 
					direction = ~zi[intrmdte_wdth-1];

// CORDIC Iterations
					yi = direction ? yi + x_shr : yi - x_shr;
					zi = direction ? zi - (half >> (j+lv)) : zi + (half >> (j+lv));
				end

			end
		end

//Registering Intermediate Results for Pipelining the flow
		always @(posedge clock)
		begin
			if(!reset) 
			begin
				x[i+1] <= xi;
				y[i+1] <= yi;
				z[i+1] <= zi;
				strobe[i+1] <= strobe[i];
			end else begin
				x[i+1] <= x[i];
				y[i+1] <= y[i];
				z[i+1] <= z[i];
				strobe[i+1] <= 0;
			end
		end
	end
	endgenerate



//MSB bits are sent out on Div port
	wire signed [intrmdte_wdth-1:0] Mul_;
	assign Mul_ = y[No_of_cycles];
	assign Mul = Mul_[(intrmdte_wdth-1)-:output_width];

	assign stb_out = strobe[No_of_cycles];
endmodule






