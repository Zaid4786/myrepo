
################################################################
# This is a generated script based on design: hwcosim_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source hwcosim_top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:0.9 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name hwcosim_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SYSGEN $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: reset_gen
proc create_hier_cell_reset_gen { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" create_hier_cell_reset_gen() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I aclk
  create_bd_pin -dir O -from 0 -to 0 aresetn
  create_bd_pin -dir I dcm_locked

  # Create instance: proc_sys_reset, and set properties
  set proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins proc_sys_reset/slowest_sync_clk]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins proc_sys_reset/dcm_locked]
  connect_bd_net -net proc_sys_reset_peripheral_aresetn [get_bd_pins aresetn] [get_bd_pins proc_sys_reset/peripheral_aresetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins proc_sys_reset/ext_reset_in] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $sys_diff_clock

  # Create ports

  # Create instance: axis_data_fifo_rx, and set properties
  set axis_data_fifo_rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_rx ]
  set_property -dict [ list \
CONFIG.FIFO_DEPTH {4096} \
CONFIG.HAS_TLAST {1} \
CONFIG.IS_ACLK_ASYNC {1} \
CONFIG.TDATA_NUM_BYTES {1} \
 ] $axis_data_fifo_rx

  # Create instance: axis_data_fifo_tx, and set properties
  set axis_data_fifo_tx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_tx ]
  set_property -dict [ list \
CONFIG.FIFO_DEPTH {4096} \
CONFIG.HAS_TLAST {1} \
CONFIG.IS_ACLK_ASYNC {1} \
CONFIG.TDATA_NUM_BYTES {1} \
 ] $axis_data_fifo_tx

  # Create instance: axis_dwidth_converter_rx, and set properties
  set axis_dwidth_converter_rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_rx ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {4} \
 ] $axis_dwidth_converter_rx

  # Create instance: axis_dwidth_converter_tx, and set properties
  set axis_dwidth_converter_tx [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_tx ]
  set_property -dict [ list \
CONFIG.M_TDATA_NUM_BYTES {1} \
CONFIG.S_TDATA_NUM_BYTES {4} \
 ] $axis_dwidth_converter_tx

  # Create instance: hwc_jtag_axi_transport_0, and set properties
  set hwc_jtag_axi_transport_0 [ create_bd_cell -type ip -vlnv xilinx.com:hwcosim:hwc_jtag_axi_transport:1.2 hwc_jtag_axi_transport_0 ]
  set_property -dict [ list \
CONFIG.HWC_JTAG_SCAN_CHAIN {2} \
 ] $hwc_jtag_axi_transport_0

  # Create instance: hwcosim_cmd_proc, and set properties
  set hwcosim_cmd_proc [ create_bd_cell -type ip -vlnv xilinx.com:hwcosim:hwcosim_cmd_proc:1.2 hwcosim_cmd_proc ]
  set_property -dict [ list \
CONFIG.C_AXI_ADDR_W {7} \
CONFIG.INTERFACE {0} \
 ] $hwcosim_cmd_proc

  # Create instance: reset_gen
  create_hier_cell_reset_gen [current_bd_instance .] reset_gen

  # Create instance: sum_1_0, and set properties
  set sum_1_0 [ create_bd_cell -type ip -vlnv User_Company:SysGen:sum_1:1.0 sum_1_0 ]

  # Create instance: sys_clk_wiz, and set properties
  set sys_clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 sys_clk_wiz ]
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS {50.0} \
CONFIG.CLKOUT1_JITTER {129.198} \
CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_diff_clock} \
CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
CONFIG.MMCM_CLKIN1_PERIOD {5.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.PRIM_IN_FREQ {200.000} \
CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $sys_clk_wiz

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKIN1_JITTER_PS.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
CONFIG.PRIM_IN_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PRIM_SOURCE.VALUE_SRC {DEFAULT} \
 ] $sys_clk_wiz

  # Create interface connections
  connect_bd_intf_net -intf_net axis_data_fifo_rx_M_AXIS [get_bd_intf_pins axis_data_fifo_rx/M_AXIS] [get_bd_intf_pins axis_dwidth_converter_rx/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_tx_M_AXIS [get_bd_intf_pins axis_data_fifo_tx/M_AXIS] [get_bd_intf_pins hwc_jtag_axi_transport_0/S00_AXIS]
  connect_bd_intf_net -intf_net axis_dwidth_converter_rx_M_AXIS [get_bd_intf_pins axis_dwidth_converter_rx/M_AXIS] [get_bd_intf_pins hwcosim_cmd_proc/rx_fifo]
  connect_bd_intf_net -intf_net axis_dwidth_converter_tx_M_AXIS [get_bd_intf_pins axis_data_fifo_tx/S_AXIS] [get_bd_intf_pins axis_dwidth_converter_tx/M_AXIS]
  connect_bd_intf_net -intf_net hwc_jtag_axi_transport_0_M00_AXIS [get_bd_intf_pins axis_data_fifo_rx/S_AXIS] [get_bd_intf_pins hwc_jtag_axi_transport_0/M00_AXIS]
  connect_bd_intf_net -intf_net hwcosim_cmd_proc_axi_lite [get_bd_intf_pins hwcosim_cmd_proc/axi_lite] [get_bd_intf_pins sum_1_0/sum_1_s_axi]
  connect_bd_intf_net -intf_net hwcosim_cmd_proc_tx_fifo [get_bd_intf_pins axis_dwidth_converter_tx/S_AXIS] [get_bd_intf_pins hwcosim_cmd_proc/tx_fifo]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins sys_clk_wiz/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net hwc_jtag_axi_transport_0_jtag_clk [get_bd_pins axis_data_fifo_rx/s_axis_aclk] [get_bd_pins axis_data_fifo_tx/m_axis_aclk] [get_bd_pins hwc_jtag_axi_transport_0/jtag_clk]
  connect_bd_net -net hwc_jtag_axi_transport_0_jtag_resetn [get_bd_pins axis_data_fifo_rx/s_axis_aresetn] [get_bd_pins axis_data_fifo_tx/m_axis_aresetn] [get_bd_pins hwc_jtag_axi_transport_0/jtag_resetn]
  connect_bd_net -net reset_gen_aresetn [get_bd_pins axis_data_fifo_rx/m_axis_aresetn] [get_bd_pins axis_data_fifo_tx/s_axis_aresetn] [get_bd_pins axis_dwidth_converter_rx/aresetn] [get_bd_pins axis_dwidth_converter_tx/aresetn] [get_bd_pins hwcosim_cmd_proc/resetn] [get_bd_pins reset_gen/aresetn] [get_bd_pins sum_1_0/sum_1_aresetn]
  connect_bd_net -net sys_clk_net [get_bd_pins axis_data_fifo_rx/m_axis_aclk] [get_bd_pins axis_data_fifo_tx/s_axis_aclk] [get_bd_pins axis_dwidth_converter_rx/aclk] [get_bd_pins axis_dwidth_converter_tx/aclk] [get_bd_pins hwcosim_cmd_proc/clk] [get_bd_pins reset_gen/aclk] [get_bd_pins sum_1_0/clk] [get_bd_pins sys_clk_wiz/clk_out1]
  connect_bd_net -net sys_clk_wiz_locked [get_bd_pins reset_gen/dcm_locked] [get_bd_pins sys_clk_wiz/locked]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


