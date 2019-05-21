#
#	File import script for the Wupper-Interlaken core hdl project
#
#	

#Script Configuration

set proj_name wupper_interlaken_vc709
# Set the supportfiles directory path
set scriptdir [pwd]
set proj_dir $scriptdir/../

#Close currently open project and create a new one. (OVERWRITES PROJECT!!)
close_project -quiet

create_project -force -part xc7vx690tffg1761-2 $proj_name $proj_dir/Projects/$proj_name


set_property target_language VHDL [current_project]
set_property default_lib work [current_project]

# ----------------------------------------------------------
# (New) wupper_interlaken files
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/shared/wupper_interlaken_top.vhd


# ----------------------------------------------------------
# PCIe DMA top module
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/shared/wupper_oc_top.vhd
read_vhdl -library work $proj_dir/sources/shared/housekeeping.vhd
read_vhdl -library work $proj_dir/sources/shared/i2c.vhd
read_vhdl -library work $proj_dir/sources/shared/i2c_interface.vhd
read_vhdl -library work $proj_dir/sources/shared/dna.vhd
import_ip $proj_dir/sources/ip_cores/vc709/I2C_RDFifo.xci
import_ip $proj_dir/sources/ip_cores/vc709/I2C_WRFifo.xci
# ----------------------------------------------------------
# packages
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/packages/pcie_package.vhd

# ----------------------------------------------------------
# dma sources
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/pcie/wupper_core.vhd
read_vhdl -library work $proj_dir/sources/pcie/dma_read_write.vhd
read_vhdl -library work $proj_dir/sources/pcie/intr_ctrl.vhd
read_vhdl -library work $proj_dir/sources/pcie/wupper.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_ep_wrap.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_init.vhd
read_vhdl -library work $proj_dir/sources/pcie/dma_control.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_clocking.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_slow_clock.vhd

# ----------------------------------------------------------
# Wishbone
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/Wishbone/wb_intercon.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wb_memory.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wb_syscon.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wishbone_pkg.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/genram_pkg.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wupper_to_wb.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/xwb_crossbar.vhd

import_ip $proj_dir/sources/ip_cores/vc709/wishbone_memory.xci
import_ip $proj_dir/sources/ip_cores/vc709/wishbone_to_wupper_fifo.xci
import_ip $proj_dir/sources/ip_cores/vc709/wupper_to_wishbone_fifo.xci



#for Virtex709 parts
import_ip $proj_dir/sources/ip_cores/vc709/pcie_x8_gen3_3_0.xci
#for Artix Ultrascale parts
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/pcie3_ultrascale_7038_stub.vhdl
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/pcie3_ultrascale_7039_stub.vhdl
import_ip $proj_dir/sources/ip_cores/vc709/clk_wiz_40.xci

# ----------------------------------------------------------
# example application
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/application/application.vhd
read_vhdl -library work $proj_dir/sources/application/xadc_drp.vhd
import_ip $proj_dir/sources/ip_cores/vc709/xadc_wiz_0.xci
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/system_management_wiz_0_stub.vhdl

import_ip $proj_dir/sources/ip_cores/vc709/fifo128KB_256bit.xci  
import_ip $proj_dir/sources/ip_cores/vc709/fifo16KB_256bit.xci  

upgrade_ip [get_ips  {I2C_RDFifo I2C_WRFifo pcie_x8_gen3_3_0 clk_wiz_40 xadc_wiz_0 fifo128KB_256bit fifo4KB_256bit}]

read_xdc -verbose $proj_dir/constraints/pcie_dma_top_VC709.xdc
close [ open $proj_dir/constraints/probes.xdc w ]
read_xdc -verbose $proj_dir/constraints/probes.xdc
set_property target_constrs_file $proj_dir/constraints/probes.xdc [current_fileset -constrset]
set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE MoreGlobalIterations [get_runs impl_1]


# ----------------------------------------------------------
# Core1990Interlaken top file
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/interlaken/interlaken_interface.vhd

add_files -fileset sim_1 -norecurse $proj_dir/simulation/interlaken_interface_tb.vhd

# ----------------------------------------------------------
# Interlaken CRC
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/interlaken/crc/crc-24.vhd
read_vhdl -library work $proj_dir/sources/interlaken/crc/crc-32.vhd

# ----------------------------------------------------------
# Interlaken Transmitter
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/interlaken/transmitter/framing_burst.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/framing_meta.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/scrambler.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/encoder.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/interlaken_transmitter.vhd

# ----------------------------------------------------------
# Interlaken Receiver
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/interlaken/receiver/deframing_burst.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/deframing_meta.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/descrambler.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/decoder.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/interlaken_receiver.vhd

# ----------------------------------------------------------
# IP cores (Interlaken)
# ----------------------------------------------------------

