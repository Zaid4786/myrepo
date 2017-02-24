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
 // FILE NAME      : Cordic_Circ_Vect.v
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
 //4.PreRotation of Inputs - Inputs in III II Quadrants are rotated to I IV by 180 degrees
 //5.Vectoring Mode - Direction for Rotation is sign bit of y
 //6.Inputs are not Buffered thereby saving latency of One clockcycle
 //************************************************************************************/
 // Change history: Monday 06 February 2017 05:55:49 PM IST 
 // Description : Given x,y it returns sqrt(x^2+y^2) and atan(y/x)
 // Scaling-
 // Magnitude: 1.Due to padding of 'iter_num-width' number of zeros : 2^(output_width-(width+2))
 //            2.CORDIC circular mode scaling : ~1.6
 // Angle    : Angle is sum of pre computed angles from table,so same scaling of (pi*2^(-31)) applies
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
module CORDIC_CIRC_VECT#
	(parameter width = 12,
	parameter iter_num = 12,
	parameter output_width=12,
	parameter No_of_cycles = 3,//n is factor of (iter-1)
	parameter frac_guard = 4,
	parameter overflow_guard = 4,
	parameter Piggyback_Cntrl_wdth =3)

	(clock,reset,x_in,y_in,Mag_Out,Phase,stb_in,stb_out);

	parameter iters_per_stage = (iter_num)/No_of_cycles;
	parameter intrmdte_wdth = overflow_guard+iter_num+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	// Inputs
	input clock,reset;
	//Coordinates
	input signed [width-1:0] x_in,y_in; 

	//Piggyback Control Signals
	input [Piggyback_Cntrl_wdth-1:0] stb_in;

	//********* Outputs************//
	output signed  [output_width-1:0] Mag_Out;//MSB bits account for CORDIC scaling(~1.6*sqrt(2)) 
	output signed [31:0] Phase;
	output [Piggyback_Cntrl_wdth-1:0] stb_out;


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
	reg signed [31:0] z [0:No_of_cycles];
//Registers Passing Piggyback  control signals through PIPE //
	reg [Piggyback_Cntrl_wdth-1:0] strobe [0:No_of_cycles];

//******************************************************************//
//PRE-ROTATION : Make sure rotation angle is in -pi/2 to pi/2 range //
//Pre rotate Vectors in II III Quadrants by 180 degrees into I IV Q //
//Introduction of Pre rotated values into the CORDIC Pipe           //
//******************************************************************//
	wire [1:0] quadrant;
	assign quadrant = {y_in[width-1],x_in[width-1]};
`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin // make sure the rotation angle is in the -pi/2 to pi/2 range
		x[0] <= (quadrant==2'b00 || quadrant==2'b10) ? x_start : -x_start;
		y[0] <= (quadrant==2'b00 || quadrant==2'b10) ? y_start: -y_start;
		z[0] <= 0;
	end


`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	if(reset) 
	begin
		strobe[0] <= 0;
	end else
	begin
		strobe[0]<= stb_in;
	end
///////////////////////////////////////////////////////////////////////
  // run through iterations
	genvar i;
	generate
	for (i=0; i < No_of_cycles; i=i+1) //Block below is replicated 'No of stages' times
	begin: STAGES
		localparam integer j=i*iters_per_stage;

		reg signed [intrmdte_wdth-1:0] xi ; //All values are signed and hence perform signed operations such as Arith Shift
		reg signed [intrmdte_wdth-1:0] yi ;
		reg signed [31:0] zi;


		reg signed [intrmdte_wdth-1:0] x_shr ;
		reg signed [intrmdte_wdth-1:0] y_shr ;

		reg [iters_per_stage_log2:0] lv; //loop_variable
		reg y_sign;
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
					y_shr = (yi >>> (j+lv));
					y_sign = yi[intrmdte_wdth-1];

// CORDIC Iterations
					xi = y_sign ? xi - y_shr : xi + y_shr;
					yi = y_sign ? yi + x_shr : yi - x_shr;
					zi = y_sign ? (zi - atan_table[j+lv]) : (zi + atan_table[j+lv]);
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
//MSB bits are sent out on Mag port
	wire signed [intrmdte_wdth-1:0] mag;
	assign mag = x[No_of_cycles];
	assign Mag_Out=mag[(intrmdte_wdth-1)-:output_width];

	assign Phase = z[No_of_cycles];

	assign stb_out =strobe[No_of_cycles];


endmodule






