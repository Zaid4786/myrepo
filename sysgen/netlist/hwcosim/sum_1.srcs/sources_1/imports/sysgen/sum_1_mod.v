`timescale 1 ns / 10 ps
// Generated from Simulink block 
module sum_1_stub (
  input clk,
  input sum_1_aresetn,
  input [7-1:0] sum_1_s_axi_awaddr,
  input sum_1_s_axi_awvalid,
  input [32-1:0] sum_1_s_axi_wdata,
  input [4-1:0] sum_1_s_axi_wstrb,
  input sum_1_s_axi_wvalid,
  input sum_1_s_axi_bready,
  input [7-1:0] sum_1_s_axi_araddr,
  input sum_1_s_axi_arvalid,
  input sum_1_s_axi_rready,
  output sum_1_s_axi_awready,
  output sum_1_s_axi_wready,
  output [2-1:0] sum_1_s_axi_bresp,
  output sum_1_s_axi_bvalid,
  output sum_1_s_axi_arready,
  output [32-1:0] sum_1_s_axi_rdata,
  output [2-1:0] sum_1_s_axi_rresp,
  output sum_1_s_axi_rvalid
);
  sum_1_0 sysgen_dut (
    .clk(clk),
    .sum_1_aresetn(sum_1_aresetn),
    .sum_1_s_axi_awaddr(sum_1_s_axi_awaddr),
    .sum_1_s_axi_awvalid(sum_1_s_axi_awvalid),
    .sum_1_s_axi_wdata(sum_1_s_axi_wdata),
    .sum_1_s_axi_wstrb(sum_1_s_axi_wstrb),
    .sum_1_s_axi_wvalid(sum_1_s_axi_wvalid),
    .sum_1_s_axi_bready(sum_1_s_axi_bready),
    .sum_1_s_axi_araddr(sum_1_s_axi_araddr),
    .sum_1_s_axi_arvalid(sum_1_s_axi_arvalid),
    .sum_1_s_axi_rready(sum_1_s_axi_rready),
    .sum_1_s_axi_awready(sum_1_s_axi_awready),
    .sum_1_s_axi_wready(sum_1_s_axi_wready),
    .sum_1_s_axi_bresp(sum_1_s_axi_bresp),
    .sum_1_s_axi_bvalid(sum_1_s_axi_bvalid),
    .sum_1_s_axi_arready(sum_1_s_axi_arready),
    .sum_1_s_axi_rdata(sum_1_s_axi_rdata),
    .sum_1_s_axi_rresp(sum_1_s_axi_rresp),
    .sum_1_s_axi_rvalid(sum_1_s_axi_rvalid)
  );
endmodule
