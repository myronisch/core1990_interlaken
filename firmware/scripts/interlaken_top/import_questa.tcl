#
#	File import script for the FELIX hdl project
# 
#
quit -sim
project close
source ../helper/clear_filesets.tcl

set PROJECT_NAME WUPPER_INTERLAKEN_QUESTA

#source ../filesets/wupper_fileset.tcl
#source ../filesets/housekeeping_fileset.tcl
source ../filesets/interlaken_fileset.tcl
#source ../filesets/interlaken_oc_fileset.tcl
#source ../filesets/application_fileset.tcl
#source ../filesets/wb_fileset.tcl


#Actually execute all the filesets
source ./external_editor.tcl
source ../helper/questa_import_generic.tcl

vsim -voptargs="+acc" work.interlaken_interface_tb work.glbl -t ps
project compileoutofdate

#Top entity
add wave -group Top -position insertpoint sim:/interlaken_interface_tb/*

#Lane 0
add wave -group Framing_Burst_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(0)/lane_tx/Framing_Burst/*
add wave -group Framing_Meta_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(0)/lane_tx/Framing_Meta/*
add wave -group Scrambler_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(0)/lane_tx/Scrambling/*
add wave -group Encoder_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(0)/lane_tx/Encoding/*

add wave -group Deframing_Burst_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(0)/lane_rx/Deframing_Burst/*
add wave -group Deframing_Meta_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(0)/lane_rx/Deframing_Meta/*
add wave -group Descrambler_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(0)/lane_rx/Descrambler/*
add wave -group Decoder_0 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(0)/lane_rx/Decoder/*

#Lane 1
add wave -group Framing_Burst_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(1)/lane_tx/Framing_Burst/*
add wave -group Framing_Meta_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(1)/lane_tx/Framing_Meta/*
add wave -group Scrambler_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(1)/lane_tx/Scrambling/*
add wave -group Encoder_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(1)/lane_tx/Encoding/*

add wave -group Deframing_Burst_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(1)/lane_rx/Deframing_Burst/*
add wave -group Deframing_Meta_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(1)/lane_rx/Deframing_Meta/*
add wave -group Descrambler_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(1)/lane_rx/Descrambler/*
add wave -group Decoder_1 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(1)/lane_rx/Decoder/*

#Lane 2
add wave -group Framing_Burst_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(2)/lane_tx/Framing_Burst/*
add wave -group Framing_Meta_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(2)/lane_tx/Framing_Meta/*
add wave -group Scrambler_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(2)/lane_tx/Scrambling/*
add wave -group Encoder_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(2)/lane_tx/Encoding/*

add wave -group Deframing_Burst_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(2)/lane_rx/Deframing_Burst/*
add wave -group Deframing_Meta_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(2)/lane_rx/Deframing_Meta/*
add wave -group Descrambler_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(2)/lane_rx/Descrambler/*
add wave -group Decoder_2 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(2)/lane_rx/Decoder/*

#Lane 3
add wave -group Framing_Burst_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(3)/lane_tx/Framing_Burst/*
add wave -group Framing_Meta_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(3)/lane_tx/Framing_Meta/*
add wave -group Scrambler_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(3)/lane_tx/Scrambling/*
add wave -group Encoder_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_TX/g_lanes(3)/lane_tx/Encoding/*

add wave -group Deframing_Burst_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(3)/lane_rx/Deframing_Burst/*
add wave -group Deframing_Meta_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(3)/lane_rx/Deframing_Meta/*
add wave -group Descrambler_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(3)/lane_rx/Descrambler/*
add wave -group Decoder_3 -position insertpoint sim:/interlaken_interface_tb/uut/Interlaken_RX/g_lanes(3)/lane_rx/Decoder/*

#When LOOPBACK = TRUE
#

#When LOOPBACK = FALSE
add wave -group il0 -position insertpoint sim:/interlaken_interface_tb/g_noloopback/il0/interlaken_instance/*


puts "INFO: Done!"

