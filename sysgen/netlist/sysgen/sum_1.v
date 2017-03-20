`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block sum_1_struct
module sum_1_struct (
  input [12-1:0] gateway_in,
  input [12-1:0] gateway_in1,
  input [1-1:0] gateway_in2,
  input clk_1,
  input ce_1,
  input clk_35,
  input ce_35,
  output [32-1:0] gateway_out,
  output [1-1:0] gateway_out2,
  output [25-1:0] gateway_out3,
  output [1-1:0] gateway_out1,
  output [10-1:0] gateway_out16,
  output [4-1:0] gateway_out17,
  output [25-1:0] gateway_out4,
  output [1-1:0] gateway_out5,
  output [9-1:0] gateway_out6,
  output [9-1:0] gateway_out7,
  output [32-1:0] gateway_out18,
  output [3-1:0] gateway_out8,
  output [1-1:0] gateway_out9,
  output [8-1:0] gateway_out10,
  output [100-1:0] gateway_out11,
  output [100-1:0] gateway_out12,
  output [4-1:0] gateway_out13,
  output [25-1:0] gateway_out14,
  output [10-1:0] gateway_out15
);
  wire [10-1:0] black_box_g20_net;
  wire [12-1:0] dual_port_ram5_douta_net;
  wire [1-1:0] black_box_strbe_vect_net;
  wire [25-1:0] black_box_sum0_net;
  wire [16-1:0] black_box_rd_ptr3_net;
  wire [12-1:0] dual_port_ram4_douta_net;
  wire [12-1:0] dual_port_ram5_doutb_net;
  wire [12-1:0] dual_port_ram_doutb_net;
  wire [4-1:0] black_box_shift0_net;
  wire [12-1:0] gateway_in_net;
  wire [12-1:0] dual_port_ram6_doutb_net;
  wire [9-1:0] black_box_pointer_mag_net;
  wire [100-1:0] black_box_qqq_net;
  wire [8-1:0] black_box_ang_pointer_net;
  wire [12-1:0] dual_port_ram2_doutb_net;
  wire [1-1:0] constant_op_net;
  wire [3-1:0] black_box_iterno_net;
  wire [16-1:0] black_box_rd_ptr4_net;
  wire [32-1:0] black_box_cmltve_phse_net;
  wire [32-1:0] black_box_phase_per_sample_net;
  wire [1-1:0] black_box_stb_in_net;
  wire ce_net;
  wire [16-1:0] counter_op_net;
  wire [1-1:0] constant1_op_net;
  wire [12-1:0] dual_port_ram1_doutb_net;
  wire clk_net;
  wire [12-1:0] dual_port_ram1_douta_net;
  wire [1-1:0] relational_op_net;
  wire [1-1:0] black_box_strbe_net;
  wire a_clk_net;
  wire a_ce_net;
  wire [9-1:0] black_box_count_net;
  wire [12-1:0] gateway_in1_net;
  wire [10-1:0] black_box_g10_net;
  wire [12-1:0] dual_port_ram6_douta_net;
  wire [1-1:0] gateway_in2_net;
  wire [16-1:0] black_box_rd_ptr1_net;
  wire [16-1:0] constant3_op_net;
  wire [12-1:0] dual_port_ram2_douta_net;
  wire [100-1:0] black_box_iii_net;
  wire [12-1:0] dual_port_ram4_doutb_net;
  wire [12-1:0] constant2_op_net;
  wire [12-1:0] dual_port_ram3_doutb_net;
  wire [12-1:0] dual_port_ram_douta_net;
  wire [25-1:0] black_box_x_in_net;
  wire [25-1:0] black_box_y_in_net;
  wire [16-1:0] black_box_rd_ptr2_net;
  wire [12-1:0] dual_port_ram7_douta_net;
  wire [12-1:0] dual_port_ram7_doutb_net;
  wire [12-1:0] dual_port_ram3_douta_net;
  wire [1-1:0] black_box_chunk_no_net;
  wire [4-1:0] black_box_prn0_net;
  wire [1-1:0] inverter_op_net;
  assign gateway_out = black_box_phase_per_sample_net;
  assign gateway_in_net = gateway_in;
  assign gateway_in1_net = gateway_in1;
  assign gateway_in2_net = gateway_in2;
  assign gateway_out2 = black_box_strbe_net;
  assign gateway_out3 = black_box_x_in_net;
  assign gateway_out1 = black_box_stb_in_net;
  assign gateway_out16 = black_box_g20_net;
  assign gateway_out17 = black_box_shift0_net;
  assign gateway_out4 = black_box_y_in_net;
  assign gateway_out5 = black_box_strbe_vect_net;
  assign gateway_out6 = black_box_pointer_mag_net;
  assign gateway_out7 = black_box_count_net;
  assign gateway_out18 = black_box_cmltve_phse_net;
  assign gateway_out8 = black_box_iterno_net;
  assign gateway_out9 = black_box_chunk_no_net;
  assign gateway_out10 = black_box_ang_pointer_net;
  assign gateway_out11 = black_box_iii_net;
  assign gateway_out12 = black_box_qqq_net;
  assign gateway_out13 = black_box_prn0_net;
  assign gateway_out14 = black_box_sum0_net;
  assign gateway_out15 = black_box_g10_net;
  assign a_clk_net = clk_1;
  assign a_ce_net = ce_1;
  assign clk_net = clk_35;
  assign ce_net = ce_35;
  sysgen_constant_ac2e9d5d48 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_e99010f12d constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_fc4affc38a constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_09bde90a1c constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sum_1_xlcounter_free #(
    .core_name0("sum_1_c_counter_binary_v12_0_i0"),
    .op_arith(`xlUnsigned),
    .op_width(16)
  )
  counter (
    .clr(1'b0),
    .rst(inverter_op_net),
    .en(gateway_in2_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr4_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram_douta_net),
    .doutb(dual_port_ram_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram1 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr3_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram1_douta_net),
    .doutb(dual_port_ram1_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram2 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr2_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram2_douta_net),
    .doutb(dual_port_ram2_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram3 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr1_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram3_douta_net),
    .doutb(dual_port_ram3_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram4 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in1_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr4_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram4_douta_net),
    .doutb(dual_port_ram4_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram5 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in1_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr3_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram5_douta_net),
    .doutb(dual_port_ram5_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram6 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in1_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr2_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram6_douta_net),
    .doutb(dual_port_ram6_doutb_net)
  );
  sum_1_xldpram #(
    .c_address_width_a(16),
    .c_address_width_b(16),
    .c_width_a(12),
    .c_width_b(12),
    .core_name0("sum_1_blk_mem_gen_v8_3_i0"),
    .latency(1)
  )
  dual_port_ram7 (
    .ena(1'b1),
    .enb(1'b1),
    .rsta(1'b0),
    .rstb(1'b0),
    .addra(counter_op_net),
    .dina(gateway_in1_net),
    .wea(constant_op_net),
    .addrb(black_box_rd_ptr1_net),
    .dinb(constant2_op_net),
    .web(constant1_op_net),
    .a_clk(a_clk_net),
    .a_ce(a_ce_net),
    .b_clk(a_clk_net),
    .b_ce(a_ce_net),
    .douta(dual_port_ram7_douta_net),
    .doutb(dual_port_ram7_doutb_net)
  );
  sysgen_inverter_2bb2ac50e0 inverter (
    .clr(1'b0),
    .ip(gateway_in2_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(inverter_op_net)
  );
  sysgen_relational_45f4b84e39 relational (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .a(counter_op_net),
    .b(constant3_op_net),
    .op(relational_op_net)
  );
  acquire #(
    .adds_per_clk(4),
    .code_length(1023),
    .doppler_range(201),
    .flag_2(1),
    .input_width(12),
    .samples_per_ms(2000),
    .shifts_per_iter(250)
  )
  black_box (
    .reset(relational_op_net),
    .xsamples1(dual_port_ram3_doutb_net),
    .xsamples2(dual_port_ram2_doutb_net),
    .xsamples3(dual_port_ram1_doutb_net),
    .xsamples4(dual_port_ram_doutb_net),
    .ysamples1(dual_port_ram7_doutb_net),
    .ysamples2(dual_port_ram6_doutb_net),
    .ysamples3(dual_port_ram5_doutb_net),
    .ysamples4(dual_port_ram4_doutb_net),
    .clk(a_clk_net),
    .ce(a_ce_net),
    .rd_ptr1(black_box_rd_ptr1_net),
    .rd_ptr2(black_box_rd_ptr2_net),
    .rd_ptr3(black_box_rd_ptr3_net),
    .rd_ptr4(black_box_rd_ptr4_net),
    .phase_per_sample(black_box_phase_per_sample_net),
    .stb_in(black_box_stb_in_net),
    .strbe(black_box_strbe_net),
    .x_in(black_box_x_in_net),
    .y_in(black_box_y_in_net),
    .strbe_vect(black_box_strbe_vect_net),
    .pointer_mag(black_box_pointer_mag_net),
    .count(black_box_count_net),
    .iterno(black_box_iterno_net),
    .chunk_no(black_box_chunk_no_net),
    .ang_pointer(black_box_ang_pointer_net),
    .iii(black_box_iii_net),
    .qqq(black_box_qqq_net),
    .prn0(black_box_prn0_net),
    .sum0(black_box_sum0_net),
    .g10(black_box_g10_net),
    .g20(black_box_g20_net),
    .shift0(black_box_shift0_net),
    .cmltve_phse(black_box_cmltve_phse_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module sum_1_default_clock_driver (
  input sum_1_sysclk,
  input sum_1_sysce,
  input sum_1_sysclr,
  output sum_1_clk1,
  output sum_1_ce1,
  output sum_1_clk35,
  output sum_1_ce35
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x0 (
    .sysclk(sum_1_sysclk),
    .sysce(sum_1_sysce),
    .sysclr(sum_1_sysclr),
    .clk(sum_1_clk1),
    .ce(sum_1_ce1)
  );
  xlclockdriver #(
    .period(35),
    .log_2_period(6)
  )
  clockdriver (
    .sysclk(sum_1_sysclk),
    .sysce(sum_1_sysce),
    .sysclr(sum_1_sysclr),
    .clk(sum_1_clk35),
    .ce(sum_1_ce35)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "sum_1,sysgen_core_2016_1,{,compilation=Hardware Co-Simulation (JTAG),block_icon_display=Default,family=virtex7,part=xc7vx485t,speed=-2,package=ffg1761,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=14.2857,system_simulink_period=1.42857e-08,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,blackbox2=1,constant=4,counter=1,dpram=8,inv=1,relational=1,}" *)
module sum_1 (
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
  wire [100-1:0] gateway_out11;
  wire ce_1_net;
  wire [10-1:0] gateway_out15;
  wire [4-1:0] gateway_out13;
  wire [25-1:0] gateway_out14;
  wire [4-1:0] gateway_out17;
  wire ce_35_net;
  wire [1-1:0] gateway_in2;
  wire [1-1:0] gateway_out5;
  wire [3-1:0] gateway_out8;
  wire clk_35_net;
  wire [32-1:0] gateway_out;
  wire clk_1_net;
  wire [1-1:0] gateway_out2;
  wire clk_net;
  wire [25-1:0] gateway_out3;
  wire [9-1:0] gateway_out6;
  wire [100-1:0] gateway_out12;
  wire [32-1:0] gateway_out18;
  wire [25-1:0] gateway_out4;
  wire [12-1:0] gateway_in1;
  wire [8-1:0] gateway_out10;
  wire [12-1:0] gateway_in;
  wire [1-1:0] gateway_out9;
  wire [9-1:0] gateway_out7;
  wire [1-1:0] gateway_out1;
  wire [10-1:0] gateway_out16;
  sum_1_axi_lite_interface sum_1_axi_lite_interface (
    .gateway_out(gateway_out),
    .gateway_out2(gateway_out2),
    .gateway_out3(gateway_out3),
    .gateway_out1(gateway_out1),
    .gateway_out16(gateway_out16),
    .gateway_out17(gateway_out17),
    .gateway_out4(gateway_out4),
    .gateway_out5(gateway_out5),
    .gateway_out6(gateway_out6),
    .gateway_out7(gateway_out7),
    .gateway_out18(gateway_out18),
    .gateway_out8(gateway_out8),
    .gateway_out9(gateway_out9),
    .gateway_out10(gateway_out10),
    .gateway_out11(gateway_out11),
    .gateway_out12(gateway_out12),
    .gateway_out13(gateway_out13),
    .gateway_out14(gateway_out14),
    .gateway_out15(gateway_out15),
    .sum_1_s_axi_awaddr(sum_1_s_axi_awaddr),
    .sum_1_s_axi_awvalid(sum_1_s_axi_awvalid),
    .sum_1_s_axi_wdata(sum_1_s_axi_wdata),
    .sum_1_s_axi_wstrb(sum_1_s_axi_wstrb),
    .sum_1_s_axi_wvalid(sum_1_s_axi_wvalid),
    .sum_1_s_axi_bready(sum_1_s_axi_bready),
    .sum_1_s_axi_araddr(sum_1_s_axi_araddr),
    .sum_1_s_axi_arvalid(sum_1_s_axi_arvalid),
    .sum_1_s_axi_rready(sum_1_s_axi_rready),
    .sum_1_aresetn(sum_1_aresetn),
    .sum_1_aclk(clk),
    .gateway_in2(gateway_in2),
    .gateway_in1(gateway_in1),
    .gateway_in(gateway_in),
    .sum_1_s_axi_awready(sum_1_s_axi_awready),
    .sum_1_s_axi_wready(sum_1_s_axi_wready),
    .sum_1_s_axi_bresp(sum_1_s_axi_bresp),
    .sum_1_s_axi_bvalid(sum_1_s_axi_bvalid),
    .sum_1_s_axi_arready(sum_1_s_axi_arready),
    .sum_1_s_axi_rdata(sum_1_s_axi_rdata),
    .sum_1_s_axi_rresp(sum_1_s_axi_rresp),
    .sum_1_s_axi_rvalid(sum_1_s_axi_rvalid),
    .clk(clk_net)
  );
  sum_1_default_clock_driver sum_1_default_clock_driver (
    .sum_1_sysclk(clk_net),
    .sum_1_sysce(1'b1),
    .sum_1_sysclr(1'b0),
    .sum_1_clk1(clk_1_net),
    .sum_1_ce1(ce_1_net),
    .sum_1_clk35(clk_35_net),
    .sum_1_ce35(ce_35_net)
  );
  sum_1_struct sum_1_struct (
    .gateway_in(gateway_in),
    .gateway_in1(gateway_in1),
    .gateway_in2(gateway_in2),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .clk_35(clk_35_net),
    .ce_35(ce_35_net),
    .gateway_out(gateway_out),
    .gateway_out2(gateway_out2),
    .gateway_out3(gateway_out3),
    .gateway_out1(gateway_out1),
    .gateway_out16(gateway_out16),
    .gateway_out17(gateway_out17),
    .gateway_out4(gateway_out4),
    .gateway_out5(gateway_out5),
    .gateway_out6(gateway_out6),
    .gateway_out7(gateway_out7),
    .gateway_out18(gateway_out18),
    .gateway_out8(gateway_out8),
    .gateway_out9(gateway_out9),
    .gateway_out10(gateway_out10),
    .gateway_out11(gateway_out11),
    .gateway_out12(gateway_out12),
    .gateway_out13(gateway_out13),
    .gateway_out14(gateway_out14),
    .gateway_out15(gateway_out15)
  );
endmodule
