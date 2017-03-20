load /home/zaid/Vivado/2016.1/lib/lnx64.o/librdi_dsp_tcltasks.so
cd {/home/zaid/MTP/myrepo/sysgen/wavedata}
dsp_wave_convert {sum_tb.wfv} 
set_param project.waveformStandaloneMode 1
start_gui
current_fileset
dsp_register_design_manager
dsp_open_waveform {sum_tb.wdb}
open_wave_config {sum_tb.wcfg}
source /home/zaid/Vivado/2016.1/scripts/sysgen/tcl/SgPaSlaveInterp.tcl
