// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Mar 13 10:44:40 2019
// Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/leover/Desktop/Core1990_Verification/projects/core1990_interlaken_verification/core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_0_stub.v
// Design      : interlaken_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flgb2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module interlaken_0(gt_ref_clk0_p, gt_ref_clk0_n, gt_refclk_out, 
  init_clk, sys_reset, gt_txusrclk2, gtpowergood_out, gt_rxusrclk2, gt_rx_reset_done_inv, 
  usr_rx_reset, gt0_rxp_in, gt0_rxn_in, gt_tx_reset_done_inv, usr_tx_reset, gt0_txn_out, 
  gt0_txp_out, core_rx_reset, rx_ovfout, rx_dataout0, rx_chanout0, rx_enaout0, rx_sopout0, 
  rx_eopout0, rx_errout0, rx_mtyout0, rx_dataout1, rx_chanout1, rx_enaout1, rx_sopout1, 
  rx_eopout1, rx_errout1, rx_mtyout1, rx_dataout2, rx_chanout2, rx_enaout2, rx_sopout2, 
  rx_eopout2, rx_errout2, rx_mtyout2, rx_dataout3, rx_chanout3, rx_enaout3, rx_sopout3, 
  rx_eopout3, rx_errout3, rx_mtyout3, core_tx_reset, tx_rdyout, tx_ovfout, tx_datain0, 
  tx_chanin0, tx_enain0, tx_sopin0, tx_eopin0, tx_errin0, tx_mtyin0, tx_bctlin0, tx_datain1, 
  tx_chanin1, tx_enain1, tx_sopin1, tx_eopin1, tx_errin1, tx_mtyin1, tx_bctlin1, tx_datain2, 
  tx_chanin2, tx_enain2, tx_sopin2, tx_eopin2, tx_errin2, tx_mtyin2, tx_bctlin2, tx_datain3, 
  tx_chanin3, tx_enain3, tx_sopin3, tx_eopin3, tx_errin3, tx_mtyin3, tx_bctlin3, ctl_tx_enable, 
  lockedn, core_drp_reset, drp_clk, drp_en, drp_we, drp_addr, drp_di, drp_do, drp_rdy, core_clk, 
  lbus_clk, gtwiz_reset_tx_datapath, gtwiz_reset_rx_datapath, ctl_tx_diagword_lanestat, 
  ctl_tx_diagword_intfstat, ctl_tx_mubits, stat_tx_underflow_err, stat_tx_burst_err, 
  stat_tx_overflow_err, ctl_rx_force_resync, stat_rx_diagword_lanestat, 
  stat_rx_diagword_intfstat, stat_rx_crc32_valid, stat_rx_crc32_err, stat_rx_mubits, 
  stat_rx_mubits_updated, stat_rx_word_sync, stat_rx_synced, stat_rx_synced_err, 
  stat_rx_framing_err, stat_rx_bad_type_err, stat_rx_mf_err, stat_rx_descram_err, 
  stat_rx_mf_len_err, stat_rx_mf_repeat_err, stat_rx_aligned, stat_rx_misaligned, 
  stat_rx_aligned_err, stat_rx_crc24_err, stat_rx_msop_err, stat_rx_meop_err, 
  stat_rx_overflow_err, stat_rx_burstmax_err, stat_rx_burst_err, gt_txresetdone_int, 
  gt_rxresetdone_int, gt_loopback_in)
