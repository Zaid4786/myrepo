vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_0/hdl/verilog" \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_0/hdl/verilog" "+incdir+../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_0/hdl/verilog" \
"../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_0/sim/ila_0.v" \

vlog -work xil_defaultlib "glbl.v"

