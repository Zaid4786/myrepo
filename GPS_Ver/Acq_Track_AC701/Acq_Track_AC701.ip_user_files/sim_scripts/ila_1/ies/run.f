-makelib ies/xil_defaultlib -sv \
  "E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "E:/xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../Acq_Track_AC701.srcs/sources_1/ip/ila_1/sim/ila_1.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

