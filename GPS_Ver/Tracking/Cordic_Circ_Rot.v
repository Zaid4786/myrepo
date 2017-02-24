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
 // FILE NAME      : Cordic_Circ_Rot.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : DAMARLA BALAJI,SYED M MD ZAID
 // AUTHOR’S EMAIL : ee15m033@ee.iitm.ac.in,ee15m039@ee.iitm.ac.in
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
 //2.Addition of Control signals which propagates through pipes along with 
 //  Inputs and this serves as strobe for outputs
 //3.Parameterization of 
 //  1.No of CORDIC Iterations
 //  2.Latency in CYCLES,ie.,No of Pipeline stages
 //4.Inputs are not Buffered thereby saving latency of One clockcycle
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : Given x,y it returns (x,y)*exp(j*theta)
 // Scaling-
 // x_out,y_out: 1.Due to padding of 'iter_num-width' number of zeros : 2^(output_width-(width+2))
 //              2.CORDIC circular mode scaling : ~1.6 (Product over sqrt(1+2^(-2j)) from 0 to iter_num-1)
 // 
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
module CORDIC_CIRC_ROT#
	(parameter width = 12,
	parameter iter_num = 12,
	parameter output_width=12,
	parameter No_of_cycles = 3,
	parameter frac_guard = 4,
	parameter overflow_guard = 4)

	(clock,reset,code,code_out, x_out, y_out, x_in, y_in, angle,stb_in,strbe);

	parameter iters_per_stage = (iter_num)/No_of_cycles;
	parameter intrmdte_wdth = overflow_guard+iter_num+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	// Inputs
	input clock,reset;
	//Coordinates
	input signed [width-1:0] x_in,y_in; 
	input signed [31:0] angle;
	//Control Piggyback Signals
	input stb_in;
	input [2:0] code;
	//Outputs
	output signed  [output_width-1:0] x_out, y_out; 
	output strbe;
	output [2:0] code_out;


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
	reg signed    [31:0] z [0:No_of_cycles];
//Register Passing control signals through PIPE //
	reg [2:0] code_pipe [0:No_of_cycles];
	reg strobe [0:No_of_cycles];

//******************************************************************//
//PRE-ROTATION : Make sure rotation angle is in -pi/2 to pi/2 range //
//Introduction of Pre rotated values into the CORDIC Pipe           //
//******************************************************************//
	wire [1:0] quadrant;
	assign quadrant = angle[31:30];
`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	begin // make sure the rotation angle is in the -pi/2 to pi/2 range
		case(quadrant)
		2'b00,
		2'b11: // no changes needed for these quadrants
		begin
			if(!reset) begin
				x[0] <= x_start;
				y[0] <= y_start;
				z[0] <= angle;
			end else begin
				x[0] <= 0;
				y[0] <= 0;
				z[0] <= 0;
			end
		end
		2'b01:// subtract pi/2 for angle in this quadrant
		begin
			if(!reset) begin
				x[0] <= -y_start;
				y[0] <= x_start;
				z[0] <= {2'b00,angle[29:0]}; 
			end else begin
				x[0] <= 0;
				y[0] <= 0;
				z[0] <= 0;
			end
		end
		2'b10:// add pi/2 to angles in this quadrant
		begin
			if(!reset) begin
				x[0] <= y_start;
				y[0] <= -x_start;
				z[0] <= {2'b11,angle[29:0]}; 
			end else begin
				x[0] <= 0;
				y[0] <= 0;
				z[0] <= 0;
			end
		end
	endcase
	end


`ifdef BUFFER_INPS //Option to buffer ips costing an extra Cycle of Latency
	always @(posedge clock)
`else
	always @(*)
`endif
	if(reset) 
	begin
		strobe[0] <= 0;
		code_pipe[0]<=0;
	end else
	begin
		code_pipe[0]<=code;
		strobe[0]<= stb_in;
	end

  // run through iterations
	genvar i;
	generate
	for (i=0; i < No_of_cycles; i=i+1) //Block below is replicated 'No of stages' times
	begin: STAGES
		localparam integer j=i*iters_per_stage;
//All values are signed and hence perform signed operations such as Arith Shift
		reg signed [intrmdte_wdth-1:0] xi ; 
		reg signed [intrmdte_wdth-1:0] yi ;
		reg [31:0] zi;
		reg z_sign;

		reg signed [intrmdte_wdth-1:0] x_shr ;
		reg signed [intrmdte_wdth-1:0] y_shr ;

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
					x_shr = xi >>> (j+lv); 
					y_shr = yi >>> (j+lv);
					z_sign= zi[31];
// CORDIC Iterations
					xi = z_sign ? xi + y_shr : xi - y_shr;
					yi = z_sign ? yi - x_shr : yi + x_shr;
					zi = z_sign ? zi + atan_table[j+lv] : zi - atan_table[j+lv];
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
				code_pipe[i+1] <= code_pipe[i];

			end else begin
				x[i+1] <= x[i];
				y[i+1] <= y[i];
				z[i+1] <= z[i];
				code_pipe[i+1] <= 0;
				strobe[i+1] <= 0;

			end
		end
	end
	endgenerate
//MSB bits are sent out
	wire signed [intrmdte_wdth-1:0] sine,cosine;
	assign cosine = x[No_of_cycles];
	assign sine = y[No_of_cycles];

	assign x_out=cosine[(iter_num+frac_guard+overflow_guard-1)-:output_width];
	assign y_out=sine[(iter_num+frac_guard+overflow_guard-1)-:output_width];

	assign code_out = code_pipe[No_of_cycles];
	assign strbe =strobe[No_of_cycles];


endmodule





