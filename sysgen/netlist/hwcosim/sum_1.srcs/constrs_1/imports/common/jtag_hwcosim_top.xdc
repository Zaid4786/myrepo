set_property BITSTREAM.STARTUP.STARTUPCLK JtagClk [current_design]
create_clock -name jtag_clk -period 33.333 [get_pins hwcosim_top_i/hwc_jtag_axi_transport_0/inst/BSCANE2_inst/TCK]
create_clock -name jtag_clk_gated -period 33.333 [get_pins hwcosim_top_i/hwc_jtag_axi_transport_0/inst/BSCANE2_inst/DRCK]
