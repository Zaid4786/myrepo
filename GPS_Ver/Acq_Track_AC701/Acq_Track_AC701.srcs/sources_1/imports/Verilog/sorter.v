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
 //************************************************************************************/
 // Change history: Tuesday 24 January 2017 06:16:46 AM IST  - Version 1
 // Description : 'in' port gets streaming inputs at every posedge of clock
 // This module updates Top 2*N+1 values in the incoming stream and also
 // keeps track of count(no of samples compared) of these top samples
 // This module outputs Top two values in incoming stream which arrived at least
 // (+/-) N clock cycles apart
 ///////////////////////////////////////////////////////////////////////////////
module sorter#
(parameter width=23,
 parameter addr_width=11,
 parameter number=4, //2n+2
 parameter flag_2=1,
 parameter samples_per_ms=2000,
 parameter number_log2=2)
(input clk,
input reset,
input strobe,
input [width-1:0] in,
output wire [width-1:0] max1,
output reg  [width-1:0] max2,
output wire [addr_width-1:0] maxaddr);

reg [width-1:0] top [0:number];
reg [width-1:0] addr [0:number];

assign maxaddr = addr[number-1];
wire [width-1:0] top2,top3,top4;
wire [width-1:0] addr2,addr3,addr4;
assign top2=top[2];
assign top3=top[1];
assign top4=top[0];

assign addr2=addr[2];
assign addr3=addr[1];
assign addr4=addr[0];

//2N+1 comparators
wire [number:0] status_reg;
	genvar ii;
	generate
		for (ii=0; ii < number; ii=ii+1)
		begin:Comparator
		assign status_reg[ii]= (in> top[ii]) ;
		end
	endgenerate

	assign status_reg[number] = 1'b0;

	always @(posedge clk)
	begin
		top[number]<=0;
		addr[number]<=0;
	end

//No of samples compared from last reset 
reg [addr_width -1:0] addr_in;
	always @(posedge clk)
		if(reset)
		addr_in<=0;
		else if (strobe)
		addr_in<=addr_in+1;
	
//2N+1 registers storing top values in incoming stream
	genvar i;
	generate
		for (i = 0; i < number ; i = i + 1)
		begin:Top_regs
		
			wire [1:0] status;
			assign status = {status_reg[i+1],status_reg[i]};
	
			always@(posedge clk)
			begin
				if(reset)
				begin
					top[i]<=1;
					addr[i]<=0;
				end else if (strobe)
				begin
					case(status)
						2'b00,2'b10:
						begin
						top[i]<=top[i];
						addr[i]<=addr[i];
						end
						2'b01:
						begin
						top[i]<=in;
						addr[i]<=addr_in;
						end
						2'b11:
						begin
						top[i]<=top[i+1];
						addr[i]<=addr[i+1];
						end
					endcase
				end
			end
		end
	endgenerate

wire [addr_width-1:0] upper_bound,lower_bound;
	assign upper_bound=((addr[number-1]+flag_2)>samples_per_ms) ? addr[number-1]+flag_2-samples_per_ms :addr[number-1]+flag_2;
	assign lower_bound=((addr[number-1]<flag_2)) ? addr[number-1]-flag_2+samples_per_ms :addr[number-1]-flag_2;
	assign ubgtlb=(upper_bound>lower_bound);

assign max1=top[number-1];
reg [number_log2-1:0] regid;
// Max2 satisfying criteria "Arrived atleast N ClockCycles before or after Max1 arrived"
always @(*) begin 
	max2=top[0];
	for ( regid=0; regid<number-1; regid = regid+1 ) begin
	$display("%d id",regid);
		if ( (!(addr[regid]<=upper_bound && addr[regid]>=lower_bound) && ubgtlb)
		     || (addr[regid]<lower_bound && addr[regid]>upper_bound && ~ubgtlb))
			max2 = top[regid];
	end
end

endmodule