import_ip $proj_dir/sources/ip_cores/vc709/clk_40MHz.xci
import_ip $proj_dir/sources/ip_cores/vc709/Transceiver_10g_64b67b.xci
import_ip $proj_dir/sources/ip_cores/vc709/RX_FIFO.xci
import_ip $proj_dir/sources/ip_cores/vc709/TX_FIFO.xci
# Generate all the output products
generate_target all [get_files *clk_40MHz.xci]
# Create a DCP for the IP
synth_ip [get_files *clk_40MHz.xci]
# Query all the files for this IP (optional)
#get_files -all -of_objects [get_files *clk_40MHz.xci]

# ----------------------------------------------------------
# finish project initilization
# ----------------------------------------------------------
upgrade_ip [get_ips  {clk_40MHz Transceiver_10g_64b67b RX_FIFO TX_FIFO} ]

read_xdc -verbose $proj_dir/constraints/Core1990_Constraints.xdc

#close [ open $proj_dir/constraints/probes.xdc w ]
#read_xdc -verbose $proj_dir/constraints/probes.xdc
#set_property target_constrs_file $proj_dir/constraints/probes.xdc [current_fileset -constrset]
#set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE MoreGlobalIterations [get_runs impl_1]#
#	File import script for the Wupper-Interlaken core hdl project
#
#	

#Script Configuration for vc709

set proj_name wupper_interlaken 
# Set the supportfiles directory path
set scriptdir [pwd]
set proj_dir $scriptdir/../

#Close currently open project and create a new one. (OVERWRITES PROJECT!!)
close_project -quiet

create_project -force -part xc7vx690tffg1761-2 $proj_name $proj_dir/Projects/$proj_name


set_property target_language VHDL [current_project]
set_property default_lib work [current_project]

# ----------------------------------------------------------
# (New) wupper_interlaken files
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/shared/wupper_interlaken_top.vhd


# ----------------------------------------------------------
# PCIe DMA top module
# ----------------------------------------------------------
#read_vhdl -library work $proj_dir/sources/shared/wupper_oc_top.vhd
read_vhdl -library work $proj_dir/sources/shared/housekeeping.vhd
read_vhdl -library work $proj_dir/sources/shared/i2c.vhd
read_vhdl -library work $proj_dir/sources/shared/i2c_interface.vhd
read_vhdl -library work $proj_dir/sources/shared/dna.vhd
import_ip $proj_dir/sources/ip_cores/vc709/I2C_RDFifo.xci
import_ip $proj_dir/sources/ip_cores/vc709/I2C_WRFifo.xci
# ----------------------------------------------------------
# packages
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/packages/pcie_package.vhd

# ----------------------------------------------------------
# dma sources
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/pcie/wupper_core.vhd
read_vhdl -library work $proj_dir/sources/pcie/dma_read_write.vhd
read_vhdl -library work $proj_dir/sources/pcie/intr_ctrl.vhd
read_vhdl -library work $proj_dir/sources/pcie/wupper.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_ep_wrap.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_init.vhd
read_vhdl -library work $proj_dir/sources/pcie/dma_control.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_clocking.vhd
read_vhdl -library work $proj_dir/sources/pcie/pcie_slow_clock.vhd

# ----------------------------------------------------------
# Wishbone
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/Wishbone/wb_intercon.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wb_memory.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wb_syscon.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wishbone_pkg.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/genram_pkg.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/wupper_to_wb.vhd
read_vhdl -library work $proj_dir/sources/Wishbone/xwb_crossbar.vhd

import_ip $proj_dir/sources/ip_cores/vc709/wishbone_memory.xci
import_ip $proj_dir/sources/ip_cores/vc709/wishbone_to_wupper_fifo.xci
import_ip $proj_dir/sources/ip_cores/vc709/wupper_to_wishbone_fifo.xci



#for Virtex709 parts
import_ip $proj_dir/sources/ip_cores/vc709/pcie_x8_gen3_3_0.xci
#for Artix Ultrascale parts
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/pcie3_ultrascale_7038_stub.vhdl
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/pcie3_ultrascale_7039_stub.vhdl
import_ip $proj_dir/sources/ip_cores/vc709/clk_wiz_40.xci

# ----------------------------------------------------------
# example application
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/application/application.vhd
read_vhdl -library work $proj_dir/sources/application/xadc_drp.vhd
import_ip $proj_dir/sources/ip_cores/vc709/xadc_wiz_0.xci
read_vhdl -library work $proj_dir/sources/ip_cores/vc707/system_management_wiz_0_stub.vhdl

import_ip $proj_dir/sources/ip_cores/vc709/fifo128KB_256bit.xci  
import_ip $proj_dir/sources/ip_cores/vc709/fifo16KB_256bit.xci  

upgrade_ip [get_ips  {I2C_RDFifo I2C_WRFifo pcie_x8_gen3_3_0 clk_wiz_40 xadc_wiz_0 fifo128KB_256bit fifo4KB_256bit}]

