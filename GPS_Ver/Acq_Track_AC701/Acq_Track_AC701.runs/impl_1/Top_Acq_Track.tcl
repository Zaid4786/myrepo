proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  create_project -in_memory -part xcvu095-ffva2104-2-e
  set_property board_part xilinx.com:vcu108:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.cache/wt [current_project]
  set_property parent.project_path D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.xpr [current_project]
  set_property ip_cache_permissions disable [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.runs/synth_1/Top_Acq_Track.dcp
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_1.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_1.dcp]
  add_files -quiet d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_0.dcp
  set_property netlist_only true [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_0.dcp]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I/blk_mem_I.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I/blk_mem_I.dcp]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I1/blk_mem_I1.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I1/blk_mem_I1.dcp]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q/blk_mem_Q.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q/blk_mem_Q.dcp]
  add_files -quiet D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q1/blk_mem_Q1.dcp
  set_property netlist_only true [get_files D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q1/blk_mem_Q1.dcp]
  read_xdc -mode out_of_context -ref clk_wiz_0 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc -mode out_of_context -ref ila_1 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_1_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_1_ooc.xdc]
  read_xdc -ref ila_1 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_1/ila_v6_2/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref ila_0 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_0_ooc.xdc]
  read_xdc -ref ila_0 -cells inst d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc]
  read_xdc -mode out_of_context -ref blk_mem_I -cells U0 d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I/blk_mem_I_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I/blk_mem_I_ooc.xdc]
  read_xdc -mode out_of_context -ref blk_mem_I1 -cells U0 d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I1/blk_mem_I1_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_I1/blk_mem_I1_ooc.xdc]
  read_xdc -mode out_of_context -ref blk_mem_Q -cells U0 d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q/blk_mem_Q_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q/blk_mem_Q_ooc.xdc]
  read_xdc -mode out_of_context -ref blk_mem_Q1 -cells U0 d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q1/blk_mem_Q1_ooc.xdc
  set_property processing_order EARLY [get_files d:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/sources_1/ip/blk_mem_Q1/blk_mem_Q1_ooc.xdc]
  read_xdc D:/gps/GPS_Ver/Acq_Track_AC701/Acq_Track_AC701.srcs/constrs_1/imports/new/constr.xdc
  link_design -top Top_Acq_Track -part xcvu095-ffva2104-2-e
  write_hwdef -file Top_Acq_Track.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force Top_Acq_Track_opt.dcp
  report_drc -file Top_Acq_Track_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force Top_Acq_Track_placed.dcp
  report_io -file Top_Acq_Track_io_placed.rpt
  report_utilization -file Top_Acq_Track_utilization_placed.rpt -pb Top_Acq_Track_utilization_placed.pb
  report_control_sets -verbose -file Top_Acq_Track_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force Top_Acq_Track_routed.dcp
  report_drc -file Top_Acq_Track_drc_routed.rpt -pb Top_Acq_Track_drc_routed.pb -rpx Top_Acq_Track_drc_routed.rpx
  report_methodology -file Top_Acq_Track_methodology_drc_routed.rpt -rpx Top_Acq_Track_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file Top_Acq_Track_timing_summary_routed.rpt -rpx Top_Acq_Track_timing_summary_routed.rpx
  report_power -file Top_Acq_Track_power_routed.rpt -pb Top_Acq_Track_power_summary_routed.pb -rpx Top_Acq_Track_power_routed.rpx
  report_route_status -file Top_Acq_Track_route_status.rpt -pb Top_Acq_Track_route_status.pb
  report_clock_utilization -file Top_Acq_Track_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force Top_Acq_Track_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force Top_Acq_Track.mmi }
  write_bitstream -force -no_partial_bitfile Top_Acq_Track.bit 
  catch { write_sysdef -hwdef Top_Acq_Track.hwdef -bitfile Top_Acq_Track.bit -meminfo Top_Acq_Track.mmi -file Top_Acq_Track.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

