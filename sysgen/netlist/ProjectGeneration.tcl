# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	proc hwcosim_postgen {} { 
		::xilinx::dsp::planaheadworker::dsp_package_for_vivado_ip_integrator
		source $::env(XILINX_VIVADO)/scripts/sysgen/tcl/hwcosim_compiler.tcl
		::xilinx::dsp::hwcosim_compiler::generate_hwcfile $::xilinx::dsp::planaheaddriver::MemoryMappedPort {jtag_axi} $::xilinx::dsp::planaheaddriver::TopLevelModule $::xilinx::dsp::planaheaddriver::HWCosimBurstMode $::xilinx::dsp::planaheaddriver::HWCosimFifoDepth
		::xilinx::dsp::hwcosim_compiler::jtag_generate_hwcosim $::xilinx::dsp::planaheaddriver::TopLevelPortInterface $::xilinx::dsp::planaheaddriver::TopLevelModule
	}
	set BoardFileVersion {0.9}
	set BoardName {vc707}
	set BoardRevision {a}
	set BoardVendor {xilinx.com}
	set Compilation {Hardware Co-Simulation (JTAG)}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set CustomProjectDir {hwcosim}
	set DSPDevice {xc7vx485t}
	set DSPFamily {virtex7}
	set DSPPackage {ffg1761}
	set DSPSpeed {-2}
	set FPGAClockPeriod 14.2857
	set GenerateTestBench 0
	set HDLLanguage {verilog}
	set HWCosimBurstMode 0
	set HWCosimFifoDepth 1024
	set IPOOCCacheRootPath {/home/zaid/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {0}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {hwcosim_postgen}
	set Project {sum_1}
	set ProjectFiles {
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{xlclockdriver_rd.v}}
		{{vivado_ip.tcl}}
		{{sum_1_blk_mem_gen_v8_3_i0_vivado.coe}}
		{{sum_1.mdd}}
		{{sum_1_hw.h}}
		{{sum_1.h}}
		{{sum_1_sinit.c}}
		{{sum_1.c}}
		{{sum_1_linux.c}}
		{{sum_1.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
		{{sum_1_entity_declarations.v}}
		{{sum_1.v}}
		{{sum_1_clock.xdc}}
		{{sum_1.xdc}}
	}
	set SimPeriod 1.42857e-08
	set SimTime 10
	set SimulationTime {10000000214.28571510 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/zaid/MTP/myrepo/sysgen/netlist}
	set TopLevelModule {sum_1}
	set TopLevelSimulinkHandle 2.021
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface sum_1_aresetn Name {sum_1_aresetn}
	dict set TopLevelPortInterface sum_1_aresetn Type -
	dict set TopLevelPortInterface sum_1_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_aresetn BinaryPoint 0
	dict set TopLevelPortInterface sum_1_aresetn Width 1
	dict set TopLevelPortInterface sum_1_aresetn DatFile {}
	dict set TopLevelPortInterface sum_1_aresetn IconText {sum_1_aresetn}
	dict set TopLevelPortInterface sum_1_aresetn Direction in
	dict set TopLevelPortInterface sum_1_aresetn Period 1
	dict set TopLevelPortInterface sum_1_aresetn Interface 8
	dict set TopLevelPortInterface sum_1_aresetn InterfaceName {}
	dict set TopLevelPortInterface sum_1_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface sum_1_aresetn ClockDomain {}
	dict set TopLevelPortInterface sum_1_aresetn Locs {}
	dict set TopLevelPortInterface sum_1_aresetn IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Name {sum_1_s_axi_awaddr}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Type -
	dict set TopLevelPortInterface sum_1_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Width 7
	dict set TopLevelPortInterface sum_1_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr IconText {sum_1_s_axi_awaddr}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Direction in
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Period 1
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Name {sum_1_s_axi_awvalid}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Type -
	dict set TopLevelPortInterface sum_1_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Width 1
	dict set TopLevelPortInterface sum_1_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid IconText {sum_1_s_axi_awvalid}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Direction in
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Period 1
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_awready Name {sum_1_s_axi_awready}
	dict set TopLevelPortInterface sum_1_s_axi_awready Type -
	dict set TopLevelPortInterface sum_1_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_awready Width 1
	dict set TopLevelPortInterface sum_1_s_axi_awready DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_awready IconText {sum_1_s_axi_awready}
	dict set TopLevelPortInterface sum_1_s_axi_awready Direction out
	dict set TopLevelPortInterface sum_1_s_axi_awready Period 1
	dict set TopLevelPortInterface sum_1_s_axi_awready Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_awready Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_wdata Name {sum_1_s_axi_wdata}
	dict set TopLevelPortInterface sum_1_s_axi_wdata Type -
	dict set TopLevelPortInterface sum_1_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_wdata Width 32
	dict set TopLevelPortInterface sum_1_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_wdata IconText {sum_1_s_axi_wdata}
	dict set TopLevelPortInterface sum_1_s_axi_wdata Direction in
	dict set TopLevelPortInterface sum_1_s_axi_wdata Period 1
	dict set TopLevelPortInterface sum_1_s_axi_wdata Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_wdata Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Name {sum_1_s_axi_wstrb}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Type -
	dict set TopLevelPortInterface sum_1_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Width 4
	dict set TopLevelPortInterface sum_1_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb IconText {sum_1_s_axi_wstrb}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Direction in
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Period 1
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Name {sum_1_s_axi_wvalid}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Type -
	dict set TopLevelPortInterface sum_1_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Width 1
	dict set TopLevelPortInterface sum_1_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid IconText {sum_1_s_axi_wvalid}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Direction in
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Period 1
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_wready Name {sum_1_s_axi_wready}
	dict set TopLevelPortInterface sum_1_s_axi_wready Type -
	dict set TopLevelPortInterface sum_1_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_wready Width 1
	dict set TopLevelPortInterface sum_1_s_axi_wready DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_wready IconText {sum_1_s_axi_wready}
	dict set TopLevelPortInterface sum_1_s_axi_wready Direction out
	dict set TopLevelPortInterface sum_1_s_axi_wready Period 1
	dict set TopLevelPortInterface sum_1_s_axi_wready Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_wready Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_bresp Name {sum_1_s_axi_bresp}
	dict set TopLevelPortInterface sum_1_s_axi_bresp Type -
	dict set TopLevelPortInterface sum_1_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_bresp Width 2
	dict set TopLevelPortInterface sum_1_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_bresp IconText {sum_1_s_axi_bresp}
	dict set TopLevelPortInterface sum_1_s_axi_bresp Direction out
	dict set TopLevelPortInterface sum_1_s_axi_bresp Period 1
	dict set TopLevelPortInterface sum_1_s_axi_bresp Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_bresp Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Name {sum_1_s_axi_bvalid}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Type -
	dict set TopLevelPortInterface sum_1_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Width 1
	dict set TopLevelPortInterface sum_1_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid IconText {sum_1_s_axi_bvalid}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Direction out
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Period 1
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_bready Name {sum_1_s_axi_bready}
	dict set TopLevelPortInterface sum_1_s_axi_bready Type -
	dict set TopLevelPortInterface sum_1_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_bready Width 1
	dict set TopLevelPortInterface sum_1_s_axi_bready DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_bready IconText {sum_1_s_axi_bready}
	dict set TopLevelPortInterface sum_1_s_axi_bready Direction in
	dict set TopLevelPortInterface sum_1_s_axi_bready Period 1
	dict set TopLevelPortInterface sum_1_s_axi_bready Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_bready Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_araddr Name {sum_1_s_axi_araddr}
	dict set TopLevelPortInterface sum_1_s_axi_araddr Type -
	dict set TopLevelPortInterface sum_1_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_araddr Width 7
	dict set TopLevelPortInterface sum_1_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_araddr IconText {sum_1_s_axi_araddr}
	dict set TopLevelPortInterface sum_1_s_axi_araddr Direction in
	dict set TopLevelPortInterface sum_1_s_axi_araddr Period 1
	dict set TopLevelPortInterface sum_1_s_axi_araddr Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_araddr Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Name {sum_1_s_axi_arvalid}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Type -
	dict set TopLevelPortInterface sum_1_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Width 1
	dict set TopLevelPortInterface sum_1_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid IconText {sum_1_s_axi_arvalid}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Direction in
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Period 1
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_arready Name {sum_1_s_axi_arready}
	dict set TopLevelPortInterface sum_1_s_axi_arready Type -
	dict set TopLevelPortInterface sum_1_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_arready Width 1
	dict set TopLevelPortInterface sum_1_s_axi_arready DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_arready IconText {sum_1_s_axi_arready}
	dict set TopLevelPortInterface sum_1_s_axi_arready Direction out
	dict set TopLevelPortInterface sum_1_s_axi_arready Period 1
	dict set TopLevelPortInterface sum_1_s_axi_arready Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_arready Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_rdata Name {sum_1_s_axi_rdata}
	dict set TopLevelPortInterface sum_1_s_axi_rdata Type -
	dict set TopLevelPortInterface sum_1_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_rdata Width 32
	dict set TopLevelPortInterface sum_1_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_rdata IconText {sum_1_s_axi_rdata}
	dict set TopLevelPortInterface sum_1_s_axi_rdata Direction out
	dict set TopLevelPortInterface sum_1_s_axi_rdata Period 1
	dict set TopLevelPortInterface sum_1_s_axi_rdata Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_rdata Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_rresp Name {sum_1_s_axi_rresp}
	dict set TopLevelPortInterface sum_1_s_axi_rresp Type -
	dict set TopLevelPortInterface sum_1_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_rresp Width 2
	dict set TopLevelPortInterface sum_1_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_rresp IconText {sum_1_s_axi_rresp}
	dict set TopLevelPortInterface sum_1_s_axi_rresp Direction out
	dict set TopLevelPortInterface sum_1_s_axi_rresp Period 1
	dict set TopLevelPortInterface sum_1_s_axi_rresp Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_rresp Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Name {sum_1_s_axi_rvalid}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Type -
	dict set TopLevelPortInterface sum_1_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Width 1
	dict set TopLevelPortInterface sum_1_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid IconText {sum_1_s_axi_rvalid}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Direction out
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Period 1
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface sum_1_s_axi_rready Name {sum_1_s_axi_rready}
	dict set TopLevelPortInterface sum_1_s_axi_rready Type -
	dict set TopLevelPortInterface sum_1_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sum_1_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface sum_1_s_axi_rready Width 1
	dict set TopLevelPortInterface sum_1_s_axi_rready DatFile {}
	dict set TopLevelPortInterface sum_1_s_axi_rready IconText {sum_1_s_axi_rready}
	dict set TopLevelPortInterface sum_1_s_axi_rready Direction in
	dict set TopLevelPortInterface sum_1_s_axi_rready Period 1
	dict set TopLevelPortInterface sum_1_s_axi_rready Interface 5
	dict set TopLevelPortInterface sum_1_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface sum_1_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface sum_1_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface sum_1_s_axi_rready Locs {}
	dict set TopLevelPortInterface sum_1_s_axi_rready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {sum_1}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {sum_1_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {sum_1_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort gateway_in2 Name {gateway_in2}
	dict set MemoryMappedPort gateway_in2 Type Bool
	dict set MemoryMappedPort gateway_in2 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_in2 BinaryPoint 0
	dict set MemoryMappedPort gateway_in2 Width 1
	dict set MemoryMappedPort gateway_in2 DatFile {sum_1_gateway_in2.dat}
	dict set MemoryMappedPort gateway_in2 AddressOffset 0
	dict set MemoryMappedPort gateway_in2 IconText {Gateway In2}
	dict set MemoryMappedPort gateway_in2 Direction in
	dict set MemoryMappedPort gateway_in2 Period 35
	dict set MemoryMappedPort gateway_in2 Interface 2
	dict set MemoryMappedPort gateway_in2 InterfaceName {}
	dict set MemoryMappedPort gateway_in2 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_in2 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_in2 Locs {}
	dict set MemoryMappedPort gateway_in2 IOStandard {}
	dict set MemoryMappedPort gateway_in1 Name {gateway_in1}
	dict set MemoryMappedPort gateway_in1 Type Fix_12_0
	dict set MemoryMappedPort gateway_in1 ArithmeticType xlSigned
	dict set MemoryMappedPort gateway_in1 BinaryPoint 0
	dict set MemoryMappedPort gateway_in1 Width 12
	dict set MemoryMappedPort gateway_in1 DatFile {sum_1_gateway_in1.dat}
	dict set MemoryMappedPort gateway_in1 AddressOffset 4
	dict set MemoryMappedPort gateway_in1 IconText {Gateway In1}
	dict set MemoryMappedPort gateway_in1 Direction in
	dict set MemoryMappedPort gateway_in1 Period 1
	dict set MemoryMappedPort gateway_in1 Interface 2
	dict set MemoryMappedPort gateway_in1 InterfaceName {}
	dict set MemoryMappedPort gateway_in1 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_in1 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_in1 Locs {}
	dict set MemoryMappedPort gateway_in1 IOStandard {}
	dict set MemoryMappedPort gateway_in Name {gateway_in}
	dict set MemoryMappedPort gateway_in Type Fix_12_0
	dict set MemoryMappedPort gateway_in ArithmeticType xlSigned
	dict set MemoryMappedPort gateway_in BinaryPoint 0
	dict set MemoryMappedPort gateway_in Width 12
	dict set MemoryMappedPort gateway_in DatFile {sum_1_gateway_in.dat}
	dict set MemoryMappedPort gateway_in AddressOffset 8
	dict set MemoryMappedPort gateway_in IconText {Gateway In}
	dict set MemoryMappedPort gateway_in Direction in
	dict set MemoryMappedPort gateway_in Period 1
	dict set MemoryMappedPort gateway_in Interface 2
	dict set MemoryMappedPort gateway_in InterfaceName {}
	dict set MemoryMappedPort gateway_in InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_in ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_in Locs {}
	dict set MemoryMappedPort gateway_in IOStandard {}
	dict set MemoryMappedPort gateway_out Name {gateway_out}
	dict set MemoryMappedPort gateway_out Type UFix_32_0
	dict set MemoryMappedPort gateway_out ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out BinaryPoint 0
	dict set MemoryMappedPort gateway_out Width 32
	dict set MemoryMappedPort gateway_out DatFile {sum_1_gateway_out.dat}
	dict set MemoryMappedPort gateway_out AddressOffset 12
	dict set MemoryMappedPort gateway_out IconText {Gateway Out}
	dict set MemoryMappedPort gateway_out Direction out
	dict set MemoryMappedPort gateway_out Period 1
	dict set MemoryMappedPort gateway_out Interface 2
	dict set MemoryMappedPort gateway_out InterfaceName {}
	dict set MemoryMappedPort gateway_out InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out Locs {}
	dict set MemoryMappedPort gateway_out IOStandard {}
	dict set MemoryMappedPort gateway_out2 Name {gateway_out2}
	dict set MemoryMappedPort gateway_out2 Type UFix_1_0
	dict set MemoryMappedPort gateway_out2 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out2 BinaryPoint 0
	dict set MemoryMappedPort gateway_out2 Width 1
	dict set MemoryMappedPort gateway_out2 DatFile {sum_1_gateway_out2.dat}
	dict set MemoryMappedPort gateway_out2 AddressOffset 16
	dict set MemoryMappedPort gateway_out2 IconText {Gateway Out2}
	dict set MemoryMappedPort gateway_out2 Direction out
	dict set MemoryMappedPort gateway_out2 Period 1
	dict set MemoryMappedPort gateway_out2 Interface 2
	dict set MemoryMappedPort gateway_out2 InterfaceName {}
	dict set MemoryMappedPort gateway_out2 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out2 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out2 Locs {}
	dict set MemoryMappedPort gateway_out2 IOStandard {}
	dict set MemoryMappedPort gateway_out3 Name {gateway_out3}
	dict set MemoryMappedPort gateway_out3 Type UFix_25_0
	dict set MemoryMappedPort gateway_out3 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out3 BinaryPoint 0
	dict set MemoryMappedPort gateway_out3 Width 25
	dict set MemoryMappedPort gateway_out3 DatFile {sum_1_gateway_out3.dat}
	dict set MemoryMappedPort gateway_out3 AddressOffset 20
	dict set MemoryMappedPort gateway_out3 IconText {Gateway Out3}
	dict set MemoryMappedPort gateway_out3 Direction out
	dict set MemoryMappedPort gateway_out3 Period 1
	dict set MemoryMappedPort gateway_out3 Interface 2
	dict set MemoryMappedPort gateway_out3 InterfaceName {}
	dict set MemoryMappedPort gateway_out3 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out3 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out3 Locs {}
	dict set MemoryMappedPort gateway_out3 IOStandard {}
	dict set MemoryMappedPort gateway_out1 Name {gateway_out1}
	dict set MemoryMappedPort gateway_out1 Type UFix_1_0
	dict set MemoryMappedPort gateway_out1 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out1 BinaryPoint 0
	dict set MemoryMappedPort gateway_out1 Width 1
	dict set MemoryMappedPort gateway_out1 DatFile {sum_1_gateway_out1.dat}
	dict set MemoryMappedPort gateway_out1 AddressOffset 24
	dict set MemoryMappedPort gateway_out1 IconText {Gateway Out1}
	dict set MemoryMappedPort gateway_out1 Direction out
	dict set MemoryMappedPort gateway_out1 Period 1
	dict set MemoryMappedPort gateway_out1 Interface 2
	dict set MemoryMappedPort gateway_out1 InterfaceName {}
	dict set MemoryMappedPort gateway_out1 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out1 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out1 Locs {}
	dict set MemoryMappedPort gateway_out1 IOStandard {}
	dict set MemoryMappedPort gateway_out16 Name {gateway_out16}
	dict set MemoryMappedPort gateway_out16 Type UFix_10_0
	dict set MemoryMappedPort gateway_out16 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out16 BinaryPoint 0
	dict set MemoryMappedPort gateway_out16 Width 10
	dict set MemoryMappedPort gateway_out16 DatFile {sum_1_gateway_out16.dat}
	dict set MemoryMappedPort gateway_out16 AddressOffset 28
	dict set MemoryMappedPort gateway_out16 IconText {Gateway Out16}
	dict set MemoryMappedPort gateway_out16 Direction out
	dict set MemoryMappedPort gateway_out16 Period 1
	dict set MemoryMappedPort gateway_out16 Interface 2
	dict set MemoryMappedPort gateway_out16 InterfaceName {}
	dict set MemoryMappedPort gateway_out16 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out16 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out16 Locs {}
	dict set MemoryMappedPort gateway_out16 IOStandard {}
	dict set MemoryMappedPort gateway_out17 Name {gateway_out17}
	dict set MemoryMappedPort gateway_out17 Type UFix_4_0
	dict set MemoryMappedPort gateway_out17 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out17 BinaryPoint 0
	dict set MemoryMappedPort gateway_out17 Width 4
	dict set MemoryMappedPort gateway_out17 DatFile {sum_1_gateway_out17.dat}
	dict set MemoryMappedPort gateway_out17 AddressOffset 32
	dict set MemoryMappedPort gateway_out17 IconText {Gateway Out17}
	dict set MemoryMappedPort gateway_out17 Direction out
	dict set MemoryMappedPort gateway_out17 Period 1
	dict set MemoryMappedPort gateway_out17 Interface 2
	dict set MemoryMappedPort gateway_out17 InterfaceName {}
	dict set MemoryMappedPort gateway_out17 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out17 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out17 Locs {}
	dict set MemoryMappedPort gateway_out17 IOStandard {}
	dict set MemoryMappedPort gateway_out4 Name {gateway_out4}
	dict set MemoryMappedPort gateway_out4 Type UFix_25_0
	dict set MemoryMappedPort gateway_out4 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out4 BinaryPoint 0
	dict set MemoryMappedPort gateway_out4 Width 25
	dict set MemoryMappedPort gateway_out4 DatFile {sum_1_gateway_out4.dat}
	dict set MemoryMappedPort gateway_out4 AddressOffset 36
	dict set MemoryMappedPort gateway_out4 IconText {Gateway Out4}
	dict set MemoryMappedPort gateway_out4 Direction out
	dict set MemoryMappedPort gateway_out4 Period 1
	dict set MemoryMappedPort gateway_out4 Interface 2
	dict set MemoryMappedPort gateway_out4 InterfaceName {}
	dict set MemoryMappedPort gateway_out4 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out4 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out4 Locs {}
	dict set MemoryMappedPort gateway_out4 IOStandard {}
	dict set MemoryMappedPort gateway_out5 Name {gateway_out5}
	dict set MemoryMappedPort gateway_out5 Type UFix_1_0
	dict set MemoryMappedPort gateway_out5 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out5 BinaryPoint 0
	dict set MemoryMappedPort gateway_out5 Width 1
	dict set MemoryMappedPort gateway_out5 DatFile {sum_1_gateway_out5.dat}
	dict set MemoryMappedPort gateway_out5 AddressOffset 40
	dict set MemoryMappedPort gateway_out5 IconText {Gateway Out5}
	dict set MemoryMappedPort gateway_out5 Direction out
	dict set MemoryMappedPort gateway_out5 Period 1
	dict set MemoryMappedPort gateway_out5 Interface 2
	dict set MemoryMappedPort gateway_out5 InterfaceName {}
	dict set MemoryMappedPort gateway_out5 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out5 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out5 Locs {}
	dict set MemoryMappedPort gateway_out5 IOStandard {}
	dict set MemoryMappedPort gateway_out6 Name {gateway_out6}
	dict set MemoryMappedPort gateway_out6 Type UFix_9_0
	dict set MemoryMappedPort gateway_out6 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out6 BinaryPoint 0
	dict set MemoryMappedPort gateway_out6 Width 9
	dict set MemoryMappedPort gateway_out6 DatFile {sum_1_gateway_out6.dat}
	dict set MemoryMappedPort gateway_out6 AddressOffset 44
	dict set MemoryMappedPort gateway_out6 IconText {Gateway Out6}
	dict set MemoryMappedPort gateway_out6 Direction out
	dict set MemoryMappedPort gateway_out6 Period 1
	dict set MemoryMappedPort gateway_out6 Interface 2
	dict set MemoryMappedPort gateway_out6 InterfaceName {}
	dict set MemoryMappedPort gateway_out6 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out6 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out6 Locs {}
	dict set MemoryMappedPort gateway_out6 IOStandard {}
	dict set MemoryMappedPort gateway_out7 Name {gateway_out7}
	dict set MemoryMappedPort gateway_out7 Type UFix_9_0
	dict set MemoryMappedPort gateway_out7 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out7 BinaryPoint 0
	dict set MemoryMappedPort gateway_out7 Width 9
	dict set MemoryMappedPort gateway_out7 DatFile {sum_1_gateway_out7.dat}
	dict set MemoryMappedPort gateway_out7 AddressOffset 48
	dict set MemoryMappedPort gateway_out7 IconText {Gateway Out7}
	dict set MemoryMappedPort gateway_out7 Direction out
	dict set MemoryMappedPort gateway_out7 Period 1
	dict set MemoryMappedPort gateway_out7 Interface 2
	dict set MemoryMappedPort gateway_out7 InterfaceName {}
	dict set MemoryMappedPort gateway_out7 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out7 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out7 Locs {}
	dict set MemoryMappedPort gateway_out7 IOStandard {}
	dict set MemoryMappedPort gateway_out18 Name {gateway_out18}
	dict set MemoryMappedPort gateway_out18 Type UFix_32_0
	dict set MemoryMappedPort gateway_out18 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out18 BinaryPoint 0
	dict set MemoryMappedPort gateway_out18 Width 32
	dict set MemoryMappedPort gateway_out18 DatFile {sum_1_gateway_out18.dat}
	dict set MemoryMappedPort gateway_out18 AddressOffset 52
	dict set MemoryMappedPort gateway_out18 IconText {Gateway Out18}
	dict set MemoryMappedPort gateway_out18 Direction out
	dict set MemoryMappedPort gateway_out18 Period 1
	dict set MemoryMappedPort gateway_out18 Interface 2
	dict set MemoryMappedPort gateway_out18 InterfaceName {}
	dict set MemoryMappedPort gateway_out18 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out18 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out18 Locs {}
	dict set MemoryMappedPort gateway_out18 IOStandard {}
	dict set MemoryMappedPort gateway_out8 Name {gateway_out8}
	dict set MemoryMappedPort gateway_out8 Type UFix_3_0
	dict set MemoryMappedPort gateway_out8 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out8 BinaryPoint 0
	dict set MemoryMappedPort gateway_out8 Width 3
	dict set MemoryMappedPort gateway_out8 DatFile {sum_1_gateway_out8.dat}
	dict set MemoryMappedPort gateway_out8 AddressOffset 56
	dict set MemoryMappedPort gateway_out8 IconText {Gateway Out8}
	dict set MemoryMappedPort gateway_out8 Direction out
	dict set MemoryMappedPort gateway_out8 Period 1
	dict set MemoryMappedPort gateway_out8 Interface 2
	dict set MemoryMappedPort gateway_out8 InterfaceName {}
	dict set MemoryMappedPort gateway_out8 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out8 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out8 Locs {}
	dict set MemoryMappedPort gateway_out8 IOStandard {}
	dict set MemoryMappedPort gateway_out9 Name {gateway_out9}
	dict set MemoryMappedPort gateway_out9 Type UFix_1_0
	dict set MemoryMappedPort gateway_out9 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out9 BinaryPoint 0
	dict set MemoryMappedPort gateway_out9 Width 1
	dict set MemoryMappedPort gateway_out9 DatFile {sum_1_gateway_out9.dat}
	dict set MemoryMappedPort gateway_out9 AddressOffset 60
	dict set MemoryMappedPort gateway_out9 IconText {Gateway Out9}
	dict set MemoryMappedPort gateway_out9 Direction out
	dict set MemoryMappedPort gateway_out9 Period 1
	dict set MemoryMappedPort gateway_out9 Interface 2
	dict set MemoryMappedPort gateway_out9 InterfaceName {}
	dict set MemoryMappedPort gateway_out9 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out9 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out9 Locs {}
	dict set MemoryMappedPort gateway_out9 IOStandard {}
	dict set MemoryMappedPort gateway_out10 Name {gateway_out10}
	dict set MemoryMappedPort gateway_out10 Type UFix_8_0
	dict set MemoryMappedPort gateway_out10 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out10 BinaryPoint 0
	dict set MemoryMappedPort gateway_out10 Width 8
	dict set MemoryMappedPort gateway_out10 DatFile {sum_1_gateway_out10.dat}
	dict set MemoryMappedPort gateway_out10 AddressOffset 64
	dict set MemoryMappedPort gateway_out10 IconText {Gateway Out10}
	dict set MemoryMappedPort gateway_out10 Direction out
	dict set MemoryMappedPort gateway_out10 Period 1
	dict set MemoryMappedPort gateway_out10 Interface 2
	dict set MemoryMappedPort gateway_out10 InterfaceName {}
	dict set MemoryMappedPort gateway_out10 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out10 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out10 Locs {}
	dict set MemoryMappedPort gateway_out10 IOStandard {}
	dict set MemoryMappedPort gateway_out11 Name {gateway_out11}
	dict set MemoryMappedPort gateway_out11 Type UFix_100_0
	dict set MemoryMappedPort gateway_out11 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out11 BinaryPoint 0
	dict set MemoryMappedPort gateway_out11 Width 100
	dict set MemoryMappedPort gateway_out11 DatFile {sum_1_gateway_out11.dat}
	dict set MemoryMappedPort gateway_out11 AddressOffset 68
	dict set MemoryMappedPort gateway_out11 IconText {Gateway Out11}
	dict set MemoryMappedPort gateway_out11 Direction out
	dict set MemoryMappedPort gateway_out11 Period 1
	dict set MemoryMappedPort gateway_out11 Interface 2
	dict set MemoryMappedPort gateway_out11 InterfaceName {}
	dict set MemoryMappedPort gateway_out11 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out11 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out11 Locs {}
	dict set MemoryMappedPort gateway_out11 IOStandard {}
	dict set MemoryMappedPort gateway_out12 Name {gateway_out12}
	dict set MemoryMappedPort gateway_out12 Type UFix_100_0
	dict set MemoryMappedPort gateway_out12 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out12 BinaryPoint 0
	dict set MemoryMappedPort gateway_out12 Width 100
	dict set MemoryMappedPort gateway_out12 DatFile {sum_1_gateway_out12.dat}
	dict set MemoryMappedPort gateway_out12 AddressOffset 84
	dict set MemoryMappedPort gateway_out12 IconText {Gateway Out12}
	dict set MemoryMappedPort gateway_out12 Direction out
	dict set MemoryMappedPort gateway_out12 Period 1
	dict set MemoryMappedPort gateway_out12 Interface 2
	dict set MemoryMappedPort gateway_out12 InterfaceName {}
	dict set MemoryMappedPort gateway_out12 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out12 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out12 Locs {}
	dict set MemoryMappedPort gateway_out12 IOStandard {}
	dict set MemoryMappedPort gateway_out13 Name {gateway_out13}
	dict set MemoryMappedPort gateway_out13 Type UFix_4_0
	dict set MemoryMappedPort gateway_out13 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out13 BinaryPoint 0
	dict set MemoryMappedPort gateway_out13 Width 4
	dict set MemoryMappedPort gateway_out13 DatFile {sum_1_gateway_out13.dat}
	dict set MemoryMappedPort gateway_out13 AddressOffset 100
	dict set MemoryMappedPort gateway_out13 IconText {Gateway Out13}
	dict set MemoryMappedPort gateway_out13 Direction out
	dict set MemoryMappedPort gateway_out13 Period 1
	dict set MemoryMappedPort gateway_out13 Interface 2
	dict set MemoryMappedPort gateway_out13 InterfaceName {}
	dict set MemoryMappedPort gateway_out13 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out13 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out13 Locs {}
	dict set MemoryMappedPort gateway_out13 IOStandard {}
	dict set MemoryMappedPort gateway_out14 Name {gateway_out14}
	dict set MemoryMappedPort gateway_out14 Type UFix_25_0
	dict set MemoryMappedPort gateway_out14 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out14 BinaryPoint 0
	dict set MemoryMappedPort gateway_out14 Width 25
	dict set MemoryMappedPort gateway_out14 DatFile {sum_1_gateway_out14.dat}
	dict set MemoryMappedPort gateway_out14 AddressOffset 104
	dict set MemoryMappedPort gateway_out14 IconText {Gateway Out14}
	dict set MemoryMappedPort gateway_out14 Direction out
	dict set MemoryMappedPort gateway_out14 Period 1
	dict set MemoryMappedPort gateway_out14 Interface 2
	dict set MemoryMappedPort gateway_out14 InterfaceName {}
	dict set MemoryMappedPort gateway_out14 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out14 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out14 Locs {}
	dict set MemoryMappedPort gateway_out14 IOStandard {}
	dict set MemoryMappedPort gateway_out15 Name {gateway_out15}
	dict set MemoryMappedPort gateway_out15 Type UFix_10_0
	dict set MemoryMappedPort gateway_out15 ArithmeticType xlUnsigned
	dict set MemoryMappedPort gateway_out15 BinaryPoint 0
	dict set MemoryMappedPort gateway_out15 Width 10
	dict set MemoryMappedPort gateway_out15 DatFile {sum_1_gateway_out15.dat}
	dict set MemoryMappedPort gateway_out15 AddressOffset 108
	dict set MemoryMappedPort gateway_out15 IconText {Gateway Out15}
	dict set MemoryMappedPort gateway_out15 Direction out
	dict set MemoryMappedPort gateway_out15 Period 1
	dict set MemoryMappedPort gateway_out15 Interface 2
	dict set MemoryMappedPort gateway_out15 InterfaceName {}
	dict set MemoryMappedPort gateway_out15 InterfaceString {CONTROL}
	dict set MemoryMappedPort gateway_out15 ClockDomain {sum_1}
	dict set MemoryMappedPort gateway_out15 Locs {}
	dict set MemoryMappedPort gateway_out15 IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project