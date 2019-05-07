###############################################################################
## This the constraints file for the Core1990 Interlaken project
##
## Family       - virtex7
## Part         - xc7vx485t
## Package      - ffg1761
## Speed grade  - -2
## Transceiver  - X1Y2 (GTX)
##
###############################################################################
## Physical Constraints (geographical constraints)
###############################################################################

## Pin locations of the transceiver and system clock

#User clock from fixed crystal: 156.25MHz input.
set_property PACKAGE_PIN AK34 [get_ports USER_CLK_IN_P]
set_property IOSTANDARD LVDS [get_ports USER_CLK_IN_P]

#Output 156.25MHz towards Si5324 clkin 0
set_property PACKAGE_PIN AW32 [get_ports REC_CLOCK_C_P]
set_property IOSTANDARD LVDS [get_ports REC_CLOCK_C_P]

#200 MHz clock on VC709 board
set_property PACKAGE_PIN H19 [get_ports SYSCLK_P]
set_property IOSTANDARD LVDS [get_ports SYSCLK_P]

#Transceiver SFP enable
set_property PACKAGE_PIN AB41 [get_ports {SFP_TX_DISABLE[0]}]
set_property PACKAGE_PIN Y42 [get_ports {SFP_TX_DISABLE[1]}]
set_property PACKAGE_PIN AC38 [get_ports {SFP_TX_DISABLE[2]}]
set_property PACKAGE_PIN AC40 [get_ports {SFP_TX_DISABLE[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_TX_DISABLE[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_TX_DISABLE[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_TX_DISABLE[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_TX_DISABLE[3]}]

# SFP Loss Of Signal
set_property PACKAGE_PIN Y39 [get_ports {SFP_RX_LOS[0]}]
set_property PACKAGE_PIN AA40 [get_ports {SFP_RX_LOS[1]}]
set_property PACKAGE_PIN AD38 [get_ports {SFP_RX_LOS[2]}]
set_property PACKAGE_PIN AD40 [get_ports {SFP_RX_LOS[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_RX_LOS[0]}] 
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_RX_LOS[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_RX_LOS[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {SFP_RX_LOS[3]}]

#Transceiver SFP clock
set_property PACKAGE_PIN AH8 [get_ports GTREFCLK_IN_P]

#Transceiver optic ports
set_property PACKAGE_PIN AP4 [get_ports TX_Out_P]
set_property PACKAGE_PIN AN6 [get_ports RX_In_P]

### Pin locations and configuration of the status leds
#set_property PACKAGE_PIN AM39 [get_ports Valid_out]
#set_property IOSTANDARD LVCMOS18 [get_ports Valid_out]

#set_property PACKAGE_PIN AN39 [get_ports Lock_Out]
#set_property IOSTANDARD LVCMOS18 [get_ports Lock_Out]

###############################################################################
## Timing constraints
###############################################################################

## Clocks and their speed
create_clock -period 8.000 -name tc_GTREFCLK_IN_P [get_ports GTREFCLK_IN_P]

## Clock relations
set_max_delay -datapath_only -from [get_clocks clkout0*] -to [get_clocks clk_out1_clk_40MHz*] 25.000
set_max_delay -datapath_only -from [get_clocks clk_out1_clk_40MHz*] -to [get_clocks clkout0*] 25.000
set_max_delay -datapath_only -from [get_clocks clkout0*] -to [get_clocks clk_out2_clk_40MHz*] 8.333
set_max_delay -datapath_only -from [get_clocks clk_out2_clk_40MHz*] -to [get_clocks clkout0*] 8.333

###############################################################################
## Resets and False paths
###############################################################################


###############################################################################
