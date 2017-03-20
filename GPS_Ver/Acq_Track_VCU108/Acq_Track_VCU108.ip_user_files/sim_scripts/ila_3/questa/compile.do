vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ip/ila_3/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_3/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../ip/ila_3/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_3/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbs_v1_0_2/hdl/verilog" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../ip/ila_3/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_3/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../ip/ila_3/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_3/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_3/xsdbs_v1_0_2/hdl/verilog" \
"../../../ip/ila_3/sim/ila_3.v" \

vlog -work xil_defaultlib "glbl.v"

