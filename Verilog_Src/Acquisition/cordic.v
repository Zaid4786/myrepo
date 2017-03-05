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
 // FILE NAME      : Acquire.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : SYED M MD ZAID
 // AUTHOR’S EMAIL : ee15m039@ee.iitm.ac.in
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
 //2.Addition of signal strobe which propagates through pipes along with 
 //  Inputs and this serves as strobe for outputs
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns (x,y)*exp(j*theta)
 ///////////////////////////////////////////////////////////////////////////////

module CORDIC#
	(parameter width = 12,
	parameter frac_guard = 4,
	parameter overflow_guard = 4,
	parameter Piggyback_control_width=3)

	(clock,x_out, y_out, x_in, y_in, angle,stb_in,strbe);


	localparam scaling = 1.0/2**(frac_guard);
	localparam intrmdte_wdth = overflow_guard+width+frac_guard;
	// Inputs
	input clock;
	input signed [width-1:0] x_in,y_in; 
	wire signed [intrmdte_wdth-1:0] x_start,y_start;
	input signed [31:0] angle;
	input [Piggyback_control_width-1:0] stb_in;


	// Outputs
	wire signed [intrmdte_wdth-1:0] sine,cosine;
	output signed  [width-1:0] x_out, y_out;
	output [Piggyback_control_width-1:0] strbe;

	assign x_start = { {(overflow_guard){x_in[width-1]}},x_in,{(frac_guard){1'b0}} };
	assign y_start = { {(overflow_guard){y_in[width-1]}},y_in,{(frac_guard){1'b0}} };

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

	reg signed [intrmdte_wdth-1:0] x [0:width-1];
	reg signed [intrmdte_wdth-1:0] y [0:width-1];



	reg signed    [31:0] z [0:width-1];
	reg [Piggyback_control_width:0] strobe [0:width-1];



	

	// make sure rotation angle is in -pi/2 to pi/2 range
	wire [1:0] quadrant;
	assign quadrant = angle[31:30];



	always @(posedge clock)
	begin // make sure the rotation angle is in the -pi/2 to pi/2 range
		case(quadrant)
		2'b00,
		2'b11: // no changes needed for these quadrants
		begin
				x[0] <= x_start;
				y[0] <= y_start;
				z[0] <= angle;
				strobe[0]<= stb_in;
		end

		2'b01:
		begin
				x[0] <= -y_start;
				y[0] <= x_start;
				z[0] <= {2'b00,angle[29:0]}; // subtract pi/2 for angle in this quadrant
				strobe[0]<= stb_in;
		end

		2'b10:
		begin
				x[0] <= y_start;
				y[0] <= -x_start;
				z[0] <= {2'b11,angle[29:0]}; // add pi/2 to angles in this quadrant
				strobe[0]<= stb_in;
		end
	    endcase
	end


  // run through iterations
	genvar i;

	generate
	for (i=0; i < (width-1); i=i+1)
	begin: xyz
		wire z_sign;
		wire signed [intrmdte_wdth-1:0] x_shr, y_shr,xi,yi;
		wire signed [31:0] ang;
		assign ang = z[i];

		assign xi = x[i];
		assign yi = x[i];
		assign x_shr = x[i] >>> i; // signed shift right
		assign y_shr = y[i] >>> i;
		assign wr_strobe = strobe[i];
	//the sign of the current rotation angle
		assign z_sign = z[i][31];

		always @(posedge clock)
		begin

		// add/subtract shifted data
//		$display("CLKID:%d Block ID: %d X:%f Y:%f DIR : %b",CLKID,i,$signed(x[i])*(scaling),$signed(y[i])*(scaling),z_sign);
			x[i+1] <= z_sign ? x[i] + y_shr : x[i] - y_shr;
			y[i+1] <= z_sign ? y[i] - x_shr : y[i] + x_shr;
			z[i+1] <= z_sign ? z[i] + atan_table[i] : z[i] - atan_table[i];
			strobe[i+1] <= strobe[i];
		end
	end
	endgenerate

	// assign output
	assign cosine = x[width-1];
	assign sine = y[width-1];
	assign strbe =strobe[width-1];
	assign x_out=cosine[width+frac_guard-1:frac_guard];
	assign y_out=sine[width+frac_guard-1:frac_guard];


endmodule





