#
# Created by 
#   realTimeFpga.exe  on Sun Mar  5 02:29:57 2017
# (c) Xilinx, Inc.
#
# define clock sys_clk_p
create_clock -period 8.000000 -waveform {0.000000 4.000000} -name sys_clk_p [get_ports sys_clk_p]
# define clock i_0/CLOCK_NETWORK/bbstub_clk_out1/O
create_generated_clock -source [get_ports sys_clk_p] -edges {1 2 3} -edge_shift {0.000000 2.667000 5.333000} -name i_0\/CLOCK_NETWORK\/bbstub_clk_out1\/O [get_pins CLOCK_NETWORK/bbstub_clk_out1/O]
# define clock constraints sys_clk_p
# define clock constraints i_0/CLOCK_NETWORK/bbstub_clk_out1/O
