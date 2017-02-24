#!/bin/bash -f
xv_path="/Scratch/Softwares/Vivado/Vivado/2016.1"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto b8a45dd39aa9479f817f644ca107760e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip --snapshot Top_Acq_Track_behav xil_defaultlib.Top_Acq_Track xil_defaultlib.glbl -log elaborate.log
