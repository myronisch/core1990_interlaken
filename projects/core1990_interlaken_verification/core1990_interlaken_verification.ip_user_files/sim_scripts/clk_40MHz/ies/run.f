-makelib ies_lib/xil_defaultlib -sv \
  "/home/leover/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/leover/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/leover/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/work \
  "../../../../core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz_clk_wiz.v" \
  "../../../../core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

