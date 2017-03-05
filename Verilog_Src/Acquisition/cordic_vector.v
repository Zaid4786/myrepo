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
 //1.Vector in 3rd and 2nd quadrants are pre rotated to 4th and 1st quadrants 
 //  respectively without affecting result since Magnitude is invariant of 
 //  Phase
 //2.Rotations aim at making 'y' zero instead of angle,so control bit is 
 //  sign of 'y'.Angle input is Trimmed off
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
 
module CORDIC_VECT#
	(parameter width = 12,
	parameter frac_guard = 4,
	parameter overflow_guard = 4,
	parameter samples_per_ms_log2 = 9)
	(clock,x_in,y_in,stb_in,mag_out,strbe,maxreset_in,maxreset);


	localparam scaling = 1.0/2**(frac_guard);
	localparam intrmdte_wdth = overflow_guard+width+frac_guard;
	// Inputs
	input clock;
	input maxreset_in;
	input signed [width-1:0] x_in,y_in; 
	input stb_in;
	
	output signed  [width-1:0] mag_out;
	output strbe,maxreset;


	
	wire signed [intrmdte_wdth-1:0] x_start,y_start;




	// Outputs
	wire signed [intrmdte_wdth-1:0] mag;
	wire [1:0] quadrant;
	assign quadrant = {y_in[width-1],x_in[width-1]};

	assign x_start = { {(overflow_guard){x_in[width-1]}},x_in,{(frac_guard){1'b0}} };
	assign y_start = { {(overflow_guard){y_in[width-1]}},y_in,{(frac_guard){1'b0}} };



	// Generate table of atan values


	reg signed [intrmdte_wdth-1:0] x [0:width-1];
	reg signed [intrmdte_wdth-1:0] y [0:width-1];

	reg signed [31:0] z [0:width-1];

	reg strobe [0:width-1];
	reg max_rst [0:width-1];











	always @(posedge clock)
	begin
				strobe[0]<= stb_in;
				max_rst[0]<=maxreset_in;
	end
	
	
	always @(posedge clock)
	begin // make sure the rotation angle is in the -pi/2 to pi/2 range
			case(quadrant)
			2'b00,
			2'b10:
			begin
				x[0] <= x_start;
				y[0] <= y_start;
			end
			2'b01:
			begin
				x[0] <= y_start;
				y[0] <= -x_start;
			end
			2'b11:
			begin
				x[0] <= -y_start;
				y[0] <= x_start;
			end
			endcase

	end
// run through iterations
	genvar i;

	generate
	for (i=0; i < (width-1); i=i+1)
	begin: xyz
		wire z_sign;
		wire signed [intrmdte_wdth-1:0] x_shr, y_shr;
		wire [width-1:0] Xcheck,Ycheck;
		assign Xcheck = x[i][width+frac_guard-1:frac_guard];
		assign Ycheck = y[i][width+frac_guard-1:frac_guard];
		assign x_shr = x[i] >>> i; // signed shift right
		assign y_shr = y[i] >>> i;
	//the sign of the current rotation angle
		assign y_sign = y[i][intrmdte_wdth-1];

		always @(posedge clock)
		begin

		// add/subtract shifted data
//		$display("CLKID:%d Block ID: %d X:%f Y:%f DIR : %b",CLKID,i,$signed(x[i])*(scaling),$signed(y[i])*(scaling),z_sign);
			x[i+1] <= y_sign ? x[i] - y_shr : x[i] + y_shr;
			y[i+1] <= y_sign ? y[i] + x_shr : y[i] - x_shr;
			strobe[i+1] <= strobe[i];
			max_rst[i+1] <= max_rst[i];
		end
	end
	endgenerate 
	// assign output

	assign mag = x[width-1];
	assign strbe =strobe[width-1];
	assign maxreset=max_rst[width-1];
	assign mag_out=mag[width+frac_guard-1:frac_guard];



endmodule


