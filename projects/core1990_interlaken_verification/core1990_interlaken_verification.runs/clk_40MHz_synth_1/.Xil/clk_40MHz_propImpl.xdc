set_property SRC_FILE_INFO {cfile:/home/leover/Desktop/Core1990_Verification/projects/core1990_interlaken_verification/core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz.xdc rfile:../../../core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.05
