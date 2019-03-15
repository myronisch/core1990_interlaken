vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/work

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap work activehdl/work

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work work  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz_clk_wiz.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/clk_40MHz/clk_40MHz.v" \

vlog -work work \
"glbl.v"

