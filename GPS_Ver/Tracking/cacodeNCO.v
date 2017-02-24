/*
Copyright (c) 2013, IIT Madras
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*  Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*  Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*  Neither the name of IIT Madras  nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
 // -----------------------------------------------------------------------------
 // FILE NAME      : Cordic_Circ_Vect.v
 // DEPARTMENT     : RISE LAB
 // AUTHOR         : DAMARLA BALAJI,SYED M MD ZAID
 // AUTHOR’S EMAIL : ee15m033@ee.iitm.ac.in,ee15m039@ee.iitm.ac.in
 // ----------------------------------------------------------------------------- 

 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : It generates PRN CODE 
 // 	Interface
 // 1. PRN ID : of satellite for which PRN code is needed
 // 2. phase_per_sample : Fraction of Code Chip each sample carries (fc/fs)
 // 3. O_EC,O_PC,O_LC : Prompt Early and Late code outs
 // 4. block_change : Out - Indicates that code Block of 1023 chips are completed
 
//https://natronics.github.io/blag/2014/gps-prn/
module 
cacodeNCO#
(parameter phase_per_sample_width = 10,
 parameter code_length_log2 = 10,
 parameter code_length =1023)
(clk,
 reset,
 strobe,
 PRN,
 phase_per_sample,
 O_EC,O_PC,O_LC,
 block_change);
	localparam scaling_cp = 1.0/2**(phase_per_sample_width);


input clk,reset;
output O_EC,O_PC,O_LC;
output block_change;

input [4:0] PRN;
input [phase_per_sample_width-1:0] phase_per_sample;
input strobe;

reg [code_length_log2-1:0] G1_L,G1_E,G1_P;
reg [code_length_log2-1:0] G2_L,G2_E,G2_P;
integer f2;
initial
	f2 = $fopen("indices.txt","w");
always @(posedge clk)
if(strobe)
		$fwrite(f2,"%f\t%d\n",(cmltve_phse_frac*scaling_cp)+cmltve_phse_int,cmltve_phse_frac);

	always @(posedge clk)
	begin
		if(reset)
		begin
// At this time Code Accumulated Phase is 0.000               //
// Late (-0.5) takes 1023 chip and Early (0.5) takes 1st chip //
			G1_E<=10'b0111111111; //Gives 2nd chip of code
			G1_L<=10'b1111111110; //Gives 1023th chip of code
			G1_P<=10'b1111111111; //Gives 1st chip
	
			G2_E<=10'b0111111111; //Gives 2nd chip of code
			G2_L<=10'b1111111110; //Gives 1023th chip of code
			G2_P<=10'b1111111111; //Gives 1st chip
		end else if(shift && strobe)
		begin
			G1_E<={G1_E[7]^G1_E[0],G1_E[9:1]};
			G1_P<=G1_E;
			G1_L<=G1_P;
	
			G2_E<={G2_E[8]^G2_E[7]^G2_E[4]^G2_E[2]^G2_E[1]^G2_E[0],G2_E[9:1]};
			G2_P<=G2_E;
			G2_L<=G2_P;
		end
	end
	
reg [phase_per_sample_width-1:0] cmltve_phse_frac;
reg [code_length_log2-1:0] cmltve_phse_int;

	always @(posedge clk)
	if(reset)
		cmltve_phse_frac<=0;
	else if(strobe)
		cmltve_phse_frac<=cmltve_phse_frac+phase_per_sample;

wire [phase_per_sample_width-1:0] neg_wire;
assign neg_wire = ~cmltve_phse_frac;
assign shift = ((neg_wire)<=(phase_per_sample-1));
assign block_change = (cmltve_phse_int==(code_length-1)) && shift;
	always @(posedge clk)
	if(reset || block_change)
		cmltve_phse_int<=0;
	else if(shift && strobe)
		cmltve_phse_int<=cmltve_phse_int+1;


assign O_E= (PRN==2) ? (G1_E[0]^G2_E[3]^G2_E[7]) :
			(PRN==5) ? (G1_E[0]^G2_E[1]^G2_E[9]) :
			(PRN==13) ? (G1_E[0]^G2_E[3]^G2_E[4]) :
						(G1_E[0]^G2_E[1]^G2_E[2]) ;

assign O_P= (PRN==2) ? (G1_P[0]^G2_P[3]^G2_P[7]) :
			(PRN==5) ? (G1_P[0]^G2_P[1]^G2_P[9]) :
			(PRN==13) ? (G1_P[0]^G2_P[3]^G2_P[4]) :
						(G1_P[0]^G2_P[1]^G2_P[2]) ;

assign O_L= (PRN==2) ? (G1_L[0]^G2_L[3]^G2_L[7]) :
			(PRN==5) ? (G1_L[0]^G2_L[1]^G2_L[9]) :
			(PRN==13) ? (G1_L[0]^G2_L[3]^G2_L[4]) :
						(G1_L[0]^G2_L[1]^G2_L[2]) ;

assign O_EC=cmltve_phse_frac[phase_per_sample_width-1] ? O_E : O_P ;
assign O_LC=cmltve_phse_frac[phase_per_sample_width-1] ? O_P : O_L ;
assign O_PC=O_P;

endmodule
