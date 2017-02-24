vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ip/ila_0/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_0/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../ip/ila_0/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_0/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbs_v1_0_2/hdl/verilog" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -64 -93 \
"/Scratch/Softwares/Vivado/Vivado/2016.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ip/ila_0/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_0/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbs_v1_0_2/hdl/verilog" "+incdir+../../../ip/ila_0/ila_v6_1_0/hdl/verilog" "+incdir+../../../ip/ila_0/ltlib_v1_0_0/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbm_v1_1_2/hdl/verilog" "+incdir+../../../ip/ila_0/xsdbs_v1_0_2/hdl/verilog" \
"../../../ip/ila_0_1/sim/ila_0.v" \

vlog -work xil_defaultlib "glbl.v"

