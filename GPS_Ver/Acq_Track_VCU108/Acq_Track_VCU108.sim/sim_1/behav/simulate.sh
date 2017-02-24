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
ExecStep $xv_path/bin/xsim Top_Acq_Track_behav -key {Behavioral:sim_1:Functional:Top_Acq_Track} -tclbatch Top_Acq_Track.tcl -log simulate.log
