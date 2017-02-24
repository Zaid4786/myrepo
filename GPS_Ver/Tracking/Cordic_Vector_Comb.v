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
 // FILE NAME      : Cordic_Vector_Comb.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : DAMARLA BALAJI
 // AUTHOR’S EMAIL : ee15m033@ee.iitm.ac.in
 // -----------------------------------------------------------------------------
 // ----------------------------------------------------------------------------- 
 // This is a Modified code of cordic.v
 //*************************************************************************************/
 //  Title: Cordic.v
 //  Author:Claire Barnes
 //  Availability:https://github.com/cebarnes/cordic
 //*************************************************************************************/ 
 // Modifications:
 //1.Vectors in 3rd and 2nd quadrants are pre rotated to 4th and 1st quadrants 
 //  respectively without affecting result since Magnitude is invariant of 
 //  Phase
 //2.Rotations aim at making 'y' zero instead of angle,so control bit is 
 //  sign of 'y'.Angle input is Trimmed off. Angle register keeps updating(combinatorially) 
 //  and eventually returns phase of input
 //3.Addition of log2(width) guard bits as suggested in
 //  J. S. Walther, “A unified algorithm for elementary functions,” in
 //  Proceedings 38th Spring Joint Computer Conference, Atlantic City,
 //  New Jersey, 1971, pp. 379–385
 //4.Addition of signal strobe,max_rst which propagates through pipes along with 
 //  Inputs and this serves as strobe for outputs
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns sqrt(x^2+y^2)
 ///////////////////////////////////////////////////////////////////////////////
 
module CORDIC_VECT_COMB#
	(parameter width = 12,
	parameter frac_guard = 4,
	parameter overflow_guard = 4)
	(clock,reset,x_in,y_in,mag_out,phase);


	localparam scaling = 1.0/2**(frac_guard);
	localparam intrmdte_wdth = overflow_guard+width+frac_guard;
	// Inputs
	input clock,reset;

	input signed [width-1:0] x_in,y_in; 

	output signed  [width+overflow_guard-1:0] mag_out;
	output signed [31:0] phase;

	wire signed [31:0] atan_table [0:30];
	// Generate table of atan values
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


	wire signed [intrmdte_wdth-1:0] x_start,y_start;
	assign x_start = { {(overflow_guard){x_in[width-1]}},x_in,{(frac_guard){1'b0}} };
	assign y_start = { {(overflow_guard){y_in[width-1]}},y_in,{(frac_guard){1'b0}} };

	wire [1:0] quadrant;
	assign quadrant = {y_in[width-1],x_in[width-1]};

	wire signed [intrmdte_wdth-1:0] x [0:width-1];
	wire signed [intrmdte_wdth-1:0] y [0:width-1];
	wire signed [31:0] z [0:width-1];

	assign x[0] = (quadrant==2'b00 || quadrant==2'b10) ? x_start : -x_start;
//								(quadrant==2'b01) ? y_start :-y_start;
	assign y[0] = (quadrant==2'b00 || quadrant==2'b10) ? y_start : -y_start;
//								(quadrant==2'b01) ? -x_start :x_start;
	assign z[0] = 0;
//	assign z[0] = (quadrant==2'b00 || quadrant==2'b10) ? 0 : 
//					(quadrant==2'b01)  ? {2'b01,{30{1'b0}}} : {2'b11,{30{1'b0}}} ;


// run through iterations
	genvar i;
	generate
	for (i=0; i < (width-1); i=i+1)
	begin: STAGES
		wire signed [intrmdte_wdth-1:0] x_shr, y_shr;
		wire [31:0] zi;
		assign zi=z[i];
		assign x_shr = x[i] >>> i; // signed shift right
		assign y_shr = y[i] >>> i;
		assign y_sign = y[i][intrmdte_wdth-1];

		// add (or) subtract shifted data
		assign x[i+1] = y_sign ? x[i] - y_shr : x[i] + y_shr;
		assign y[i+1] = y_sign ? y[i] + x_shr : y[i] - x_shr;
		assign z[i+1] = y_sign ? z[i] - atan_table[i] : z[i] + atan_table[i];
	end
	endgenerate

	// assign output
	wire signed [intrmdte_wdth-1:0] mag;
	assign mag = x[width-1];
	assign mag_out=mag[width+overflow_guard-1:frac_guard];
	assign phase = z[width-1];



endmodule


