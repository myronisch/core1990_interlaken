vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/gtwizard_ultrascale_v1_7_3
vlib questa_lib/msim/work
vlib questa_lib/msim/interlaken_v2_4_0

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap gtwizard_ultrascale_v1_7_3 questa_lib/msim/gtwizard_ultrascale_v1_7_3
vmap work questa_lib/msim/work
vmap interlaken_v2_4_0 questa_lib/msim/interlaken_v2_4_0

vlog -work xil_defaultlib -64 -sv \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/leover/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_3 -64 \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib -64 \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_channel.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/interlaken_0_gt_gtye4_channel_wrapper.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/gtwizard_ultrascale_v1_7_gtye4_common.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/interlaken_0_gt_gtye4_common_wrapper.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/interlaken_0_gt_gtwizard_gtye4.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/interlaken_0_gt_gtwizard_top.v" \

vlog -work work -64 \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/ip_0/sim/interlaken_0_gt.v" \

vlog -work interlaken_v2_4_0 -64 \
"../../../ipstatic/hdl/interlaken_v2_4_vl_rfs.v" \

vlog -work work -64 \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_v2_4_0/interlaken_0_wrapper.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_v2_4_0/interlaken_0_ultrascale_tx_userclk.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_v2_4_0/interlaken_0_ultrascale_rx_userclk.v" \
"../../../../core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_0.v" \

vlog -work work \
"glbl.v"

