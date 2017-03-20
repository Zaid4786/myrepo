#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/zaid/SDK/2016.1/bin:/home/zaid/Vivado/2016.1/ids_lite/ISE/bin/lin64:/home/zaid/Vivado/2016.1/bin
else
  PATH=/home/zaid/SDK/2016.1/bin:/home/zaid/Vivado/2016.1/ids_lite/ISE/bin/lin64:/home/zaid/Vivado/2016.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/zaid/Vivado/2016.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/zaid/Vivado/2016.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/zaid/MTP/myrepo/sysgen/netlist/hwcosim/sum_1.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log hwcosim_top_wrapper.vds -m64 -mode batch -messageDb vivado.pb -notrace -source hwcosim_top_wrapper.tcl