/* synthesis syn_black_box black_box_pad_pin="gt_ref_clk0_p,gt_ref_clk0_n,gt_refclk_out,init_clk,sys_reset,gt_txusrclk2,gtpowergood_out[0:0],gt_rxusrclk2,gt_rx_reset_done_inv,usr_rx_reset,gt0_rxp_in,gt0_rxn_in,gt_tx_reset_done_inv,usr_tx_reset,gt0_txn_out,gt0_txp_out,core_rx_reset,rx_ovfout,rx_dataout0[127:0],rx_chanout0[10:0],rx_enaout0,rx_sopout0,rx_eopout0,rx_errout0,rx_mtyout0[3:0],rx_dataout1[127:0],rx_chanout1[10:0],rx_enaout1,rx_sopout1,rx_eopout1,rx_errout1,rx_mtyout1[3:0],rx_dataout2[127:0],rx_chanout2[10:0],rx_enaout2,rx_sopout2,rx_eopout2,rx_errout2,rx_mtyout2[3:0],rx_dataout3[127:0],rx_chanout3[10:0],rx_enaout3,rx_sopout3,rx_eopout3,rx_errout3,rx_mtyout3[3:0],core_tx_reset,tx_rdyout,tx_ovfout,tx_datain0[127:0],tx_chanin0[10:0],tx_enain0,tx_sopin0,tx_eopin0,tx_errin0,tx_mtyin0[3:0],tx_bctlin0,tx_datain1[127:0],tx_chanin1[10:0],tx_enain1,tx_sopin1,tx_eopin1,tx_errin1,tx_mtyin1[3:0],tx_bctlin1,tx_datain2[127:0],tx_chanin2[10:0],tx_enain2,tx_sopin2,tx_eopin2,tx_errin2,tx_mtyin2[3:0],tx_bctlin2,tx_datain3[127:0],tx_chanin3[10:0],tx_enain3,tx_sopin3,tx_eopin3,tx_errin3,tx_mtyin3[3:0],tx_bctlin3,ctl_tx_enable,lockedn,core_drp_reset,drp_clk,drp_en,drp_we,drp_addr[9:0],drp_di[15:0],drp_do[15:0],drp_rdy,core_clk,lbus_clk,gtwiz_reset_tx_datapath,gtwiz_reset_rx_datapath,ctl_tx_diagword_lanestat[11:0],ctl_tx_diagword_intfstat,ctl_tx_mubits[7:0],stat_tx_underflow_err,stat_tx_burst_err,stat_tx_overflow_err,ctl_rx_force_resync,stat_rx_diagword_lanestat[11:0],stat_rx_diagword_intfstat[11:0],stat_rx_crc32_valid[11:0],stat_rx_crc32_err[11:0],stat_rx_mubits[7:0],stat_rx_mubits_updated,stat_rx_word_sync[11:0],stat_rx_synced[11:0],stat_rx_synced_err[11:0],stat_rx_framing_err[11:0],stat_rx_bad_type_err[11:0],stat_rx_mf_err[11:0],stat_rx_descram_err[11:0],stat_rx_mf_len_err[11:0],stat_rx_mf_repeat_err[11:0],stat_rx_aligned,stat_rx_misaligned,stat_rx_aligned_err,stat_rx_crc24_err,stat_rx_msop_err,stat_rx_meop_err,stat_rx_overflow_err,stat_rx_burstmax_err,stat_rx_burst_err,gt_txresetdone_int,gt_rxresetdone_int,gt_loopback_in[2:0]" */;
  input gt_ref_clk0_p;
  input gt_ref_clk0_n;
  output gt_refclk_out;
  input init_clk;
  input sys_reset;
  output gt_txusrclk2;
  output [0:0]gtpowergood_out;
  output gt_rxusrclk2;
  output gt_rx_reset_done_inv;
  output usr_rx_reset;
  input gt0_rxp_in;
  input gt0_rxn_in;
  output gt_tx_reset_done_inv;
  output usr_tx_reset;
  output gt0_txn_out;
  output gt0_txp_out;
  input core_rx_reset;
  output rx_ovfout;
  output [127:0]rx_dataout0;
  output [10:0]rx_chanout0;
  output rx_enaout0;
  output rx_sopout0;
  output rx_eopout0;
  output rx_errout0;
  output [3:0]rx_mtyout0;
  output [127:0]rx_dataout1;
  output [10:0]rx_chanout1;
  output rx_enaout1;
  output rx_sopout1;
  output rx_eopout1;
  output rx_errout1;
  output [3:0]rx_mtyout1;
  output [127:0]rx_dataout2;
  output [10:0]rx_chanout2;
  output rx_enaout2;
  output rx_sopout2;
  output rx_eopout2;
  output rx_errout2;
  output [3:0]rx_mtyout2;
  output [127:0]rx_dataout3;
  output [10:0]rx_chanout3;
  output rx_enaout3;
  output rx_sopout3;
  output rx_eopout3;
  output rx_errout3;
  output [3:0]rx_mtyout3;
  input core_tx_reset;
  output tx_rdyout;
  output tx_ovfout;
  input [127:0]tx_datain0;
  input [10:0]tx_chanin0;
  input tx_enain0;
  input tx_sopin0;
  input tx_eopin0;
  input tx_errin0;
  input [3:0]tx_mtyin0;
  input tx_bctlin0;
  input [127:0]tx_datain1;
  input [10:0]tx_chanin1;
  input tx_enain1;
  input tx_sopin1;
  input tx_eopin1;
  input tx_errin1;
  input [3:0]tx_mtyin1;
  input tx_bctlin1;
  input [127:0]tx_datain2;
  input [10:0]tx_chanin2;
  input tx_enain2;
  input tx_sopin2;
  input tx_eopin2;
  input tx_errin2;
  input [3:0]tx_mtyin2;
  input tx_bctlin2;
  input [127:0]tx_datain3;
  input [10:0]tx_chanin3;
  input tx_enain3;
  input tx_sopin3;
  input tx_eopin3;
  input tx_errin3;
  input [3:0]tx_mtyin3;
  input tx_bctlin3;
  input ctl_tx_enable;
  input lockedn;
  input core_drp_reset;
  input drp_clk;
  input drp_en;
  input drp_we;
  input [9:0]drp_addr;
  input [15:0]drp_di;
  output [15:0]drp_do;
  output drp_rdy;
  input core_clk;
  input lbus_clk;
  input gtwiz_reset_tx_datapath;
  input gtwiz_reset_rx_datapath;
  input [11:0]ctl_tx_diagword_lanestat;
  input ctl_tx_diagword_intfstat;
  input [7:0]ctl_tx_mubits;
  output stat_tx_underflow_err;
  output stat_tx_burst_err;
  output stat_tx_overflow_err;
  input ctl_rx_force_resync;
  output [11:0]stat_rx_diagword_lanestat;
  output [11:0]stat_rx_diagword_intfstat;
  output [11:0]stat_rx_crc32_valid;
  output [11:0]stat_rx_crc32_err;
  output [7:0]stat_rx_mubits;
  output stat_rx_mubits_updated;
  output [11:0]stat_rx_word_sync;
  output [11:0]stat_rx_synced;
  output [11:0]stat_rx_synced_err;
  output [11:0]stat_rx_framing_err;
  output [11:0]stat_rx_bad_type_err;
  output [11:0]stat_rx_mf_err;
  output [11:0]stat_rx_descram_err;
  output [11:0]stat_rx_mf_len_err;
  output [11:0]stat_rx_mf_repeat_err;
  output stat_rx_aligned;
  output stat_rx_misaligned;
  output stat_rx_aligned_err;
  output stat_rx_crc24_err;
  output stat_rx_msop_err;
  output stat_rx_meop_err;
  output stat_rx_overflow_err;
  output stat_rx_burstmax_err;
  output stat_rx_burst_err;
  output gt_txresetdone_int;
  output gt_rxresetdone_int;
  input [2:0]gt_loopback_in;
endmodule
