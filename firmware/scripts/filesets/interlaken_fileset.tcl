set VHDL_FILES [concat $VHDL_FILES \
    interlaken/packages/interlaken_package.vhd \
    interlaken/axis_utils/axi_stream_package.vhd \
    interlaken/axis_utils/axis64Fifo.vhd \
    interlaken/crc/crc-24.vhd \
    interlaken/crc/crc-32.vhd \
    interlaken/receiver/decoder.vhd \
    interlaken/receiver/deframing_burst.vhd \
    interlaken/receiver/deframing_meta.vhd \
    interlaken/receiver/descrambler.vhd \
    interlaken/receiver/interlaken_receiver.vhd \
    interlaken/receiver/interlaken_receiver_multiChannel.vhd \
    interlaken/transceiver/transceiver_10g_64b67b_block_sync_sm.vhd \
    interlaken/transmitter/encoder.vhd \
    interlaken/transmitter/framing_burst.vhd \
    interlaken/transmitter/framing_meta.vhd \
    interlaken/transmitter/interlaken_transmitter.vhd \
    interlaken/transmitter/interlaken_transmitter_multiChannel.vhd \
    interlaken/transmitter/scrambler.vhd \
    interlaken/interface/interlaken_interface.vhd \
    interlaken/test/interlaken150G_wrapper.vhd \
]

#set VERILOG_FILES [concat $VERILOG_FILES \
#    interlaken_0_exdes/interlaken_0_axi4_lite_user_if.v \
#    interlaken_0_exdes/interlaken_0_exdes.v \
#    interlaken_0_exdes/interlaken_0_exdes_tb.v \
#    interlaken_0_exdes/interlaken_0_gen_wrapper.v \
#    interlaken_0_exdes/interlaken_0_lbus_pkt_gen_mon.v \
#    interlaken_0_exdes/interlaken_0_mon_wrapper.v \
#    interlaken_0_exdes/interlaken_0_segmented_lbus_pkt_gen.v \
#    interlaken_0_exdes/interlaken_0_segmented_lbus_pkt_mon.v \
#    ip_cores/sim/clk_wiz_0_clk_wiz.v \
#    ip_cores/sim/clk_wiz_0.v \
#    ip_cores/sim/interlaken_0_sim_netlist.v]


set SIM_FILES [concat $SIM_FILES \
    interlaken_interface_tb.vhd
]


#obsolete tb 
#set SIM_FILES [concat $SIM_FILES \
#    crc-32_tb.vhd \
#    decoder_tb.vhd \
#    deframing_burst_tb.vhd \
#    deframing_meta_tb.vhd \
#    descrambler_tb.vhd \
#    interlaken_receiver_tb.vhd \
#    encoder_tb.vhd \
#    interlaken_transmitter_tb.vhd \
#    scrambler_tb.vhd \
#    interlaken_interface_tb.vhd \
#    framing_burst_tb.vhd \
#    framing_meta_tb.vhd \
#]

    
#set WCFG_FILES [concat $WCFG_FILES \
#     testbench_interlaken_interface_behav.wcfg \
#]

set XDC_FILES_VC709 [concat $XDC_FILES_VC709 \
    pcie_dma_top_VC709.xdc \
    probes.xdc \
    Core1990_Constraints.xdc \
]  
set XCI_FILES [concat $XCI_FILES \
  Transceiver_10g_64b67b.xci \
  interlaken_0.xci \
]

