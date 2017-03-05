## set debug_rtd_standalone true, to enable debugging
##   of this rtd, in standalone mode ... 
###################################################
set debug_rtd_standalone false


if { $debug_rtd_standalone } {
  set rt::partid xcvu095-ffva2104-2-e
  if { ! [info exists ::env(RT_TMP)] } {
    set ::env(RT_TMP) [pwd]
  } 
  source $::env(SYNTH_COMMON)/task_worker.tcl
} 
set genomeRtd $env(RT_TMP)/144F5650.rtd
set parallel_map_command "rt::do_techmap_steps"
set rt::parallelMoreOptions "set rt::bannerSuppress true"
puts "this genome's name is Acquire__GB0"
puts "this genome's rtd file is $genomeRtd"
source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
rt::set_parameter parallelChildUpdateCell true; rt::set_parameter parallelTimingMode true; rt::set_parameter parallelTimingModeRound 1; set rt::SDCFileList ./.Xil/Vivado-8653-zaid-LIFEBOOK-A555/realtime/tmp/parallel_timing.xdc; 
set genomeName Acquire__GB0
source $::env(SYNTH_COMMON)/synthesizeAGenome.tcl 
set rt::parallelMoreOptions "set rt::bannerSuppress false"
