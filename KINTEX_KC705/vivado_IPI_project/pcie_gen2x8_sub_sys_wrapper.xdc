
set_property IOSTANDARD LVCMOS25 [get_ports pcie_rst_n]
set_property PULLUP true [get_ports pcie_rst_n]
set_property PACKAGE_PIN G25 [get_ports pcie_rst_n]
set_false_path -from [get_ports pcie_rst_n]

#
# LED Status Indicators for Example Design.
# LED 0-2 should be ON if link is up and functioning correctly
# LED 3 should be blinking if user applicaiton is receiving valid clock
#
#set_property IOSTANDARD LVCMOS15 [get_ports led_0]
#set_property IOSTANDARD LVCMOS15 [get_ports led_1]
#set_property IOSTANDARD LVCMOS15 [get_ports led_2]
#set_property IOSTANDARD LVCMOS15 [get_ports led_3]
# ##SYS RESET = led_0
# ##USER RESET = led_1
# ##USER LINK UP = led_2
# ##USER CLK HEART BEAT = led_3
#set_property PACKAGE_PIN AB8 [get_ports led_0]
#set_property PACKAGE_PIN AA8 [get_ports led_1]
#set_property PACKAGE_PIN AC9 [get_ports led_2]
#set_property PACKAGE_PIN AB9 [get_ports led_3]

set_property LOC IBUFDS_GTE2_X0Y1 [get_cells refclk_ibuf]

set_clock_groups -name TIG_AXI_ARESET_N -asynchronous -group [get_clocks {inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/userclk2}] -group [get_clocks {u_pcie_gen2x8_sub_sys_mig_7series_0_0_mig/u_ddr3_infrastructure/clk_pll_i}]

create_debug_core u_ila_0 labtools_ila_v3
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list pcie_gen2x8_sub_sys_i/pcie_7x_0_user_clk_out]]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WSTRB[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WSTRB[1]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WSTRB[2]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[1]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[2]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[3]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[4]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[5]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[6]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[7]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[8]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[9]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[10]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[11]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[12]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[13]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[14]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[15]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[16]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[17]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[18]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[19]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[20]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[21]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[22]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[23]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[24]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[25]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[26]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[27]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[28]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[29]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[30]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RRESP[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[1]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[2]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[3]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[4]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[5]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[6]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[7]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[8]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[9]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[10]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[11]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[12]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[13]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[14]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[15]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[16]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[17]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[18]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[19]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[20]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[21]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[22]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[23]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[24]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[25]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[26]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[27]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[28]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[29]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[30]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[1]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[2]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[3]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[4]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[5]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[6]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[7]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[8]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[9]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[10]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[11]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[12]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[13]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[14]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[15]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[16]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[17]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[18]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[19]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[20]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[21]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[22]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[23]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[24]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[25]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[26]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[27]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[28]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[29]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[30]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[1]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[2]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[3]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[4]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[5]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[6]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[7]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[8]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[9]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[10]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[11]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[12]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[13]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[14]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[15]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[16]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[17]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[18]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[19]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[20]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[21]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[22]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[23]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[24]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[25]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[26]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[27]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[28]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[29]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[30]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property port_width 2 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_BRESP[0]} {pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARESETN]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list pcie_gen2x8_sub_sys_i/pcie_axi_brdg/inst/u_axiLite_debug/dbg_M_AXI_WVALID]]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