read_xdc -verbose $proj_dir/constraints/pcie_dma_top_VC709.xdc
close [ open $proj_dir/constraints/probes.xdc w ]
read_xdc -verbose $proj_dir/constraints/probes.xdc
set_property target_constrs_file $proj_dir/constraints/probes.xdc [current_fileset -constrset]
set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE MoreGlobalIterations [get_runs impl_1]


# ----------------------------------------------------------
# Core1990Interlaken top file
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/interlaken/interlaken_interface.vhd

add_files -fileset sim_1 -norecurse $proj_dir/simulation/interlaken_interface_tb.vhd

# ----------------------------------------------------------
# Interlaken CRC
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/interlaken/crc/crc-24.vhd
read_vhdl -library work $proj_dir/sources/interlaken/crc/crc-32.vhd

# ----------------------------------------------------------
# Interlaken Transmitter
# ----------------------------------------------------------

# BLOCK_SYNC_SM Module
# Generated by Xilinx 7 Series FPGAs Transceivers Wizard
read_vhdl -library work $proj_dir/sources/interlaken/Transceiver/transceiver_10g_64b67b_block_sync_sm.vhd
#

read_vhdl -library work $proj_dir/sources/interlaken/transmitter/framing_burst.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/framing_meta.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/scrambler.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/encoder.vhd
read_vhdl -library work $proj_dir/sources/interlaken/transmitter/interlaken_transmitter.vhd

# ----------------------------------------------------------
# Interlaken Receiver
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/interlaken/receiver/deframing_burst.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/deframing_meta.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/descrambler.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/decoder.vhd
read_vhdl -library work $proj_dir/sources/interlaken/receiver/interlaken_receiver.vhd

# ----------------------------------------------------------
# IP cores (Interlaken)
# ----------------------------------------------------------

import_ip $proj_dir/sources/ip_cores/vc709/clk_40MHz.xci
import_ip $proj_dir/sources/ip_cores/vc709/Transceiver_10g_64b67b.xci
import_ip $proj_dir/sources/ip_cores/vc709/RX_FIFO.xci
import_ip $proj_dir/sources/ip_cores/vc709/TX_FIFO.xci
# Generate all the output products
generate_target all [get_files *clk_40MHz.xci]
# Create a DCP for the IP
synth_ip [get_files *clk_40MHz.xci]
# Query all the files for this IP (optional)
#get_files -all -of_objects [get_files *clk_40MHz.xci]

# ----------------------------------------------------------
# finish project initilization
# ----------------------------------------------------------
upgrade_ip [get_ips  {clk_40MHz Transceiver_10g_64b67b RX_FIFO TX_FIFO} ]

read_xdc -verbose $proj_dir/constraints/Core1990_Constraints.xdc

#close [ open $proj_dir/constraints/probes.xdc w ]
#read_xdc -verbose $proj_dir/constraints/probes.xdc
#set_property target_constrs_file $proj_dir/constraints/probes.xdc [current_fileset -constrset]
#set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE MoreGlobalIterations [get_runs impl_1]


set_property top wupper_interlaken_top [current_fileset]

#Make this file invalid for simulation, we will replace it with a simulation only file.
set_property used_in_simulation false [get_files  dma_read_write.vhd]
set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse $proj_dir/sources/pcie/dma_read_write_sim.vhd


add_files -fileset sim_1 -norecurse $proj_dir/simulation/pcie_x8_gen3_3_0_stub.vhdl
update_compile_order -fileset sim_1

set_property used_in_simulation true [get_files  $proj_dir/projects/wupper_interlaken/wupper_interlaken.srcs/sources_1/ip/pcie_x8_gen3_3_0/pcie_x8_gen3_3_0.xci]
set_property used_in_simulation false [get_files  $proj_dir/projects/wupper_interlaken/wupper_interlaken.srcs/sources_1/ip/pcie_x8_gen3_3_0/pcie_x8_gen3_3_0.xci]
puts "INFO: Done!"











set_property top wupper_interlaken_top [current_fileset]

#Make this file invalid for simulation, we will replace it with a simulation only file.
set_property used_in_simulation false [get_files  dma_read_write.vhd]
set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse $proj_dir/sources/sources/pcie/dma_read_write_sim.vhd


add_files -fileset sim_1 -norecurse /localstore/et/leover/Wupper-Interlaken/firmware/simulation/pcie_x8_gen3_3_0_stub.vhdl
update_compile_order -fileset sim_1
set_property used_in_simulation true [get_files  /localstore/et/leover/Wupper-Interlaken/firmware/projects/wupper_interlaken/wupper_interlaken.srcs/sources_1/ip/pcie_x8_gen3_3_0/pcie_x8_gen3_3_0.xci]
set_property used_in_simulation false [get_files  /localstore/et/leover/Wupper-Interlaken/firmware/projects/wupper_interlaken/wupper_interlaken.srcs/sources_1/ip/pcie_x8_gen3_3_0/pcie_x8_gen3_3_0.xci]


puts "INFO: Done!"







