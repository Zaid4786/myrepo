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
//`define BUFFER_INPS
module CORDIC_VECT#
	(parameter width = 12,
	parameter output_width=12,
	parameter z_width=32,
	parameter No_of_cycles = 3,//n is factor of (iter-1)
	parameter frac_guard = 4,
	parameter overflow_guard = 4)

	(clock,reset,DIV,LIN_CIRC,x_in,y_in,Mag_Out,Mul_Rslt,Ang_Div,stb_in,stb_out);

	parameter iters_per_stage = (width)/No_of_cycles;
	parameter intrmdte_wdth = overflow_guard+width+frac_guard;
	parameter iters_per_stage_log2 = $clog2(iters_per_stage);
	//**********Inputs*************//
	input clock,reset;
	//Coordinates
	input signed [width-1:0] x_in,y_in; 
	//Select line
	input DIV,LIN_CIRC;
	//Piggyback Control Signals
	input [1:0] stb_in;

	//********* Outputs************//
	output signed  [output_width-1:0] Mag_Out;//MSB bits account for scaling(~1.6*sqrt(2)) 
	output signed  [output_width-1:0] Mul_Rslt;
	output signed [z_width-1:0] Ang_Div;
	output [1:0] stb_out;


//******************************************************************//
//Padding and extension of inputs to make intermediate wordlength   //
//capable of avoiding rounding errors till precison of iter_num bits//
//******************************************************************//
	wire signed [intrmdte_wdth-1:0] x_start,x_start_neg,y_start,y_start_neg;
	assign x_start = (~LIN_CIRC) ? { {(overflow_guard){x_in[width-1]}},x_in,{(frac_guard){1'b0}} } :({x_in[width-1],x_in,{(intrmdte_wdth-width-1){1'b0}}});
	assign y_start = (~LIN_CIRC) ? { {(overflow_guard){y_in[width-1]}},y_in,{(frac_guard){1'b0}} } :{y_in,{(intrmdte_wdth-width){1'b0}}};

	assign x_start_neg=-x_start;
	assign y_start_neg=-y_start;

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
	reg signed [z_width-1:0] z [0:No_of_cycles];
//Register Passing Piggyback  control signals through PIPE //
	reg [1:0] strobe [0:No_of_cycles];

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
		x[0] <= (quadrant==2'b00 || quadrant==2'b10) ? x_start : x_start_neg;
		y[0] <= (~DIV && LIN_CIRC) ? 0 : ((quadrant==2'b00 || quadrant==2'b10) ? y_start: (y_start_neg));
// In case of Multiplication  assignment of y to z starts from MSB
		z[0] <= (~DIV && LIN_CIRC) ? ((quadrant==2'b00 || quadrant==2'b10) ? y_start[(intrmdte_wdth-1)-:z_width] : (y_start_neg[(intrmdte_wdth-1)-:z_width])) : 0;
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

  // run through iterations
	genvar i;
	generate
	for (i=0; i < No_of_cycles; i=i+1) //Block below is replicated 'No of stages' times
	begin: STAGES
		localparam integer j=i*iters_per_stage;

		reg signed [intrmdte_wdth-1:0] xi ; //All values are signed and hence perform signed operations such as Arith Shift
		reg signed [intrmdte_wdth-1:0] yi ;
		reg signed [z_width-1:0] zi;

		wire signed [intrmdte_wdth-1:0] xii ; //All values are signed and hence perform signed operations such as Arith Shift
		wire signed [intrmdte_wdth-1:0] yii ;
		wire signed [z_width-1:0] zii;
		
		assign zii=z[i];assign xii=x[i];assign yii=y[i];
		wire signed [output_width-1:0] xiii,yiii;
		assign xiii = xii[(intrmdte_wdth-1)-:output_width];
		assign yiii = yii[(intrmdte_wdth-1)-:output_width];

		reg signed [intrmdte_wdth-1:0] x_shr ;
		reg signed [intrmdte_wdth-1:0] y_shr ;
		reg signed [z_width-1:0] z_delta;
		reg signed [31:0] AngTable_wire;

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
					y_shr = LIN_CIRC ? 0 : (yi >>> (j+lv));
					AngTable_wire = atan_table[j+lv];
					z_delta = (~DIV && LIN_CIRC) ? (({{2'b01},{(z_width-2){1'b0}}}) >>> (j+lv)) : 
										(DIV && LIN_CIRC) ?  (({{1'b1},{(z_width-1){1'b0}}}) >>> (j+lv)) :AngTable_wire[31-:z_width];
					direction=(~DIV && LIN_CIRC) ? (~zi[z_width-1]):yi[intrmdte_wdth-1];
// CORDIC Iterations
					xi = direction ? xi - y_shr : xi + y_shr;
					yi = direction ? yi + x_shr : yi - x_shr;
					zi = direction ? zi - z_delta : zi + z_delta;
//					if(strobe[i]!=0)
//					$display("Xi-%d Yi-%d Zi-%d direction-%d lv-%d i-%d",xi,yi,zi,direction,lv,i);
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
			end
		end
	end
	endgenerate


	wire signed [intrmdte_wdth-1:0] mag;
	// assign output
	assign mag = x[No_of_cycles];
	assign Mag_Out=mag[(intrmdte_wdth-1)-:output_width];

	wire signed [intrmdte_wdth-1:0] mul;
	// assign output
	assign mul = y[No_of_cycles];
	assign Mul_Rslt=mul[(intrmdte_wdth-1)-:output_width];

	wire signed [z_width-1:0] phase_div;
	assign phase_div = z[No_of_cycles];
	assign Ang_Div = phase_div[(z_width-1)-:z_width];
	assign stb_out =strobe[No_of_cycles];


endmodule






