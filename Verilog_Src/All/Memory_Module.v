`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2017 03:10:53
// Design Name: 
// Module Name: Memory_Module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define SIM_N
module Memory_Module(
input clk,
output [11:0] Xsamples1,
output [11:0] Xsamples2,
output [11:0] Xsamples3,
output [11:0] Xsamples4,

output [11:0] Ysamples1,
output [11:0] Ysamples2,
output [11:0] Ysamples3,
output [11:0] Ysamples4,

input [14:0] rd_ptr1,
input [14:0] rd_ptr2,
input [14:0] rd_ptr3,
input [14:0] rd_ptr4,

input [14:0] read_pointerT,
output [11:0] XinT,
output [11:0] YinT);
`ifdef SIM_N
blk_mem_I MEM_I1 (
  .clka(clk),    // input wire clka
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(rd_ptr1),  // input wire [15 : 0] addra
  .dina(),    // input wire [11 : 0] dina
  .douta(Xsamples1),  // output wire [11 : 0] douta
  .clkb(clk),    // input wire clkb
  .web(1'b0),      // input wire [0 : 0] web
  .addrb(rd_ptr2),  // input wire [15 : 0] addrb
  .dinb(),    // input wire [11 : 0] dinb
  .doutb(Xsamples2)  // output wire [11 : 0] doutb
);

blk_mem_I MEM_I2 (
  .clka(clk),    // input wire clka
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(rd_ptr3),  // input wire [15 : 0] addra
  .dina(),    // input wire [11 : 0] dina
  .douta(Xsamples3),  // output wire [11 : 0] douta
  .clkb(clk),    // input wire clkb
  .web(1'b0),      // input wire [0 : 0] web
  .addrb(rd_ptr4),  // input wire [15 : 0] addrb
  .dinb(),    // input wire [11 : 0] dinb
  .doutb(Xsamples4)  // output wire [11 : 0] doutb
);


blk_mem_I1 MEM_I3 (
  .clka(clk),    // input wire clka
  .wea(1'b0),      // input wire [0 : 0] wea
  .addra(read_pointerT),  // input wire [15 : 0] addra
  .dina(),    // input wire [11 : 0] dina
  .douta(XinT)  // output wire [11 : 0] douta
);
      
blk_mem_Q MEM_Q1 (
            .clka(clk),    // input wire clka
            .wea(1'b0),      // input wire [0 : 0] wea
            .addra(rd_ptr1),  // input wire [15 : 0] addra
            .dina(),    // input wire [11 : 0] dina
            .douta(Ysamples1),  // output wire [11 : 0] douta
            .clkb(clk),    // input wire clkb
            .web(1'b0),      // input wire [0 : 0] web
            .addrb(rd_ptr2),  // input wire [15 : 0] addrb
            .dinb(),    // input wire [11 : 0] dinb
            .doutb(Ysamples2)  // output wire [11 : 0] doutb
          );
blk_mem_Q MEM_Q2 (
            .clka(clk),    // input wire clka
            .wea(1'b0),      // input wire [0 : 0] wea
            .addra(rd_ptr3),  // input wire [15 : 0] addra
            .dina(),    // input wire [11 : 0] dina
            .douta(Ysamples3),  // output wire [11 : 0] douta
            .clkb(clk),    // input wire clkb
            .web(1'b0),      // input wire [0 : 0] web
            .addrb(rd_ptr4),  // input wire [15 : 0] addrb
            .dinb(),    // input wire [11 : 0] dinb
            .doutb(Ysamples4)  // output wire [11 : 0] doutb
          );

 
 
blk_mem_Q1 MEM_Q3 (
            .clka(clk),    // input wire clka
            .wea(1'b0),      // input wire [0 : 0] wea
            .addra(read_pointerT),  // input wire [15 : 0] addra
            .dina(),    // input wire [11 : 0] dina
            .douta(YinT)  // output wire [11 : 0] douta
          );
`else
reg [11:0] X [40000:0];
reg [11:0] Y [40000:0];
initial 
begin
    $readmemh("/Scratch/vish/Zaid/gps/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.srcs/sources_1/imports/Verilog/signalI12bit.hex",X);
    $readmemh("/Scratch/vish/Zaid/gps/GPS_Ver/Acq_Track_VCU108/Acq_Track_VCU108.srcs/sources_1/imports/Verilog/signalQ12bit.hex",Y);
end

reg [11:0] Xsamples1,Xsamples2,Xsamples3,Xsamples4;
reg [11:0] Ysamples1,Ysamples2,Ysamples3,Ysamples4;
reg [11:0] XinT,YinT;
always @(posedge clk)
begin
Xsamples1<=X[rd_ptr1];
Xsamples2<=X[rd_ptr2];
Xsamples3<=X[rd_ptr3];
Xsamples4<=X[rd_ptr4];

Ysamples1<=Y[rd_ptr1];
Ysamples2<=Y[rd_ptr2];
Ysamples3<=Y[rd_ptr3];
Ysamples4<=Y[rd_ptr4];

XinT<=X[read_pointerT];
YinT<=Y[read_pointerT];
end
`endif
endmodule
