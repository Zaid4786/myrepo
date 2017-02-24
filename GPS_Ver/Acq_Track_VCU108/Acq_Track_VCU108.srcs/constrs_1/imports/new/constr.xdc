set_property PACKAGE_PIN BC9 [get_ports "sys_clk_p"]
set_property IOSTANDARD LVDS [get_ports "sys_clk_p"]
set_property PACKAGE_PIN BC8 [get_ports "sys_clk_n"]
set_property IOSTANDARD LVDS [get_ports "sys_clk_n"]

# CPU RESET GPIO PB SW
set_property PACKAGE_PIN E36 [get_ports "reset"]
set_property IOSTANDARD LVCMOS12 [get_ports "reset"]

set_property PACKAGE_PIN AT32 [get_ports "FinalOut"]
set_property IOSTANDARD LVCMOS12 [get_ports "FinalOut"]