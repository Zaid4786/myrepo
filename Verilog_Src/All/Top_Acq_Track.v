`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2017 03:17:04
// Design Name: 
// Module Name: Top_Acq_Track
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

module Top_Acq_Track(
`ifdef SIM_N
input sys_clk_p,
input sys_clk_n,
input reset,
`endif
output FinalOut
    );
`ifdef SIM_N
  clk_wiz_0 CLOCK_NETWORK
   (
   // Clock in ports
    .clk_in1_p(sys_clk_p),    // input clk_in1_p
    .clk_in1_n(sys_clk_n),    // input clk_in1_n
    // Clock out ports
    .clk_out1(clk));    // output clk_out1
`else
reg clk,reset;
initial begin
clk=0;
reset=1;
#100
reset=0;
$dumpfile("Big_Acquire.vcd");
$dumpvars(1,Acquire);

end
always #5 clk=~clk;
`endif

wire [4:0] Acquired_PRNID1 ;
wire [4:0] Acquired_PRNID2 ;
wire [4:0] Acquired_PRNID3 ;
wire [4:0] Acquired_PRNID4 ;    

wire [10:0] Acquired_CodePhase1;
wire [10:0] Acquired_CodePhase2;
wire [10:0] Acquired_CodePhase3;
wire [10:0] Acquired_CodePhase4;

wire [31:0] Acquired_Carr_Phase1;
wire [31:0] Acquired_Carr_Phase2;
wire [31:0] Acquired_Carr_Phase3;
wire [31:0] Acquired_Carr_Phase4;

wire [11:0] Xsamples1;
wire [11:0] Xsamples2;
wire [11:0] Xsamples3;
wire [11:0] Xsamples4;

wire [11:0] Ysamples1;
wire [11:0] Ysamples2;
wire [11:0] Ysamples3;
wire [11:0] Ysamples4;

wire [14:0] rd_ptr1;
wire [14:0] rd_ptr2;
wire [14:0] rd_ptr3;
wire [14:0] rd_ptr4;

wire [11:0] XinT,YinT;
wire [15:0] read_pointerT;

wire [14:0] read_pointerA;
Acquire# 
    (.crltn_sum_width(23),      // sample width + log2(samples_per_ms)
    .adds_per_clk(4),
    .input_width(12),         // input sample width
    .shifts_per_iter(250),     
    .no_iter_per_freq(7),      // (samples_per_ms/shifts_per_iter)
    .no_of_chunks_per_freq(2),
    .samples_per_ms(2000),      // sampling frequency in KHz
    .doppler_range(201),          // No of Dopplers
    .flag_2(1)
    )
Acq_MOD
    (
    clk,
    reset,
    
    Xsamples1,
    Xsamples2,
    Xsamples3,
    Xsamples4,
    
    Ysamples1,
    Ysamples2,
    Ysamples3,
    Ysamples4,
    
    rd_ptr1,
    rd_ptr2,
    rd_ptr3,
    rd_ptr4,
    
    Acquired_Carr_Phase1,
    Acquired_Carr_Phase2,
    Acquired_Carr_Phase3,
    Acquired_Carr_Phase4,
    
    Acquired_CodePhase1,
    Acquired_CodePhase2,
    Acquired_CodePhase3,
    Acquired_CodePhase4,
    
    Acquired_PRNID1,
    Acquired_PRNID2,
    Acquired_PRNID3,
    Acquired_PRNID4,
    
    Complete);

Memory_Module MEM(
    clk,
    Xsamples1,
    Xsamples2,
    Xsamples3,
    Xsamples4,
    
    Ysamples1,
    Ysamples2,
    Ysamples3,
    Ysamples4,
    
    rd_ptr1,
    rd_ptr2,
    rd_ptr3,
    rd_ptr4,
    
    read_pointerT,
    XinT,YinT);
wire [31:0] CodePhasePerSampleDEL;
wire [31:0] CarrPhasePerSampleDEL;

//Track u0 
//(clk,
//Acquired_Carr_Phase3,
//Acquired_CodePhase3,
//Acquired_PRNID3,
//Acquired3,
//read_pointerT,
//XinT,YinT,
//CodePhasePerSampleDEL,
//CarrPhasePerSampleDEL);

assign FinalOut = Complete;
    
endmodule
