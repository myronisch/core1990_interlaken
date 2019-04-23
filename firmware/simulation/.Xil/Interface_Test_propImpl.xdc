set_property SRC_FILE_INFO {cfile:/home/nayibb/Desktop/report/Code/Core1990/projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/clk_40MHz/clk_40MHz.xdc rfile:../../projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/clk_40MHz/clk_40MHz.xdc id:1 order:EARLY scoped_inst:interface/System_Clock/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nayibb/Desktop/report/Code/Core1990/constraints/Core1990_Constraints.xdc rfile:../../constraints/Core1990_Constraints.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nayibb/Desktop/report/Code/Core1990/projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/TX_FIFO/TX_FIFO/TX_FIFO_clocks.xdc rfile:../../projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/TX_FIFO/TX_FIFO/TX_FIFO_clocks.xdc id:3 order:LATE scoped_inst:interface/Interlaken_TX/FIFO_Transmitter/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/nayibb/Desktop/report/Code/Core1990/projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/RX_FIFO/RX_FIFO/RX_FIFO_clocks.xdc rfile:../../projects/core1990_interlaken/core1990_interlaken.srcs/sources_1/ip/RX_FIFO/RX_FIFO/RX_FIFO_clocks.xdc id:4 order:LATE scoped_inst:interface/Interlaken_RX/FIFO_Receiver/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.05
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_clocks clkout0] -to [get_clocks clk_out1_clk_40MHz*] 25.000
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_clocks clk_out1_clk_40MHz*] -to [get_clocks clkout0] 25.000
set_property src_info {type:SCOPED_XDC file:3 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins interface/Interlaken_TX/FIFO_Transmitter/U0/rd_clk]]]
set_property src_info {type:SCOPED_XDC file:3 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins interface/Interlaken_TX/FIFO_Transmitter/U0/wr_clk]]]
set_property src_info {type:SCOPED_XDC file:4 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins interface/Interlaken_RX/FIFO_Receiver/U0/rd_clk]]]
set_property src_info {type:SCOPED_XDC file:4 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins interface/Interlaken_RX/FIFO_Receiver/U0/wr_clk]]]
current_instance interface/Interlaken_TX/FIFO_Transmitter/U0
set_property src_info {type:SCOPED_XDC file:3 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_bus_skew -from [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] 6.400
set_property src_info {type:SCOPED_XDC file:3 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_bus_skew -from [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]}] 6.400
current_instance
current_instance interface/Interlaken_RX/FIFO_Receiver/U0
set_property src_info {type:SCOPED_XDC file:4 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_bus_skew -from [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]}] -to [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].wr_stg_inst/Q_reg_reg[*]}] 6.400
set_property src_info {type:SCOPED_XDC file:4 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_bus_skew -from [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]}] -to [get_cells {inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[1].rd_stg_inst/Q_reg_reg[*]}] 6.400
