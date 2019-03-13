#
#	File import script for the core1990 interlaken hdl project
#
#	

#Script Configuration

set proj_name core1990_interlaken_verification
# Set the supportfiles directory path
set scriptdir [pwd]
set proj_dir $scriptdir/../

#Close currently open project and create a new one. (OVERWRITES PROJECT!!)
close_project -quiet

create_project -force -part xcvu9p-flgb2104-2-e $proj_name $proj_dir/projects/$proj_name

set_property target_language VHDL [current_project]
set_property default_lib work [current_project]

# ----------------------------------------------------------
# Core1990 top file
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/interlaken_interface.vhd

add_files -fileset sim_1 -norecurse $proj_dir/simulation/interlaken_interface_tb.vhd

# ----------------------------------------------------------
# CRC
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/crc/crc-24.vhd
read_vhdl -library work $proj_dir/sources/crc/crc-32.vhd

# ----------------------------------------------------------
# Transmitter
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/transmitter/framing_burst.vhd
read_vhdl -library work $proj_dir/sources/transmitter/framing_meta.vhd
read_vhdl -library work $proj_dir/sources/transmitter/scrambler.vhd
read_vhdl -library work $proj_dir/sources/transmitter/encoder.vhd
read_vhdl -library work $proj_dir/sources/transmitter/interlaken_transmitter.vhd

# ----------------------------------------------------------
# Receiver
# ----------------------------------------------------------

read_vhdl -library work $proj_dir/sources/receiver/deframing_burst.vhd
read_vhdl -library work $proj_dir/sources/receiver/deframing_meta.vhd
read_vhdl -library work $proj_dir/sources/receiver/descrambler.vhd
read_vhdl -library work $proj_dir/sources/receiver/decoder.vhd
read_vhdl -library work $proj_dir/sources/receiver/interlaken_receiver.vhd

# ----------------------------------------------------------
# Test bench
# ----------------------------------------------------------
read_vhdl -library work $proj_dir/sources/test/Core1990_verification.vhd

# ----------------------------------------------------------
# IP cores
# ----------------------------------------------------------

import_ip $proj_dir/sources/ip_cores/clk_40MHz.xci
read_vhdl -library work $proj_dir/sources/ip_cores/Transceiver_10g_64b67b_sim_netlist.vhdl
import_ip $proj_dir/sources/ip_cores/interlaken_0.xci
import_ip $proj_dir/sources/ip_cores/RX_FIFO.xci
import_ip $proj_dir/sources/ip_cores/TX_FIFO.xci
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

set_property top interlaken_interface [current_fileset]

puts "INFO: Done!"







