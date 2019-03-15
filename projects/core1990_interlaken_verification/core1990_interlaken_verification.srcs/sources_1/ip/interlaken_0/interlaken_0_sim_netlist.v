// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Mar 13 10:44:41 2019
// Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/leover/Desktop/Core1990_Verification/projects/core1990_interlaken_verification/core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_0_sim_netlist.v
// Design      : interlaken_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "interlaken_0,interlaken,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* PARTIALLYOBFUSCATED *) 
(* NotValidForBitStream *)
module interlaken_0
   (gt_ref_clk0_p,
    gt_ref_clk0_n,
    gt_refclk_out,
    init_clk,
    sys_reset,
    gt_txusrclk2,
    gtpowergood_out,
    gt_rxusrclk2,
    gt_rx_reset_done_inv,
    usr_rx_reset,
    gt0_rxp_in,
    gt0_rxn_in,
    gt_tx_reset_done_inv,
    usr_tx_reset,
    gt0_txn_out,
    gt0_txp_out,
    core_rx_reset,
    rx_ovfout,
    rx_dataout0,
    rx_chanout0,
    rx_enaout0,
    rx_sopout0,
    rx_eopout0,
    rx_errout0,
    rx_mtyout0,
    rx_dataout1,
    rx_chanout1,
    rx_enaout1,
    rx_sopout1,
    rx_eopout1,
    rx_errout1,
    rx_mtyout1,
    rx_dataout2,
    rx_chanout2,
    rx_enaout2,
    rx_sopout2,
    rx_eopout2,
    rx_errout2,
    rx_mtyout2,
    rx_dataout3,
    rx_chanout3,
    rx_enaout3,
    rx_sopout3,
    rx_eopout3,
    rx_errout3,
    rx_mtyout3,
    core_tx_reset,
    tx_rdyout,
    tx_ovfout,
    tx_datain0,
    tx_chanin0,
    tx_enain0,
    tx_sopin0,
    tx_eopin0,
    tx_errin0,
    tx_mtyin0,
    tx_bctlin0,
    tx_datain1,
    tx_chanin1,
    tx_enain1,
    tx_sopin1,
    tx_eopin1,
    tx_errin1,
    tx_mtyin1,
    tx_bctlin1,
    tx_datain2,
    tx_chanin2,
    tx_enain2,
    tx_sopin2,
    tx_eopin2,
    tx_errin2,
    tx_mtyin2,
    tx_bctlin2,
    tx_datain3,
    tx_chanin3,
    tx_enain3,
    tx_sopin3,
    tx_eopin3,
    tx_errin3,
    tx_mtyin3,
    tx_bctlin3,
    ctl_tx_enable,
    lockedn,
    core_drp_reset,
    drp_clk,
    drp_en,
    drp_we,
    drp_addr,
    drp_di,
    drp_do,
    drp_rdy,
    core_clk,
    lbus_clk,
    gtwiz_reset_tx_datapath,
    gtwiz_reset_rx_datapath,
    ctl_tx_diagword_lanestat,
    ctl_tx_diagword_intfstat,
    ctl_tx_mubits,
    stat_tx_underflow_err,
    stat_tx_burst_err,
    stat_tx_overflow_err,
    ctl_rx_force_resync,
    stat_rx_diagword_lanestat,
    stat_rx_diagword_intfstat,
    stat_rx_crc32_valid,
    stat_rx_crc32_err,
    stat_rx_mubits,
    stat_rx_mubits_updated,
    stat_rx_word_sync,
    stat_rx_synced,
    stat_rx_synced_err,
    stat_rx_framing_err,
    stat_rx_bad_type_err,
    stat_rx_mf_err,
    stat_rx_descram_err,
    stat_rx_mf_len_err,
    stat_rx_mf_repeat_err,
    stat_rx_aligned,
    stat_rx_misaligned,
    stat_rx_aligned_err,
    stat_rx_crc24_err,
    stat_rx_msop_err,
    stat_rx_meop_err,
    stat_rx_overflow_err,
    stat_rx_burstmax_err,
    stat_rx_burst_err,
    gt_txresetdone_int,
    gt_rxresetdone_int,
    gt_loopback_in);
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

  wire core_clk;
  wire core_drp_reset;
  wire core_rx_reset;
  wire core_tx_reset;
  wire ctl_rx_force_resync;
  wire ctl_tx_diagword_intfstat;
  wire [11:0]ctl_tx_diagword_lanestat;
  wire ctl_tx_enable;
  wire [7:0]ctl_tx_mubits;
  wire [9:0]drp_addr;
  wire drp_clk;
  wire [15:0]drp_di;
  wire [15:0]drp_do;
  wire drp_en;
  wire drp_rdy;
  wire drp_we;
  wire gt0_rxn_in;
  wire gt0_rxp_in;
  wire gt0_txn_out;
  wire gt0_txp_out;
  wire [2:0]gt_loopback_in;
  wire gt_ref_clk0_n;
  wire gt_ref_clk0_p;
  wire gt_refclk_out;
  wire gt_rx_reset_done_inv;
  wire gt_rxusrclk2;
  wire gt_tx_reset_done_inv;
  wire gt_txusrclk2;
  wire [0:0]gtpowergood_out;
  wire gtwiz_reset_rx_datapath;
  wire gtwiz_reset_tx_datapath;
  wire init_clk;
  wire lbus_clk;
  wire lockedn;
  wire [10:0]rx_chanout0;
  wire [10:0]rx_chanout1;
  wire [10:0]rx_chanout2;
  wire [10:0]rx_chanout3;
  wire [127:0]rx_dataout0;
  wire [127:0]rx_dataout1;
  wire [127:0]rx_dataout2;
  wire [127:0]rx_dataout3;
  wire rx_enaout0;
  wire rx_enaout1;
  wire rx_enaout2;
  wire rx_enaout3;
  wire rx_eopout0;
  wire rx_eopout1;
  wire rx_eopout2;
  wire rx_eopout3;
  wire rx_errout0;
  wire rx_errout1;
  wire rx_errout2;
  wire rx_errout3;
  wire [3:0]rx_mtyout0;
  wire [3:0]rx_mtyout1;
  wire [3:0]rx_mtyout2;
  wire [3:0]rx_mtyout3;
  wire rx_ovfout;
  wire rx_sopout0;
  wire rx_sopout1;
  wire rx_sopout2;
  wire rx_sopout3;
  wire stat_rx_aligned;
  wire stat_rx_aligned_err;
  wire [11:0]stat_rx_bad_type_err;
  wire stat_rx_burst_err;
  wire stat_rx_burstmax_err;
  wire stat_rx_crc24_err;
  wire [11:0]stat_rx_crc32_err;
  wire [11:0]stat_rx_crc32_valid;
  wire [11:0]stat_rx_descram_err;
  wire [11:0]stat_rx_diagword_intfstat;
  wire [11:0]stat_rx_diagword_lanestat;
  wire [11:0]stat_rx_framing_err;
  wire stat_rx_meop_err;
  wire [11:0]stat_rx_mf_err;
  wire [11:0]stat_rx_mf_len_err;
  wire [11:0]stat_rx_mf_repeat_err;
  wire stat_rx_misaligned;
  wire stat_rx_msop_err;
  wire [7:0]stat_rx_mubits;
  wire stat_rx_mubits_updated;
  wire stat_rx_overflow_err;
  wire [11:0]stat_rx_synced;
  wire [11:0]stat_rx_synced_err;
  wire [11:0]stat_rx_word_sync;
  wire stat_tx_burst_err;
  wire stat_tx_overflow_err;
  wire stat_tx_underflow_err;
  wire sys_reset;
  wire tx_bctlin0;
  wire tx_bctlin1;
  wire tx_bctlin2;
  wire tx_bctlin3;
  wire [10:0]tx_chanin0;
  wire [10:0]tx_chanin1;
  wire [10:0]tx_chanin2;
  wire [10:0]tx_chanin3;
  wire [127:0]tx_datain0;
  wire [127:0]tx_datain1;
  wire [127:0]tx_datain2;
  wire [127:0]tx_datain3;
  wire tx_enain0;
  wire tx_enain1;
  wire tx_enain2;
  wire tx_enain3;
  wire tx_eopin0;
  wire tx_eopin1;
  wire tx_eopin2;
  wire tx_eopin3;
  wire tx_errin0;
  wire tx_errin1;
  wire tx_errin2;
  wire tx_errin3;
  wire [3:0]tx_mtyin0;
  wire [3:0]tx_mtyin1;
  wire [3:0]tx_mtyin2;
  wire [3:0]tx_mtyin3;
  wire tx_ovfout;
  wire tx_rdyout;
  wire tx_sopin0;
  wire tx_sopin1;
  wire tx_sopin2;
  wire tx_sopin3;
  wire usr_rx_reset;
  wire usr_tx_reset;
  wire NLW_inst_gt0_drprdy_UNCONNECTED;
  wire NLW_inst_gt10_txn_out_UNCONNECTED;
  wire NLW_inst_gt10_txp_out_UNCONNECTED;
  wire NLW_inst_gt11_txn_out_UNCONNECTED;
  wire NLW_inst_gt11_txp_out_UNCONNECTED;
  wire NLW_inst_gt1_txn_out_UNCONNECTED;
  wire NLW_inst_gt1_txp_out_UNCONNECTED;
  wire NLW_inst_gt2_txn_out_UNCONNECTED;
  wire NLW_inst_gt2_txp_out_UNCONNECTED;
  wire NLW_inst_gt3_txn_out_UNCONNECTED;
  wire NLW_inst_gt3_txp_out_UNCONNECTED;
  wire NLW_inst_gt4_txn_out_UNCONNECTED;
  wire NLW_inst_gt4_txp_out_UNCONNECTED;
  wire NLW_inst_gt5_txn_out_UNCONNECTED;
  wire NLW_inst_gt5_txp_out_UNCONNECTED;
  wire NLW_inst_gt6_txn_out_UNCONNECTED;
  wire NLW_inst_gt6_txp_out_UNCONNECTED;
  wire NLW_inst_gt7_txn_out_UNCONNECTED;
  wire NLW_inst_gt7_txp_out_UNCONNECTED;
  wire NLW_inst_gt8_txn_out_UNCONNECTED;
  wire NLW_inst_gt8_txp_out_UNCONNECTED;
  wire NLW_inst_gt9_txn_out_UNCONNECTED;
  wire NLW_inst_gt9_txp_out_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_disc_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_req_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED;
  wire NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_busy_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED;
  wire [15:0]NLW_inst_gt0_drpdo_UNCONNECTED;
  wire [0:0]NLW_inst_gt_eyescandataerror_UNCONNECTED;
  wire [2:0]NLW_inst_gt_rxbufstatus_UNCONNECTED;
  wire [0:0]NLW_inst_gt_rxprbserr_UNCONNECTED;
  wire [0:0]NLW_inst_gt_rxresetdone_UNCONNECTED;
  wire [1:0]NLW_inst_gt_txbufstatus_UNCONNECTED;
  wire [0:0]NLW_inst_gt_txresetdone_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout00_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout01_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout02_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout03_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout04_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout05_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout06_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout07_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout08_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout09_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout10_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout11_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_enaout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_availout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_overflowout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_syncedout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED;
  wire [255:0]NLW_inst_stat_rx_fc_stat_UNCONNECTED;
  wire [15:0]NLW_inst_stat_rx_retrans_latency_UNCONNECTED;
  wire [7:0]NLW_inst_stat_rx_retrans_seq_UNCONNECTED;
  wire [2:0]NLW_inst_stat_rx_retrans_state_UNCONNECTED;
  wire [4:0]NLW_inst_stat_rx_retrans_subseq_UNCONNECTED;
  wire [8:0]NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED;
  wire [1:0]NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED;
  wire [8:0]NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED;
  wire [643:0]NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED;

  (* C_ADD_GT_CNRL_STS_PORTS = "0" *) 
  (* C_BURSTMAX = "2'b11" *) 
  (* C_BURSTSHORT = "3'b001" *) 
  (* C_CHAN_EXT = "2'b00" *) 
  (* C_CLOCKING_MODE = "Synchronous" *) 
  (* C_ENABLE_ERR_INJ = "0" *) 
  (* C_ENABLE_IN_BAND_FC = "0" *) 
  (* C_ENABLE_OUT_BAND_FC = "0" *) 
  (* C_ENABLE_PIPELINE_REG = "0" *) 
  (* C_EN_RETRANS = "0" *) 
  (* C_GT_REF_CLK_FREQ = "156.250000" *) 
  (* C_GT_TYPE = "GTY" *) 
  (* C_INCLUDE_SHARED_LOGIC = "2" *) 
  (* C_INS_LOSS_NYQ = "10" *) 
  (* C_IN_BAND_FC_CALLEN = "7'b0000000" *) 
  (* C_LANE10_GT_LOC = "X0Y9" *) 
  (* C_LANE11_GT_LOC = "NA" *) 
  (* C_LANE12_GT_LOC = "NA" *) 
  (* C_LANE1_GT_LOC = "X1Y48" *) 
  (* C_LANE2_GT_LOC = "NA" *) 
  (* C_LANE3_GT_LOC = "NA" *) 
  (* C_LANE4_GT_LOC = "NA" *) 
  (* C_LANE5_GT_LOC = "NA" *) 
  (* C_LANE6_GT_LOC = "NA" *) 
  (* C_LANE7_GT_LOC = "NA" *) 
  (* C_LANE8_GT_LOC = "NA" *) 
  (* C_LANE9_GT_LOC = "NA" *) 
  (* C_LINE_RATE = "10.312500" *) 
  (* C_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* C_NUM_LANES = "1" *) 
  (* C_OPERATING_MODE = "3" *) 
  (* C_OUT_BAND_FC_CALLEN = "7'b0000000" *) 
  (* C_PACKET_MODE = "packet_mode" *) 
  (* C_RX_EQ_MODE = "Auto" *) 
  (* C_RX_RETRANS_MULT = "1" *) 
  (* C_RX_RETRANS_RETRY = "2" *) 
  (* C_RX_RETRANS_TIMER1 = "2048" *) 
  (* C_RX_RETRANS_TIMER2 = "0" *) 
  (* C_RX_RETRANS_WDOG = "0" *) 
  (* C_RX_RETRANS_WRAP_TIMER = "0" *) 
  (* C_TX_RETRANS_DEPTH = "2048" *) 
  (* C_TX_RETRANS_MULT = "1" *) 
  (* C_TX_RETRANS_RAM_BANKS = "4" *) 
  (* C_TX_RLIM_DELTA = "384" *) 
  (* C_TX_RLIM_ENABLE = "0" *) 
  (* C_TX_RLIM_INTV = "16" *) 
  (* C_TX_RLIM_MAX = "384" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* GT_COLUMN = "Right" *) 
  interlaken_0_interlaken_0_wrapper inst
       (.core_clk(core_clk),
        .core_drp_reset(core_drp_reset),
        .core_rx_reset(core_rx_reset),
        .core_tx_reset(core_tx_reset),
        .ctl_rx_force_resync(ctl_rx_force_resync),
        .ctl_rx_retrans_ack(1'b0),
        .ctl_rx_retrans_enable(1'b0),
        .ctl_rx_retrans_errin(1'b0),
        .ctl_rx_retrans_force_req(1'b0),
        .ctl_rx_retrans_reset(1'b0),
        .ctl_rx_retrans_reset_mode(1'b0),
        .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),
        .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat),
        .ctl_tx_enable(ctl_tx_enable),
        .ctl_tx_errinj_biterr_go(1'b0),
        .ctl_tx_errinj_biterr_lane({1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_fc_stat({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_mubits(ctl_tx_mubits),
        .ctl_tx_retrans_enable(1'b0),
        .ctl_tx_retrans_ram_perrin(1'b0),
        .ctl_tx_retrans_ram_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_retrans_req(1'b0),
        .ctl_tx_retrans_req_valid(1'b0),
        .ctl_tx_rlim_delta({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_rlim_enable(1'b0),
        .ctl_tx_rlim_intv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_rlim_max({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_addr(drp_addr),
        .drp_clk(drp_clk),
        .drp_di(drp_di),
        .drp_do(drp_do),
        .drp_en(drp_en),
        .drp_rdy(drp_rdy),
        .drp_we(drp_we),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo(NLW_inst_gt0_drpdo_UNCONNECTED[15:0]),
        .gt0_drpen(1'b0),
        .gt0_drprdy(NLW_inst_gt0_drprdy_UNCONNECTED),
        .gt0_drpwe(1'b0),
        .gt0_rxn_in(gt0_rxn_in),
        .gt0_rxp_in(gt0_rxp_in),
        .gt0_txn_out(gt0_txn_out),
        .gt0_txp_out(gt0_txp_out),
        .gt10_rxn_in(1'b0),
        .gt10_rxp_in(1'b0),
        .gt10_txn_out(NLW_inst_gt10_txn_out_UNCONNECTED),
        .gt10_txp_out(NLW_inst_gt10_txp_out_UNCONNECTED),
        .gt11_rxn_in(1'b0),
        .gt11_rxp_in(1'b0),
        .gt11_txn_out(NLW_inst_gt11_txn_out_UNCONNECTED),
        .gt11_txp_out(NLW_inst_gt11_txp_out_UNCONNECTED),
        .gt1_rxn_in(1'b0),
        .gt1_rxp_in(1'b0),
        .gt1_txn_out(NLW_inst_gt1_txn_out_UNCONNECTED),
        .gt1_txp_out(NLW_inst_gt1_txp_out_UNCONNECTED),
        .gt2_rxn_in(1'b0),
        .gt2_rxp_in(1'b0),
        .gt2_txn_out(NLW_inst_gt2_txn_out_UNCONNECTED),
        .gt2_txp_out(NLW_inst_gt2_txp_out_UNCONNECTED),
        .gt3_rxn_in(1'b0),
        .gt3_rxp_in(1'b0),
        .gt3_txn_out(NLW_inst_gt3_txn_out_UNCONNECTED),
        .gt3_txp_out(NLW_inst_gt3_txp_out_UNCONNECTED),
        .gt4_rxn_in(1'b0),
        .gt4_rxp_in(1'b0),
        .gt4_txn_out(NLW_inst_gt4_txn_out_UNCONNECTED),
        .gt4_txp_out(NLW_inst_gt4_txp_out_UNCONNECTED),
        .gt5_rxn_in(1'b0),
        .gt5_rxp_in(1'b0),
        .gt5_txn_out(NLW_inst_gt5_txn_out_UNCONNECTED),
        .gt5_txp_out(NLW_inst_gt5_txp_out_UNCONNECTED),
        .gt6_rxn_in(1'b0),
        .gt6_rxp_in(1'b0),
        .gt6_txn_out(NLW_inst_gt6_txn_out_UNCONNECTED),
        .gt6_txp_out(NLW_inst_gt6_txp_out_UNCONNECTED),
        .gt7_rxn_in(1'b0),
        .gt7_rxp_in(1'b0),
        .gt7_txn_out(NLW_inst_gt7_txn_out_UNCONNECTED),
        .gt7_txp_out(NLW_inst_gt7_txp_out_UNCONNECTED),
        .gt8_rxn_in(1'b0),
        .gt8_rxp_in(1'b0),
        .gt8_txn_out(NLW_inst_gt8_txn_out_UNCONNECTED),
        .gt8_txp_out(NLW_inst_gt8_txp_out_UNCONNECTED),
        .gt9_rxn_in(1'b0),
        .gt9_rxp_in(1'b0),
        .gt9_txn_out(NLW_inst_gt9_txn_out_UNCONNECTED),
        .gt9_txp_out(NLW_inst_gt9_txp_out_UNCONNECTED),
        .gt_drp_done(1'b0),
        .gt_drpclk(1'b0),
        .gt_eyescandataerror(NLW_inst_gt_eyescandataerror_UNCONNECTED[0]),
        .gt_eyescanreset(1'b0),
        .gt_eyescantrigger(1'b0),
        .gt_loopback_in(gt_loopback_in),
        .gt_ref_clk0_n(gt_ref_clk0_n),
        .gt_ref_clk0_p(gt_ref_clk0_p),
        .gt_refclk_out(gt_refclk_out),
        .gt_rx_reset_done_inv(gt_rx_reset_done_inv),
        .gt_rxbufstatus(NLW_inst_gt_rxbufstatus_UNCONNECTED[2:0]),
        .gt_rxcdrhold(1'b0),
        .gt_rxdfelpmreset(1'b0),
        .gt_rxlpmen(1'b0),
        .gt_rxpolarity(1'b0),
        .gt_rxprbscntreset(1'b0),
        .gt_rxprbserr(NLW_inst_gt_rxprbserr_UNCONNECTED[0]),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0}),
        .gt_rxresetdone(NLW_inst_gt_rxresetdone_UNCONNECTED[0]),
        .gt_rxusrclk2(gt_rxusrclk2),
        .gt_tx_reset_done_inv(gt_tx_reset_done_inv),
        .gt_txbufstatus(NLW_inst_gt_txbufstatus_UNCONNECTED[1:0]),
        .gt_txdiffctrl({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity(1'b0),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr(1'b0),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txresetdone(NLW_inst_gt_txresetdone_UNCONNECTED[0]),
        .gt_txusrclk2(gt_txusrclk2),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath),
        .init_clk(init_clk),
        .lbus_clk(lbus_clk),
        .lockedn(lockedn),
        .qpll0clk_in(1'b0),
        .qpll0refclk_in(1'b0),
        .qpll1clk_in(1'b0),
        .qpll1refclk_in(1'b0),
        .rx_bypass_dataout00(NLW_inst_rx_bypass_dataout00_UNCONNECTED[65:0]),
        .rx_bypass_dataout01(NLW_inst_rx_bypass_dataout01_UNCONNECTED[65:0]),
        .rx_bypass_dataout02(NLW_inst_rx_bypass_dataout02_UNCONNECTED[65:0]),
        .rx_bypass_dataout03(NLW_inst_rx_bypass_dataout03_UNCONNECTED[65:0]),
        .rx_bypass_dataout04(NLW_inst_rx_bypass_dataout04_UNCONNECTED[65:0]),
        .rx_bypass_dataout05(NLW_inst_rx_bypass_dataout05_UNCONNECTED[65:0]),
        .rx_bypass_dataout06(NLW_inst_rx_bypass_dataout06_UNCONNECTED[65:0]),
        .rx_bypass_dataout07(NLW_inst_rx_bypass_dataout07_UNCONNECTED[65:0]),
        .rx_bypass_dataout08(NLW_inst_rx_bypass_dataout08_UNCONNECTED[65:0]),
        .rx_bypass_dataout09(NLW_inst_rx_bypass_dataout09_UNCONNECTED[65:0]),
        .rx_bypass_dataout10(NLW_inst_rx_bypass_dataout10_UNCONNECTED[65:0]),
        .rx_bypass_dataout11(NLW_inst_rx_bypass_dataout11_UNCONNECTED[65:0]),
        .rx_bypass_enaout(NLW_inst_rx_bypass_enaout_UNCONNECTED[11:0]),
        .rx_bypass_force_realignin(1'b0),
        .rx_bypass_is_availout(NLW_inst_rx_bypass_is_availout_UNCONNECTED[11:0]),
        .rx_bypass_is_badlyframedout(NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED[11:0]),
        .rx_bypass_is_overflowout(NLW_inst_rx_bypass_is_overflowout_UNCONNECTED[11:0]),
        .rx_bypass_is_syncedout(NLW_inst_rx_bypass_is_syncedout_UNCONNECTED[11:0]),
        .rx_bypass_is_syncwordout(NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED[11:0]),
        .rx_bypass_rdin(1'b0),
        .rx_chanout0(rx_chanout0),
        .rx_chanout1(rx_chanout1),
        .rx_chanout2(rx_chanout2),
        .rx_chanout3(rx_chanout3),
        .rx_dataout0(rx_dataout0),
        .rx_dataout1(rx_dataout1),
        .rx_dataout2(rx_dataout2),
        .rx_dataout3(rx_dataout3),
        .rx_enaout0(rx_enaout0),
        .rx_enaout1(rx_enaout1),
        .rx_enaout2(rx_enaout2),
        .rx_enaout3(rx_enaout3),
        .rx_eopout0(rx_eopout0),
        .rx_eopout1(rx_eopout1),
        .rx_eopout2(rx_eopout2),
        .rx_eopout3(rx_eopout3),
        .rx_errout0(rx_errout0),
        .rx_errout1(rx_errout1),
        .rx_errout2(rx_errout2),
        .rx_errout3(rx_errout3),
        .rx_mtyout0(rx_mtyout0),
        .rx_mtyout1(rx_mtyout1),
        .rx_mtyout2(rx_mtyout2),
        .rx_mtyout3(rx_mtyout3),
        .rx_ovfout(rx_ovfout),
        .rx_sopout0(rx_sopout0),
        .rx_sopout1(rx_sopout1),
        .rx_sopout2(rx_sopout2),
        .rx_sopout3(rx_sopout3),
        .stat_rx_aligned(stat_rx_aligned),
        .stat_rx_aligned_err(stat_rx_aligned_err),
        .stat_rx_bad_type_err(stat_rx_bad_type_err),
        .stat_rx_burst_err(stat_rx_burst_err),
        .stat_rx_burstmax_err(stat_rx_burstmax_err),
        .stat_rx_crc24_err(stat_rx_crc24_err),
        .stat_rx_crc32_err(stat_rx_crc32_err),
        .stat_rx_crc32_valid(stat_rx_crc32_valid),
        .stat_rx_descram_err(stat_rx_descram_err),
        .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),
        .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),
        .stat_rx_fc_stat(NLW_inst_stat_rx_fc_stat_UNCONNECTED[255:0]),
        .stat_rx_framing_err(stat_rx_framing_err),
        .stat_rx_meop_err(stat_rx_meop_err),
        .stat_rx_mf_err(stat_rx_mf_err),
        .stat_rx_mf_len_err(stat_rx_mf_len_err),
        .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),
        .stat_rx_misaligned(stat_rx_misaligned),
        .stat_rx_msop_err(stat_rx_msop_err),
        .stat_rx_mubits(stat_rx_mubits),
        .stat_rx_mubits_updated(stat_rx_mubits_updated),
        .stat_rx_overflow_err(stat_rx_overflow_err),
        .stat_rx_retrans_crc24_err(NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED),
        .stat_rx_retrans_disc(NLW_inst_stat_rx_retrans_disc_UNCONNECTED),
        .stat_rx_retrans_latency(NLW_inst_stat_rx_retrans_latency_UNCONNECTED[15:0]),
        .stat_rx_retrans_req(NLW_inst_stat_rx_retrans_req_UNCONNECTED),
        .stat_rx_retrans_retry_err(NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED),
        .stat_rx_retrans_seq(NLW_inst_stat_rx_retrans_seq_UNCONNECTED[7:0]),
        .stat_rx_retrans_seq_updated(NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED),
        .stat_rx_retrans_state(NLW_inst_stat_rx_retrans_state_UNCONNECTED[2:0]),
        .stat_rx_retrans_subseq(NLW_inst_stat_rx_retrans_subseq_UNCONNECTED[4:0]),
        .stat_rx_retrans_wdog_err(NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED),
        .stat_rx_retrans_wrap_err(NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED),
        .stat_rx_synced(stat_rx_synced),
        .stat_rx_synced_err(stat_rx_synced_err),
        .stat_rx_word_sync(stat_rx_word_sync),
        .stat_tx_burst_err(stat_tx_burst_err),
        .stat_tx_errinj_biterr_done(NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED),
        .stat_tx_overflow_err(stat_tx_overflow_err),
        .stat_tx_retrans_burst_err(NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED),
        .stat_tx_retrans_busy(NLW_inst_stat_tx_retrans_busy_UNCONNECTED),
        .stat_tx_retrans_ram_perrout(NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED),
        .stat_tx_retrans_ram_raddr(NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED[8:0]),
        .stat_tx_retrans_ram_rd_b0(NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b1(NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b2(NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b3(NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED),
        .stat_tx_retrans_ram_rsel(NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED[1:0]),
        .stat_tx_retrans_ram_waddr(NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED[8:0]),
        .stat_tx_retrans_ram_wdata(NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED[643:0]),
        .stat_tx_retrans_ram_we_b0(NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED),
        .stat_tx_retrans_ram_we_b1(NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED),
        .stat_tx_retrans_ram_we_b2(NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED),
        .stat_tx_retrans_ram_we_b3(NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED),
        .stat_tx_underflow_err(stat_tx_underflow_err),
        .sys_reset(sys_reset),
        .tx_bctlin0(tx_bctlin0),
        .tx_bctlin1(tx_bctlin1),
        .tx_bctlin2(tx_bctlin2),
        .tx_bctlin3(tx_bctlin3),
        .tx_bypass_ctrlin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain00({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain01({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain02({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain03({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain04({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain05({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain06({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain07({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain08({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain09({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_enain(1'b0),
        .tx_bypass_gearbox_seqin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_mframer_statein({1'b0,1'b0,1'b0,1'b0}),
        .tx_chanin0(tx_chanin0),
        .tx_chanin1(tx_chanin1),
        .tx_chanin2(tx_chanin2),
        .tx_chanin3(tx_chanin3),
        .tx_datain0(tx_datain0),
        .tx_datain1(tx_datain1),
        .tx_datain2(tx_datain2),
        .tx_datain3(tx_datain3),
        .tx_enain0(tx_enain0),
        .tx_enain1(tx_enain1),
        .tx_enain2(tx_enain2),
        .tx_enain3(tx_enain3),
        .tx_eopin0(tx_eopin0),
        .tx_eopin1(tx_eopin1),
        .tx_eopin2(tx_eopin2),
        .tx_eopin3(tx_eopin3),
        .tx_errin0(tx_errin0),
        .tx_errin1(tx_errin1),
        .tx_errin2(tx_errin2),
        .tx_errin3(tx_errin3),
        .tx_mtyin0(tx_mtyin0),
        .tx_mtyin1(tx_mtyin1),
        .tx_mtyin2(tx_mtyin2),
        .tx_mtyin3(tx_mtyin3),
        .tx_ovfout(tx_ovfout),
        .tx_rdyout(tx_rdyout),
        .tx_sopin0(tx_sopin0),
        .tx_sopin1(tx_sopin1),
        .tx_sopin2(tx_sopin2),
        .tx_sopin3(tx_sopin3),
        .usr_rx_reset(usr_rx_reset),
        .usr_tx_reset(usr_tx_reset));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer
   (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    rxresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]rxresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1
   (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    txresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [0:0]txresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]txresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(txresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10
   (plllock_tx_sync,
    gtwiz_reset_tx_done_int_reg,
    \FSM_sequential_sm_reset_tx_reg[0] ,
    gttxreset_out_reg,
    qpll0lock_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_done_int_reg_0,
    out,
    sm_reset_tx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    sm_reset_tx_timer_sat,
    sm_reset_tx_timer_clr_reg,
    gtwiz_reset_tx_any_sync);
  output plllock_tx_sync;
  output gtwiz_reset_tx_done_int_reg;
  output \FSM_sequential_sm_reset_tx_reg[0] ;
  output gttxreset_out_reg;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_tx_done_int_reg_0;
  input [2:0]out;
  input sm_reset_tx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input sm_reset_tx_timer_sat;
  input sm_reset_tx_timer_clr_reg;
  input gtwiz_reset_tx_any_sync;

  wire \FSM_sequential_sm_reset_tx_reg[0] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire gttxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_done_int;
  wire gtwiz_reset_tx_done_int_i_2_n_0;
  wire gtwiz_reset_tx_done_int_reg;
  wire gtwiz_reset_tx_done_int_reg_0;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_tx_sync;
  wire [0:0]qpll0lock_out;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h38000C0008000C00)) 
    \FSM_sequential_sm_reset_tx[2]_i_4 
       (.I0(plllock_tx_sync),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_tx_timer_sat_reg),
        .I4(out[0]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(\FSM_sequential_sm_reset_tx_reg[0] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    gttxreset_out_i_2
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg),
        .I2(plllock_tx_sync),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(out[2]),
        .I5(out[1]),
        .O(gttxreset_out_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    gtwiz_reset_tx_done_int_i_1
       (.I0(gtwiz_reset_tx_done_int_i_2_n_0),
        .I1(gtwiz_reset_tx_done_int),
        .I2(gtwiz_reset_tx_done_int_reg_0),
        .O(gtwiz_reset_tx_done_int_reg));
  LUT6 #(
    .INIT(64'h4444444444F44444)) 
    gtwiz_reset_tx_done_int_i_2
       (.I0(out[0]),
        .I1(plllock_tx_sync),
        .I2(sm_reset_tx_timer_sat),
        .I3(sm_reset_tx_timer_clr_reg),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I5(out[1]),
        .O(gtwiz_reset_tx_done_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h3000404000004040)) 
    gtwiz_reset_tx_done_int_i_3
       (.I0(plllock_tx_sync),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_tx_timer_sat_reg),
        .I4(out[0]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(gtwiz_reset_tx_done_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(qpll0lock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_tx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11
   (gtwiz_reset_rx_cdr_stable_out,
    sm_reset_rx_cdr_to_clr_reg,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    rxprogdivreset_out_reg,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_rx_timer_clr_reg,
    out,
    plllock_rx_sync,
    sm_reset_rx_cdr_to_clr,
    sm_reset_rx_timer_sat_reg,
    sm_reset_rx_cdr_to_sat);
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output sm_reset_rx_cdr_to_clr_reg;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  output rxprogdivreset_out_reg;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_rx_timer_clr_reg;
  input [2:0]out;
  input plllock_rx_sync;
  input sm_reset_rx_cdr_to_clr;
  input sm_reset_rx_timer_sat_reg;
  input sm_reset_rx_cdr_to_sat;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_rx_sync;
  wire [0:0]rxcdrlock_out;
  wire rxprogdivreset_out_reg;
  wire sm_reset_rx_cdr_to_clr;
  wire sm_reset_rx_cdr_to_clr_i_2_n_0;
  wire sm_reset_rx_cdr_to_clr_reg;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h000A000AC0C000C0)) 
    \FSM_sequential_sm_reset_rx[2]_i_6 
       (.I0(rxprogdivreset_out_reg),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(out[1]),
        .I3(out[0]),
        .I4(plllock_rx_sync),
        .I5(out[2]),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxcdrlock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_cdr_stable_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rxprogdivreset_out_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .O(rxprogdivreset_out_reg));
  LUT6 #(
    .INIT(64'hFBFFFFFF0800AAAA)) 
    sm_reset_rx_cdr_to_clr_i_1
       (.I0(sm_reset_rx_cdr_to_clr_i_2_n_0),
        .I1(sm_reset_rx_timer_clr_reg),
        .I2(out[2]),
        .I3(plllock_rx_sync),
        .I4(out[0]),
        .I5(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_clr_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    sm_reset_rx_cdr_to_clr_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .I2(out[2]),
        .I3(out[1]),
        .O(sm_reset_rx_cdr_to_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2
   (E,
    gtpowergood_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_all_timer_sat_reg,
    out,
    sm_reset_all_timer_clr_reg);
  output [0:0]E;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_all_timer_sat_reg;
  input [2:0]out;
  input sm_reset_all_timer_clr_reg;

  wire [0:0]E;
  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire sm_reset_all_timer_clr_reg;
  wire sm_reset_all_timer_sat_reg;

  LUT6 #(
    .INIT(64'hAF0FAF00CFFFCFFF)) 
    \FSM_sequential_sm_reset_all[2]_i_1 
       (.I0(gtpowergood_sync),
        .I1(sm_reset_all_timer_sat_reg),
        .I2(out[2]),
        .I3(out[0]),
        .I4(sm_reset_all_timer_clr_reg),
        .I5(out[1]),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtpowergood_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtpowergood_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3
   (E,
    in0,
    gtwiz_reset_clk_freerun_in,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_clr_reg,
    out,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[1]_0 ,
    gtwiz_reset_rx_pll_and_datapath_dly);
  output [0:0]E;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_clr_reg;
  input [2:0]out;
  input \FSM_sequential_sm_reset_rx_reg[1] ;
  input \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  input gtwiz_reset_rx_pll_and_datapath_dly;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_rx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_datapath_dly;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;
  wire sm_reset_rx_timer_clr_reg;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    \FSM_sequential_sm_reset_rx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ),
        .I1(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I2(sm_reset_rx_timer_clr_reg),
        .I3(out[0]),
        .I4(\FSM_sequential_sm_reset_rx_reg[1] ),
        .I5(\FSM_sequential_sm_reset_rx_reg[1]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h01010100)) 
    \FSM_sequential_sm_reset_rx[2]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_datapath_dly),
        .I4(gtwiz_reset_rx_pll_and_datapath_dly),
        .O(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4
   (gtwiz_reset_rx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_rx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync );
  output gtwiz_reset_rx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_rx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;

  wire [1:0]D;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'hF55EA55EA55EA55E)) 
    \FSM_sequential_sm_reset_rx[0]_i_1 
       (.I0(out[0]),
        .I1(gtwiz_reset_rx_pll_and_datapath_dly),
        .I2(out[2]),
        .I3(out[1]),
        .I4(sm_reset_rx_timer_sat_reg),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0F800FF00F800FFF)) 
    \FSM_sequential_sm_reset_rx[1]_i_1 
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(gtwiz_reset_rx_pll_and_datapath_dly),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5
   (gtwiz_reset_tx_datapath_dly,
    in0,
    gtwiz_reset_clk_freerun_in);
  output gtwiz_reset_tx_datapath_dly;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6
   (gtwiz_reset_tx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out);
  output gtwiz_reset_tx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;

  wire [1:0]D;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F3E)) 
    \FSM_sequential_sm_reset_tx[0]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0FF1)) 
    \FSM_sequential_sm_reset_tx[1]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7
   (sm_reset_rx_timer_clr_reg,
    rxuserrdy_out_reg,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_rx_timer_clr_reg_0,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_sat_reg,
    i_in_out_reg_0,
    sm_reset_rx_pll_timer_clr_reg,
    sm_reset_rx_pll_timer_sat,
    sm_reset_rx_timer_sat);
  output sm_reset_rx_timer_clr_reg;
  output rxuserrdy_out_reg;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_rx_timer_clr_reg_0;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_sat_reg;
  input i_in_out_reg_0;
  input sm_reset_rx_pll_timer_clr_reg;
  input sm_reset_rx_pll_timer_sat;
  input sm_reset_rx_timer_sat;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_userclk_rx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire rxuserrdy_out_i_2_n_0;
  wire rxuserrdy_out_reg;
  wire sm_reset_rx_pll_timer_clr_reg;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_timer_clr_i_2_n_0;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h2023202000000000)) 
    \FSM_sequential_sm_reset_rx[2]_i_5 
       (.I0(rxuserrdy_out_i_2_n_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_rx_pll_timer_clr_reg),
        .I4(sm_reset_rx_pll_timer_sat),
        .I5(out[0]),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_rx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_rx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFAAF00000800)) 
    rxuserrdy_out_i_1
       (.I0(out[2]),
        .I1(rxuserrdy_out_i_2_n_0),
        .I2(out[1]),
        .I3(out[0]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .O(rxuserrdy_out_reg));
  LUT3 #(
    .INIT(8'h40)) 
    rxuserrdy_out_i_2
       (.I0(sm_reset_rx_timer_clr_reg_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .O(rxuserrdy_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hEBAE28A2)) 
    sm_reset_rx_timer_clr_i_1
       (.I0(sm_reset_rx_timer_clr_i_2_n_0),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(sm_reset_rx_timer_clr_reg_0),
        .O(sm_reset_rx_timer_clr_reg));
  LUT6 #(
    .INIT(64'h8888CC00C0C0FFFF)) 
    sm_reset_rx_timer_clr_i_2
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .I3(i_in_out_reg_0),
        .I4(out[2]),
        .I5(out[1]),
        .O(sm_reset_rx_timer_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8
   (sm_reset_tx_timer_clr_reg,
    txuserrdy_out_reg,
    E,
    gtwiz_userclk_tx_active_in,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_tx_timer_clr_reg_0,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    i_in_out_reg_0,
    gtwiz_reset_tx_pll_and_datapath_dly,
    gtwiz_reset_tx_datapath_dly,
    sm_reset_tx_pll_timer_clr,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    sm_reset_tx_timer_sat_reg,
    plllock_tx_sync,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    sm_reset_tx_pll_timer_clr_reg,
    sm_reset_tx_pll_timer_sat,
    sm_reset_tx_timer_sat);
  output sm_reset_tx_timer_clr_reg;
  output txuserrdy_out_reg;
  output [0:0]E;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_tx_timer_clr_reg_0;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input i_in_out_reg_0;
  input gtwiz_reset_tx_pll_and_datapath_dly;
  input gtwiz_reset_tx_datapath_dly;
  input sm_reset_tx_pll_timer_clr;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input sm_reset_tx_timer_sat_reg;
  input plllock_tx_sync;
  input \FSM_sequential_sm_reset_tx_reg[1] ;
  input sm_reset_tx_pll_timer_clr_reg;
  input sm_reset_tx_pll_timer_sat;
  input sm_reset_tx_timer_sat;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_tx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire gtwiz_reset_userclk_tx_active_sync;
  wire [0:0]gtwiz_userclk_tx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_tx_sync;
  wire sm_reset_tx_pll_timer_clr;
  wire sm_reset_tx_pll_timer_clr_reg;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_timer_clr_i_2_n_0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_clr_reg_0;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;
  wire txuserrdy_out_i_2_n_0;
  wire txuserrdy_out_reg;

  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEEE)) 
    \FSM_sequential_sm_reset_tx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ),
        .I1(i_in_out_reg_0),
        .I2(gtwiz_reset_tx_pll_and_datapath_dly),
        .I3(gtwiz_reset_tx_datapath_dly),
        .I4(sm_reset_tx_pll_timer_clr),
        .I5(out[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0000088888888)) 
    \FSM_sequential_sm_reset_tx[2]_i_3 
       (.I0(\FSM_sequential_sm_reset_tx_reg[1] ),
        .I1(gtwiz_reset_userclk_tx_active_sync),
        .I2(sm_reset_tx_pll_timer_clr),
        .I3(sm_reset_tx_pll_timer_clr_reg),
        .I4(sm_reset_tx_pll_timer_sat),
        .I5(out[0]),
        .O(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_tx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_tx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEBEB282B)) 
    sm_reset_tx_timer_clr_i_1
       (.I0(sm_reset_tx_timer_clr_i_2_n_0),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(sm_reset_tx_timer_clr_reg_0),
        .O(sm_reset_tx_timer_clr_reg));
  LUT6 #(
    .INIT(64'hA0C0A0C0F0F000F0)) 
    sm_reset_tx_timer_clr_i_2
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I1(gtwiz_reset_userclk_tx_active_sync),
        .I2(sm_reset_tx_timer_sat_reg),
        .I3(out[0]),
        .I4(plllock_tx_sync),
        .I5(out[2]),
        .O(sm_reset_tx_timer_clr_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFB000002AA)) 
    txuserrdy_out_i_1
       (.I0(txuserrdy_out_i_2_n_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gtye4.txuserrdy_int ),
        .O(txuserrdy_out_reg));
  LUT5 #(
    .INIT(32'h00200000)) 
    txuserrdy_out_i_2
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_0),
        .I2(out[2]),
        .I3(out[1]),
        .I4(gtwiz_reset_userclk_tx_active_sync),
        .O(txuserrdy_out_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9
   (plllock_rx_sync,
    gtwiz_reset_rx_done_int_reg,
    gtrxreset_out_reg,
    sm_reset_rx_timer_clr_reg,
    qpll0lock_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_rx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    out,
    gtwiz_reset_rx_done_int_reg_0,
    sm_reset_rx_timer_clr_reg_0,
    sm_reset_rx_timer_sat);
  output plllock_rx_sync;
  output gtwiz_reset_rx_done_int_reg;
  output gtrxreset_out_reg;
  output sm_reset_rx_timer_clr_reg;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_rx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [2:0]out;
  input gtwiz_reset_rx_done_int_reg_0;
  input sm_reset_rx_timer_clr_reg_0;
  input sm_reset_rx_timer_sat;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire gtrxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_done_int;
  wire gtwiz_reset_rx_done_int_reg;
  wire gtwiz_reset_rx_done_int_reg_0;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_rx_sync;
  wire [0:0]qpll0lock_out;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20FFFF00)) 
    gtrxreset_out_i_2
       (.I0(plllock_rx_sync),
        .I1(sm_reset_rx_timer_clr_reg_0),
        .I2(sm_reset_rx_timer_sat),
        .I3(out[1]),
        .I4(out[0]),
        .O(gtrxreset_out_reg));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC00000)) 
    gtwiz_reset_rx_done_int_i_1
       (.I0(plllock_rx_sync),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I3(out[0]),
        .I4(gtwiz_reset_rx_done_int),
        .I5(gtwiz_reset_rx_done_int_reg_0),
        .O(gtwiz_reset_rx_done_int_reg));
  LUT6 #(
    .INIT(64'h44440000C0000000)) 
    gtwiz_reset_rx_done_int_i_2
       (.I0(plllock_rx_sync),
        .I1(out[1]),
        .I2(sm_reset_rx_timer_sat_reg),
        .I3(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I4(out[2]),
        .I5(out[0]),
        .O(gtwiz_reset_rx_done_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(qpll0lock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_rx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sm_reset_rx_timer_clr_i_3
       (.I0(plllock_rx_sync),
        .I1(out[0]),
        .O(sm_reset_rx_timer_clr_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_gtwiz_reset" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset
   (\gen_gtwizard_gtye4.txprogdivreset_int ,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_rx_done_out,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gtwiz_reset_qpll0reset_out,
    gtpowergood_out,
    gtwiz_userclk_tx_active_in,
    qpll0lock_out,
    gtwiz_userclk_rx_active_in,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    rst_in0,
    txusrclk2_in,
    rxusrclk2_in,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync );
  output \gen_gtwizard_gtye4.txprogdivreset_int ;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output \gen_gtwizard_gtye4.txuserrdy_int ;
  output \gen_gtwizard_gtye4.rxprogdivreset_int ;
  output \gen_gtwizard_gtye4.gtrxreset_int ;
  output \gen_gtwizard_gtye4.rxuserrdy_int ;
  output \gen_gtwizard_gtye4.gttxreset_ch_int ;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in0;
  input [0:0]txusrclk2_in;
  input [0:0]rxusrclk2_in;
  input \gen_gtwizard_gtye4.gtpowergood_int ;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;

  wire \FSM_sequential_sm_reset_all[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_rx[1]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_6_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_7_n_0 ;
  wire bit_synchronizer_gtpowergood_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_1;
  wire bit_synchronizer_plllock_rx_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_3;
  wire bit_synchronizer_plllock_tx_inst_n_1;
  wire bit_synchronizer_plllock_tx_inst_n_2;
  wire bit_synchronizer_plllock_tx_inst_n_3;
  wire bit_synchronizer_rxcdrlock_inst_n_1;
  wire bit_synchronizer_rxcdrlock_inst_n_2;
  wire bit_synchronizer_rxcdrlock_inst_n_3;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.gttxreset_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_datapath_sync;
  wire gtwiz_reset_rx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_sync;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_datapath_sync;
  wire gtwiz_reset_tx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire p_0_in;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire [2:0]p_1_in;
  wire plllock_rx_sync;
  wire plllock_tx_sync;
  wire [0:0]qpll0lock_out;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_2;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_3;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_2;
  wire rst_in0;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxusrclk2_in;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_all;
  wire sm_reset_all_timer_clr_i_1_n_0;
  wire sm_reset_all_timer_clr_i_2_n_0;
  wire sm_reset_all_timer_clr_reg_n_0;
  wire [2:0]sm_reset_all_timer_ctr;
  wire \sm_reset_all_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_all_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_all_timer_sat;
  wire sm_reset_all_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_rx;
  wire sm_reset_rx_cdr_to_clr;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ;
  wire [25:0]sm_reset_rx_cdr_to_ctr_reg;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_cdr_to_sat_i_1_n_0;
  wire sm_reset_rx_cdr_to_sat_i_2_n_0;
  wire sm_reset_rx_cdr_to_sat_i_3_n_0;
  wire sm_reset_rx_cdr_to_sat_i_4_n_0;
  wire sm_reset_rx_cdr_to_sat_i_5_n_0;
  wire sm_reset_rx_cdr_to_sat_i_6_n_0;
  wire sm_reset_rx_pll_timer_clr_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_reg_n_0;
  wire \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_rx_pll_timer_ctr_reg__0;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_i_1_n_0;
  wire sm_reset_rx_pll_timer_sat_i_2_n_0;
  wire sm_reset_rx_pll_timer_sat_i_3_n_0;
  wire sm_reset_rx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_rx_timer_ctr;
  wire \sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_rx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_tx;
  wire sm_reset_tx_pll_timer_clr;
  wire sm_reset_tx_pll_timer_clr_i_1_n_0;
  wire sm_reset_tx_pll_timer_clr_reg_n_0;
  wire \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_tx_pll_timer_ctr_reg__0;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_i_1_n_0;
  wire sm_reset_tx_pll_timer_sat_i_2_n_0;
  wire sm_reset_tx_pll_timer_sat_i_3_n_0;
  wire sm_reset_tx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_tx_timer_ctr;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_i_1_n_0;
  wire [0:0]txusrclk2_in;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FFBF00FFFFFFFF)) 
    \FSM_sequential_sm_reset_all[0]_i_1 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_rx_done_int_reg_n_0),
        .I3(sm_reset_all[2]),
        .I4(sm_reset_all[1]),
        .I5(sm_reset_all[0]),
        .O(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_sm_reset_all[1]_i_1 
       (.I0(sm_reset_all[1]),
        .I1(sm_reset_all[0]),
        .O(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_sm_reset_all[2]_i_2 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .O(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_sm_reset_all[2]_i_3 
       (.I0(sm_reset_all_timer_sat),
        .I1(gtwiz_reset_rx_done_int_reg_n_0),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_all[2]_i_4 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ),
        .Q(sm_reset_all[0]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ),
        .Q(sm_reset_all[1]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ),
        .Q(sm_reset_all[2]),
        .R(gtwiz_reset_all_sync));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_rx[1]_i_2 
       (.I0(sm_reset_rx_timer_sat),
        .I1(sm_reset_rx_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD8888DDDD8888)) 
    \FSM_sequential_sm_reset_rx[2]_i_2 
       (.I0(sm_reset_rx[1]),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(sm_reset_rx_timer_clr_reg_n_0),
        .I4(sm_reset_rx[2]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_rx[2]_i_4 
       (.I0(sm_reset_rx_timer_clr_reg_n_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(sm_reset_rx[1]),
        .O(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_rx[0]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_rx[1]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ),
        .Q(sm_reset_rx[2]),
        .R(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_sm_reset_tx[2]_i_2 
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx[1]),
        .I2(sm_reset_tx[2]),
        .O(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_sm_reset_tx[2]_i_5 
       (.I0(sm_reset_tx[1]),
        .I1(sm_reset_tx[2]),
        .O(sm_reset_tx_pll_timer_clr));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_sm_reset_tx[2]_i_6 
       (.I0(sm_reset_tx[1]),
        .I1(sm_reset_tx[2]),
        .I2(sm_reset_tx_timer_clr_reg_n_0),
        .I3(sm_reset_tx_timer_sat),
        .O(\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_tx[2]_i_7 
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_tx[0]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_tx[1]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ),
        .Q(sm_reset_tx[2]),
        .R(gtwiz_reset_tx_any_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .out(sm_reset_all),
        .sm_reset_all_timer_clr_reg(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .sm_reset_all_timer_sat_reg(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.E(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1]_0 (bit_synchronizer_rxcdrlock_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync),
        .out(sm_reset_rx),
        .sm_reset_rx_timer_clr_reg(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2}),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .out(sm_reset_rx),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2}),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .out(sm_reset_tx));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_rx_inst_n_3),
        .out(sm_reset_rx),
        .rxuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .sm_reset_rx_pll_timer_clr_reg(sm_reset_rx_pll_timer_clr_reg_n_0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
       (.E(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .\FSM_sequential_sm_reset_tx_reg[1] (\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_tx_inst_n_2),
        .out(sm_reset_tx),
        .plllock_tx_sync(plllock_tx_sync),
        .sm_reset_tx_pll_timer_clr(sm_reset_tx_pll_timer_clr),
        .sm_reset_tx_pll_timer_clr_reg(sm_reset_tx_pll_timer_clr_reg_n_0),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_timer_clr_reg(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0),
        .sm_reset_tx_timer_clr_reg_0(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ),
        .txuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 bit_synchronizer_plllock_rx_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtrxreset_out_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_done_int_reg(bit_synchronizer_plllock_rx_inst_n_1),
        .gtwiz_reset_rx_done_int_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .out(sm_reset_rx),
        .plllock_rx_sync(plllock_rx_sync),
        .qpll0lock_out(qpll0lock_out),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_plllock_rx_inst_n_3),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 bit_synchronizer_plllock_tx_inst
       (.\FSM_sequential_sm_reset_tx_reg[0] (bit_synchronizer_plllock_tx_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .gttxreset_out_reg(bit_synchronizer_plllock_tx_inst_n_3),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_done_int_reg(bit_synchronizer_plllock_tx_inst_n_1),
        .gtwiz_reset_tx_done_int_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .out(sm_reset_tx),
        .plllock_tx_sync(plllock_tx_sync),
        .qpll0lock_out(qpll0lock_out),
        .sm_reset_tx_timer_clr_reg(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 bit_synchronizer_rxcdrlock_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_rxcdrlock_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .out(sm_reset_rx),
        .plllock_rx_sync(plllock_rx_sync),
        .rxcdrlock_out(rxcdrlock_out),
        .rxprogdivreset_out_reg(bit_synchronizer_rxcdrlock_inst_n_3),
        .sm_reset_rx_cdr_to_clr(sm_reset_rx_cdr_to_clr),
        .sm_reset_rx_cdr_to_clr_reg(bit_synchronizer_rxcdrlock_inst_n_1),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat),
        .sm_reset_rx_timer_clr_reg(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    gtrxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_3),
        .Q(\gen_gtwizard_gtye4.gtrxreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    gttxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_2),
        .Q(\gen_gtwizard_gtye4.gttxreset_int ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gtwiz_reset_qpll0reset_out[0]_INST_0 
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .I1(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(gtwiz_reset_qpll0reset_out));
  LUT4 #(
    .INIT(16'hF740)) 
    gtwiz_reset_rx_datapath_int_i_1
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_1),
        .Q(gtwiz_reset_rx_done_int_reg_n_0),
        .R(gtwiz_reset_rx_any_sync));
  LUT4 #(
    .INIT(16'hF704)) 
    gtwiz_reset_rx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_1),
        .Q(gtwiz_reset_tx_done_int_reg_n_0),
        .R(gtwiz_reset_tx_any_sync));
  LUT4 #(
    .INIT(16'hFB02)) 
    gtwiz_reset_tx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h8B)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1 
       (.I0(\gen_gtwizard_gtye4.gttxreset_int ),
        .I1(gtpowergood_out),
        .I2(\gen_gtwizard_gtye4.gtpowergood_int ),
        .O(\gen_gtwizard_gtye4.gttxreset_ch_int ));
  FDRE #(
    .INIT(1'b0)) 
    pllreset_rx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pllreset_tx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .R(1'b0));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .gtrxreset_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_3),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .i_in_out_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .out(sm_reset_rx),
        .pllreset_rx_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .rxprogdivreset_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_2),
        .sm_reset_rx_cdr_to_sat_reg(bit_synchronizer_rxcdrlock_inst_n_3));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_datapath_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .\gen_gtwizard_gtye4.gttxreset_int (\gen_gtwizard_gtye4.gttxreset_int ),
        .gttxreset_out_reg(reset_synchronizer_gtwiz_reset_tx_any_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .out(sm_reset_tx),
        .pllreset_tx_out_reg(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .sm_reset_tx_timer_sat_reg(bit_synchronizer_plllock_tx_inst_n_3));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_int_reg(gtwiz_reset_rx_done_int_reg_n_0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rxusrclk2_in(rxusrclk2_in));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_int_reg(gtwiz_reset_tx_done_int_reg_n_0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .txusrclk2_in(txusrclk2_in));
  interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 reset_synchronizer_txprogdivreset_inst
       (.\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .rst_in0(rst_in0));
  FDRE #(
    .INIT(1'b1)) 
    rxprogdivreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_2),
        .Q(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .Q(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFA200A)) 
    sm_reset_all_timer_clr_i_1
       (.I0(sm_reset_all_timer_clr_i_2_n_0),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(sm_reset_all[0]),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000B0003333BB33)) 
    sm_reset_all_timer_clr_i_2
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all[2]),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[1]),
        .O(sm_reset_all_timer_clr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_all_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_clr_i_1_n_0),
        .Q(sm_reset_all_timer_clr_reg_n_0),
        .S(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_all_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_all_timer_ctr[0]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .O(\sm_reset_all_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_all_timer_ctr[1]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_all_timer_ctr[2]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .I2(sm_reset_all_timer_ctr[2]),
        .O(\sm_reset_all_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[0]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[1]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[2]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_all_timer_sat_i_1
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_all_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_sat_i_1_n_0),
        .Q(sm_reset_all_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_cdr_to_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_1),
        .Q(sm_reset_rx_cdr_to_clr),
        .S(gtwiz_reset_rx_any_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_1 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[1]),
        .I2(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ),
        .I3(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ),
        .I5(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[19]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[14]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[22]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[20]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_5 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[12]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[8]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[9]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[6]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[5]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[2]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[0]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 }),
        .S({sm_reset_rx_cdr_to_ctr_reg[7:1],\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[10] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[10]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[11] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[11]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[12] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[12]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[13] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[13]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[14] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[14]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[15] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[15]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[16] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[16]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[16]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[17] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[17]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[18] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[18]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[19] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[19]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[1]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[20] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[20]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[21] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[21]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[22] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[22]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[23] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[23]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[24] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[24]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[24]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED [7:1],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sm_reset_rx_cdr_to_ctr_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[25] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[25]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[2]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[3]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[4]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[5]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[6]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[7]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[8]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[8]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[9]),
        .R(sm_reset_rx_cdr_to_clr));
  LUT3 #(
    .INIT(8'h0E)) 
    sm_reset_rx_cdr_to_sat_i_1
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(sm_reset_rx_cdr_to_sat_i_2_n_0),
        .I2(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_sat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    sm_reset_rx_cdr_to_sat_i_2
       (.I0(sm_reset_rx_cdr_to_sat_i_3_n_0),
        .I1(sm_reset_rx_cdr_to_sat_i_4_n_0),
        .I2(sm_reset_rx_cdr_to_sat_i_5_n_0),
        .I3(sm_reset_rx_cdr_to_sat_i_6_n_0),
        .I4(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[1]),
        .O(sm_reset_rx_cdr_to_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    sm_reset_rx_cdr_to_sat_i_3
       (.I0(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[5]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[2]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[6]),
        .O(sm_reset_rx_cdr_to_sat_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_rx_cdr_to_sat_i_4
       (.I0(sm_reset_rx_cdr_to_ctr_reg[22]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[20]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[24]),
        .O(sm_reset_rx_cdr_to_sat_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    sm_reset_rx_cdr_to_sat_i_5
       (.I0(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[14]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[19]),
        .O(sm_reset_rx_cdr_to_sat_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    sm_reset_rx_cdr_to_sat_i_6
       (.I0(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[9]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[8]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[12]),
        .O(sm_reset_rx_cdr_to_sat_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_cdr_to_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_cdr_to_sat_i_1_n_0),
        .Q(sm_reset_rx_cdr_to_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_rx_pll_timer_clr_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx[1]),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .O(\sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[8]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_2 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__1[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[8]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[9]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    sm_reset_rx_pll_timer_sat_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_sat_i_2_n_0),
        .I3(sm_reset_rx_pll_timer_sat_i_3_n_0),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_sat_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sm_reset_rx_pll_timer_sat_i_2
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(sm_reset_rx_pll_timer_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_rx_pll_timer_sat_i_3
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .O(sm_reset_rx_pll_timer_sat_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .Q(sm_reset_rx_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_rx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .O(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .I2(sm_reset_rx_timer_ctr[2]),
        .O(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[0]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[1]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[2]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_rx_timer_sat_i_1
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .O(sm_reset_rx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_timer_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF5000D)) 
    sm_reset_tx_pll_timer_clr_i_1
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx_pll_timer_sat),
        .I2(sm_reset_tx[1]),
        .I3(sm_reset_tx[2]),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .O(\sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[8]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_2 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    sm_reset_tx_pll_timer_sat_i_1
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_sat_i_2_n_0),
        .I3(sm_reset_tx_pll_timer_sat_i_3_n_0),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_sat_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sm_reset_tx_pll_timer_sat_i_2
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(sm_reset_tx_pll_timer_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_tx_pll_timer_sat_i_3
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .O(sm_reset_tx_pll_timer_sat_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0),
        .Q(sm_reset_tx_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_tx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .I2(sm_reset_tx_timer_ctr[2]),
        .O(p_1_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[0]),
        .Q(sm_reset_tx_timer_ctr[0]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[1]),
        .Q(sm_reset_tx_timer_ctr[1]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[2]),
        .Q(sm_reset_tx_timer_ctr[2]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_tx_timer_sat_i_1
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .I3(sm_reset_tx_timer_sat),
        .I4(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_timer_sat),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .Q(\gen_gtwizard_gtye4.txuserrdy_int ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_gtye4_channel" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel
   (bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] ,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0outclk_out,
    qpll0freqlock_in,
    qpll0outrefclk_out,
    qpll1outclk_out,
    qpll1freqlock_in,
    qpll1outrefclk_out,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    \gen_powergood_delay.pwr_on_fsm_reg ,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    txpolarity_in,
    txprbsforceerr_in,
    \gen_gtwizard_gtye4.txprogdivreset_int ,
    \gen_powergood_delay.pwr_on_fsm_reg_0 ,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    TXRATE,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output \gen_gtwizard_gtye4.gtpowergood_int ;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input \gen_gtwizard_gtye4.gttxreset_ch_int ;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0outclk_out;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0outrefclk_out;
  input [0:0]qpll1outclk_out;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1outrefclk_out;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input \gen_powergood_delay.pwr_on_fsm_reg ;
  input \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input \gen_gtwizard_gtye4.txprogdivreset_int ;
  input \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]TXRATE;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [2:0]TXRATE;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  wire \gen_powergood_delay.pwr_on_fsm_reg ;
  wire \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txratedone_out;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire xlnx_opt_;
  wire xlnx_opt__1;

  assign lopt_2 = xlnx_opt_;
  assign lopt_3 = xlnx_opt__1;
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(lopt),
        .CESYNC(xlnx_opt_),
        .CLK(txoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_2 
       (.I0(\gen_gtwizard_gtye4.gtpowergood_int ),
        .O(\gen_powergood_delay.intclk_rrst_n_r_reg[0] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTYE4_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(16'h0000),
    .ADAPT_CFG1(16'hF81C),
    .ADAPT_CFG2(16'h0000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0000000000),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("FALSE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("FALSE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .A_RXPROGDIVRESET(1'b0),
    .A_RXTERMINATION(1'b1),
    .A_TXDIFFCTRL(5'b01100),
    .A_TXPROGDIVRESET(1'b0),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CDR_SWAP_MODE_EN(1'b0),
    .CFOK_PWRSVE_EN(1'b1),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CH_HSPMUX(16'h4040),
    .CKCAL1_CFG_0(16'b1100000011000000),
    .CKCAL1_CFG_1(16'b0001000011000000),
    .CKCAL1_CFG_2(16'b0010000000001000),
    .CKCAL1_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_0(16'b1100000011000000),
    .CKCAL2_CFG_1(16'b1000000011000000),
    .CKCAL2_CFG_2(16'b0001000000000000),
    .CKCAL2_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_4(16'b0000000000000000),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(24),
    .CLK_COR_MIN_LAT(16),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0000000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0000000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG0(16'h01FA),
    .CPLL_CFG1(16'h002B),
    .CPLL_CFG2(16'h0002),
    .CPLL_CFG3(16'h0000),
    .CPLL_FBDIV(2),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG0(16'h02B2),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .CTLE3_OCAP_EXT_CTRL(3'b000),
    .CTLE3_OCAP_EXT_EN(1'b0),
    .DDI_CTRL(2'b00),
    .DDI_REALIGN_WAIT(15),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DELAY_ELEC(1'b0),
    .DMONITOR_CFG0(10'h000),
    .DMONITOR_CFG1(8'h00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER0(16'h0000),
    .ES_QUALIFIER1(16'h0000),
    .ES_QUALIFIER2(16'h0000),
    .ES_QUALIFIER3(16'h0000),
    .ES_QUALIFIER4(16'h0000),
    .ES_QUALIFIER5(16'h0000),
    .ES_QUALIFIER6(16'h0000),
    .ES_QUALIFIER7(16'h0000),
    .ES_QUALIFIER8(16'h0000),
    .ES_QUALIFIER9(16'h0000),
    .ES_QUAL_MASK0(16'h0000),
    .ES_QUAL_MASK1(16'h0000),
    .ES_QUAL_MASK2(16'h0000),
    .ES_QUAL_MASK3(16'h0000),
    .ES_QUAL_MASK4(16'h0000),
    .ES_QUAL_MASK5(16'h0000),
    .ES_QUAL_MASK6(16'h0000),
    .ES_QUAL_MASK7(16'h0000),
    .ES_QUAL_MASK8(16'h0000),
    .ES_QUAL_MASK9(16'h0000),
    .ES_SDATA_MASK0(16'h0000),
    .ES_SDATA_MASK1(16'h0000),
    .ES_SDATA_MASK2(16'h0000),
    .ES_SDATA_MASK3(16'h0000),
    .ES_SDATA_MASK4(16'h0000),
    .ES_SDATA_MASK5(16'h0000),
    .ES_SDATA_MASK6(16'h0000),
    .ES_SDATA_MASK7(16'h0000),
    .ES_SDATA_MASK8(16'h0000),
    .ES_SDATA_MASK9(16'h0000),
    .EYESCAN_VP_RANGE(0),
    .EYE_SCAN_SWAP_EN(1'b0),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(5'b00000),
    .ISCAN_CK_PH_SEL2(1'b0),
    .LOCAL_MASTER(1'b1),
    .LPBK_BIAS_CTRL(4),
    .LPBK_EN_RCAL_B(1'b0),
    .LPBK_EXT_RCAL(4'b1000),
    .LPBK_IND_CTRL0(5),
    .LPBK_IND_CTRL1(5),
    .LPBK_IND_CTRL2(5),
    .LPBK_RG_CTRL(2),
    .OOBDIVCTL(2'b00),
    .OOB_PWRUP(1'b0),
    .PCI3_AUTO_REALIGN("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE(1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS(2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE(1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE(3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE(1'b0),
    .PCI3_RX_FIFO_DISABLE(1'b0),
    .PCIE3_CLK_COR_EMPTY_THRSH(5'b00000),
    .PCIE3_CLK_COR_FULL_THRSH(6'b010000),
    .PCIE3_CLK_COR_MAX_LAT(5'b00100),
    .PCIE3_CLK_COR_MIN_LAT(5'b00000),
    .PCIE3_CLK_COR_THRSH_TIMER(6'b001000),
    .PCIE_64B_DYN_CLKSW_DIS("FALSE"),
    .PCIE_BUFG_DIV_CTRL(16'h3500),
    .PCIE_GEN4_64BIT_INT_EN("FALSE"),
    .PCIE_PLL_SEL_MODE_GEN12(2'h2),
    .PCIE_PLL_SEL_MODE_GEN3(2'h2),
    .PCIE_PLL_SEL_MODE_GEN4(2'h2),
    .PCIE_RXPCS_CFG_GEN3(16'h0AA5),
    .PCIE_RXPMA_CFG(16'h280A),
    .PCIE_TXPCS_CFG_GEN3(16'h24A4),
    .PCIE_TXPMA_CFG(16'h280A),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD0(16'h0000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PREIQ_FREQ_BST(1),
    .RATE_SW_USE_DRP(1'b1),
    .RCLK_SIPO_DLY_ENB(1'b0),
    .RCLK_SIPO_INV_EN(1'b0),
    .RTX_BUF_CML_CTRL(3'b011),
    .RTX_BUF_TERM_CTRL(2'b00),
    .RXBUFRESET_TIME(5'b00011),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(49),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(7),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG0(16'h0003),
    .RXCDR_CFG0_GEN3(16'h0003),
    .RXCDR_CFG1(16'h0000),
    .RXCDR_CFG1_GEN3(16'h0000),
    .RXCDR_CFG2(16'h0269),
    .RXCDR_CFG2_GEN2(10'h269),
    .RXCDR_CFG2_GEN3(16'h0269),
    .RXCDR_CFG2_GEN4(16'h0164),
    .RXCDR_CFG3(16'h0012),
    .RXCDR_CFG3_GEN2(6'h12),
    .RXCDR_CFG3_GEN3(16'h0012),
    .RXCDR_CFG3_GEN4(16'h0012),
    .RXCDR_CFG4(16'h5CF6),
    .RXCDR_CFG4_GEN3(16'h5CF6),
    .RXCDR_CFG5(16'hB46B),
    .RXCDR_CFG5_GEN3(16'h146B),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG0(16'h2201),
    .RXCDR_LOCK_CFG1(16'h9FFF),
    .RXCDR_LOCK_CFG2(16'h0000),
    .RXCDR_LOCK_CFG3(16'h0000),
    .RXCDR_LOCK_CFG4(16'h0000),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXCFOK_CFG0(16'h0000),
    .RXCFOK_CFG1(16'h8015),
    .RXCFOK_CFG2(16'h02AE),
    .RXCKCAL1_IQ_LOOP_RST_CFG(16'h0000),
    .RXCKCAL1_I_LOOP_RST_CFG(16'h0000),
    .RXCKCAL1_Q_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_DX_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_D_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_S_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_X_LOOP_RST_CFG(16'h0000),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDFELPM_KL_CFG0(16'h0000),
    .RXDFELPM_KL_CFG1(16'hA082),
    .RXDFELPM_KL_CFG2(16'h0100),
    .RXDFE_CFG0(16'h0A00),
    .RXDFE_CFG1(16'h0000),
    .RXDFE_GC_CFG0(16'h0000),
    .RXDFE_GC_CFG1(16'h8000),
    .RXDFE_GC_CFG2(16'hFFF0),
    .RXDFE_H2_CFG0(16'h0000),
    .RXDFE_H2_CFG1(16'h0002),
    .RXDFE_H3_CFG0(16'h0000),
    .RXDFE_H3_CFG1(16'h8002),
    .RXDFE_H4_CFG0(16'h0000),
    .RXDFE_H4_CFG1(16'h8002),
    .RXDFE_H5_CFG0(16'h0000),
    .RXDFE_H5_CFG1(16'h8002),
    .RXDFE_H6_CFG0(16'h0000),
    .RXDFE_H6_CFG1(16'h8002),
    .RXDFE_H7_CFG0(16'h0000),
    .RXDFE_H7_CFG1(16'h8002),
    .RXDFE_H8_CFG0(16'h0000),
    .RXDFE_H8_CFG1(16'h8002),
    .RXDFE_H9_CFG0(16'h0000),
    .RXDFE_H9_CFG1(16'h8002),
    .RXDFE_HA_CFG0(16'h0000),
    .RXDFE_HA_CFG1(16'h8002),
    .RXDFE_HB_CFG0(16'h0000),
    .RXDFE_HB_CFG1(16'h8002),
    .RXDFE_HC_CFG0(16'h0000),
    .RXDFE_HC_CFG1(16'h8002),
    .RXDFE_HD_CFG0(16'h0000),
    .RXDFE_HD_CFG1(16'h8002),
    .RXDFE_HE_CFG0(16'h0000),
    .RXDFE_HE_CFG1(16'h8002),
    .RXDFE_HF_CFG0(16'h0000),
    .RXDFE_HF_CFG1(16'h8002),
    .RXDFE_KH_CFG0(16'h8000),
    .RXDFE_KH_CFG1(16'hFE00),
    .RXDFE_KH_CFG2(16'h0200),
    .RXDFE_KH_CFG3(16'h4101),
    .RXDFE_OS_CFG0(16'h2000),
    .RXDFE_OS_CFG1(16'h8000),
    .RXDFE_UT_CFG0(16'h0000),
    .RXDFE_UT_CFG1(16'h0003),
    .RXDFE_UT_CFG2(16'h0000),
    .RXDFE_VP_CFG0(16'h0000),
    .RXDFE_VP_CFG1(16'h0033),
    .RXDLY_CFG(16'h0010),
    .RXDLY_LCFG(16'h0030),
    .RXELECIDLE_CFG("SIGCFG_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR(3),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_CFG(16'h0000),
    .RXLPM_GC_CFG(16'hF800),
    .RXLPM_KH_CFG0(16'h0000),
    .RXLPM_KH_CFG1(16'hA002),
    .RXLPM_OS_CFG0(16'h0000),
    .RXLPM_OS_CFG1(16'h8002),
    .RXOOB_CFG(9'b000000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00011),
    .RXPHBEACON_CFG(16'h0000),
    .RXPHDLY_CFG(16'h2070),
    .RXPHSAMP_CFG(16'h2100),
    .RXPHSLIP_CFG(16'h9933),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(16'h0102),
    .RXPI_CFG1(16'b0000000001010100),
    .RXPMACLK_SEL("DATA"),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXPRBS_LINKACQ_CNT(15),
    .RXREFCLKDIV2_SEL(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_AFE_CM_EN(1'b0),
    .RX_BIAS_CFG0(16'h12B0),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CAPFF_SARC_ENB(1'b0),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_EN(1'b1),
    .RX_CLK_SLIP_OVRD(5'b00000),
    .RX_CM_BUF_CFG(4'b1010),
    .RX_CM_BUF_PD(1'b0),
    .RX_CM_SEL(3),
    .RX_CM_TRIM(10),
    .RX_CTLE_PWR_SAVING(1'b0),
    .RX_CTLE_RES_CTRL(4'b0000),
    .RX_DATA_WIDTH(64),
    .RX_DDI_SEL(6'b000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DEGEN_CTRL(3'b100),
    .RX_DFELPM_CFG0(10),
    .RX_DFELPM_CFG1(1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG1(2),
    .RX_DFE_KL_LPM_KH_CFG0(3),
    .RX_DFE_KL_LPM_KH_CFG1(2),
    .RX_DFE_KL_LPM_KL_CFG0(2'b11),
    .RX_DFE_KL_LPM_KL_CFG1(2),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_DIVRESET_TIME(5'b00001),
    .RX_EN_CTLE_RCAL_B(1'b0),
    .RX_EN_SUM_RCAL_B(0),
    .RX_EYESCAN_VS_CODE(7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR(1'b0),
    .RX_EYESCAN_VS_RANGE(2'b10),
    .RX_EYESCAN_VS_UT_SIGN(1'b0),
    .RX_FABINT_USRCLK_FLOP(1'b0),
    .RX_I2V_FILTER_EN(1'b1),
    .RX_INT_DATAWIDTH(2),
    .RX_PMA_POWER_SAVE(1'b0),
    .RX_PMA_RSV0(16'h002F),
    .RX_PROGDIV_CFG(0.000000),
    .RX_PROGDIV_RATE(16'h0001),
    .RX_RESLOAD_CTRL(4'b0000),
    .RX_RESLOAD_OVRD(1'b0),
    .RX_SAMPLE_PERIOD(3'b111),
    .RX_SIG_VALID_DLY(11),
    .RX_SUM_DEGEN_AVTT_OVERITE(0),
    .RX_SUM_DFETAPREP_EN(1'b0),
    .RX_SUM_IREF_TUNE(4'b0000),
    .RX_SUM_PWR_SAVING(0),
    .RX_SUM_RES_CTRL(4'b0000),
    .RX_SUM_VCMTUNE(4'b0011),
    .RX_SUM_VCM_BIAS_TUNE_EN(1'b1),
    .RX_SUM_VCM_OVWR(1'b0),
    .RX_SUM_VREF_TUNE(3'b100),
    .RX_TUNE_AFE_OS(2'b10),
    .RX_VREG_CTRL(3'b010),
    .RX_VREG_PDB(1'b1),
    .RX_WIDEMODE_CDR(2'b01),
    .RX_WIDEMODE_CDR_GEN3(2'b00),
    .RX_WIDEMODE_CDR_GEN4(2'b01),
    .RX_XCLK_SEL("RXDES"),
    .RX_XMODE_SEL(1'b1),
    .SAMPLE_CLK_PHASE(1'b0),
    .SAS_12G_MODE(1'b0),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("Z"),
    .SRSTMODE(1'b0),
    .TAPDLY_SET_TX(2'h0),
    .TERM_RCAL_CFG(15'b100001000000010),
    .TERM_RCAL_OVRD(3'b001),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV0(8'h00),
    .TST_RSV1(8'h00),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h8010),
    .TXDLY_LCFG(16'h0030),
    .TXDRV_FREQBAND(0),
    .TXFE_CFG0(16'b0000001111000010),
    .TXFE_CFG1(16'b0110110000000000),
    .TXFE_CFG2(16'b0110110000000000),
    .TXFE_CFG3(16'b0110110000000000),
    .TXFIFO_ADDR_CFG("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR(4),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00011),
    .TXPHDLY_CFG0(16'h6070),
    .TXPHDLY_CFG1(16'h000E),
    .TXPH_CFG(16'h0723),
    .TXPH_CFG2(16'h0000),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(16'b0000001100000000),
    .TXPI_CFG1(16'b0001000000000000),
    .TXPI_GRAY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPM(1'b0),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00011),
    .TXREFCLKDIV2_SEL(1'b0),
    .TXSWBST_BST(1),
    .TXSWBST_EN(0),
    .TXSWBST_MAG(4),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(64),
    .TX_DCC_LOOP_RST_CFG(16'h0004),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DEEMPH2(6'b000000),
    .TX_DEEMPH3(6'b000000),
    .TX_DIVRESET_TIME(5'b00001),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b100),
    .TX_EIDLE_DEASSERT_DELAY(3'b011),
    .TX_FABINT_USRCLK_FLOP(1'b0),
    .TX_FIFO_BYP_EN(1'b0),
    .TX_IDLE_DATA_ZERO(1'b0),
    .TX_INT_DATAWIDTH(2),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1011000),
    .TX_MARGIN_FULL_1(7'b1010111),
    .TX_MARGIN_FULL_2(7'b1010101),
    .TX_MARGIN_FULL_3(7'b1010011),
    .TX_MARGIN_FULL_4(7'b1010001),
    .TX_MARGIN_LOW_0(7'b1001100),
    .TX_MARGIN_LOW_1(7'b1001011),
    .TX_MARGIN_LOW_2(7'b1001000),
    .TX_MARGIN_LOW_3(7'b1000010),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PHICAL_CFG0(16'h0020),
    .TX_PHICAL_CFG1(16'h0040),
    .TX_PI_BIASSET(1),
    .TX_PMADATA_OPT(1'b0),
    .TX_PMA_POWER_SAVE(1'b0),
    .TX_PMA_RSV0(16'h0000),
    .TX_PMA_RSV1(16'h0000),
    .TX_PROGCLK_SEL("PREPI"),
    .TX_PROGDIV_CFG(32.000000),
    .TX_PROGDIV_RATE(16'h0001),
    .TX_RXDETECT_CFG(14'h0032),
    .TX_RXDETECT_REF(5),
    .TX_SAMPLE_PERIOD(3'b111),
    .TX_SW_MEAS(2'b00),
    .TX_VREG_CTRL(3'b011),
    .TX_VREG_PDB(1'b1),
    .TX_VREG_VREFSEL(2'b10),
    .TX_XCLK_SEL("TXOUT"),
    .USB_BOTH_BURST_IDLE(1'b0),
    .USB_BURSTMAX_U3WAKE(7'b1111111),
    .USB_BURSTMIN_U3WAKE(7'b1100011),
    .USB_CLK_COR_EQ_EN(1'b0),
    .USB_EXT_CNTL(1'b1),
    .USB_IDLEMAX_POLLING(10'b1010111011),
    .USB_IDLEMIN_POLLING(10'b0100101011),
    .USB_LFPSPING_BURST(9'b000000101),
    .USB_LFPSPOLLING_BURST(9'b000110001),
    .USB_LFPSPOLLING_IDLE_MS(9'b000000100),
    .USB_LFPSU1EXIT_BURST(9'b000011101),
    .USB_LFPSU2LPEXIT_BURST_MS(9'b001100011),
    .USB_LFPSU3WAKE_BURST_MS(9'b111110011),
    .USB_LFPS_TPERIOD(4'b0011),
    .USB_LFPS_TPERIOD_ACCURATE(1'b1),
    .USB_MODE(1'b0),
    .USB_PCIE_ERR_REP_DIS(1'b0),
    .USB_PING_SATA_MAX_INIT(21),
    .USB_PING_SATA_MIN_INIT(12),
    .USB_POLL_SATA_MAX_BURST(8),
    .USB_POLL_SATA_MIN_BURST(4),
    .USB_RAW_ELEC(1'b0),
    .USB_RXIDLE_P0_CTRL(1'b1),
    .USB_TXIDLE_TUNE_ENABLE(1'b1),
    .USB_U1_SATA_MAX_WAKE(7),
    .USB_U1_SATA_MIN_WAKE(4),
    .USB_U2_SAS_MAX_COM(64),
    .USB_U2_SAS_MIN_COM(36),
    .USE_PCS_CLK_PHASE_SEL(1'b0),
    .Y_ALL_MODE(1'b0)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST 
       (.BUFGTCE(bufgtce_out),
        .BUFGTCEMASK(bufgtcemask_out),
        .BUFGTDIV(bufgtdiv_out),
        .BUFGTRESET(bufgtreset_out),
        .BUFGTRSTMASK(bufgtrstmask_out),
        .CDRSTEPDIR(cdrstepdir_in),
        .CDRSTEPSQ(cdrstepsq_in),
        .CDRSTEPSX(cdrstepsx_in),
        .CFGRESET(cfgreset_in),
        .CLKRSVD0(clkrsvd0_in),
        .CLKRSVD1(clkrsvd1_in),
        .CPLLFBCLKLOST(cpllfbclklost_out),
        .CPLLFREQLOCK(cpllfreqlock_in),
        .CPLLLOCK(cplllock_out),
        .CPLLLOCKDETCLK(cplllockdetclk_in),
        .CPLLLOCKEN(cplllocken_in),
        .CPLLPD(cpllpd_in),
        .CPLLREFCLKLOST(cpllrefclklost_out),
        .CPLLREFCLKSEL(cpllrefclksel_in),
        .CPLLRESET(cpllreset_in),
        .DMONFIFORESET(dmonfiforeset_in),
        .DMONITORCLK(dmonitorclk_in),
        .DMONITOROUT(dmonitorout_out),
        .DMONITOROUTCLK(dmonitoroutclk_out),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPRST(drprst_in),
        .DRPWE(drpwe_in),
        .EYESCANDATAERROR(eyescandataerror_out),
        .EYESCANRESET(eyescanreset_in),
        .EYESCANTRIGGER(eyescantrigger_in),
        .FREQOS(freqos_in),
        .GTGREFCLK(gtgrefclk_in),
        .GTNORTHREFCLK0(gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gtnorthrefclk1_in),
        .GTPOWERGOOD(\gen_gtwizard_gtye4.gtpowergood_int ),
        .GTREFCLK0(gtrefclk0_in),
        .GTREFCLK1(gtrefclk1_in),
        .GTREFCLKMONITOR(gtrefclkmonitor_out),
        .GTRSVD(gtrsvd_in),
        .GTRXRESET(\gen_gtwizard_gtye4.gtrxreset_int ),
        .GTRXRESETSEL(gtrxresetsel_in),
        .GTSOUTHREFCLK0(gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gtsouthrefclk1_in),
        .GTTXRESET(\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .GTTXRESETSEL(gttxresetsel_in),
        .GTYRXN(gtyrxn_in),
        .GTYRXP(gtyrxp_in),
        .GTYTXN(gtytxn_out),
        .GTYTXP(gtytxp_out),
        .INCPCTRL(incpctrl_in),
        .LOOPBACK(loopback_in),
        .PCIEEQRXEQADAPTDONE(pcieeqrxeqadaptdone_in),
        .PCIERATEGEN3(pcierategen3_out),
        .PCIERATEIDLE(pcierateidle_out),
        .PCIERATEQPLLPD(pcierateqpllpd_out),
        .PCIERATEQPLLRESET(pcierateqpllreset_out),
        .PCIERSTIDLE(pcierstidle_in),
        .PCIERSTTXSYNCSTART(pciersttxsyncstart_in),
        .PCIESYNCTXSYNCDONE(pciesynctxsyncdone_out),
        .PCIEUSERGEN3RDY(pcieusergen3rdy_out),
        .PCIEUSERPHYSTATUSRST(pcieuserphystatusrst_out),
        .PCIEUSERRATEDONE(pcieuserratedone_in),
        .PCIEUSERRATESTART(pcieuserratestart_out),
        .PCSRSVDIN(pcsrsvdin_in),
        .PCSRSVDOUT(pcsrsvdout_out),
        .PHYSTATUS(phystatus_out),
        .PINRSRVDAS(pinrsrvdas_out),
        .POWERPRESENT(powerpresent_out),
        .QPLL0CLK(qpll0outclk_out),
        .QPLL0FREQLOCK(qpll0freqlock_in),
        .QPLL0REFCLK(qpll0outrefclk_out),
        .QPLL1CLK(qpll1outclk_out),
        .QPLL1FREQLOCK(qpll1freqlock_in),
        .QPLL1REFCLK(qpll1outrefclk_out),
        .RESETEXCEPTION(resetexception_out),
        .RESETOVRD(resetovrd_in),
        .RX8B10BEN(rx8b10ben_in),
        .RXAFECFOKEN(rxafecfoken_in),
        .RXBUFRESET(rxbufreset_in),
        .RXBUFSTATUS(rxbufstatus_out),
        .RXBYTEISALIGNED(rxbyteisaligned_out),
        .RXBYTEREALIGN(rxbyterealign_out),
        .RXCDRFREQRESET(rxcdrfreqreset_in),
        .RXCDRHOLD(rxcdrhold_in),
        .RXCDRLOCK(rxcdrlock_out),
        .RXCDROVRDEN(rxcdrovrden_in),
        .RXCDRPHDONE(rxcdrphdone_out),
        .RXCDRRESET(rxcdrreset_in),
        .RXCHANBONDSEQ(rxchanbondseq_out),
        .RXCHANISALIGNED(rxchanisaligned_out),
        .RXCHANREALIGN(rxchanrealign_out),
        .RXCHBONDEN(rxchbonden_in),
        .RXCHBONDI(rxchbondi_in),
        .RXCHBONDLEVEL(rxchbondlevel_in),
        .RXCHBONDMASTER(rxchbondmaster_in),
        .RXCHBONDO(rxchbondo_out),
        .RXCHBONDSLAVE(rxchbondslave_in),
        .RXCKCALDONE(rxckcaldone_out),
        .RXCKCALRESET(rxckcalreset_in),
        .RXCKCALSTART(rxckcalstart_in),
        .RXCLKCORCNT(rxclkcorcnt_out),
        .RXCOMINITDET(rxcominitdet_out),
        .RXCOMMADET(rxcommadet_out),
        .RXCOMMADETEN(rxcommadeten_in),
        .RXCOMSASDET(rxcomsasdet_out),
        .RXCOMWAKEDET(rxcomwakedet_out),
        .RXCTRL0(rxctrl0_out),
        .RXCTRL1(rxctrl1_out),
        .RXCTRL2(rxctrl2_out),
        .RXCTRL3(rxctrl3_out),
        .RXDATA(rxdata_out),
        .RXDATAEXTENDRSVD(rxdataextendrsvd_out),
        .RXDATAVALID(rxdatavalid_out),
        .RXDFEAGCHOLD(rxdfeagchold_in),
        .RXDFEAGCOVRDEN(rxdfeagcovrden_in),
        .RXDFECFOKFCNUM(rxdfecfokfcnum_in),
        .RXDFECFOKFEN(rxdfecfokfen_in),
        .RXDFECFOKFPULSE(rxdfecfokfpulse_in),
        .RXDFECFOKHOLD(rxdfecfokhold_in),
        .RXDFECFOKOVREN(rxdfecfokovren_in),
        .RXDFEKHHOLD(rxdfekhhold_in),
        .RXDFEKHOVRDEN(rxdfekhovrden_in),
        .RXDFELFHOLD(rxdfelfhold_in),
        .RXDFELFOVRDEN(rxdfelfovrden_in),
        .RXDFELPMRESET(rxdfelpmreset_in),
        .RXDFETAP10HOLD(rxdfetap10hold_in),
        .RXDFETAP10OVRDEN(rxdfetap10ovrden_in),
        .RXDFETAP11HOLD(rxdfetap11hold_in),
        .RXDFETAP11OVRDEN(rxdfetap11ovrden_in),
        .RXDFETAP12HOLD(rxdfetap12hold_in),
        .RXDFETAP12OVRDEN(rxdfetap12ovrden_in),
        .RXDFETAP13HOLD(rxdfetap13hold_in),
        .RXDFETAP13OVRDEN(rxdfetap13ovrden_in),
        .RXDFETAP14HOLD(rxdfetap14hold_in),
        .RXDFETAP14OVRDEN(rxdfetap14ovrden_in),
        .RXDFETAP15HOLD(rxdfetap15hold_in),
        .RXDFETAP15OVRDEN(rxdfetap15ovrden_in),
        .RXDFETAP2HOLD(rxdfetap2hold_in),
        .RXDFETAP2OVRDEN(rxdfetap2ovrden_in),
        .RXDFETAP3HOLD(rxdfetap3hold_in),
        .RXDFETAP3OVRDEN(rxdfetap3ovrden_in),
        .RXDFETAP4HOLD(rxdfetap4hold_in),
        .RXDFETAP4OVRDEN(rxdfetap4ovrden_in),
        .RXDFETAP5HOLD(rxdfetap5hold_in),
        .RXDFETAP5OVRDEN(rxdfetap5ovrden_in),
        .RXDFETAP6HOLD(rxdfetap6hold_in),
        .RXDFETAP6OVRDEN(rxdfetap6ovrden_in),
        .RXDFETAP7HOLD(rxdfetap7hold_in),
        .RXDFETAP7OVRDEN(rxdfetap7ovrden_in),
        .RXDFETAP8HOLD(rxdfetap8hold_in),
        .RXDFETAP8OVRDEN(rxdfetap8ovrden_in),
        .RXDFETAP9HOLD(rxdfetap9hold_in),
        .RXDFETAP9OVRDEN(rxdfetap9ovrden_in),
        .RXDFEUTHOLD(rxdfeuthold_in),
        .RXDFEUTOVRDEN(rxdfeutovrden_in),
        .RXDFEVPHOLD(rxdfevphold_in),
        .RXDFEVPOVRDEN(rxdfevpovrden_in),
        .RXDFEXYDEN(rxdfexyden_in),
        .RXDLYBYPASS(rxdlybypass_in),
        .RXDLYEN(rxdlyen_in),
        .RXDLYOVRDEN(rxdlyovrden_in),
        .RXDLYSRESET(rxdlysreset_in),
        .RXDLYSRESETDONE(rxdlysresetdone_out),
        .RXELECIDLE(rxelecidle_out),
        .RXELECIDLEMODE(rxelecidlemode_in),
        .RXEQTRAINING(rxeqtraining_in),
        .RXGEARBOXSLIP(rxgearboxslip_in),
        .RXHEADER(rxheader_out),
        .RXHEADERVALID(rxheadervalid_out),
        .RXLATCLK(rxlatclk_in),
        .RXLFPSTRESETDET(rxlfpstresetdet_out),
        .RXLFPSU2LPEXITDET(rxlfpsu2lpexitdet_out),
        .RXLFPSU3WAKEDET(rxlfpsu3wakedet_out),
        .RXLPMEN(rxlpmen_in),
        .RXLPMGCHOLD(rxlpmgchold_in),
        .RXLPMGCOVRDEN(rxlpmgcovrden_in),
        .RXLPMHFHOLD(rxlpmhfhold_in),
        .RXLPMHFOVRDEN(rxlpmhfovrden_in),
        .RXLPMLFHOLD(rxlpmlfhold_in),
        .RXLPMLFKLOVRDEN(rxlpmlfklovrden_in),
        .RXLPMOSHOLD(rxlpmoshold_in),
        .RXLPMOSOVRDEN(rxlpmosovrden_in),
        .RXMCOMMAALIGNEN(rxmcommaalignen_in),
        .RXMONITOROUT(rxmonitorout_out),
        .RXMONITORSEL(rxmonitorsel_in),
        .RXOOBRESET(rxoobreset_in),
        .RXOSCALRESET(rxoscalreset_in),
        .RXOSHOLD(rxoshold_in),
        .RXOSINTDONE(rxosintdone_out),
        .RXOSINTSTARTED(rxosintstarted_out),
        .RXOSINTSTROBEDONE(rxosintstrobedone_out),
        .RXOSINTSTROBESTARTED(rxosintstrobestarted_out),
        .RXOSOVRDEN(rxosovrden_in),
        .RXOUTCLK(rxoutclk_out),
        .RXOUTCLKFABRIC(rxoutclkfabric_out),
        .RXOUTCLKPCS(rxoutclkpcs_out),
        .RXOUTCLKSEL(rxoutclksel_in),
        .RXPCOMMAALIGNEN(rxpcommaalignen_in),
        .RXPCSRESET(rxpcsreset_in),
        .RXPD(rxpd_in),
        .RXPHALIGN(rxphalign_in),
        .RXPHALIGNDONE(rxphaligndone_out),
        .RXPHALIGNEN(rxphalignen_in),
        .RXPHALIGNERR(rxphalignerr_out),
        .RXPHDLYPD(rxphdlypd_in),
        .RXPHDLYRESET(rxphdlyreset_in),
        .RXPLLCLKSEL(rxpllclksel_in),
        .RXPMARESET(rxpmareset_in),
        .RXPMARESETDONE(rxpmaresetdone_out),
        .RXPOLARITY(rxpolarity_in),
        .RXPRBSCNTRESET(rxprbscntreset_in),
        .RXPRBSERR(rxprbserr_out),
        .RXPRBSLOCKED(rxprbslocked_out),
        .RXPRBSSEL(rxprbssel_in),
        .RXPRGDIVRESETDONE(rxprgdivresetdone_out),
        .RXPROGDIVRESET(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .RXRATE(rxrate_in),
        .RXRATEDONE(rxratedone_out),
        .RXRATEMODE(rxratemode_in),
        .RXRECCLKOUT(rxrecclkout_out),
        .RXRESETDONE(rxresetdone_out),
        .RXSLIDE(rxslide_in),
        .RXSLIDERDY(rxsliderdy_out),
        .RXSLIPDONE(rxslipdone_out),
        .RXSLIPOUTCLK(rxslipoutclk_in),
        .RXSLIPOUTCLKRDY(rxslipoutclkrdy_out),
        .RXSLIPPMA(rxslippma_in),
        .RXSLIPPMARDY(rxslippmardy_out),
        .RXSTARTOFSEQ(rxstartofseq_out),
        .RXSTATUS(rxstatus_out),
        .RXSYNCALLIN(rxsyncallin_in),
        .RXSYNCDONE(rxsyncdone_out),
        .RXSYNCIN(rxsyncin_in),
        .RXSYNCMODE(rxsyncmode_in),
        .RXSYNCOUT(rxsyncout_out),
        .RXSYSCLKSEL(rxsysclksel_in),
        .RXTERMINATION(rxtermination_in),
        .RXUSERRDY(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .RXUSRCLK(rxusrclk_in),
        .RXUSRCLK2(rxusrclk2_in),
        .RXVALID(rxvalid_out),
        .SIGVALIDCLK(sigvalidclk_in),
        .TSTIN(tstin_in),
        .TX8B10BBYPASS(tx8b10bbypass_in),
        .TX8B10BEN(tx8b10ben_in),
        .TXBUFSTATUS(txbufstatus_out),
        .TXCOMFINISH(txcomfinish_out),
        .TXCOMINIT(txcominit_in),
        .TXCOMSAS(txcomsas_in),
        .TXCOMWAKE(txcomwake_in),
        .TXCTRL0(txctrl0_in),
        .TXCTRL1(txctrl1_in),
        .TXCTRL2(txctrl2_in),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtwiz_userdata_tx_in}),
        .TXDATAEXTENDRSVD(txdataextendrsvd_in),
        .TXDCCDONE(txdccdone_out),
        .TXDCCFORCESTART(txdccforcestart_in),
        .TXDCCRESET(txdccreset_in),
        .TXDEEMPH(txdeemph_in),
        .TXDETECTRX(txdetectrx_in),
        .TXDIFFCTRL(txdiffctrl_in),
        .TXDLYBYPASS(txdlybypass_in),
        .TXDLYEN(txdlyen_in),
        .TXDLYHOLD(txdlyhold_in),
        .TXDLYOVRDEN(txdlyovrden_in),
        .TXDLYSRESET(txdlysreset_in),
        .TXDLYSRESETDONE(txdlysresetdone_out),
        .TXDLYUPDOWN(txdlyupdown_in),
        .TXELECIDLE(txelecidle_in),
        .TXHEADER(txheader_in),
        .TXINHIBIT(txinhibit_in),
        .TXLATCLK(txlatclk_in),
        .TXLFPSTRESET(txlfpstreset_in),
        .TXLFPSU2LPEXIT(txlfpsu2lpexit_in),
        .TXLFPSU3WAKE(txlfpsu3wake_in),
        .TXMAINCURSOR(txmaincursor_in),
        .TXMARGIN(txmargin_in),
        .TXMUXDCDEXHOLD(txmuxdcdexhold_in),
        .TXMUXDCDORWREN(txmuxdcdorwren_in),
        .TXONESZEROS(txoneszeros_in),
        .TXOUTCLK(txoutclk_out),
        .TXOUTCLKFABRIC(txoutclkfabric_out),
        .TXOUTCLKPCS(txoutclkpcs_out),
        .TXOUTCLKSEL(txoutclksel_in),
        .TXPCSRESET(txpcsreset_in),
        .TXPD(txpd_in),
        .TXPDELECIDLEMODE(txpdelecidlemode_in),
        .TXPHALIGN(txphalign_in),
        .TXPHALIGNDONE(txphaligndone_out),
        .TXPHALIGNEN(txphalignen_in),
        .TXPHDLYPD(txphdlypd_in),
        .TXPHDLYRESET(txphdlyreset_in),
        .TXPHDLYTSTCLK(txphdlytstclk_in),
        .TXPHINIT(txphinit_in),
        .TXPHINITDONE(txphinitdone_out),
        .TXPHOVRDEN(txphovrden_in),
        .TXPIPPMEN(txpippmen_in),
        .TXPIPPMOVRDEN(txpippmovrden_in),
        .TXPIPPMPD(txpippmpd_in),
        .TXPIPPMSEL(txpippmsel_in),
        .TXPIPPMSTEPSIZE(txpippmstepsize_in),
        .TXPISOPD(\gen_powergood_delay.pwr_on_fsm_reg ),
        .TXPLLCLKSEL(txpllclksel_in),
        .TXPMARESET(\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .TXPMARESETDONE(txpmaresetdone_out),
        .TXPOLARITY(txpolarity_in),
        .TXPOSTCURSOR(txpostcursor_in),
        .TXPRBSFORCEERR(txprbsforceerr_in),
        .TXPRBSSEL(txprbssel_in),
        .TXPRECURSOR(txprecursor_in),
        .TXPRGDIVRESETDONE(txprgdivresetdone_out),
        .TXPROGDIVRESET(\gen_gtwizard_gtye4.txprogdivreset_int ),
        .TXRATE(TXRATE),
        .TXRATEDONE(txratedone_out),
        .TXRATEMODE(\gen_powergood_delay.pwr_on_fsm_reg_0 ),
        .TXRESETDONE(txresetdone_out),
        .TXSEQUENCE(txsequence_in),
        .TXSWING(txswing_in),
        .TXSYNCALLIN(txsyncallin_in),
        .TXSYNCDONE(txsyncdone_out),
        .TXSYNCIN(txsyncin_in),
        .TXSYNCMODE(txsyncmode_in),
        .TXSYNCOUT(txsyncout_out),
        .TXSYSCLKSEL(txsysclksel_in),
        .TXUSERRDY(\gen_gtwizard_gtye4.txuserrdy_int ),
        .TXUSRCLK(txusrclk_in),
        .TXUSRCLK2(txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_gtye4_common" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common
   (drprdy_common_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    rst_in0,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    gtwiz_reset_qpll0reset_out,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in);
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output rst_in0;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [15:0]drpaddr_common_in;
  wire [0:0]drpclk_common_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdo_common_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drpwe_common_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire rst_in0;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTYE4_COMMON #(
    .AEN_QPLL0_FBDIV(1'b1),
    .AEN_QPLL1_FBDIV(1'b1),
    .AEN_SDM0TOGGLE(1'b0),
    .AEN_SDM1TOGGLE(1'b0),
    .A_SDM0TOGGLE(1'b0),
    .A_SDM1DATA_HIGH(9'b000000000),
    .A_SDM1DATA_LOW(16'b0000000000000000),
    .A_SDM1TOGGLE(1'b0),
    .BIAS_CFG0(16'h0000),
    .BIAS_CFG1(16'h0000),
    .BIAS_CFG2(16'h0124),
    .BIAS_CFG3(16'h0041),
    .BIAS_CFG4(16'h0010),
    .BIAS_CFG_RSVD(16'h0000),
    .COMMON_CFG0(16'h0000),
    .COMMON_CFG1(16'h0000),
    .POR_CFG(16'h0000),
    .PPF0_CFG(16'h0600),
    .PPF1_CFG(16'h0600),
    .QPLL0CLKOUT_RATE("HALF"),
    .QPLL0_CFG0(16'h331C),
    .QPLL0_CFG1(16'hD038),
    .QPLL0_CFG1_G3(16'hD038),
    .QPLL0_CFG2(16'h0FC0),
    .QPLL0_CFG2_G3(16'h0FC0),
    .QPLL0_CFG3(16'h0120),
    .QPLL0_CFG4(16'h0002),
    .QPLL0_CP(10'b0011111111),
    .QPLL0_CP_G3(10'b0000001111),
    .QPLL0_FBDIV(66),
    .QPLL0_FBDIV_G3(160),
    .QPLL0_INIT_CFG0(16'h02B2),
    .QPLL0_INIT_CFG1(8'h00),
    .QPLL0_LOCK_CFG(16'h25E8),
    .QPLL0_LOCK_CFG_G3(16'h25E8),
    .QPLL0_LPF(10'b1000111111),
    .QPLL0_LPF_G3(10'b0111010101),
    .QPLL0_PCI_EN(1'b0),
    .QPLL0_RATE_SW_USE_DRP(1'b1),
    .QPLL0_REFCLK_DIV(1),
    .QPLL0_SDM_CFG0(16'h0080),
    .QPLL0_SDM_CFG1(16'h0000),
    .QPLL0_SDM_CFG2(16'h0000),
    .QPLL1CLKOUT_RATE("HALF"),
    .QPLL1_CFG0(16'h331C),
    .QPLL1_CFG1(16'hD038),
    .QPLL1_CFG1_G3(16'hD038),
    .QPLL1_CFG2(16'h0FC3),
    .QPLL1_CFG2_G3(16'h0FC3),
    .QPLL1_CFG3(16'h0120),
    .QPLL1_CFG4(16'h0002),
    .QPLL1_CP(10'b0011111111),
    .QPLL1_CP_G3(10'b0001111111),
    .QPLL1_FBDIV(66),
    .QPLL1_FBDIV_G3(80),
    .QPLL1_INIT_CFG0(16'h02B2),
    .QPLL1_INIT_CFG1(8'h00),
    .QPLL1_LOCK_CFG(16'h25E8),
    .QPLL1_LOCK_CFG_G3(16'h25E8),
    .QPLL1_LPF(10'b1000011111),
    .QPLL1_LPF_G3(10'b0111010100),
    .QPLL1_PCI_EN(1'b0),
    .QPLL1_RATE_SW_USE_DRP(1'b1),
    .QPLL1_REFCLK_DIV(1),
    .QPLL1_SDM_CFG0(16'h0080),
    .QPLL1_SDM_CFG1(16'h0000),
    .QPLL1_SDM_CFG2(16'h0000),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .RSVD_ATTR2(16'h0000),
    .RSVD_ATTR3(16'h0000),
    .RXRECCLKOUT0_SEL(2'b00),
    .RXRECCLKOUT1_SEL(2'b00),
    .SARC_ENB(1'b0),
    .SARC_SEL(1'b0),
    .SDM0INITSEED0_0(16'b0000000100010001),
    .SDM0INITSEED0_1(9'b000010001),
    .SDM1INITSEED0_0(16'b0000000100010001),
    .SDM1INITSEED0_1(9'b000010001),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .UB_CFG0(16'h0000),
    .UB_CFG1(16'h0000),
    .UB_CFG2(16'h0000),
    .UB_CFG3(16'h0000),
    .UB_CFG4(16'h0000),
    .UB_CFG5(16'h0400),
    .UB_CFG6(16'h0000)) 
    \gtye4_common_gen.GTYE4_COMMON_PRIM_INST 
       (.BGBYPASSB(bgbypassb_in),
        .BGMONITORENB(bgmonitorenb_in),
        .BGPDB(bgpdb_in),
        .BGRCALOVRD(bgrcalovrd_in),
        .BGRCALOVRDENB(bgrcalovrdenb_in),
        .DRPADDR(drpaddr_common_in),
        .DRPCLK(drpclk_common_in),
        .DRPDI(drpdi_common_in),
        .DRPDO(drpdo_common_out),
        .DRPEN(drpen_common_in),
        .DRPRDY(drprdy_common_out),
        .DRPWE(drpwe_common_in),
        .GTGREFCLK0(gtgrefclk0_in),
        .GTGREFCLK1(gtgrefclk1_in),
        .GTNORTHREFCLK00(gtnorthrefclk00_in),
        .GTNORTHREFCLK01(gtnorthrefclk01_in),
        .GTNORTHREFCLK10(gtnorthrefclk10_in),
        .GTNORTHREFCLK11(gtnorthrefclk11_in),
        .GTREFCLK00(gtrefclk00_in),
        .GTREFCLK01(gtrefclk01_in),
        .GTREFCLK10(gtrefclk10_in),
        .GTREFCLK11(gtrefclk11_in),
        .GTSOUTHREFCLK00(gtsouthrefclk00_in),
        .GTSOUTHREFCLK01(gtsouthrefclk01_in),
        .GTSOUTHREFCLK10(gtsouthrefclk10_in),
        .GTSOUTHREFCLK11(gtsouthrefclk11_in),
        .PCIERATEQPLL0(pcierateqpll0_in),
        .PCIERATEQPLL1(pcierateqpll1_in),
        .PMARSVD0(pmarsvd0_in),
        .PMARSVD1(pmarsvd1_in),
        .PMARSVDOUT0(pmarsvdout0_out),
        .PMARSVDOUT1(pmarsvdout1_out),
        .QPLL0CLKRSVD0(qpll0clkrsvd0_in),
        .QPLL0CLKRSVD1(qpll0clkrsvd1_in),
        .QPLL0FBCLKLOST(qpll0fbclklost_out),
        .QPLL0FBDIV(qpll0fbdiv_in),
        .QPLL0LOCK(qpll0lock_out),
        .QPLL0LOCKDETCLK(qpll0lockdetclk_in),
        .QPLL0LOCKEN(qpll0locken_in),
        .QPLL0OUTCLK(qpll0outclk_out),
        .QPLL0OUTREFCLK(qpll0outrefclk_out),
        .QPLL0PD(qpll0pd_in),
        .QPLL0REFCLKLOST(qpll0refclklost_out),
        .QPLL0REFCLKSEL(qpll0refclksel_in),
        .QPLL0RESET(gtwiz_reset_qpll0reset_out),
        .QPLL1CLKRSVD0(qpll1clkrsvd0_in),
        .QPLL1CLKRSVD1(qpll1clkrsvd1_in),
        .QPLL1FBCLKLOST(qpll1fbclklost_out),
        .QPLL1FBDIV(qpll1fbdiv_in),
        .QPLL1LOCK(qpll1lock_out),
        .QPLL1LOCKDETCLK(qpll1lockdetclk_in),
        .QPLL1LOCKEN(qpll1locken_in),
        .QPLL1OUTCLK(qpll1outclk_out),
        .QPLL1OUTREFCLK(qpll1outrefclk_out),
        .QPLL1PD(qpll1pd_in),
        .QPLL1REFCLKLOST(qpll1refclklost_out),
        .QPLL1REFCLKSEL(qpll1refclksel_in),
        .QPLL1RESET(qpll1reset_in),
        .QPLLDMONITOR0(qplldmonitor0_out),
        .QPLLDMONITOR1(qplldmonitor1_out),
        .QPLLRSVD1(qpllrsvd1_in),
        .QPLLRSVD2(qpllrsvd2_in),
        .QPLLRSVD3(qpllrsvd3_in),
        .QPLLRSVD4(qpllrsvd4_in),
        .RCALENB(rcalenb_in),
        .REFCLKOUTMONITOR0(refclkoutmonitor0_out),
        .REFCLKOUTMONITOR1(refclkoutmonitor1_out),
        .RXRECCLK0SEL(rxrecclk0sel_out),
        .RXRECCLK1SEL(rxrecclk1sel_out),
        .SDM0DATA(sdm0data_in),
        .SDM0FINALOUT(sdm0finalout_out),
        .SDM0RESET(sdm0reset_in),
        .SDM0TESTDATA(sdm0testdata_out),
        .SDM0TOGGLE(sdm0toggle_in),
        .SDM0WIDTH(sdm0width_in),
        .SDM1DATA(sdm1data_in),
        .SDM1FINALOUT(sdm1finalout_out),
        .SDM1RESET(sdm1reset_in),
        .SDM1TESTDATA(sdm1testdata_out),
        .SDM1TOGGLE(sdm1toggle_in),
        .SDM1WIDTH(sdm1width_in),
        .UBCFGSTREAMEN(ubcfgstreamen_in),
        .UBDADDR(ubdaddr_out),
        .UBDEN(ubden_out),
        .UBDI(ubdi_out),
        .UBDO(ubdo_in),
        .UBDRDY(ubdrdy_in),
        .UBDWE(ubdwe_out),
        .UBENABLE(ubenable_in),
        .UBGPI(ubgpi_in),
        .UBINTR(ubintr_in),
        .UBIOLMBRST(ubiolmbrst_in),
        .UBMBRST(ubmbrst_in),
        .UBMDMCAPTURE(ubmdmcapture_in),
        .UBMDMDBGRST(ubmdmdbgrst_in),
        .UBMDMDBGUPDATE(ubmdmdbgupdate_in),
        .UBMDMREGEN(ubmdmregen_in),
        .UBMDMSHIFT(ubmdmshift_in),
        .UBMDMSYSRST(ubmdmsysrst_in),
        .UBMDMTCK(ubmdmtck_in),
        .UBMDMTDI(ubmdmtdi_in),
        .UBMDMTDO(ubmdmtdo_out),
        .UBRSVDOUT(ubrsvdout_out),
        .UBTXUART(ubtxuart_out));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_meta_i_1__4
       (.I0(qpll0lock_out),
        .O(rst_in0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood
   (out,
    i_in_meta_reg,
    TXRATE,
    i_in_meta_reg_0,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    CLK,
    gtrxreset_out_reg,
    txpisopd_in,
    txrate_in,
    txratemode_in,
    txpmareset_in);
  output out;
  output i_in_meta_reg;
  output [2:0]TXRATE;
  output i_in_meta_reg_0;
  output \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input CLK;
  input gtrxreset_out_reg;
  input [0:0]txpisopd_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [0:0]txpmareset_in;

  wire CLK;
  wire [2:0]TXRATE;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [4:0]\gen_powergood_delay.intclk_rrst_n_r ;
  wire \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire \gen_powergood_delay.pwr_on_fsm ;
  wire \gen_powergood_delay.pwr_on_fsm_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[0]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[2]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[3]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[3]_i_2_n_0 ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[0] ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[1] ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[2] ;
  wire gtrxreset_out_reg;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire p_0_in;
  wire [2:1]p_2_in;
  wire [0:0]txpisopd_in;
  wire [0:0]txpmareset_in;
  wire [2:0]txrate_in;
  wire [0:0]txratemode_in;

  assign out = \gen_powergood_delay.pwr_on_fsm ;
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .O(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[0] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(1'b1),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[1] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [0]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[2] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [1]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[3] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [2]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[4] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [3]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [4]));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_powergood_delay.pwr_on_fsm_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(p_0_in),
        .O(\gen_powergood_delay.pwr_on_fsm_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.pwr_on_fsm_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.pwr_on_fsm_i_1_n_0 ),
        .Q(\gen_powergood_delay.pwr_on_fsm ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_powergood_delay.wait_cnt[0]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .O(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_powergood_delay.wait_cnt[1]_i_1 
       (.I0(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .O(p_2_in[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_powergood_delay.wait_cnt[2]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gen_powergood_delay.wait_cnt[2]_i_2 
       (.I0(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .I2(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.wait_cnt[3]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \gen_powergood_delay.wait_cnt[3]_i_2 
       (.I0(p_0_in),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .I2(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I3(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .I4(\gen_powergood_delay.pwr_on_fsm ),
        .O(\gen_powergood_delay.wait_cnt[3]_i_2_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .R(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .R(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .R(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gen_powergood_delay.wait_cnt[3]_i_2_n_0 ),
        .Q(p_0_in),
        .R(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_2 
       (.I0(txpisopd_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(i_in_meta_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_3 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txpmareset_in),
        .O(\gen_gtwizard_gtye4.txpmareset_ch_int ));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_4 
       (.I0(txratemode_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(i_in_meta_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_5 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txrate_in[2]),
        .O(TXRATE[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_6 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txrate_in[1]),
        .O(TXRATE[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_7 
       (.I0(txrate_in[0]),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(TXRATE[0]));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer
   (gtwiz_reset_rx_done_out,
    rxusrclk2_in,
    gtwiz_reset_rx_done_int_reg);
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxusrclk2_in;
  input gtwiz_reset_rx_done_int_reg;

  wire gtwiz_reset_rx_done_int_reg;
  wire [0:0]gtwiz_reset_rx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1__0_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1__0
       (.I0(gtwiz_reset_rx_done_int_reg),
        .O(rst_in_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_rx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18
   (gtwiz_reset_tx_done_out,
    txusrclk2_in,
    gtwiz_reset_tx_done_int_reg);
  output [0:0]gtwiz_reset_tx_done_out;
  input [0:0]txusrclk2_in;
  input gtwiz_reset_tx_done_int_reg;

  wire gtwiz_reset_tx_done_int_reg;
  wire [0:0]gtwiz_reset_tx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]txusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1
       (.I0(gtwiz_reset_tx_done_int_reg),
        .O(rst_in_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_tx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer
   (gtwiz_reset_all_sync,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in);
  output gtwiz_reset_all_sync;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;

  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_all_in),
        .Q(gtwiz_reset_all_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12
   (gtwiz_reset_rx_any_sync,
    pllreset_rx_out_reg,
    rxprogdivreset_out_reg,
    gtrxreset_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ,
    sm_reset_rx_cdr_to_sat_reg,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    i_in_out_reg,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtwiz_reset_rx_datapath_int_reg,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg);
  output gtwiz_reset_rx_any_sync;
  output pllreset_rx_out_reg;
  output rxprogdivreset_out_reg;
  output gtrxreset_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  input sm_reset_rx_cdr_to_sat_reg;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input i_in_out_reg;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input gtwiz_reset_rx_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire gtrxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire i_in_out_reg;
  wire [2:0]out;
  wire pllreset_rx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire rxprogdivreset_out_reg;
  wire sm_reset_rx_cdr_to_sat_reg;

  LUT6 #(
    .INIT(64'hFFF7FFFF00070000)) 
    gtrxreset_out_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(i_in_out_reg),
        .I5(\gen_gtwizard_gtye4.gtrxreset_int ),
        .O(gtrxreset_out_reg));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_rx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(pllreset_rx_out_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_in_meta_i_1__1
       (.I0(gtwiz_reset_rx_datapath_int_reg),
        .I1(gtwiz_reset_rx_datapath_in),
        .I2(gtwiz_reset_rx_pll_and_datapath_in),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_rx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_rx_any),
        .Q(gtwiz_reset_rx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync3));
  LUT6 #(
    .INIT(64'hFFFBFFFF00120012)) 
    rxprogdivreset_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(sm_reset_rx_cdr_to_sat_reg),
        .I5(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .O(rxprogdivreset_out_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_datapath_int_reg);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input gtwiz_reset_rx_datapath_int_reg;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire in0;
  wire rst_in0_2;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__3
       (.I0(gtwiz_reset_rx_datapath_in),
        .I1(gtwiz_reset_rx_datapath_int_reg),
        .O(rst_in0_2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0_2),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0_2),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0_2),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0_2),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0_2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg,
    gtwiz_reset_rx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire in0;
  wire p_0_in_1;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__2
       (.I0(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_rx_pll_and_datapath_in),
        .O(p_0_in_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_0_in_1),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_0_in_1),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_0_in_1),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_0_in_1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_0_in_1),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15
   (gtwiz_reset_tx_any_sync,
    pllreset_tx_out_reg,
    gttxreset_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ,
    sm_reset_tx_timer_sat_reg,
    \gen_gtwizard_gtye4.gttxreset_int ,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg);
  output gtwiz_reset_tx_any_sync;
  output pllreset_tx_out_reg;
  output gttxreset_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  input sm_reset_tx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gttxreset_int ;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gtye4.gttxreset_int ;
  wire gttxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any;
  wire gtwiz_reset_tx_any_sync;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire [2:0]out;
  wire pllreset_tx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire sm_reset_tx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h3F3FFFFF3F3F0014)) 
    gttxreset_out_i_1
       (.I0(gtwiz_reset_tx_any_sync),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(sm_reset_tx_timer_sat_reg),
        .I5(\gen_gtwizard_gtye4.gttxreset_int ),
        .O(gttxreset_out_reg));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_tx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .O(pllreset_tx_out_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_in_meta_i_1
       (.I0(gtwiz_reset_tx_datapath_in),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .I2(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_tx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_any),
        .Q(gtwiz_reset_tx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_tx_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg,
    gtwiz_reset_tx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire in0;
  wire p_1_in_0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__0
       (.I0(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .O(p_1_in_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_1_in_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_1_in_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_1_in_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_1_in_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_1_in_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19
   (\gen_gtwizard_gtye4.txprogdivreset_int ,
    gtwiz_reset_clk_freerun_in,
    rst_in0);
  output \gen_gtwizard_gtye4.txprogdivreset_int ;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input rst_in0;

  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire rst_in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0),
        .Q(\gen_gtwizard_gtye4.txprogdivreset_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "interlaken_0_cdc_sync" *) 
module interlaken_0_interlaken_0_cdc_sync
   (usr_rx_reset,
    in0,
    lbus_clk);
  output usr_rx_reset;
  input in0;
  input lbus_clk;

  wire lbus_clk;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d2_cdc_to;
  (* async_reg = "true" *) wire s_out_d3;
  wire sig_in_cdc_from;

  assign sig_in_cdc_from = in0;
  assign usr_rx_reset = s_out_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_cdc_to_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(sig_in_cdc_from),
        .Q(s_out_d2_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2_cdc_to),
        .Q(s_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "interlaken_0_cdc_sync" *) 
module interlaken_0_interlaken_0_cdc_sync_0
   (usr_tx_reset,
    in0,
    lbus_clk);
  output usr_tx_reset;
  input in0;
  input lbus_clk;

  wire lbus_clk;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d2_cdc_to;
  (* async_reg = "true" *) wire s_out_d3;
  wire sig_in_cdc_from;

  assign sig_in_cdc_from = in0;
  assign usr_tx_reset = s_out_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_cdc_to_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(sig_in_cdc_from),
        .Q(s_out_d2_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2_cdc_to),
        .Q(s_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "interlaken_0_gt" *) 
(* X_CORE_INFO = "interlaken_0_gt_gtwizard_top,Vivado 2018.1" *) 
module interlaken_0_interlaken_0_gt
   (gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    gtrefclk00_in,
    qpll0outclk_out,
    qpll0outrefclk_out,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    rxusrclk_in,
    rxusrclk2_in,
    txusrclk_in,
    txusrclk2_in,
    gtpowergood_out,
    gtytxn_out,
    gtytxp_out,
    rxoutclk_out,
    rxpmaresetdone_out,
    txoutclk_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [0:0]gtrefclk00_in;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]gtpowergood_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_rx_out;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]NLW_inst_bufgtce_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtcemask_out_UNCONNECTED;
  wire [8:0]NLW_inst_bufgtdiv_out_UNCONNECTED;
  wire [0:0]NLW_inst_bufgtreset_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtrstmask_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllfbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_cplllock_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllrefclklost_out_UNCONNECTED;
  wire [15:0]NLW_inst_dmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_dmonitoroutclk_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_common_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_inst_gthtxn_out_UNCONNECTED;
  wire [0:0]NLW_inst_gthtxp_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtrefclkmonitor_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierategen3_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierateidle_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllpd_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllreset_out_UNCONNECTED;
  wire [0:0]NLW_inst_pciesynctxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieusergen3rdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserphystatusrst_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserratestart_out_UNCONNECTED;
  wire [15:0]NLW_inst_pcsrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_phystatus_out_UNCONNECTED;
  wire [15:0]NLW_inst_pinrsrvdas_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout0_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout1_out_UNCONNECTED;
  wire [0:0]NLW_inst_powerpresent_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0refclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1refclklost_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor0_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor0_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_resetexception_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrlock_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrphdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanbondseq_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanrealign_out_UNCONNECTED;
  wire [4:0]NLW_inst_rxchbondo_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxckcaldone_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxclkcorcnt_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcominitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcommadet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomsasdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomwakedet_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl0_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl1_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl2_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl3_out_UNCONNECTED;
  wire [127:0]NLW_inst_rxdata_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxdataextendrsvd_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxdatavalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxelecidle_out_UNCONNECTED;
  wire [5:0]NLW_inst_rxheader_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxheadervalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpstresetdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobestarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphalignerr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbslocked_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk0_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk0sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk1_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk1sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclkout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsliderdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipoutclkrdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslippmardy_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxstartofseq_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxvalid_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm0finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm0testdata_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm1finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm1testdata_out_UNCONNECTED;
  wire [0:0]NLW_inst_tcongpo_out_UNCONNECTED;
  wire [0:0]NLW_inst_tconrsvdout0_out_UNCONNECTED;
  wire [1:0]NLW_inst_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_txcomfinish_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdccdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphinitdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_txratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncout_out_UNCONNECTED;
  wire [15:0]NLW_inst_ubdaddr_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubden_out_UNCONNECTED;
  wire [15:0]NLW_inst_ubdi_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdwe_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubmdmtdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubtxuart_out_UNCONNECTED;

  (* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_COMMON_SCALING_FACTOR = "1" *) 
  (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
  (* C_ENABLE_COMMON_USRCLK = "0" *) 
  (* C_FORCE_COMMONS = "0" *) 
  (* C_FREERUN_FREQUENCY = "161.132812" *) 
  (* C_GT_REV = "67" *) 
  (* C_GT_TYPE = "3" *) 
  (* C_INCLUDE_CPLL_CAL = "2" *) 
  (* C_LOCATE_COMMON = "0" *) 
  (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) 
  (* C_LOCATE_RESET_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) 
  (* C_PCIE_CORECLK_FREQ = "250" *) 
  (* C_PCIE_ENABLE = "0" *) 
  (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) 
  (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
  (* C_RX_BUFFBYPASS_MODE = "0" *) 
  (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_RX_BUFFER_MODE = "1" *) 
  (* C_RX_CB_DISP = "8'b00000000" *) 
  (* C_RX_CB_K = "8'b00000000" *) 
  (* C_RX_CB_LEN_SEQ = "1" *) 
  (* C_RX_CB_MAX_LEVEL = "1" *) 
  (* C_RX_CB_NUM_SEQ = "0" *) 
  (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_CC_DISP = "8'b00000000" *) 
  (* C_RX_CC_ENABLE = "0" *) 
  (* C_RX_CC_K = "8'b00000000" *) 
  (* C_RX_CC_LEN_SEQ = "1" *) 
  (* C_RX_CC_NUM_SEQ = "0" *) 
  (* C_RX_CC_PERIODICITY = "5000" *) 
  (* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_COMMA_M_ENABLE = "0" *) 
  (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
  (* C_RX_COMMA_P_ENABLE = "0" *) 
  (* C_RX_COMMA_P_VAL = "10'b0101111100" *) 
  (* C_RX_DATA_DECODING = "0" *) 
  (* C_RX_ENABLE = "1" *) 
  (* C_RX_INT_DATA_WIDTH = "64" *) 
  (* C_RX_LINE_RATE = "10.312500" *) 
  (* C_RX_MASTER_CHANNEL_IDX = "144" *) 
  (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_RX_OUTCLK_FREQUENCY = "161.132812" *) 
  (* C_RX_OUTCLK_SOURCE = "1" *) 
  (* C_RX_PLL_TYPE = "0" *) 
  (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_RX_SLIDE_MODE = "0" *) 
  (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_RX_USER_DATA_WIDTH = "64" *) 
  (* C_RX_USRCLK2_FREQUENCY = "161.132812" *) 
  (* C_RX_USRCLK_FREQUENCY = "161.132812" *) 
  (* C_SECONDARY_QPLL_ENABLE = "0" *) 
  (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
  (* C_SIM_CPLL_CAL_BYPASS = "1" *) 
  (* C_TOTAL_NUM_CHANNELS = "1" *) 
  (* C_TOTAL_NUM_COMMONS = "1" *) 
  (* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) 
  (* C_TXPROGDIV_FREQ_ENABLE = "0" *) 
  (* C_TXPROGDIV_FREQ_SOURCE = "0" *) 
  (* C_TXPROGDIV_FREQ_VAL = "161.132812" *) 
  (* C_TX_BUFFBYPASS_MODE = "0" *) 
  (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_TX_BUFFER_MODE = "1" *) 
  (* C_TX_DATA_ENCODING = "0" *) 
  (* C_TX_ENABLE = "1" *) 
  (* C_TX_INT_DATA_WIDTH = "64" *) 
  (* C_TX_LINE_RATE = "10.312500" *) 
  (* C_TX_MASTER_CHANNEL_IDX = "144" *) 
  (* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_TX_OUTCLK_FREQUENCY = "161.132812" *) 
  (* C_TX_OUTCLK_SOURCE = "4" *) 
  (* C_TX_PLL_TYPE = "0" *) 
  (* C_TX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_TX_USER_DATA_WIDTH = "64" *) 
  (* C_TX_USRCLK2_FREQUENCY = "161.132812" *) 
  (* C_TX_USRCLK_FREQUENCY = "161.132812" *) 
  (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
  interlaken_0_interlaken_0_gt_gtwizard_top inst
       (.bgbypassb_in(1'b1),
        .bgmonitorenb_in(1'b1),
        .bgpdb_in(1'b1),
        .bgrcalovrd_in({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .bgrcalovrdenb_in(1'b1),
        .bufgtce_out(NLW_inst_bufgtce_out_UNCONNECTED[0]),
        .bufgtcemask_out(NLW_inst_bufgtcemask_out_UNCONNECTED[2:0]),
        .bufgtdiv_out(NLW_inst_bufgtdiv_out_UNCONNECTED[8:0]),
        .bufgtreset_out(NLW_inst_bufgtreset_out_UNCONNECTED[0]),
        .bufgtrstmask_out(NLW_inst_bufgtrstmask_out_UNCONNECTED[2:0]),
        .cdrstepdir_in(1'b0),
        .cdrstepsq_in(1'b0),
        .cdrstepsx_in(1'b0),
        .cfgreset_in(1'b0),
        .clkrsvd0_in(1'b0),
        .clkrsvd1_in(1'b0),
        .cpllfbclklost_out(NLW_inst_cpllfbclklost_out_UNCONNECTED[0]),
        .cpllfreqlock_in(1'b0),
        .cplllock_out(NLW_inst_cplllock_out_UNCONNECTED[0]),
        .cplllockdetclk_in(1'b0),
        .cplllocken_in(1'b0),
        .cpllpd_in(1'b1),
        .cpllrefclklost_out(NLW_inst_cpllrefclklost_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .cpllreset_in(1'b1),
        .dmonfiforeset_in(1'b0),
        .dmonitorclk_in(1'b0),
        .dmonitorout_out(NLW_inst_dmonitorout_out_UNCONNECTED[15:0]),
        .dmonitoroutclk_out(NLW_inst_dmonitoroutclk_out_UNCONNECTED[0]),
        .drpaddr_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_common_in(1'b0),
        .drpclk_in(1'b0),
        .drpdi_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_common_out(NLW_inst_drpdo_common_out_UNCONNECTED[15:0]),
        .drpdo_out(NLW_inst_drpdo_out_UNCONNECTED[15:0]),
        .drpen_common_in(1'b0),
        .drpen_in(1'b0),
        .drprdy_common_out(NLW_inst_drprdy_common_out_UNCONNECTED[0]),
        .drprdy_out(NLW_inst_drprdy_out_UNCONNECTED[0]),
        .drprst_in(1'b0),
        .drpwe_common_in(1'b0),
        .drpwe_in(1'b0),
        .elpcaldvorwren_in(1'b0),
        .elpcalpaorwren_in(1'b0),
        .evoddphicaldone_in(1'b0),
        .evoddphicalstart_in(1'b0),
        .evoddphidrden_in(1'b0),
        .evoddphidwren_in(1'b0),
        .evoddphixrden_in(1'b0),
        .evoddphixwren_in(1'b0),
        .eyescandataerror_out(NLW_inst_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanmode_in(1'b0),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .freqos_in(1'b0),
        .gtgrefclk0_in(1'b0),
        .gtgrefclk1_in(1'b0),
        .gtgrefclk_in(1'b0),
        .gthrxn_in(1'b0),
        .gthrxp_in(1'b0),
        .gthtxn_out(NLW_inst_gthtxn_out_UNCONNECTED[0]),
        .gthtxp_out(NLW_inst_gthtxp_out_UNCONNECTED[0]),
        .gtnorthrefclk00_in(1'b0),
        .gtnorthrefclk01_in(1'b0),
        .gtnorthrefclk0_in(1'b0),
        .gtnorthrefclk10_in(1'b0),
        .gtnorthrefclk11_in(1'b0),
        .gtnorthrefclk1_in(1'b0),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(1'b0),
        .gtrefclk0_in(1'b0),
        .gtrefclk10_in(1'b0),
        .gtrefclk11_in(1'b0),
        .gtrefclk1_in(1'b0),
        .gtrefclkmonitor_out(NLW_inst_gtrefclkmonitor_out_UNCONNECTED[0]),
        .gtresetsel_in(1'b0),
        .gtrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtrxreset_in(1'b0),
        .gtrxresetsel_in(1'b0),
        .gtsouthrefclk00_in(1'b0),
        .gtsouthrefclk01_in(1'b0),
        .gtsouthrefclk0_in(1'b0),
        .gtsouthrefclk10_in(1'b0),
        .gtsouthrefclk11_in(1'b0),
        .gtsouthrefclk1_in(1'b0),
        .gttxreset_in(1'b0),
        .gttxresetsel_in(1'b0),
        .gtwiz_buffbypass_rx_done_out(NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_error_out(NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_reset_in(1'b0),
        .gtwiz_buffbypass_rx_start_user_in(1'b0),
        .gtwiz_buffbypass_tx_done_out(NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_error_out(NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_reset_in(1'b0),
        .gtwiz_buffbypass_tx_start_user_in(1'b0),
        .gtwiz_gthe3_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe3_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe3_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gtye4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_in(1'b0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_in(1'b0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_rx_active_out(NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_reset_in(1'b0),
        .gtwiz_userclk_rx_srcclk_out(NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk2_out(NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk_out(NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .gtwiz_userclk_tx_active_out(NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userclk_tx_srcclk_out(NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk2_out(NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk_out(NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(1'b0),
        .loopback_in(loopback_in),
        .looprsvd_in(1'b0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lpbkrxtxseren_in(1'b0),
        .lpbktxrxseren_in(1'b0),
        .pcieeqrxeqadaptdone_in(1'b0),
        .pcierategen3_out(NLW_inst_pcierategen3_out_UNCONNECTED[0]),
        .pcierateidle_out(NLW_inst_pcierateidle_out_UNCONNECTED[0]),
        .pcierateqpll0_in({1'b0,1'b0,1'b0}),
        .pcierateqpll1_in({1'b0,1'b0,1'b0}),
        .pcierateqpllpd_out(NLW_inst_pcierateqpllpd_out_UNCONNECTED[1:0]),
        .pcierateqpllreset_out(NLW_inst_pcierateqpllreset_out_UNCONNECTED[1:0]),
        .pcierstidle_in(1'b0),
        .pciersttxsyncstart_in(1'b0),
        .pciesynctxsyncdone_out(NLW_inst_pciesynctxsyncdone_out_UNCONNECTED[0]),
        .pcieusergen3rdy_out(NLW_inst_pcieusergen3rdy_out_UNCONNECTED[0]),
        .pcieuserphystatusrst_out(NLW_inst_pcieuserphystatusrst_out_UNCONNECTED[0]),
        .pcieuserratedone_in(1'b0),
        .pcieuserratestart_out(NLW_inst_pcieuserratestart_out_UNCONNECTED[0]),
        .pcsrsvdin2_in(1'b0),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcsrsvdout_out(NLW_inst_pcsrsvdout_out_UNCONNECTED[15:0]),
        .phystatus_out(NLW_inst_phystatus_out_UNCONNECTED[0]),
        .pinrsrvdas_out(NLW_inst_pinrsrvdas_out_UNCONNECTED[15:0]),
        .pmarsvd0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdin_in(1'b0),
        .pmarsvdout0_out(NLW_inst_pmarsvdout0_out_UNCONNECTED[7:0]),
        .pmarsvdout1_out(NLW_inst_pmarsvdout1_out_UNCONNECTED[7:0]),
        .powerpresent_out(NLW_inst_powerpresent_out_UNCONNECTED[0]),
        .qpll0clk_in(1'b0),
        .qpll0clkrsvd0_in(1'b0),
        .qpll0clkrsvd1_in(1'b0),
        .qpll0fbclklost_out(NLW_inst_qpll0fbclklost_out_UNCONNECTED[0]),
        .qpll0fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll0freqlock_in(1'b0),
        .qpll0lock_out(NLW_inst_qpll0lock_out_UNCONNECTED[0]),
        .qpll0lockdetclk_in(1'b0),
        .qpll0locken_in(1'b1),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(1'b0),
        .qpll0refclk_in(1'b0),
        .qpll0refclklost_out(NLW_inst_qpll0refclklost_out_UNCONNECTED[0]),
        .qpll0refclksel_in({1'b0,1'b0,1'b1}),
        .qpll0reset_in(1'b0),
        .qpll1clk_in(1'b0),
        .qpll1clkrsvd0_in(1'b0),
        .qpll1clkrsvd1_in(1'b0),
        .qpll1fbclklost_out(NLW_inst_qpll1fbclklost_out_UNCONNECTED[0]),
        .qpll1fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll1freqlock_in(1'b0),
        .qpll1lock_out(NLW_inst_qpll1lock_out_UNCONNECTED[0]),
        .qpll1lockdetclk_in(1'b0),
        .qpll1locken_in(1'b0),
        .qpll1outclk_out(NLW_inst_qpll1outclk_out_UNCONNECTED[0]),
        .qpll1outrefclk_out(NLW_inst_qpll1outrefclk_out_UNCONNECTED[0]),
        .qpll1pd_in(1'b1),
        .qpll1refclk_in(1'b0),
        .qpll1refclklost_out(NLW_inst_qpll1refclklost_out_UNCONNECTED[0]),
        .qpll1refclksel_in({1'b0,1'b0,1'b1}),
        .qpll1reset_in(1'b1),
        .qplldmonitor0_out(NLW_inst_qplldmonitor0_out_UNCONNECTED[7:0]),
        .qplldmonitor1_out(NLW_inst_qplldmonitor1_out_UNCONNECTED[7:0]),
        .qpllrsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd3_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd4_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb_in(1'b1),
        .refclkoutmonitor0_out(NLW_inst_refclkoutmonitor0_out_UNCONNECTED[0]),
        .refclkoutmonitor1_out(NLW_inst_refclkoutmonitor1_out_UNCONNECTED[0]),
        .resetexception_out(NLW_inst_resetexception_out_UNCONNECTED[0]),
        .resetovrd_in(1'b0),
        .rstclkentx_in(1'b0),
        .rx8b10ben_in(1'b0),
        .rxafecfoken_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out(NLW_inst_rxbufstatus_out_UNCONNECTED[2:0]),
        .rxbyteisaligned_out(NLW_inst_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_inst_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrfreqreset_in(1'b0),
        .rxcdrhold_in(1'b0),
        .rxcdrlock_out(NLW_inst_rxcdrlock_out_UNCONNECTED[0]),
        .rxcdrovrden_in(1'b0),
        .rxcdrphdone_out(NLW_inst_rxcdrphdone_out_UNCONNECTED[0]),
        .rxcdrreset_in(1'b0),
        .rxcdrresetrsv_in(1'b0),
        .rxchanbondseq_out(NLW_inst_rxchanbondseq_out_UNCONNECTED[0]),
        .rxchanisaligned_out(NLW_inst_rxchanisaligned_out_UNCONNECTED[0]),
        .rxchanrealign_out(NLW_inst_rxchanrealign_out_UNCONNECTED[0]),
        .rxchbonden_in(1'b0),
        .rxchbondi_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxchbondlevel_in({1'b0,1'b0,1'b0}),
        .rxchbondmaster_in(1'b0),
        .rxchbondo_out(NLW_inst_rxchbondo_out_UNCONNECTED[4:0]),
        .rxchbondslave_in(1'b0),
        .rxckcaldone_out(NLW_inst_rxckcaldone_out_UNCONNECTED[0]),
        .rxckcalreset_in(1'b0),
        .rxckcalstart_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxclkcorcnt_out(NLW_inst_rxclkcorcnt_out_UNCONNECTED[1:0]),
        .rxcominitdet_out(NLW_inst_rxcominitdet_out_UNCONNECTED[0]),
        .rxcommadet_out(NLW_inst_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b0),
        .rxcomsasdet_out(NLW_inst_rxcomsasdet_out_UNCONNECTED[0]),
        .rxcomwakedet_out(NLW_inst_rxcomwakedet_out_UNCONNECTED[0]),
        .rxctrl0_out(NLW_inst_rxctrl0_out_UNCONNECTED[15:0]),
        .rxctrl1_out(NLW_inst_rxctrl1_out_UNCONNECTED[15:0]),
        .rxctrl2_out(NLW_inst_rxctrl2_out_UNCONNECTED[7:0]),
        .rxctrl3_out(NLW_inst_rxctrl3_out_UNCONNECTED[7:0]),
        .rxdata_out(NLW_inst_rxdata_out_UNCONNECTED[127:0]),
        .rxdataextendrsvd_out(NLW_inst_rxdataextendrsvd_out_UNCONNECTED[7:0]),
        .rxdatavalid_out(NLW_inst_rxdatavalid_out_UNCONNECTED[1:0]),
        .rxdccforcestart_in(1'b0),
        .rxdfeagcctrl_in(1'b0),
        .rxdfeagchold_in(1'b0),
        .rxdfeagcovrden_in(1'b0),
        .rxdfecfokfcnum_in({1'b1,1'b1,1'b0,1'b1}),
        .rxdfecfokfen_in(1'b0),
        .rxdfecfokfpulse_in(1'b0),
        .rxdfecfokhold_in(1'b0),
        .rxdfecfokovren_in(1'b0),
        .rxdfekhhold_in(1'b0),
        .rxdfekhovrden_in(1'b0),
        .rxdfelfhold_in(1'b0),
        .rxdfelfovrden_in(1'b0),
        .rxdfelpmreset_in(1'b0),
        .rxdfetap10hold_in(1'b0),
        .rxdfetap10ovrden_in(1'b0),
        .rxdfetap11hold_in(1'b0),
        .rxdfetap11ovrden_in(1'b0),
        .rxdfetap12hold_in(1'b0),
        .rxdfetap12ovrden_in(1'b0),
        .rxdfetap13hold_in(1'b0),
        .rxdfetap13ovrden_in(1'b0),
        .rxdfetap14hold_in(1'b0),
        .rxdfetap14ovrden_in(1'b0),
        .rxdfetap15hold_in(1'b0),
        .rxdfetap15ovrden_in(1'b0),
        .rxdfetap2hold_in(1'b0),
        .rxdfetap2ovrden_in(1'b0),
        .rxdfetap3hold_in(1'b0),
        .rxdfetap3ovrden_in(1'b0),
        .rxdfetap4hold_in(1'b0),
        .rxdfetap4ovrden_in(1'b0),
        .rxdfetap5hold_in(1'b0),
        .rxdfetap5ovrden_in(1'b0),
        .rxdfetap6hold_in(1'b0),
        .rxdfetap6ovrden_in(1'b0),
        .rxdfetap7hold_in(1'b0),
        .rxdfetap7ovrden_in(1'b0),
        .rxdfetap8hold_in(1'b0),
        .rxdfetap8ovrden_in(1'b0),
        .rxdfetap9hold_in(1'b0),
        .rxdfetap9ovrden_in(1'b0),
        .rxdfeuthold_in(1'b0),
        .rxdfeutovrden_in(1'b0),
        .rxdfevphold_in(1'b0),
        .rxdfevpovrden_in(1'b0),
        .rxdfevsen_in(1'b0),
        .rxdfexyden_in(1'b1),
        .rxdlybypass_in(1'b1),
        .rxdlyen_in(1'b0),
        .rxdlyovrden_in(1'b0),
        .rxdlysreset_in(1'b0),
        .rxdlysresetdone_out(NLW_inst_rxdlysresetdone_out_UNCONNECTED[0]),
        .rxelecidle_out(NLW_inst_rxelecidle_out_UNCONNECTED[0]),
        .rxelecidlemode_in({1'b1,1'b1}),
        .rxeqtraining_in(1'b0),
        .rxgearboxslip_in(1'b0),
        .rxheader_out(NLW_inst_rxheader_out_UNCONNECTED[5:0]),
        .rxheadervalid_out(NLW_inst_rxheadervalid_out_UNCONNECTED[1:0]),
        .rxlatclk_in(1'b0),
        .rxlfpstresetdet_out(NLW_inst_rxlfpstresetdet_out_UNCONNECTED[0]),
        .rxlfpsu2lpexitdet_out(NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED[0]),
        .rxlfpsu3wakedet_out(NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED[0]),
        .rxlpmen_in(1'b1),
        .rxlpmgchold_in(1'b0),
        .rxlpmgcovrden_in(1'b0),
        .rxlpmhfhold_in(1'b0),
        .rxlpmhfovrden_in(1'b0),
        .rxlpmlfhold_in(1'b0),
        .rxlpmlfklovrden_in(1'b0),
        .rxlpmoshold_in(1'b0),
        .rxlpmosovrden_in(1'b0),
        .rxmcommaalignen_in(1'b0),
        .rxmonitorout_out(NLW_inst_rxmonitorout_out_UNCONNECTED[7:0]),
        .rxmonitorsel_in({1'b0,1'b0}),
        .rxoobreset_in(1'b0),
        .rxoscalreset_in(1'b0),
        .rxoshold_in(1'b0),
        .rxosintcfg_in(1'b0),
        .rxosintdone_out(NLW_inst_rxosintdone_out_UNCONNECTED[0]),
        .rxosinten_in(1'b0),
        .rxosinthold_in(1'b0),
        .rxosintovrden_in(1'b0),
        .rxosintstarted_out(NLW_inst_rxosintstarted_out_UNCONNECTED[0]),
        .rxosintstrobe_in(1'b0),
        .rxosintstrobedone_out(NLW_inst_rxosintstrobedone_out_UNCONNECTED[0]),
        .rxosintstrobestarted_out(NLW_inst_rxosintstrobestarted_out_UNCONNECTED[0]),
        .rxosinttestovrden_in(1'b0),
        .rxosovrden_in(1'b0),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(NLW_inst_rxoutclkfabric_out_UNCONNECTED[0]),
        .rxoutclkpcs_out(NLW_inst_rxoutclkpcs_out_UNCONNECTED[0]),
        .rxoutclksel_in({1'b0,1'b1,1'b0}),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({1'b0,1'b0}),
        .rxphalign_in(1'b0),
        .rxphaligndone_out(NLW_inst_rxphaligndone_out_UNCONNECTED[0]),
        .rxphalignen_in(1'b0),
        .rxphalignerr_out(NLW_inst_rxphalignerr_out_UNCONNECTED[0]),
        .rxphdlypd_in(1'b1),
        .rxphdlyreset_in(1'b0),
        .rxphovrden_in(1'b0),
        .rxpllclksel_in({1'b1,1'b1}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_inst_rxprbserr_out_UNCONNECTED[0]),
        .rxprbslocked_out(NLW_inst_rxprbslocked_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxprgdivresetdone_out(NLW_inst_rxprgdivresetdone_out_UNCONNECTED[0]),
        .rxprogdivreset_in(1'b0),
        .rxqpien_in(1'b0),
        .rxqpisenn_out(NLW_inst_rxqpisenn_out_UNCONNECTED[0]),
        .rxqpisenp_out(NLW_inst_rxqpisenp_out_UNCONNECTED[0]),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxratedone_out(NLW_inst_rxratedone_out_UNCONNECTED[0]),
        .rxratemode_in(1'b0),
        .rxrecclk0_sel_out(NLW_inst_rxrecclk0_sel_out_UNCONNECTED[0]),
        .rxrecclk0sel_out(NLW_inst_rxrecclk0sel_out_UNCONNECTED[1:0]),
        .rxrecclk1_sel_out(NLW_inst_rxrecclk1_sel_out_UNCONNECTED[0]),
        .rxrecclk1sel_out(NLW_inst_rxrecclk1sel_out_UNCONNECTED[1:0]),
        .rxrecclkout_out(NLW_inst_rxrecclkout_out_UNCONNECTED[0]),
        .rxresetdone_out(NLW_inst_rxresetdone_out_UNCONNECTED[0]),
        .rxslide_in(1'b0),
        .rxsliderdy_out(NLW_inst_rxsliderdy_out_UNCONNECTED[0]),
        .rxslipdone_out(NLW_inst_rxslipdone_out_UNCONNECTED[0]),
        .rxslipoutclk_in(1'b0),
        .rxslipoutclkrdy_out(NLW_inst_rxslipoutclkrdy_out_UNCONNECTED[0]),
        .rxslippma_in(1'b0),
        .rxslippmardy_out(NLW_inst_rxslippmardy_out_UNCONNECTED[0]),
        .rxstartofseq_out(NLW_inst_rxstartofseq_out_UNCONNECTED[1:0]),
        .rxstatus_out(NLW_inst_rxstatus_out_UNCONNECTED[2:0]),
        .rxsyncallin_in(1'b0),
        .rxsyncdone_out(NLW_inst_rxsyncdone_out_UNCONNECTED[0]),
        .rxsyncin_in(1'b0),
        .rxsyncmode_in(1'b0),
        .rxsyncout_out(NLW_inst_rxsyncout_out_UNCONNECTED[0]),
        .rxsysclksel_in({1'b1,1'b0}),
        .rxtermination_in(1'b0),
        .rxuserrdy_in(1'b1),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(NLW_inst_rxvalid_out_UNCONNECTED[0]),
        .sdm0data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm0finalout_out(NLW_inst_sdm0finalout_out_UNCONNECTED[3:0]),
        .sdm0reset_in(1'b0),
        .sdm0testdata_out(NLW_inst_sdm0testdata_out_UNCONNECTED[14:0]),
        .sdm0toggle_in(1'b0),
        .sdm0width_in({1'b0,1'b0}),
        .sdm1data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm1finalout_out(NLW_inst_sdm1finalout_out_UNCONNECTED[3:0]),
        .sdm1reset_in(1'b0),
        .sdm1testdata_out(NLW_inst_sdm1testdata_out_UNCONNECTED[14:0]),
        .sdm1toggle_in(1'b0),
        .sdm1width_in({1'b0,1'b0}),
        .sigvalidclk_in(1'b0),
        .tcongpi_in(1'b0),
        .tcongpo_out(NLW_inst_tcongpo_out_UNCONNECTED[0]),
        .tconpowerup_in(1'b0),
        .tconreset_in(1'b0),
        .tconrsvdin1_in(1'b0),
        .tconrsvdout0_out(NLW_inst_tconrsvdout0_out_UNCONNECTED[0]),
        .tstin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10bbypass_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10ben_in(1'b0),
        .txbufdiffctrl_in(1'b0),
        .txbufstatus_out(NLW_inst_txbufstatus_out_UNCONNECTED[1:0]),
        .txcomfinish_out(NLW_inst_txcomfinish_out_UNCONNECTED[0]),
        .txcominit_in(1'b0),
        .txcomsas_in(1'b0),
        .txcomwake_in(1'b0),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdata_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdataextendrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdccdone_out(NLW_inst_txdccdone_out_UNCONNECTED[0]),
        .txdccforcestart_in(1'b0),
        .txdccreset_in(1'b0),
        .txdeemph_in({1'b0,1'b0}),
        .txdetectrx_in(1'b0),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txdiffpd_in(1'b0),
        .txdlybypass_in(1'b1),
        .txdlyen_in(1'b0),
        .txdlyhold_in(1'b0),
        .txdlyovrden_in(1'b0),
        .txdlysreset_in(1'b0),
        .txdlysresetdone_out(NLW_inst_txdlysresetdone_out_UNCONNECTED[0]),
        .txdlyupdown_in(1'b0),
        .txelecidle_in(1'b0),
        .txelforcestart_in(1'b0),
        .txheader_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txinhibit_in(1'b0),
        .txlatclk_in(1'b0),
        .txlfpstreset_in(1'b0),
        .txlfpsu2lpexit_in(1'b0),
        .txlfpsu3wake_in(1'b0),
        .txmaincursor_in({1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .txmargin_in({1'b0,1'b0,1'b0}),
        .txmuxdcdexhold_in(1'b0),
        .txmuxdcdorwren_in(1'b0),
        .txoneszeros_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(NLW_inst_txoutclkfabric_out_UNCONNECTED[0]),
        .txoutclkpcs_out(NLW_inst_txoutclkpcs_out_UNCONNECTED[0]),
        .txoutclksel_in({1'b1,1'b0,1'b1}),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpdelecidlemode_in(1'b0),
        .txphalign_in(1'b0),
        .txphaligndone_out(NLW_inst_txphaligndone_out_UNCONNECTED[0]),
        .txphalignen_in(1'b0),
        .txphdlypd_in(1'b1),
        .txphdlyreset_in(1'b0),
        .txphdlytstclk_in(1'b0),
        .txphinit_in(1'b0),
        .txphinitdone_out(NLW_inst_txphinitdone_out_UNCONNECTED[0]),
        .txphovrden_in(1'b0),
        .txpippmen_in(1'b0),
        .txpippmovrden_in(1'b0),
        .txpippmpd_in(1'b0),
        .txpippmsel_in(1'b1),
        .txpippmstepsize_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpisopd_in(1'b0),
        .txpllclksel_in({1'b1,1'b1}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpostcursorinv_in(1'b0),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprecursorinv_in(1'b0),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txprogdivreset_in(1'b0),
        .txqpibiasen_in(1'b0),
        .txqpisenn_out(NLW_inst_txqpisenn_out_UNCONNECTED[0]),
        .txqpisenp_out(NLW_inst_txqpisenp_out_UNCONNECTED[0]),
        .txqpistrongpdown_in(1'b0),
        .txqpiweakpup_in(1'b0),
        .txrate_in({1'b0,1'b0,1'b0}),
        .txratedone_out(NLW_inst_txratedone_out_UNCONNECTED[0]),
        .txratemode_in(1'b0),
        .txresetdone_out(NLW_inst_txresetdone_out_UNCONNECTED[0]),
        .txsequence_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txswing_in(1'b0),
        .txsyncallin_in(1'b0),
        .txsyncdone_out(NLW_inst_txsyncdone_out_UNCONNECTED[0]),
        .txsyncin_in(1'b0),
        .txsyncmode_in(1'b0),
        .txsyncout_out(NLW_inst_txsyncout_out_UNCONNECTED[0]),
        .txsysclksel_in({1'b1,1'b0}),
        .txuserrdy_in(1'b1),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in),
        .ubcfgstreamen_in(1'b0),
        .ubdaddr_out(NLW_inst_ubdaddr_out_UNCONNECTED[15:0]),
        .ubden_out(NLW_inst_ubden_out_UNCONNECTED[0]),
        .ubdi_out(NLW_inst_ubdi_out_UNCONNECTED[15:0]),
        .ubdo_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ubdrdy_in(1'b0),
        .ubdwe_out(NLW_inst_ubdwe_out_UNCONNECTED[0]),
        .ubenable_in(1'b0),
        .ubgpi_in({1'b0,1'b0}),
        .ubintr_in({1'b0,1'b0}),
        .ubiolmbrst_in(1'b0),
        .ubmbrst_in(1'b0),
        .ubmdmcapture_in(1'b0),
        .ubmdmdbgrst_in(1'b0),
        .ubmdmdbgupdate_in(1'b0),
        .ubmdmregen_in({1'b0,1'b0,1'b0,1'b0}),
        .ubmdmshift_in(1'b0),
        .ubmdmsysrst_in(1'b0),
        .ubmdmtck_in(1'b0),
        .ubmdmtdi_in(1'b0),
        .ubmdmtdo_out(NLW_inst_ubmdmtdo_out_UNCONNECTED[0]),
        .ubrsvdout_out(NLW_inst_ubrsvdout_out_UNCONNECTED[0]),
        .ubtxuart_out(NLW_inst_ubtxuart_out_UNCONNECTED[0]));
endmodule

(* ORIG_REF_NAME = "interlaken_0_gt_gtwizard_gtye4" *) 
module interlaken_0_interlaken_0_gt_gtwizard_gtye4
   (gtpowergood_out,
    qpll0lock_out,
    rxcdrlock_out,
    drprdy_common_out,
    qpll0fbclklost_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    gtwiz_reset_qpll0reset_out,
    bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_rx_done_out,
    txpisopd_in,
    txrate_in,
    txratemode_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0freqlock_in,
    qpll1freqlock_in,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpolarity_in,
    txprbsforceerr_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    txpmareset_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]gtpowergood_out;
  output [0:0]qpll0lock_out;
  output [0:0]rxcdrlock_out;
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]txpisopd_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]txpmareset_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [15:0]drpaddr_common_in;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_common_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_common_out;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_common_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire [2:1]\gen_gtwizard_gtye4.txrate_ch_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire rst_in0;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  interlaken_0_interlaken_0_gt_gtye4_channel_wrapper \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst 
       (.TXRATE({\gen_gtwizard_gtye4.txrate_ch_int ,\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 }),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[0] (\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ),
        .\gen_powergood_delay.pwr_on_fsm_reg (\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .\gen_powergood_delay.pwr_on_fsm_reg_0 (\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .powerpresent_out(powerpresent_out),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txratedone_out(txratedone_out),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
  interlaken_0_interlaken_0_gt_gtye4_common_wrapper \gen_gtwizard_gtye4.gen_common.gen_common_container[36].gen_enabled_common.gtye4_common_wrapper_inst 
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .drpaddr_common_in(drpaddr_common_in),
        .drpclk_common_in(drpclk_common_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdo_common_out(drpdo_common_out),
        .drpen_common_in(drpen_common_in),
        .drprdy_common_out(drprdy_common_out),
        .drpwe_common_in(drpwe_common_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .rst_in0(rst_in0),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
  interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.CLK(txoutclkpcs_out),
        .TXRATE({\gen_gtwizard_gtye4.txrate_ch_int ,\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 }),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .gtrxreset_out_reg(\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ),
        .i_in_meta_reg(\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .i_in_meta_reg_0(\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ),
        .out(gtpowergood_out),
        .txpisopd_in(txpisopd_in),
        .txpmareset_in(txpmareset_in),
        .txrate_in(txrate_in),
        .txratemode_in(txratemode_in));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .rxresetdone_out(rxresetdone_out));
  interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .txresetdone_out(txresetdone_out));
  interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .qpll0lock_out(qpll0lock_out),
        .rst_in0(rst_in0),
        .rxcdrlock_out(rxcdrlock_out),
        .rxusrclk2_in(rxusrclk2_in),
        .txusrclk2_in(txusrclk2_in));
endmodule

(* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_COMMON_SCALING_FACTOR = "1" *) (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
(* C_ENABLE_COMMON_USRCLK = "0" *) (* C_FORCE_COMMONS = "0" *) (* C_FREERUN_FREQUENCY = "161.132812" *) 
(* C_GT_REV = "67" *) (* C_GT_TYPE = "3" *) (* C_INCLUDE_CPLL_CAL = "2" *) 
(* C_LOCATE_COMMON = "0" *) (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) (* C_LOCATE_RESET_CONTROLLER = "0" *) 
(* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) (* C_LOCATE_RX_USER_CLOCKING = "1" *) (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
(* C_LOCATE_TX_USER_CLOCKING = "1" *) (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) (* C_PCIE_CORECLK_FREQ = "250" *) 
(* C_PCIE_ENABLE = "0" *) (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
(* C_RX_BUFFBYPASS_MODE = "0" *) (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_RX_BUFFER_MODE = "1" *) 
(* C_RX_CB_DISP = "8'b00000000" *) (* C_RX_CB_K = "8'b00000000" *) (* C_RX_CB_LEN_SEQ = "1" *) 
(* C_RX_CB_MAX_LEVEL = "1" *) (* C_RX_CB_NUM_SEQ = "0" *) (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_CC_DISP = "8'b00000000" *) (* C_RX_CC_ENABLE = "0" *) (* C_RX_CC_K = "8'b00000000" *) 
(* C_RX_CC_LEN_SEQ = "1" *) (* C_RX_CC_NUM_SEQ = "0" *) (* C_RX_CC_PERIODICITY = "5000" *) 
(* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_RX_COMMA_M_ENABLE = "0" *) (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
(* C_RX_COMMA_P_ENABLE = "0" *) (* C_RX_COMMA_P_VAL = "10'b0101111100" *) (* C_RX_DATA_DECODING = "0" *) 
(* C_RX_ENABLE = "1" *) (* C_RX_INT_DATA_WIDTH = "64" *) (* C_RX_LINE_RATE = "10.312500" *) 
(* C_RX_MASTER_CHANNEL_IDX = "144" *) (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_RX_OUTCLK_FREQUENCY = "161.132812" *) 
(* C_RX_OUTCLK_SOURCE = "1" *) (* C_RX_PLL_TYPE = "0" *) (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_REFCLK_FREQUENCY = "156.250000" *) (* C_RX_SLIDE_MODE = "0" *) (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_RX_USER_CLOCKING_SOURCE = "0" *) (* C_RX_USER_DATA_WIDTH = "64" *) (* C_RX_USRCLK2_FREQUENCY = "161.132812" *) 
(* C_RX_USRCLK_FREQUENCY = "161.132812" *) (* C_SECONDARY_QPLL_ENABLE = "0" *) (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
(* C_SIM_CPLL_CAL_BYPASS = "1" *) (* C_TOTAL_NUM_CHANNELS = "1" *) (* C_TOTAL_NUM_COMMONS = "1" *) 
(* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) (* C_TXPROGDIV_FREQ_ENABLE = "0" *) (* C_TXPROGDIV_FREQ_SOURCE = "0" *) 
(* C_TXPROGDIV_FREQ_VAL = "161.132812" *) (* C_TX_BUFFBYPASS_MODE = "0" *) (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
(* C_TX_BUFFER_MODE = "1" *) (* C_TX_DATA_ENCODING = "0" *) (* C_TX_ENABLE = "1" *) 
(* C_TX_INT_DATA_WIDTH = "64" *) (* C_TX_LINE_RATE = "10.312500" *) (* C_TX_MASTER_CHANNEL_IDX = "144" *) 
(* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_TX_OUTCLK_FREQUENCY = "161.132812" *) (* C_TX_OUTCLK_SOURCE = "4" *) 
(* C_TX_PLL_TYPE = "0" *) (* C_TX_REFCLK_FREQUENCY = "156.250000" *) (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_TX_USER_CLOCKING_SOURCE = "0" *) (* C_TX_USER_DATA_WIDTH = "64" *) (* C_TX_USRCLK2_FREQUENCY = "161.132812" *) 
(* C_TX_USRCLK_FREQUENCY = "161.132812" *) (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) (* ORIG_REF_NAME = "interlaken_0_gt_gtwizard_top" *) 
module interlaken_0_interlaken_0_gt_gtwizard_top
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_tx_srcclk_out,
    gtwiz_userclk_tx_usrclk_out,
    gtwiz_userclk_tx_usrclk2_out,
    gtwiz_userclk_tx_active_out,
    gtwiz_userclk_rx_reset_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_userclk_rx_srcclk_out,
    gtwiz_userclk_rx_usrclk_out,
    gtwiz_userclk_rx_usrclk2_out,
    gtwiz_userclk_rx_active_out,
    gtwiz_buffbypass_tx_reset_in,
    gtwiz_buffbypass_tx_start_user_in,
    gtwiz_buffbypass_tx_done_out,
    gtwiz_buffbypass_tx_error_out,
    gtwiz_buffbypass_rx_reset_in,
    gtwiz_buffbypass_rx_start_user_in,
    gtwiz_buffbypass_rx_done_out,
    gtwiz_buffbypass_rx_error_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1reset_out,
    gtwiz_gthe3_cpll_cal_txoutclk_period_in,
    gtwiz_gthe3_cpll_cal_cnt_tol_in,
    gtwiz_gthe3_cpll_cal_bufg_ce_in,
    gtwiz_gthe4_cpll_cal_txoutclk_period_in,
    gtwiz_gthe4_cpll_cal_cnt_tol_in,
    gtwiz_gthe4_cpll_cal_bufg_ce_in,
    gtwiz_gtye4_cpll_cal_txoutclk_period_in,
    gtwiz_gtye4_cpll_cal_cnt_tol_in,
    gtwiz_gtye4_cpll_cal_bufg_ce_in,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrd_in,
    bgrcalovrdenb_in,
    drpaddr_common_in,
    drpclk_common_in,
    drpdi_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0fbdiv_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll0refclksel_in,
    qpll0reset_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1fbdiv_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1refclksel_in,
    qpll1reset_in,
    qpllrsvd1_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    qpllrsvd4_in,
    rcalenb_in,
    sdm0data_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm0width_in,
    sdm1data_in,
    sdm1reset_in,
    sdm1toggle_in,
    sdm1width_in,
    tcongpi_in,
    tconpowerup_in,
    tconreset_in,
    tconrsvdin1_in,
    ubcfgstreamen_in,
    ubdo_in,
    ubdrdy_in,
    ubenable_in,
    ubgpi_in,
    ubintr_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmregen_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpdo_common_out,
    drprdy_common_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    rxrecclk0_sel_out,
    rxrecclk1_sel_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm0testdata_out,
    sdm1finalout_out,
    sdm1testdata_out,
    tcongpo_out,
    tconrsvdout0_out,
    ubdaddr_out,
    ubden_out,
    ubdi_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllrefclksel_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    elpcaldvorwren_in,
    elpcalpaorwren_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrsvd_in,
    gtrxreset_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_in,
    gttxresetsel_in,
    incpctrl_in,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    looprsvd_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    pcsrsvdin_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    qpll0clk_in,
    qpll0freqlock_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1freqlock_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondi_in,
    rxchbondlevel_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxckcalstart_in,
    rxcommadeten_in,
    rxdfeagcctrl_in,
    rxdccforcestart_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfcnum_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxelecidlemode_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxmonitorsel_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosintcfg_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxoutclksel_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpllclksel_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxprogdivreset_in,
    rxqpien_in,
    rxrate_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxsysclksel_in,
    rxtermination_in,
    rxuserrdy_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tstin_in,
    tx8b10bbypass_in,
    tx8b10ben_in,
    txbufdiffctrl_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdata_in,
    txdataextendrsvd_in,
    txdccforcestart_in,
    txdccreset_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffctrl_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txelforcestart_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmaincursor_in,
    txmargin_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpippmstepsize_in,
    txpisopd_in,
    txpllclksel_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txprecursorinv_in,
    txprogdivreset_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txrate_in,
    txratemode_in,
    txsequence_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txsysclksel_in,
    txuserrdy_in,
    txusrclk_in,
    txusrclk2_in,
    bufgtce_out,
    bufgtcemask_out,
    bufgtdiv_out,
    bufgtreset_out,
    bufgtrstmask_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitorout_out,
    dmonitoroutclk_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    pcsrsvdout_out,
    phystatus_out,
    pinrsrvdas_out,
    powerpresent_out,
    resetexception_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxchbondo_out,
    rxckcaldone_out,
    rxclkcorcnt_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdata_out,
    rxdataextendrsvd_out,
    rxdatavalid_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxheader_out,
    rxheadervalid_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxmonitorout_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxstartofseq_out,
    rxstatus_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txbufstatus_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_buffbypass_tx_reset_in;
  input [0:0]gtwiz_buffbypass_tx_start_user_in;
  output [0:0]gtwiz_buffbypass_tx_done_out;
  output [0:0]gtwiz_buffbypass_tx_error_out;
  input [0:0]gtwiz_buffbypass_rx_reset_in;
  input [0:0]gtwiz_buffbypass_rx_start_user_in;
  output [0:0]gtwiz_buffbypass_rx_done_out;
  output [0:0]gtwiz_buffbypass_rx_error_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [17:0]gtwiz_gthe3_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe3_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe3_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gthe4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe4_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gtye4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gtye4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gtye4_cpll_cal_bufg_ce_in;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [4:0]bgrcalovrd_in;
  input [0:0]bgrcalovrdenb_in;
  input [15:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [2:0]qpll0refclksel_in;
  input [0:0]qpll0reset_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [7:0]qpll1fbdiv_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [2:0]qpll1refclksel_in;
  input [0:0]qpll1reset_in;
  input [7:0]qpllrsvd1_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]rcalenb_in;
  input [24:0]sdm0data_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [1:0]sdm0width_in;
  input [24:0]sdm1data_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [1:0]sdm1width_in;
  input [0:0]tcongpi_in;
  input [0:0]tconpowerup_in;
  input [0:0]tconreset_in;
  input [0:0]tconrsvdin1_in;
  input [0:0]ubcfgstreamen_in;
  input [15:0]ubdo_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [3:0]ubmdmregen_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]rxrecclk0_sel_out;
  output [0:0]rxrecclk1_sel_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [14:0]sdm0testdata_out;
  output [3:0]sdm1finalout_out;
  output [14:0]sdm1testdata_out;
  output [0:0]tcongpo_out;
  output [0:0]tconrsvdout0_out;
  output [15:0]ubdaddr_out;
  output [0:0]ubden_out;
  output [15:0]ubdi_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [2:0]cpllrefclksel_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]elpcaldvorwren_in;
  input [0:0]elpcalpaorwren_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [15:0]gtrsvd_in;
  input [0:0]gtrxreset_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxreset_in;
  input [0:0]gttxresetsel_in;
  input [0:0]incpctrl_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]looprsvd_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]pcsrsvdin2_in;
  input [0:0]pmarsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [4:0]rxchbondi_in;
  input [2:0]rxchbondlevel_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [6:0]rxckcalstart_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagcctrl_in;
  input [0:0]rxdccforcestart_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [3:0]rxdfecfokfcnum_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [1:0]rxelecidlemode_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [1:0]rxmonitorsel_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosintcfg_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [0:0]rxqpien_in;
  input [2:0]rxrate_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxtermination_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [19:0]tstin_in;
  input [7:0]tx8b10bbypass_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txbufdiffctrl_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [127:0]txdata_in;
  input [7:0]txdataextendrsvd_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [1:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txelforcestart_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [6:0]txmaincursor_in;
  input [2:0]txmargin_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpisopd_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txprogdivreset_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [6:0]txsequence_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [8:0]bufgtdiv_out;
  output [0:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [15:0]dmonitorout_out;
  output [0:0]dmonitoroutclk_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [15:0]pcsrsvdout_out;
  output [0:0]phystatus_out;
  output [15:0]pinrsrvdas_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [4:0]rxchbondo_out;
  output [0:0]rxckcaldone_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [127:0]rxdata_out;
  output [7:0]rxdataextendrsvd_out;
  output [1:0]rxdatavalid_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [7:0]rxmonitorout_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [1:0]rxstartofseq_out;
  output [2:0]rxstatus_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [1:0]txbufstatus_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire \<const0> ;
  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [15:0]drpaddr_common_in;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_common_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_common_out;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_common_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  assign gthtxn_out[0] = \<const0> ;
  assign gthtxp_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_error_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_error_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = qpll1reset_in;
  assign gtwiz_userclk_rx_active_out[0] = gtwiz_userclk_rx_active_in;
  assign gtwiz_userclk_rx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_active_out[0] = gtwiz_userclk_tx_active_in;
  assign gtwiz_userclk_tx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userdata_rx_out[63:0] = rxdata_out[63:0];
  assign rxqpisenn_out[0] = \<const0> ;
  assign rxqpisenp_out[0] = \<const0> ;
  assign rxrecclk0_sel_out[0] = \<const0> ;
  assign rxrecclk1_sel_out[0] = \<const0> ;
  assign tcongpo_out[0] = \<const0> ;
  assign tconrsvdout0_out[0] = \<const0> ;
  assign txqpisenn_out[0] = \<const0> ;
  assign txqpisenp_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  interlaken_0_interlaken_0_gt_gtwizard_gtye4 \gen_gtwizard_gtye4_top.interlaken_0_gt_gtwizard_gtye4_inst 
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_common_in(drpaddr_common_in),
        .drpaddr_in(drpaddr_in),
        .drpclk_common_in(drpclk_common_in),
        .drpclk_in(drpclk_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdi_in(drpdi_in),
        .drpdo_common_out(drpdo_common_out),
        .drpdo_out(drpdo_out),
        .drpen_common_in(drpen_common_in),
        .drpen_in(drpen_in),
        .drprdy_common_out(drprdy_common_out),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_common_in(drpwe_common_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .powerpresent_out(powerpresent_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpisopd_in(txpisopd_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txrate_in(txrate_in),
        .txratedone_out(txratedone_out),
        .txratemode_in(txratemode_in),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
endmodule

(* ORIG_REF_NAME = "interlaken_0_gt_gtye4_channel_wrapper" *) 
module interlaken_0_interlaken_0_gt_gtye4_channel_wrapper
   (bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] ,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0outclk_out,
    qpll0freqlock_in,
    qpll0outrefclk_out,
    qpll1outclk_out,
    qpll1freqlock_in,
    qpll1outrefclk_out,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    \gen_powergood_delay.pwr_on_fsm_reg ,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    txpolarity_in,
    txprbsforceerr_in,
    \gen_gtwizard_gtye4.txprogdivreset_int ,
    \gen_powergood_delay.pwr_on_fsm_reg_0 ,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    TXRATE,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output \gen_gtwizard_gtye4.gtpowergood_int ;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input \gen_gtwizard_gtye4.gttxreset_ch_int ;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0outclk_out;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0outrefclk_out;
  input [0:0]qpll1outclk_out;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1outrefclk_out;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input \gen_powergood_delay.pwr_on_fsm_reg ;
  input \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input \gen_gtwizard_gtye4.txprogdivreset_int ;
  input \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]TXRATE;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [2:0]TXRATE;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  wire \gen_powergood_delay.pwr_on_fsm_reg ;
  wire \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txratedone_out;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel channel_inst
       (.TXRATE(TXRATE),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[0] (\gen_powergood_delay.intclk_rrst_n_r_reg[0] ),
        .\gen_powergood_delay.pwr_on_fsm_reg (\gen_powergood_delay.pwr_on_fsm_reg ),
        .\gen_powergood_delay.pwr_on_fsm_reg_0 (\gen_powergood_delay.pwr_on_fsm_reg_0 ),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .powerpresent_out(powerpresent_out),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txratedone_out(txratedone_out),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
endmodule

(* ORIG_REF_NAME = "interlaken_0_gt_gtye4_common_wrapper" *) 
module interlaken_0_interlaken_0_gt_gtye4_common_wrapper
   (drprdy_common_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    rst_in0,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    gtwiz_reset_qpll0reset_out,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in);
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output rst_in0;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [15:0]drpaddr_common_in;
  wire [0:0]drpclk_common_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdo_common_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drpwe_common_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire rst_in0;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common common_inst
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .drpaddr_common_in(drpaddr_common_in),
        .drpclk_common_in(drpclk_common_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdo_common_out(drpdo_common_out),
        .drpen_common_in(drpen_common_in),
        .drprdy_common_out(drprdy_common_out),
        .drpwe_common_in(drpwe_common_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .rst_in0(rst_in0),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
endmodule

(* ORIG_REF_NAME = "interlaken_0_ultrascale_rx_userclk" *) 
module interlaken_0_interlaken_0_ultrascale_rx_userclk
   (CLK,
    interlaken_gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_rx_active_in,
    txoutclk_out,
    txprgdivresetdone_out,
    txpmaresetdone_out,
    lopt,
    lopt_1,
    lopt_2);
  output CLK;
  output interlaken_gtwiz_userclk_tx_reset_in;
  output [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]txoutclk_out;
  input [0:0]txprgdivresetdone_out;
  input [0:0]txpmaresetdone_out;
  output lopt;
  input lopt_1;
  input lopt_2;

  wire \<const1> ;
  wire CLK;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire [0:0]txoutclk_out;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txprgdivresetdone_out;

  assign \^lopt  = lopt_1;
  assign \^lopt_1  = lopt_2;
  assign lopt = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst 
       (.CE(\^lopt ),
        .CEMASK(1'b0),
        .CLR(\^lopt_1 ),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(CLK));
  FDCE #(
    .INIT(1'b0)) 
    \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_out_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(interlaken_gtwiz_userclk_tx_reset_in),
        .D(1'b1),
        .Q(gtwiz_userclk_rx_active_in));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_i_1 
       (.I0(txprgdivresetdone_out),
        .I1(txpmaresetdone_out),
        .O(interlaken_gtwiz_userclk_tx_reset_in));
endmodule

(* ORIG_REF_NAME = "interlaken_0_ultrascale_tx_userclk" *) 
module interlaken_0_interlaken_0_ultrascale_tx_userclk
   (CLK,
    gtwiz_userclk_tx_active_in,
    interlaken_gtwiz_userclk_tx_reset_in,
    txoutclk_out,
    lopt,
    lopt_1);
  output CLK;
  output [0:0]gtwiz_userclk_tx_active_in;
  input interlaken_gtwiz_userclk_tx_reset_in;
  input [0:0]txoutclk_out;
  input lopt;
  input lopt_1;

  wire CLK;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire lopt;
  wire lopt_1;
  wire [0:0]txoutclk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst 
       (.CE(lopt),
        .CEMASK(1'b0),
        .CLR(lopt_1),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(CLK));
  FDCE #(
    .INIT(1'b0)) 
    \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_out_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(interlaken_gtwiz_userclk_tx_reset_in),
        .D(1'b1),
        .Q(gtwiz_userclk_tx_active_in));
endmodule

(* C_ADD_GT_CNRL_STS_PORTS = "0" *) (* C_BURSTMAX = "2'b11" *) (* C_BURSTSHORT = "3'b001" *) 
(* C_CHAN_EXT = "2'b00" *) (* C_CLOCKING_MODE = "Synchronous" *) (* C_ENABLE_ERR_INJ = "0" *) 
(* C_ENABLE_IN_BAND_FC = "0" *) (* C_ENABLE_OUT_BAND_FC = "0" *) (* C_ENABLE_PIPELINE_REG = "0" *) 
(* C_EN_RETRANS = "0" *) (* C_GT_REF_CLK_FREQ = "156.250000" *) (* C_GT_TYPE = "GTY" *) 
(* C_INCLUDE_SHARED_LOGIC = "2" *) (* C_INS_LOSS_NYQ = "10" *) (* C_IN_BAND_FC_CALLEN = "7'b0000000" *) 
(* C_LANE10_GT_LOC = "X0Y9" *) (* C_LANE11_GT_LOC = "NA" *) (* C_LANE12_GT_LOC = "NA" *) 
(* C_LANE1_GT_LOC = "X1Y48" *) (* C_LANE2_GT_LOC = "NA" *) (* C_LANE3_GT_LOC = "NA" *) 
(* C_LANE4_GT_LOC = "NA" *) (* C_LANE5_GT_LOC = "NA" *) (* C_LANE6_GT_LOC = "NA" *) 
(* C_LANE7_GT_LOC = "NA" *) (* C_LANE8_GT_LOC = "NA" *) (* C_LANE9_GT_LOC = "NA" *) 
(* C_LINE_RATE = "10.312500" *) (* C_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) (* C_NUM_LANES = "1" *) 
(* C_OPERATING_MODE = "3" *) (* C_OUT_BAND_FC_CALLEN = "7'b0000000" *) (* C_PACKET_MODE = "packet_mode" *) 
(* C_RX_EQ_MODE = "Auto" *) (* C_RX_RETRANS_MULT = "1" *) (* C_RX_RETRANS_RETRY = "2" *) 
(* C_RX_RETRANS_TIMER1 = "2048" *) (* C_RX_RETRANS_TIMER2 = "0" *) (* C_RX_RETRANS_WDOG = "0" *) 
(* C_RX_RETRANS_WRAP_TIMER = "0" *) (* C_TX_RETRANS_DEPTH = "2048" *) (* C_TX_RETRANS_MULT = "1" *) 
(* C_TX_RETRANS_RAM_BANKS = "4" *) (* C_TX_RLIM_DELTA = "384" *) (* C_TX_RLIM_ENABLE = "0" *) 
(* C_TX_RLIM_INTV = "16" *) (* C_TX_RLIM_MAX = "384" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* GT_COLUMN = "Right" *) (* ORIG_REF_NAME = "interlaken_0_wrapper" *) 
module interlaken_0_interlaken_0_wrapper
   (gt0_rxp_in,
    gt0_rxn_in,
    gt1_rxp_in,
    gt1_rxn_in,
    gt2_rxp_in,
    gt2_rxn_in,
    gt3_rxp_in,
    gt3_rxn_in,
    gt4_rxp_in,
    gt4_rxn_in,
    gt5_rxp_in,
    gt5_rxn_in,
    gt6_rxp_in,
    gt6_rxn_in,
    gt7_rxp_in,
    gt7_rxn_in,
    gt8_rxp_in,
    gt8_rxn_in,
    gt9_rxp_in,
    gt9_rxn_in,
    gt10_rxp_in,
    gt10_rxn_in,
    gt11_rxp_in,
    gt11_rxn_in,
    gt0_txn_out,
    gt0_txp_out,
    gt1_txn_out,
    gt1_txp_out,
    gt2_txn_out,
    gt2_txp_out,
    gt3_txn_out,
    gt3_txp_out,
    gt4_txn_out,
    gt4_txp_out,
    gt5_txn_out,
    gt5_txp_out,
    gt6_txn_out,
    gt6_txp_out,
    gt7_txn_out,
    gt7_txp_out,
    gt8_txn_out,
    gt8_txp_out,
    gt9_txn_out,
    gt9_txp_out,
    gt10_txn_out,
    gt10_txp_out,
    gt11_txn_out,
    gt11_txp_out,
    rx_ovfout,
    rx_dataout0,
    rx_chanout0,
    rx_enaout0,
    rx_sopout0,
    rx_eopout0,
    rx_errout0,
    rx_mtyout0,
    rx_dataout1,
    rx_chanout1,
    rx_enaout1,
    rx_sopout1,
    rx_eopout1,
    rx_errout1,
    rx_mtyout1,
    rx_dataout2,
    rx_chanout2,
    rx_enaout2,
    rx_sopout2,
    rx_eopout2,
    rx_errout2,
    rx_mtyout2,
    rx_dataout3,
    rx_chanout3,
    rx_enaout3,
    rx_sopout3,
    rx_eopout3,
    rx_errout3,
    rx_mtyout3,
    tx_rdyout,
    tx_ovfout,
    tx_datain0,
    tx_chanin0,
    tx_enain0,
    tx_sopin0,
    tx_eopin0,
    tx_errin0,
    tx_mtyin0,
    tx_bctlin0,
    tx_datain1,
    tx_chanin1,
    tx_enain1,
    tx_sopin1,
    tx_eopin1,
    tx_errin1,
    tx_mtyin1,
    tx_bctlin1,
    tx_datain2,
    tx_chanin2,
    tx_enain2,
    tx_sopin2,
    tx_eopin2,
    tx_errin2,
    tx_mtyin2,
    tx_bctlin2,
    tx_datain3,
    tx_chanin3,
    tx_enain3,
    tx_sopin3,
    tx_eopin3,
    tx_errin3,
    tx_mtyin3,
    tx_bctlin3,
    core_drp_reset,
    drp_clk,
    drp_en,
    drp_we,
    drp_addr,
    drp_di,
    drp_do,
    drp_rdy,
    core_clk,
    lbus_clk,
    lockedn,
    core_tx_reset,
    core_rx_reset,
    ctl_tx_errinj_biterr_go,
    ctl_tx_errinj_biterr_lane,
    ctl_tx_rlim_enable,
    ctl_tx_rlim_max,
    ctl_tx_rlim_delta,
    ctl_tx_rlim_intv,
    ctl_tx_enable,
    ctl_tx_mubits,
    ctl_tx_diagword_lanestat,
    ctl_tx_diagword_intfstat,
    ctl_rx_force_resync,
    ctl_tx_fc_stat,
    stat_tx_underflow_err,
    stat_tx_burst_err,
    stat_tx_overflow_err,
    ctl_tx_retrans_enable,
    stat_tx_retrans_burst_err,
    ctl_tx_retrans_req,
    ctl_tx_retrans_req_valid,
    stat_tx_retrans_busy,
    stat_tx_errinj_biterr_done,
    stat_rx_diagword_lanestat,
    stat_rx_diagword_intfstat,
    stat_rx_crc32_valid,
    stat_rx_crc32_err,
    stat_rx_fc_stat,
    stat_rx_mubits,
    stat_rx_mubits_updated,
    stat_rx_word_sync,
    stat_rx_synced,
    stat_rx_synced_err,
    stat_rx_framing_err,
    stat_rx_bad_type_err,
    stat_rx_mf_err,
    stat_rx_descram_err,
    stat_rx_mf_len_err,
    stat_rx_mf_repeat_err,
    stat_rx_aligned,
    stat_rx_misaligned,
    stat_rx_aligned_err,
    stat_rx_crc24_err,
    stat_rx_msop_err,
    stat_rx_meop_err,
    stat_rx_overflow_err,
    stat_rx_burstmax_err,
    ctl_rx_retrans_ack,
    ctl_rx_retrans_enable,
    ctl_rx_retrans_errin,
    ctl_rx_retrans_force_req,
    ctl_rx_retrans_reset,
    ctl_rx_retrans_reset_mode,
    stat_rx_retrans_crc24_err,
    stat_rx_retrans_disc,
    stat_rx_retrans_latency,
    stat_rx_retrans_req,
    stat_rx_retrans_retry_err,
    stat_rx_retrans_seq,
    stat_rx_retrans_seq_updated,
    stat_rx_retrans_state,
    stat_rx_retrans_subseq,
    stat_rx_retrans_wdog_err,
    stat_rx_retrans_wrap_err,
    stat_tx_retrans_ram_raddr,
    stat_tx_retrans_ram_waddr,
    stat_tx_retrans_ram_wdata,
    ctl_tx_retrans_ram_perrin,
    ctl_tx_retrans_ram_rdata,
    stat_tx_retrans_ram_perrout,
    stat_tx_retrans_ram_rsel,
    stat_tx_retrans_ram_rd_b0,
    stat_tx_retrans_ram_rd_b1,
    stat_tx_retrans_ram_rd_b2,
    stat_tx_retrans_ram_rd_b3,
    stat_tx_retrans_ram_we_b0,
    stat_tx_retrans_ram_we_b1,
    stat_tx_retrans_ram_we_b2,
    stat_tx_retrans_ram_we_b3,
    tx_bypass_ctrlin,
    tx_bypass_datain00,
    tx_bypass_datain01,
    tx_bypass_datain02,
    tx_bypass_datain03,
    tx_bypass_datain04,
    tx_bypass_datain05,
    tx_bypass_datain06,
    tx_bypass_datain07,
    tx_bypass_datain08,
    tx_bypass_datain09,
    tx_bypass_datain10,
    tx_bypass_datain11,
    tx_bypass_enain,
    tx_bypass_gearbox_seqin,
    tx_bypass_mframer_statein,
    rx_bypass_force_realignin,
    rx_bypass_rdin,
    rx_bypass_dataout00,
    rx_bypass_dataout01,
    rx_bypass_dataout02,
    rx_bypass_dataout03,
    rx_bypass_dataout04,
    rx_bypass_dataout05,
    rx_bypass_dataout06,
    rx_bypass_dataout07,
    rx_bypass_dataout08,
    rx_bypass_dataout09,
    rx_bypass_dataout10,
    rx_bypass_dataout11,
    rx_bypass_enaout,
    rx_bypass_is_availout,
    rx_bypass_is_badlyframedout,
    rx_bypass_is_overflowout,
    rx_bypass_is_syncedout,
    rx_bypass_is_syncwordout,
    gt_loopback_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_qpll1reset_out,
    gt_eyescanreset,
    gt_eyescantrigger,
    gt_rxcdrhold,
    gt_rxpolarity,
    gt_rxrate,
    gt_txdiffctrl,
    gt_txpolarity,
    gt_txpostcursor,
    gt_txprbsforceerr,
    gt_txprecursor,
    gt_eyescandataerror,
    gt_txbufstatus,
    gt_rxdfelpmreset,
    gt_rxlpmen,
    gt_rxprbscntreset,
    gt_rxprbserr,
    gt_rxprbssel,
    gt_rxresetdone,
    gt_txprbssel,
    gt_txresetdone,
    gt_rxbufstatus,
    gt_drpclk,
    gt_drp_done,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gt0_drpaddr,
    gt0_drpen,
    gt0_drpdi,
    gt0_drpdo,
    gt0_drprdy,
    gt0_drpwe,
    sys_reset,
    gt_txusrclk2,
    gt_tx_reset_done_inv,
    gt_rx_reset_done_inv,
    gt_rxusrclk2,
    usr_tx_reset,
    usr_rx_reset,
    gt_ref_clk0_p,
    gt_ref_clk0_n,
    gt_refclk_out,
    gtpowergood_out,
    init_clk,
    stat_rx_burst_err);
  input gt0_rxp_in;
  input gt0_rxn_in;
  input gt1_rxp_in;
  input gt1_rxn_in;
  input gt2_rxp_in;
  input gt2_rxn_in;
  input gt3_rxp_in;
  input gt3_rxn_in;
  input gt4_rxp_in;
  input gt4_rxn_in;
  input gt5_rxp_in;
  input gt5_rxn_in;
  input gt6_rxp_in;
  input gt6_rxn_in;
  input gt7_rxp_in;
  input gt7_rxn_in;
  input gt8_rxp_in;
  input gt8_rxn_in;
  input gt9_rxp_in;
  input gt9_rxn_in;
  input gt10_rxp_in;
  input gt10_rxn_in;
  input gt11_rxp_in;
  input gt11_rxn_in;
  output gt0_txn_out;
  output gt0_txp_out;
  output gt1_txn_out;
  output gt1_txp_out;
  output gt2_txn_out;
  output gt2_txp_out;
  output gt3_txn_out;
  output gt3_txp_out;
  output gt4_txn_out;
  output gt4_txp_out;
  output gt5_txn_out;
  output gt5_txp_out;
  output gt6_txn_out;
  output gt6_txp_out;
  output gt7_txn_out;
  output gt7_txp_out;
  output gt8_txn_out;
  output gt8_txp_out;
  output gt9_txn_out;
  output gt9_txp_out;
  output gt10_txn_out;
  output gt10_txp_out;
  output gt11_txn_out;
  output gt11_txp_out;
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
  input lockedn;
  input core_tx_reset;
  input core_rx_reset;
  input ctl_tx_errinj_biterr_go;
  input [3:0]ctl_tx_errinj_biterr_lane;
  input ctl_tx_rlim_enable;
  input [11:0]ctl_tx_rlim_max;
  input [11:0]ctl_tx_rlim_delta;
  input [7:0]ctl_tx_rlim_intv;
  input ctl_tx_enable;
  input [7:0]ctl_tx_mubits;
  input [11:0]ctl_tx_diagword_lanestat;
  input ctl_tx_diagword_intfstat;
  input ctl_rx_force_resync;
  input [255:0]ctl_tx_fc_stat;
  output stat_tx_underflow_err;
  output stat_tx_burst_err;
  output stat_tx_overflow_err;
  input ctl_tx_retrans_enable;
  output stat_tx_retrans_burst_err;
  input ctl_tx_retrans_req;
  input ctl_tx_retrans_req_valid;
  output stat_tx_retrans_busy;
  output stat_tx_errinj_biterr_done;
  output [11:0]stat_rx_diagword_lanestat;
  output [11:0]stat_rx_diagword_intfstat;
  output [11:0]stat_rx_crc32_valid;
  output [11:0]stat_rx_crc32_err;
  output [255:0]stat_rx_fc_stat;
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
  input ctl_rx_retrans_ack;
  input ctl_rx_retrans_enable;
  input ctl_rx_retrans_errin;
  input ctl_rx_retrans_force_req;
  input ctl_rx_retrans_reset;
  input ctl_rx_retrans_reset_mode;
  output stat_rx_retrans_crc24_err;
  output stat_rx_retrans_disc;
  output [15:0]stat_rx_retrans_latency;
  output stat_rx_retrans_req;
  output stat_rx_retrans_retry_err;
  output [7:0]stat_rx_retrans_seq;
  output stat_rx_retrans_seq_updated;
  output [2:0]stat_rx_retrans_state;
  output [4:0]stat_rx_retrans_subseq;
  output stat_rx_retrans_wdog_err;
  output stat_rx_retrans_wrap_err;
  output [8:0]stat_tx_retrans_ram_raddr;
  output [8:0]stat_tx_retrans_ram_waddr;
  output [643:0]stat_tx_retrans_ram_wdata;
  input ctl_tx_retrans_ram_perrin;
  input [643:0]ctl_tx_retrans_ram_rdata;
  output stat_tx_retrans_ram_perrout;
  output [1:0]stat_tx_retrans_ram_rsel;
  output stat_tx_retrans_ram_rd_b0;
  output stat_tx_retrans_ram_rd_b1;
  output stat_tx_retrans_ram_rd_b2;
  output stat_tx_retrans_ram_rd_b3;
  output stat_tx_retrans_ram_we_b0;
  output stat_tx_retrans_ram_we_b1;
  output stat_tx_retrans_ram_we_b2;
  output stat_tx_retrans_ram_we_b3;
  input [11:0]tx_bypass_ctrlin;
  input [63:0]tx_bypass_datain00;
  input [63:0]tx_bypass_datain01;
  input [63:0]tx_bypass_datain02;
  input [63:0]tx_bypass_datain03;
  input [63:0]tx_bypass_datain04;
  input [63:0]tx_bypass_datain05;
  input [63:0]tx_bypass_datain06;
  input [63:0]tx_bypass_datain07;
  input [63:0]tx_bypass_datain08;
  input [63:0]tx_bypass_datain09;
  input [63:0]tx_bypass_datain10;
  input [63:0]tx_bypass_datain11;
  input tx_bypass_enain;
  input [7:0]tx_bypass_gearbox_seqin;
  input [3:0]tx_bypass_mframer_statein;
  input rx_bypass_force_realignin;
  input rx_bypass_rdin;
  output [65:0]rx_bypass_dataout00;
  output [65:0]rx_bypass_dataout01;
  output [65:0]rx_bypass_dataout02;
  output [65:0]rx_bypass_dataout03;
  output [65:0]rx_bypass_dataout04;
  output [65:0]rx_bypass_dataout05;
  output [65:0]rx_bypass_dataout06;
  output [65:0]rx_bypass_dataout07;
  output [65:0]rx_bypass_dataout08;
  output [65:0]rx_bypass_dataout09;
  output [65:0]rx_bypass_dataout10;
  output [65:0]rx_bypass_dataout11;
  output [11:0]rx_bypass_enaout;
  output [11:0]rx_bypass_is_availout;
  output [11:0]rx_bypass_is_badlyframedout;
  output [11:0]rx_bypass_is_overflowout;
  output [11:0]rx_bypass_is_syncedout;
  output [11:0]rx_bypass_is_syncwordout;
  input [2:0]gt_loopback_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [0:0]gt_eyescanreset;
  input [0:0]gt_eyescantrigger;
  input [0:0]gt_rxcdrhold;
  input [0:0]gt_rxpolarity;
  input [2:0]gt_rxrate;
  input [4:0]gt_txdiffctrl;
  input [0:0]gt_txpolarity;
  input [4:0]gt_txpostcursor;
  input [0:0]gt_txprbsforceerr;
  input [4:0]gt_txprecursor;
  output [0:0]gt_eyescandataerror;
  output [1:0]gt_txbufstatus;
  input [0:0]gt_rxdfelpmreset;
  input [0:0]gt_rxlpmen;
  input [0:0]gt_rxprbscntreset;
  output [0:0]gt_rxprbserr;
  input [3:0]gt_rxprbssel;
  output [0:0]gt_rxresetdone;
  input [3:0]gt_txprbssel;
  output [0:0]gt_txresetdone;
  output [2:0]gt_rxbufstatus;
  input gt_drpclk;
  input gt_drp_done;
  input gtwiz_reset_tx_datapath_in;
  input gtwiz_reset_rx_datapath_in;
  input [9:0]gt0_drpaddr;
  input gt0_drpen;
  input [15:0]gt0_drpdi;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  input gt0_drpwe;
  input sys_reset;
  output gt_txusrclk2;
  output gt_tx_reset_done_inv;
  output gt_rx_reset_done_inv;
  output gt_rxusrclk2;
  output usr_tx_reset;
  output usr_rx_reset;
  input gt_ref_clk0_p;
  input gt_ref_clk0_n;
  output gt_refclk_out;
  output [0:0]gtpowergood_out;
  input init_clk;
  output stat_rx_burst_err;

  wire \<const0> ;
  wire core_clk;
  wire core_drp_reset;
  wire core_rx_reset;
  wire core_tx_reset;
  wire ctl_rx_force_resync;
  wire ctl_rx_retrans_ack;
  wire ctl_rx_retrans_enable;
  wire ctl_rx_retrans_errin;
  wire ctl_rx_retrans_force_req;
  wire ctl_rx_retrans_reset;
  wire ctl_rx_retrans_reset_mode;
  wire ctl_tx_diagword_intfstat;
  wire [11:0]ctl_tx_diagword_lanestat;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_1d;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_2d;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_3d;
  wire ctl_tx_enable;
  wire ctl_tx_errinj_biterr_go;
  wire [3:0]ctl_tx_errinj_biterr_lane;
  wire [255:0]ctl_tx_fc_stat;
  wire [7:0]ctl_tx_mubits;
  wire ctl_tx_retrans_enable;
  wire ctl_tx_retrans_ram_perrin;
  wire [643:0]ctl_tx_retrans_ram_rdata;
  wire ctl_tx_retrans_req;
  wire ctl_tx_retrans_req_valid;
  wire [11:0]ctl_tx_rlim_delta;
  wire ctl_tx_rlim_enable;
  wire [7:0]ctl_tx_rlim_intv;
  wire [11:0]ctl_tx_rlim_max;
  wire [9:0]drp_addr;
  wire drp_clk;
  wire [15:0]drp_di;
  wire [15:0]drp_do;
  wire drp_en;
  wire drp_rdy;
  wire drp_we;
  wire gt0_rxn_in;
  wire gt0_rxp_in;
  wire gt0_txn_out;
  wire gt0_txp_out;
  wire [63:0]gt_0_txdata;
  wire [2:0]gt_loopback_in;
  wire gt_ref_clk0;
  wire gt_ref_clk0_n;
  wire gt_ref_clk0_p;
  wire gt_refclk_copy;
  wire gt_refclk_out;
  wire gt_rx_reset_done_inv;
  wire gt_rxusrclk2;
  wire gt_tx_reset_done_inv;
  wire gt_txusrclk2;
  wire [0:0]gtpowergood_out;
  wire gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_done_out;
  wire gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_done_out;
  wire gtwiz_userclk_tx_srcclk_out;
  wire i_ilkn_top_inst_i_1_n_0;
  wire i_ilkn_top_inst_i_2_n_0;
  wire init_clk;
  wire interlaken_gtwiz_userclk_rx_active_out;
  wire interlaken_gtwiz_userclk_tx_active_out;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire lbus_clk;
  wire lockedn;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire [65:0]rx_bypass_dataout00;
  wire [65:0]rx_bypass_dataout01;
  wire [65:0]rx_bypass_dataout02;
  wire [65:0]rx_bypass_dataout03;
  wire [65:0]rx_bypass_dataout04;
  wire [65:0]rx_bypass_dataout05;
  wire [65:0]rx_bypass_dataout06;
  wire [65:0]rx_bypass_dataout07;
  wire [65:0]rx_bypass_dataout08;
  wire [65:0]rx_bypass_dataout09;
  wire [65:0]rx_bypass_dataout10;
  wire [65:0]rx_bypass_dataout11;
  wire [11:0]rx_bypass_enaout;
  wire rx_bypass_force_realignin;
  wire [11:0]rx_bypass_is_availout;
  wire [11:0]rx_bypass_is_badlyframedout;
  wire [11:0]rx_bypass_is_overflowout;
  wire [11:0]rx_bypass_is_syncedout;
  wire [11:0]rx_bypass_is_syncwordout;
  wire rx_bypass_rdin;
  wire [10:0]rx_chanout0;
  wire [10:0]rx_chanout1;
  wire [10:0]rx_chanout2;
  wire [10:0]rx_chanout3;
  wire [127:0]rx_dataout0;
  wire [127:0]rx_dataout1;
  wire [127:0]rx_dataout2;
  wire [127:0]rx_dataout3;
  wire rx_enaout0;
  wire rx_enaout1;
  wire rx_enaout2;
  wire rx_enaout3;
  wire rx_eopout0;
  wire rx_eopout1;
  wire rx_eopout2;
  wire rx_eopout3;
  wire rx_errout0;
  wire rx_errout1;
  wire rx_errout2;
  wire rx_errout3;
  wire [3:0]rx_mtyout0;
  wire [3:0]rx_mtyout1;
  wire [3:0]rx_mtyout2;
  wire [3:0]rx_mtyout3;
  wire rx_ovfout;
  wire rx_reset_async;
  wire rx_reset_sync;
  wire rx_sopout0;
  wire rx_sopout1;
  wire rx_sopout2;
  wire rx_sopout3;
  wire [63:0]rxdata_int;
  wire [63:0]rxdata_int_1d;
  wire [63:0]rxdata_int_2d;
  wire stat_rx_aligned;
  wire stat_rx_aligned_err;
  wire [11:0]stat_rx_bad_type_err;
  wire stat_rx_burst_err;
  wire stat_rx_burstmax_err;
  wire stat_rx_crc24_err;
  wire [11:0]stat_rx_crc32_err;
  wire [11:0]stat_rx_crc32_valid;
  wire [11:0]stat_rx_descram_err;
  wire [11:0]stat_rx_diagword_intfstat;
  wire [11:0]stat_rx_diagword_lanestat;
  wire [255:0]stat_rx_fc_stat;
  wire [11:0]stat_rx_framing_err;
  wire stat_rx_meop_err;
  wire [11:0]stat_rx_mf_err;
  wire [11:0]stat_rx_mf_len_err;
  wire [11:0]stat_rx_mf_repeat_err;
  wire stat_rx_misaligned;
  wire stat_rx_msop_err;
  wire [7:0]stat_rx_mubits;
  wire stat_rx_mubits_updated;
  wire stat_rx_overflow_err;
  wire stat_rx_retrans_crc24_err;
  wire stat_rx_retrans_disc;
  wire [15:0]stat_rx_retrans_latency;
  wire stat_rx_retrans_req;
  wire stat_rx_retrans_retry_err;
  wire [7:0]stat_rx_retrans_seq;
  wire stat_rx_retrans_seq_updated;
  wire [2:0]stat_rx_retrans_state;
  wire [4:0]stat_rx_retrans_subseq;
  wire stat_rx_retrans_wdog_err;
  wire stat_rx_retrans_wrap_err;
  wire [11:0]stat_rx_synced;
  wire [11:0]stat_rx_synced_err;
  wire [11:0]stat_rx_word_sync;
  wire stat_tx_burst_err;
  wire stat_tx_errinj_biterr_done;
  wire stat_tx_overflow_err;
  wire stat_tx_retrans_burst_err;
  wire stat_tx_retrans_busy;
  wire stat_tx_retrans_ram_perrout;
  wire [8:0]stat_tx_retrans_ram_raddr;
  wire stat_tx_retrans_ram_rd_b0;
  wire stat_tx_retrans_ram_rd_b1;
  wire stat_tx_retrans_ram_rd_b2;
  wire stat_tx_retrans_ram_rd_b3;
  wire [1:0]stat_tx_retrans_ram_rsel;
  wire [8:0]stat_tx_retrans_ram_waddr;
  wire [643:0]stat_tx_retrans_ram_wdata;
  wire stat_tx_retrans_ram_we_b0;
  wire stat_tx_retrans_ram_we_b1;
  wire stat_tx_retrans_ram_we_b2;
  wire stat_tx_retrans_ram_we_b3;
  wire stat_tx_underflow_err;
  wire sys_reset;
  wire tx_bctlin0;
  wire tx_bctlin1;
  wire tx_bctlin2;
  wire tx_bctlin3;
  wire [11:0]tx_bypass_ctrlin;
  wire [63:0]tx_bypass_datain00;
  wire [63:0]tx_bypass_datain01;
  wire [63:0]tx_bypass_datain02;
  wire [63:0]tx_bypass_datain03;
  wire [63:0]tx_bypass_datain04;
  wire [63:0]tx_bypass_datain05;
  wire [63:0]tx_bypass_datain06;
  wire [63:0]tx_bypass_datain07;
  wire [63:0]tx_bypass_datain08;
  wire [63:0]tx_bypass_datain09;
  wire [63:0]tx_bypass_datain10;
  wire [63:0]tx_bypass_datain11;
  wire tx_bypass_enain;
  wire [7:0]tx_bypass_gearbox_seqin;
  wire [3:0]tx_bypass_mframer_statein;
  wire [10:0]tx_chanin0;
  wire [10:0]tx_chanin1;
  wire [10:0]tx_chanin2;
  wire [10:0]tx_chanin3;
  wire [127:0]tx_datain0;
  wire [127:0]tx_datain1;
  wire [127:0]tx_datain2;
  wire [127:0]tx_datain3;
  wire tx_enain0;
  wire tx_enain1;
  wire tx_enain2;
  wire tx_enain3;
  wire tx_eopin0;
  wire tx_eopin1;
  wire tx_eopin2;
  wire tx_eopin3;
  wire tx_errin0;
  wire tx_errin1;
  wire tx_errin2;
  wire tx_errin3;
  wire [3:0]tx_mtyin0;
  wire [3:0]tx_mtyin1;
  wire [3:0]tx_mtyin2;
  wire [3:0]tx_mtyin3;
  wire tx_ovfout;
  wire tx_rdyout;
  wire tx_reset_async;
  wire tx_reset_sync;
  wire tx_sopin0;
  wire tx_sopin1;
  wire tx_sopin2;
  wire tx_sopin3;
  wire [63:0]txdata;
  wire [63:0]txdata_int_1d;
  wire txpmaresetdone_out;
  wire txprgdivresetdone_out;
  wire usr_rx_reset;
  wire usr_tx_reset;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED;

  assign gt0_drpdo[15] = \<const0> ;
  assign gt0_drpdo[14] = \<const0> ;
  assign gt0_drpdo[13] = \<const0> ;
  assign gt0_drpdo[12] = \<const0> ;
  assign gt0_drpdo[11] = \<const0> ;
  assign gt0_drpdo[10] = \<const0> ;
  assign gt0_drpdo[9] = \<const0> ;
  assign gt0_drpdo[8] = \<const0> ;
  assign gt0_drpdo[7] = \<const0> ;
  assign gt0_drpdo[6] = \<const0> ;
  assign gt0_drpdo[5] = \<const0> ;
  assign gt0_drpdo[4] = \<const0> ;
  assign gt0_drpdo[3] = \<const0> ;
  assign gt0_drpdo[2] = \<const0> ;
  assign gt0_drpdo[1] = \<const0> ;
  assign gt0_drpdo[0] = \<const0> ;
  assign gt0_drprdy = \<const0> ;
  assign gt10_txn_out = \<const0> ;
  assign gt10_txp_out = \<const0> ;
  assign gt11_txn_out = \<const0> ;
  assign gt11_txp_out = \<const0> ;
  assign gt1_txn_out = \<const0> ;
  assign gt1_txp_out = \<const0> ;
  assign gt2_txn_out = \<const0> ;
  assign gt2_txp_out = \<const0> ;
  assign gt3_txn_out = \<const0> ;
  assign gt3_txp_out = \<const0> ;
  assign gt4_txn_out = \<const0> ;
  assign gt4_txp_out = \<const0> ;
  assign gt5_txn_out = \<const0> ;
  assign gt5_txp_out = \<const0> ;
  assign gt6_txn_out = \<const0> ;
  assign gt6_txp_out = \<const0> ;
  assign gt7_txn_out = \<const0> ;
  assign gt7_txp_out = \<const0> ;
  assign gt8_txn_out = \<const0> ;
  assign gt8_txp_out = \<const0> ;
  assign gt9_txn_out = \<const0> ;
  assign gt9_txp_out = \<const0> ;
  assign gt_eyescandataerror[0] = \<const0> ;
  assign gt_rxbufstatus[2] = \<const0> ;
  assign gt_rxbufstatus[1] = \<const0> ;
  assign gt_rxbufstatus[0] = \<const0> ;
  assign gt_rxprbserr[0] = \<const0> ;
  assign gt_rxresetdone[0] = \<const0> ;
  assign gt_txbufstatus[1] = \<const0> ;
  assign gt_txbufstatus[0] = \<const0> ;
  assign gt_txresetdone[0] = \<const0> ;
  assign gtwiz_reset_qpll0reset_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = \<const0> ;
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(1'b1),
        .CESYNC(xlnx_opt_),
        .CLK(gt_refclk_copy),
        .CLR(1'b0),
        .CLRSYNC(xlnx_opt__1));
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH(1'b0),
    .REFCLK_HROW_CK_SEL(2'b00),
    .REFCLK_ICNTL_RX(2'b00)) 
    IBUFDS_GTE4_GTREFCLK0_INST
       (.CEB(1'b0),
        .I(gt_ref_clk0_p),
        .IB(gt_ref_clk0_n),
        .O(gt_ref_clk0),
        .ODIV2(gt_refclk_copy));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[0]),
        .Q(ctl_tx_diagword_lanestat_1d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[10]),
        .Q(ctl_tx_diagword_lanestat_1d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[11]),
        .Q(ctl_tx_diagword_lanestat_1d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[1]),
        .Q(ctl_tx_diagword_lanestat_1d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[2]),
        .Q(ctl_tx_diagword_lanestat_1d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[3]),
        .Q(ctl_tx_diagword_lanestat_1d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[4]),
        .Q(ctl_tx_diagword_lanestat_1d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[5]),
        .Q(ctl_tx_diagword_lanestat_1d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[6]),
        .Q(ctl_tx_diagword_lanestat_1d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[7]),
        .Q(ctl_tx_diagword_lanestat_1d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[8]),
        .Q(ctl_tx_diagword_lanestat_1d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[9]),
        .Q(ctl_tx_diagword_lanestat_1d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[0]),
        .Q(ctl_tx_diagword_lanestat_2d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[10]),
        .Q(ctl_tx_diagword_lanestat_2d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[11]),
        .Q(ctl_tx_diagword_lanestat_2d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[1]),
        .Q(ctl_tx_diagword_lanestat_2d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[2]),
        .Q(ctl_tx_diagword_lanestat_2d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[3]),
        .Q(ctl_tx_diagword_lanestat_2d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[4]),
        .Q(ctl_tx_diagword_lanestat_2d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[5]),
        .Q(ctl_tx_diagword_lanestat_2d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[6]),
        .Q(ctl_tx_diagword_lanestat_2d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[7]),
        .Q(ctl_tx_diagword_lanestat_2d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[8]),
        .Q(ctl_tx_diagword_lanestat_2d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[9]),
        .Q(ctl_tx_diagword_lanestat_2d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[0]),
        .Q(ctl_tx_diagword_lanestat_3d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[10]),
        .Q(ctl_tx_diagword_lanestat_3d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[11]),
        .Q(ctl_tx_diagword_lanestat_3d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[1]),
        .Q(ctl_tx_diagword_lanestat_3d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[2]),
        .Q(ctl_tx_diagword_lanestat_3d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[3]),
        .Q(ctl_tx_diagword_lanestat_3d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[4]),
        .Q(ctl_tx_diagword_lanestat_3d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[5]),
        .Q(ctl_tx_diagword_lanestat_3d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[6]),
        .Q(ctl_tx_diagword_lanestat_3d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[7]),
        .Q(ctl_tx_diagword_lanestat_3d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[8]),
        .Q(ctl_tx_diagword_lanestat_3d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[9]),
        .Q(ctl_tx_diagword_lanestat_3d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rx_reset_done_inv_INST_0
       (.I0(gtwiz_reset_rx_done_out),
        .O(gt_rx_reset_done_inv));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gt_tx_reset_done_inv_INST_0
       (.I0(gtwiz_reset_tx_done_out),
        .O(gt_tx_reset_done_inv));
  interlaken_0_interlaken_0_cdc_sync i_ilkn_cdc_user_rx_reset_inst
       (.in0(rx_reset_sync),
        .lbus_clk(lbus_clk),
        .usr_rx_reset(usr_rx_reset));
  interlaken_0_interlaken_0_cdc_sync_0 i_ilkn_cdc_user_tx_reset_inst
       (.in0(tx_reset_sync),
        .lbus_clk(lbus_clk),
        .usr_tx_reset(usr_tx_reset));
  (* BYPASS = "FALSE" *) 
  (* CTL_RX_BURSTMAX = "2'b11" *) 
  (* CTL_RX_CHAN_EXT = "2'b00" *) 
  (* CTL_RX_LAST_LANE = "4'b0000" *) 
  (* CTL_RX_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* CTL_RX_PACKET_MODE = "TRUE" *) 
  (* CTL_RX_RETRANS_MULT = "3'b000" *) 
  (* CTL_RX_RETRANS_RETRY = "2" *) 
  (* CTL_RX_RETRANS_TIMER1 = "16'b0000100000000000" *) 
  (* CTL_RX_RETRANS_TIMER2 = "16'b0000000000000000" *) 
  (* CTL_RX_RETRANS_WDOG = "12'b000000000000" *) 
  (* CTL_RX_RETRANS_WRAP_TIMER = "8'b00000000" *) 
  (* CTL_TX_BURSTMAX = "2'b11" *) 
  (* CTL_TX_BURSTSHORT = "3'b001" *) 
  (* CTL_TX_CHAN_EXT = "2'b00" *) 
  (* CTL_TX_DISABLE_SKIPWORD = "TRUE" *) 
  (* CTL_TX_FC_CALLEN = "7'b0001111" *) 
  (* CTL_TX_LAST_LANE = "4'b0000" *) 
  (* CTL_TX_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* CTL_TX_RETRANS_DEPTH = "14'b00100000000000" *) 
  (* CTL_TX_RETRANS_MULT = "3'b000" *) 
  (* CTL_TX_RETRANS_RAM_BANKS = "2'b11" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* MODE = "TRUE" *) 
  interlaken_0_interlaken_v2_4_0_top4 i_ilkn_top_inst
       (.core_clk(core_clk),
        .ctl_rx_force_resync(ctl_rx_force_resync),
        .ctl_rx_retrans_ack(ctl_rx_retrans_ack),
        .ctl_rx_retrans_enable(ctl_rx_retrans_enable),
        .ctl_rx_retrans_errin(ctl_rx_retrans_errin),
        .ctl_rx_retrans_force_req(ctl_rx_retrans_force_req),
        .ctl_rx_retrans_reset(ctl_rx_retrans_reset),
        .ctl_rx_retrans_reset_mode(ctl_rx_retrans_reset_mode),
        .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),
        .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat_3d),
        .ctl_tx_enable(ctl_tx_enable),
        .ctl_tx_errinj_biterr_go(ctl_tx_errinj_biterr_go),
        .ctl_tx_errinj_biterr_lane(ctl_tx_errinj_biterr_lane),
        .ctl_tx_fc_stat(ctl_tx_fc_stat),
        .ctl_tx_mubits(ctl_tx_mubits),
        .ctl_tx_retrans_enable(ctl_tx_retrans_enable),
        .ctl_tx_retrans_ram_perrin(ctl_tx_retrans_ram_perrin),
        .ctl_tx_retrans_ram_rdata(ctl_tx_retrans_ram_rdata),
        .ctl_tx_retrans_req(ctl_tx_retrans_req),
        .ctl_tx_retrans_req_valid(ctl_tx_retrans_req_valid),
        .ctl_tx_rlim_delta(ctl_tx_rlim_delta),
        .ctl_tx_rlim_enable(ctl_tx_rlim_enable),
        .ctl_tx_rlim_intv(ctl_tx_rlim_intv),
        .ctl_tx_rlim_max(ctl_tx_rlim_max),
        .drp_addr(drp_addr),
        .drp_clk(drp_clk),
        .drp_di(drp_di),
        .drp_do(drp_do),
        .drp_en(drp_en),
        .drp_rdy(drp_rdy),
        .drp_we(drp_we),
        .lbus_clk(lbus_clk),
        .rx_bypass_dataout00(rx_bypass_dataout00),
        .rx_bypass_dataout01(rx_bypass_dataout01),
        .rx_bypass_dataout02(rx_bypass_dataout02),
        .rx_bypass_dataout03(rx_bypass_dataout03),
        .rx_bypass_dataout04(rx_bypass_dataout04),
        .rx_bypass_dataout05(rx_bypass_dataout05),
        .rx_bypass_dataout06(rx_bypass_dataout06),
        .rx_bypass_dataout07(rx_bypass_dataout07),
        .rx_bypass_dataout08(rx_bypass_dataout08),
        .rx_bypass_dataout09(rx_bypass_dataout09),
        .rx_bypass_dataout10(rx_bypass_dataout10),
        .rx_bypass_dataout11(rx_bypass_dataout11),
        .rx_bypass_enaout(rx_bypass_enaout),
        .rx_bypass_force_realignin(rx_bypass_force_realignin),
        .rx_bypass_is_availout(rx_bypass_is_availout),
        .rx_bypass_is_badlyframedout(rx_bypass_is_badlyframedout),
        .rx_bypass_is_overflowout(rx_bypass_is_overflowout),
        .rx_bypass_is_syncedout(rx_bypass_is_syncedout),
        .rx_bypass_is_syncwordout(rx_bypass_is_syncwordout),
        .rx_bypass_rdin(rx_bypass_rdin),
        .rx_chanout0(rx_chanout0),
        .rx_chanout1(rx_chanout1),
        .rx_chanout2(rx_chanout2),
        .rx_chanout3(rx_chanout3),
        .rx_dataout0(rx_dataout0),
        .rx_dataout1(rx_dataout1),
        .rx_dataout2(rx_dataout2),
        .rx_dataout3(rx_dataout3),
        .rx_enaout0(rx_enaout0),
        .rx_enaout1(rx_enaout1),
        .rx_enaout2(rx_enaout2),
        .rx_enaout3(rx_enaout3),
        .rx_eopout0(rx_eopout0),
        .rx_eopout1(rx_eopout1),
        .rx_eopout2(rx_eopout2),
        .rx_eopout3(rx_eopout3),
        .rx_errout0(rx_errout0),
        .rx_errout1(rx_errout1),
        .rx_errout2(rx_errout2),
        .rx_errout3(rx_errout3),
        .rx_mtyout0(rx_mtyout0),
        .rx_mtyout1(rx_mtyout1),
        .rx_mtyout2(rx_mtyout2),
        .rx_mtyout3(rx_mtyout3),
        .rx_ovfout(rx_ovfout),
        .rx_reset(usr_rx_reset),
        .rx_serdes_clk({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt_rxusrclk2}),
        .rx_serdes_data00({rxdata_int_2d[0],rxdata_int_2d[1],rxdata_int_2d[2],rxdata_int_2d[3],rxdata_int_2d[4],rxdata_int_2d[5],rxdata_int_2d[6],rxdata_int_2d[7],rxdata_int_2d[8],rxdata_int_2d[9],rxdata_int_2d[10],rxdata_int_2d[11],rxdata_int_2d[12],rxdata_int_2d[13],rxdata_int_2d[14],rxdata_int_2d[15],rxdata_int_2d[16],rxdata_int_2d[17],rxdata_int_2d[18],rxdata_int_2d[19],rxdata_int_2d[20],rxdata_int_2d[21],rxdata_int_2d[22],rxdata_int_2d[23],rxdata_int_2d[24],rxdata_int_2d[25],rxdata_int_2d[26],rxdata_int_2d[27],rxdata_int_2d[28],rxdata_int_2d[29],rxdata_int_2d[30],rxdata_int_2d[31],rxdata_int_2d[32],rxdata_int_2d[33],rxdata_int_2d[34],rxdata_int_2d[35],rxdata_int_2d[36],rxdata_int_2d[37],rxdata_int_2d[38],rxdata_int_2d[39],rxdata_int_2d[40],rxdata_int_2d[41],rxdata_int_2d[42],rxdata_int_2d[43],rxdata_int_2d[44],rxdata_int_2d[45],rxdata_int_2d[46],rxdata_int_2d[47],rxdata_int_2d[48],rxdata_int_2d[49],rxdata_int_2d[50],rxdata_int_2d[51],rxdata_int_2d[52],rxdata_int_2d[53],rxdata_int_2d[54],rxdata_int_2d[55],rxdata_int_2d[56],rxdata_int_2d[57],rxdata_int_2d[58],rxdata_int_2d[59],rxdata_int_2d[60],rxdata_int_2d[61],rxdata_int_2d[62],rxdata_int_2d[63]}),
        .rx_serdes_data01({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data02({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data03({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data04({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data05({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data06({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data07({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data08({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data09({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_reset({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_ilkn_top_inst_i_1_n_0}),
        .rx_sopout0(rx_sopout0),
        .rx_sopout1(rx_sopout1),
        .rx_sopout2(rx_sopout2),
        .rx_sopout3(rx_sopout3),
        .stat_rx_aligned(stat_rx_aligned),
        .stat_rx_aligned_err(stat_rx_aligned_err),
        .stat_rx_bad_type_err(stat_rx_bad_type_err),
        .stat_rx_burst_err(stat_rx_burst_err),
        .stat_rx_burstmax_err(stat_rx_burstmax_err),
        .stat_rx_crc24_err(stat_rx_crc24_err),
        .stat_rx_crc32_err(stat_rx_crc32_err),
        .stat_rx_crc32_valid(stat_rx_crc32_valid),
        .stat_rx_descram_err(stat_rx_descram_err),
        .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),
        .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),
        .stat_rx_fc_stat(stat_rx_fc_stat),
        .stat_rx_framing_err(stat_rx_framing_err),
        .stat_rx_meop_err(stat_rx_meop_err),
        .stat_rx_mf_err(stat_rx_mf_err),
        .stat_rx_mf_len_err(stat_rx_mf_len_err),
        .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),
        .stat_rx_misaligned(stat_rx_misaligned),
        .stat_rx_msop_err(stat_rx_msop_err),
        .stat_rx_mubits(stat_rx_mubits),
        .stat_rx_mubits_updated(stat_rx_mubits_updated),
        .stat_rx_overflow_err(stat_rx_overflow_err),
        .stat_rx_retrans_crc24_err(stat_rx_retrans_crc24_err),
        .stat_rx_retrans_disc(stat_rx_retrans_disc),
        .stat_rx_retrans_latency(stat_rx_retrans_latency),
        .stat_rx_retrans_req(stat_rx_retrans_req),
        .stat_rx_retrans_retry_err(stat_rx_retrans_retry_err),
        .stat_rx_retrans_seq(stat_rx_retrans_seq),
        .stat_rx_retrans_seq_updated(stat_rx_retrans_seq_updated),
        .stat_rx_retrans_state(stat_rx_retrans_state),
        .stat_rx_retrans_subseq(stat_rx_retrans_subseq),
        .stat_rx_retrans_wdog_err(stat_rx_retrans_wdog_err),
        .stat_rx_retrans_wrap_err(stat_rx_retrans_wrap_err),
        .stat_rx_synced(stat_rx_synced),
        .stat_rx_synced_err(stat_rx_synced_err),
        .stat_rx_word_sync(stat_rx_word_sync),
        .stat_tx_burst_err(stat_tx_burst_err),
        .stat_tx_errinj_biterr_done(stat_tx_errinj_biterr_done),
        .stat_tx_overflow_err(stat_tx_overflow_err),
        .stat_tx_retrans_burst_err(stat_tx_retrans_burst_err),
        .stat_tx_retrans_busy(stat_tx_retrans_busy),
        .stat_tx_retrans_ram_perrout(stat_tx_retrans_ram_perrout),
        .stat_tx_retrans_ram_raddr(stat_tx_retrans_ram_raddr),
        .stat_tx_retrans_ram_rd_b0(stat_tx_retrans_ram_rd_b0),
        .stat_tx_retrans_ram_rd_b1(stat_tx_retrans_ram_rd_b1),
        .stat_tx_retrans_ram_rd_b2(stat_tx_retrans_ram_rd_b2),
        .stat_tx_retrans_ram_rd_b3(stat_tx_retrans_ram_rd_b3),
        .stat_tx_retrans_ram_rsel(stat_tx_retrans_ram_rsel),
        .stat_tx_retrans_ram_waddr(stat_tx_retrans_ram_waddr),
        .stat_tx_retrans_ram_wdata(stat_tx_retrans_ram_wdata),
        .stat_tx_retrans_ram_we_b0(stat_tx_retrans_ram_we_b0),
        .stat_tx_retrans_ram_we_b1(stat_tx_retrans_ram_we_b1),
        .stat_tx_retrans_ram_we_b2(stat_tx_retrans_ram_we_b2),
        .stat_tx_retrans_ram_we_b3(stat_tx_retrans_ram_we_b3),
        .stat_tx_underflow_err(stat_tx_underflow_err),
        .tx_bctlin0(tx_bctlin0),
        .tx_bctlin1(tx_bctlin1),
        .tx_bctlin2(tx_bctlin2),
        .tx_bctlin3(tx_bctlin3),
        .tx_bypass_ctrlin(tx_bypass_ctrlin),
        .tx_bypass_datain00(tx_bypass_datain00),
        .tx_bypass_datain01(tx_bypass_datain01),
        .tx_bypass_datain02(tx_bypass_datain02),
        .tx_bypass_datain03(tx_bypass_datain03),
        .tx_bypass_datain04(tx_bypass_datain04),
        .tx_bypass_datain05(tx_bypass_datain05),
        .tx_bypass_datain06(tx_bypass_datain06),
        .tx_bypass_datain07(tx_bypass_datain07),
        .tx_bypass_datain08(tx_bypass_datain08),
        .tx_bypass_datain09(tx_bypass_datain09),
        .tx_bypass_datain10(tx_bypass_datain10),
        .tx_bypass_datain11(tx_bypass_datain11),
        .tx_bypass_enain(tx_bypass_enain),
        .tx_bypass_gearbox_seqin(tx_bypass_gearbox_seqin),
        .tx_bypass_mframer_statein(tx_bypass_mframer_statein),
        .tx_chanin0(tx_chanin0),
        .tx_chanin1(tx_chanin1),
        .tx_chanin2(tx_chanin2),
        .tx_chanin3(tx_chanin3),
        .tx_datain0(tx_datain0),
        .tx_datain1(tx_datain1),
        .tx_datain2(tx_datain2),
        .tx_datain3(tx_datain3),
        .tx_enain0(tx_enain0),
        .tx_enain1(tx_enain1),
        .tx_enain2(tx_enain2),
        .tx_enain3(tx_enain3),
        .tx_eopin0(tx_eopin0),
        .tx_eopin1(tx_eopin1),
        .tx_eopin2(tx_eopin2),
        .tx_eopin3(tx_eopin3),
        .tx_errin0(tx_errin0),
        .tx_errin1(tx_errin1),
        .tx_errin2(tx_errin2),
        .tx_errin3(tx_errin3),
        .tx_mtyin0(tx_mtyin0),
        .tx_mtyin1(tx_mtyin1),
        .tx_mtyin2(tx_mtyin2),
        .tx_mtyin3(tx_mtyin3),
        .tx_ovfout(tx_ovfout),
        .tx_rdyout(tx_rdyout),
        .tx_reset(usr_tx_reset),
        .tx_serdes_data00(gt_0_txdata),
        .tx_serdes_data01(NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED[63:0]),
        .tx_serdes_data02(NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED[63:0]),
        .tx_serdes_data03(NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED[63:0]),
        .tx_serdes_data04(NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED[63:0]),
        .tx_serdes_data05(NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED[63:0]),
        .tx_serdes_data06(NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED[63:0]),
        .tx_serdes_data07(NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED[63:0]),
        .tx_serdes_data08(NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED[63:0]),
        .tx_serdes_data09(NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED[63:0]),
        .tx_serdes_data10(NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED[63:0]),
        .tx_serdes_data11(NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED[63:0]),
        .tx_serdes_refclk(gt_txusrclk2),
        .tx_serdes_refclk_reset(i_ilkn_top_inst_i_2_n_0),
        .tx_sopin0(tx_sopin0),
        .tx_sopin1(tx_sopin1),
        .tx_sopin2(tx_sopin2),
        .tx_sopin3(tx_sopin3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    i_ilkn_top_inst_i_1
       (.I0(core_drp_reset),
        .I1(gtwiz_reset_rx_done_out),
        .O(i_ilkn_top_inst_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i_ilkn_top_inst_i_2
       (.I0(core_drp_reset),
        .I1(gtwiz_reset_tx_done_out),
        .O(i_ilkn_top_inst_i_2_n_0));
  interlaken_0_interlaken_0_ultrascale_rx_userclk i_interlaken_gtwiz_userclk_rx_inst
       (.CLK(gt_rxusrclk2),
        .gtwiz_userclk_rx_active_in(interlaken_gtwiz_userclk_rx_active_out),
        .interlaken_gtwiz_userclk_tx_reset_in(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txprgdivresetdone_out(txprgdivresetdone_out));
  interlaken_0_interlaken_0_ultrascale_tx_userclk i_interlaken_gtwiz_userclk_tx_inst
       (.CLK(gt_txusrclk2),
        .gtwiz_userclk_tx_active_in(interlaken_gtwiz_userclk_tx_active_out),
        .interlaken_gtwiz_userclk_tx_reset_in(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out));
  (* CHECK_LICENSE_TYPE = "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "interlaken_0_gt_gtwizard_top,Vivado 2018.1" *) 
  interlaken_0_interlaken_0_gt interlaken_0_gt_i
       (.gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gt_ref_clk0),
        .gtwiz_reset_all_in(sys_reset),
        .gtwiz_reset_clk_freerun_in(init_clk),
        .gtwiz_reset_rx_cdr_stable_out(NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(interlaken_gtwiz_userclk_rx_active_out),
        .gtwiz_userclk_tx_active_in(interlaken_gtwiz_userclk_tx_active_out),
        .gtwiz_userdata_rx_out(rxdata_int),
        .gtwiz_userdata_tx_in(txdata),
        .gtyrxn_in(gt0_rxn_in),
        .gtyrxp_in(gt0_rxp_in),
        .gtytxn_out(gt0_txn_out),
        .gtytxp_out(gt0_txp_out),
        .loopback_in(gt_loopback_in),
        .lopt(lopt),
        .lopt_1(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .qpll0outclk_out(NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED[0]),
        .qpll0outrefclk_out(NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED[0]),
        .rxoutclk_out(NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED[0]),
        .rxpmaresetdone_out(NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxusrclk2_in(gt_rxusrclk2),
        .rxusrclk_in(gt_rxusrclk2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txusrclk2_in(gt_txusrclk2),
        .txusrclk_in(gt_txusrclk2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT refclk_bufg_gt_i
       (.CE(xlnx_opt_),
        .CEMASK(1'b1),
        .CLR(xlnx_opt__1),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(gt_refclk_copy),
        .O(gt_refclk_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    rx_reset_sync_i_1
       (.I0(core_drp_reset),
        .I1(lockedn),
        .I2(gtwiz_reset_rx_done_out),
        .I3(core_rx_reset),
        .O(rx_reset_async));
  FDRE rx_reset_sync_reg
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rx_reset_async),
        .Q(rx_reset_sync),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[0] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_int_1d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[10] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_int_1d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[11] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_int_1d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[12] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_int_1d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[13] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_int_1d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[14] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_int_1d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[15] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_int_1d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[16] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[16]),
        .Q(rxdata_int_1d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[17] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[17]),
        .Q(rxdata_int_1d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[18] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[18]),
        .Q(rxdata_int_1d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[19] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[19]),
        .Q(rxdata_int_1d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[1] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_int_1d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[20] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[20]),
        .Q(rxdata_int_1d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[21] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[21]),
        .Q(rxdata_int_1d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[22] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[22]),
        .Q(rxdata_int_1d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[23] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[23]),
        .Q(rxdata_int_1d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[24] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[24]),
        .Q(rxdata_int_1d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[25] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[25]),
        .Q(rxdata_int_1d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[26] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[26]),
        .Q(rxdata_int_1d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[27] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[27]),
        .Q(rxdata_int_1d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[28] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[28]),
        .Q(rxdata_int_1d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[29] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[29]),
        .Q(rxdata_int_1d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[2] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_int_1d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[30] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[30]),
        .Q(rxdata_int_1d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[31] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[31]),
        .Q(rxdata_int_1d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[32] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[32]),
        .Q(rxdata_int_1d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[33] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[33]),
        .Q(rxdata_int_1d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[34] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[34]),
        .Q(rxdata_int_1d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[35] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[35]),
        .Q(rxdata_int_1d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[36] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[36]),
        .Q(rxdata_int_1d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[37] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[37]),
        .Q(rxdata_int_1d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[38] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[38]),
        .Q(rxdata_int_1d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[39] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[39]),
        .Q(rxdata_int_1d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[3] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_int_1d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[40] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[40]),
        .Q(rxdata_int_1d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[41] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[41]),
        .Q(rxdata_int_1d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[42] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[42]),
        .Q(rxdata_int_1d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[43] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[43]),
        .Q(rxdata_int_1d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[44] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[44]),
        .Q(rxdata_int_1d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[45] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[45]),
        .Q(rxdata_int_1d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[46] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[46]),
        .Q(rxdata_int_1d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[47] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[47]),
        .Q(rxdata_int_1d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[48] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[48]),
        .Q(rxdata_int_1d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[49] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[49]),
        .Q(rxdata_int_1d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[4] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_int_1d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[50] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[50]),
        .Q(rxdata_int_1d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[51] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[51]),
        .Q(rxdata_int_1d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[52] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[52]),
        .Q(rxdata_int_1d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[53] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[53]),
        .Q(rxdata_int_1d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[54] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[54]),
        .Q(rxdata_int_1d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[55] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[55]),
        .Q(rxdata_int_1d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[56] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[56]),
        .Q(rxdata_int_1d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[57] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[57]),
        .Q(rxdata_int_1d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[58] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[58]),
        .Q(rxdata_int_1d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[59] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[59]),
        .Q(rxdata_int_1d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[5] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_int_1d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[60] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[60]),
        .Q(rxdata_int_1d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[61] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[61]),
        .Q(rxdata_int_1d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[62] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[62]),
        .Q(rxdata_int_1d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[63] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[63]),
        .Q(rxdata_int_1d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[6] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_int_1d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[7] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_int_1d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[8] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_int_1d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[9] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_int_1d[9]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[0] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[0]),
        .Q(rxdata_int_2d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[10] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[10]),
        .Q(rxdata_int_2d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[11] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[11]),
        .Q(rxdata_int_2d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[12] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[12]),
        .Q(rxdata_int_2d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[13] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[13]),
        .Q(rxdata_int_2d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[14] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[14]),
        .Q(rxdata_int_2d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[15] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[15]),
        .Q(rxdata_int_2d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[16] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[16]),
        .Q(rxdata_int_2d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[17] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[17]),
        .Q(rxdata_int_2d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[18] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[18]),
        .Q(rxdata_int_2d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[19] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[19]),
        .Q(rxdata_int_2d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[1] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[1]),
        .Q(rxdata_int_2d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[20] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[20]),
        .Q(rxdata_int_2d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[21] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[21]),
        .Q(rxdata_int_2d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[22] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[22]),
        .Q(rxdata_int_2d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[23] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[23]),
        .Q(rxdata_int_2d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[24] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[24]),
        .Q(rxdata_int_2d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[25] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[25]),
        .Q(rxdata_int_2d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[26] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[26]),
        .Q(rxdata_int_2d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[27] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[27]),
        .Q(rxdata_int_2d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[28] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[28]),
        .Q(rxdata_int_2d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[29] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[29]),
        .Q(rxdata_int_2d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[2] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[2]),
        .Q(rxdata_int_2d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[30] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[30]),
        .Q(rxdata_int_2d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[31] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[31]),
        .Q(rxdata_int_2d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[32] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[32]),
        .Q(rxdata_int_2d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[33] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[33]),
        .Q(rxdata_int_2d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[34] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[34]),
        .Q(rxdata_int_2d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[35] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[35]),
        .Q(rxdata_int_2d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[36] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[36]),
        .Q(rxdata_int_2d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[37] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[37]),
        .Q(rxdata_int_2d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[38] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[38]),
        .Q(rxdata_int_2d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[39] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[39]),
        .Q(rxdata_int_2d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[3] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[3]),
        .Q(rxdata_int_2d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[40] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[40]),
        .Q(rxdata_int_2d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[41] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[41]),
        .Q(rxdata_int_2d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[42] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[42]),
        .Q(rxdata_int_2d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[43] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[43]),
        .Q(rxdata_int_2d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[44] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[44]),
        .Q(rxdata_int_2d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[45] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[45]),
        .Q(rxdata_int_2d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[46] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[46]),
        .Q(rxdata_int_2d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[47] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[47]),
        .Q(rxdata_int_2d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[48] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[48]),
        .Q(rxdata_int_2d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[49] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[49]),
        .Q(rxdata_int_2d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[4] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[4]),
        .Q(rxdata_int_2d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[50] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[50]),
        .Q(rxdata_int_2d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[51] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[51]),
        .Q(rxdata_int_2d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[52] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[52]),
        .Q(rxdata_int_2d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[53] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[53]),
        .Q(rxdata_int_2d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[54] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[54]),
        .Q(rxdata_int_2d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[55] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[55]),
        .Q(rxdata_int_2d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[56] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[56]),
        .Q(rxdata_int_2d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[57] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[57]),
        .Q(rxdata_int_2d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[58] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[58]),
        .Q(rxdata_int_2d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[59] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[59]),
        .Q(rxdata_int_2d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[5] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[5]),
        .Q(rxdata_int_2d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[60] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[60]),
        .Q(rxdata_int_2d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[61] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[61]),
        .Q(rxdata_int_2d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[62] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[62]),
        .Q(rxdata_int_2d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[63] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[63]),
        .Q(rxdata_int_2d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[6] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[6]),
        .Q(rxdata_int_2d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[7] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[7]),
        .Q(rxdata_int_2d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[8] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[8]),
        .Q(rxdata_int_2d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[9] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[9]),
        .Q(rxdata_int_2d[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    tx_reset_sync_i_1
       (.I0(core_drp_reset),
        .I1(lockedn),
        .I2(gtwiz_reset_tx_done_out),
        .I3(core_tx_reset),
        .O(tx_reset_async));
  FDRE tx_reset_sync_reg
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(tx_reset_async),
        .Q(tx_reset_sync),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[63]),
        .Q(txdata_int_1d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[53]),
        .Q(txdata_int_1d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[52]),
        .Q(txdata_int_1d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[12] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[51]),
        .Q(txdata_int_1d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[13] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[50]),
        .Q(txdata_int_1d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[14] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[49]),
        .Q(txdata_int_1d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[15] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[48]),
        .Q(txdata_int_1d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[16] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[47]),
        .Q(txdata_int_1d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[17] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[46]),
        .Q(txdata_int_1d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[18] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[45]),
        .Q(txdata_int_1d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[19] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[44]),
        .Q(txdata_int_1d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[62]),
        .Q(txdata_int_1d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[20] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[43]),
        .Q(txdata_int_1d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[21] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[42]),
        .Q(txdata_int_1d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[22] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[41]),
        .Q(txdata_int_1d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[23] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[40]),
        .Q(txdata_int_1d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[24] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[39]),
        .Q(txdata_int_1d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[25] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[38]),
        .Q(txdata_int_1d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[26] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[37]),
        .Q(txdata_int_1d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[27] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[36]),
        .Q(txdata_int_1d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[28] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[35]),
        .Q(txdata_int_1d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[29] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[34]),
        .Q(txdata_int_1d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[61]),
        .Q(txdata_int_1d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[30] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[33]),
        .Q(txdata_int_1d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[31] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[32]),
        .Q(txdata_int_1d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[32] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[31]),
        .Q(txdata_int_1d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[33] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[30]),
        .Q(txdata_int_1d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[34] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[29]),
        .Q(txdata_int_1d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[35] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[28]),
        .Q(txdata_int_1d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[36] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[27]),
        .Q(txdata_int_1d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[37] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[26]),
        .Q(txdata_int_1d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[38] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[25]),
        .Q(txdata_int_1d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[39] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[24]),
        .Q(txdata_int_1d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[60]),
        .Q(txdata_int_1d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[40] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[23]),
        .Q(txdata_int_1d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[41] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[22]),
        .Q(txdata_int_1d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[42] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[21]),
        .Q(txdata_int_1d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[43] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[20]),
        .Q(txdata_int_1d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[44] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[19]),
        .Q(txdata_int_1d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[45] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[18]),
        .Q(txdata_int_1d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[46] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[17]),
        .Q(txdata_int_1d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[47] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[16]),
        .Q(txdata_int_1d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[48] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[15]),
        .Q(txdata_int_1d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[49] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[14]),
        .Q(txdata_int_1d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[59]),
        .Q(txdata_int_1d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[50] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[13]),
        .Q(txdata_int_1d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[51] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[12]),
        .Q(txdata_int_1d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[52] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[11]),
        .Q(txdata_int_1d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[53] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[10]),
        .Q(txdata_int_1d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[54] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[9]),
        .Q(txdata_int_1d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[55] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[8]),
        .Q(txdata_int_1d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[56] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[7]),
        .Q(txdata_int_1d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[57] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[6]),
        .Q(txdata_int_1d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[58] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[5]),
        .Q(txdata_int_1d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[59] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[4]),
        .Q(txdata_int_1d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[58]),
        .Q(txdata_int_1d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[60] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[3]),
        .Q(txdata_int_1d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[61] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[2]),
        .Q(txdata_int_1d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[62] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[1]),
        .Q(txdata_int_1d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[63] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[0]),
        .Q(txdata_int_1d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[57]),
        .Q(txdata_int_1d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[56]),
        .Q(txdata_int_1d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[55]),
        .Q(txdata_int_1d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[54]),
        .Q(txdata_int_1d[9]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[0]),
        .Q(txdata[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[10]),
        .Q(txdata[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[11]),
        .Q(txdata[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[12] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[12]),
        .Q(txdata[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[13] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[13]),
        .Q(txdata[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[14] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[14]),
        .Q(txdata[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[15] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[15]),
        .Q(txdata[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[16] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[16]),
        .Q(txdata[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[17] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[17]),
        .Q(txdata[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[18] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[18]),
        .Q(txdata[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[19] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[19]),
        .Q(txdata[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[1]),
        .Q(txdata[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[20] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[20]),
        .Q(txdata[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[21] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[21]),
        .Q(txdata[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[22] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[22]),
        .Q(txdata[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[23] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[23]),
        .Q(txdata[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[24] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[24]),
        .Q(txdata[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[25] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[25]),
        .Q(txdata[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[26] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[26]),
        .Q(txdata[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[27] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[27]),
        .Q(txdata[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[28] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[28]),
        .Q(txdata[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[29] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[29]),
        .Q(txdata[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[2]),
        .Q(txdata[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[30] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[30]),
        .Q(txdata[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[31] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[31]),
        .Q(txdata[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[32] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[32]),
        .Q(txdata[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[33] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[33]),
        .Q(txdata[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[34] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[34]),
        .Q(txdata[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[35] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[35]),
        .Q(txdata[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[36] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[36]),
        .Q(txdata[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[37] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[37]),
        .Q(txdata[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[38] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[38]),
        .Q(txdata[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[39] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[39]),
        .Q(txdata[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[3]),
        .Q(txdata[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[40] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[40]),
        .Q(txdata[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[41] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[41]),
        .Q(txdata[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[42] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[42]),
        .Q(txdata[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[43] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[43]),
        .Q(txdata[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[44] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[44]),
        .Q(txdata[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[45] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[45]),
        .Q(txdata[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[46] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[46]),
        .Q(txdata[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[47] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[47]),
        .Q(txdata[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[48] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[48]),
        .Q(txdata[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[49] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[49]),
        .Q(txdata[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[4]),
        .Q(txdata[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[50] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[50]),
        .Q(txdata[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[51] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[51]),
        .Q(txdata[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[52] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[52]),
        .Q(txdata[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[53] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[53]),
        .Q(txdata[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[54] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[54]),
        .Q(txdata[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[55] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[55]),
        .Q(txdata[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[56] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[56]),
        .Q(txdata[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[57] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[57]),
        .Q(txdata[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[58] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[58]),
        .Q(txdata[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[59] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[59]),
        .Q(txdata[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[5]),
        .Q(txdata[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[60] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[60]),
        .Q(txdata[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[61] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[61]),
        .Q(txdata[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[62] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[62]),
        .Q(txdata[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[63] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[63]),
        .Q(txdata[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[6]),
        .Q(txdata[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[7]),
        .Q(txdata[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[8]),
        .Q(txdata[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[9]),
        .Q(txdata[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iicAuWr2E+ZFnCDdvJHvFDL4TFnCNf5z45GjkqT2djCo5QgyuFZ4Wd4vL/aUkYMZnCeWTwPFmZ58
8kPpNc97iw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CJEoRgwiIuJUnJeurUoxj2e/qgIHolzkOGYnN7vAezhe9QN4rKSJqmdv/NMXN1JJzpZ71ZVUlIvH
EyvGNtDKtGonO2/92Z+hcJQZO3qyvnRmQtUNfpZuc/lqqUnsiRh5BCPxRsIQXdk9tweL99zqKcFw
jrvkcewNNuL/vCLppZo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0fn2fEIj5KhhSAcnrkUS662HM167hc1Ls9Tma9dkdAFRD68uRpFgVugbNN0ZhC0rdqjAOAMBxmd
z/9IHfKjHHVYCYSQR7iXy8KvMU+dwzVvz9PmKZmlOVwY+qdA51sB+CHdbEgEQ+0iidiZ+aKAEC4E
98OjTz3v+7WyzRoDq/j26C3+hL0NbhzlkpozdNK6GW90kc6GIxkJOA9wk5Imt+jCncETXUdQRIJr
WNb2fQRCPQmZsyOye15u2lT06QfaNdhBg4Rq0aKB/xzcdWTYpjIIbhKWpTfGRUhHlbRl80FupeCH
4+GPEKlcWrNDoXoywsoJEh5VY1ertGf/PQaauQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pl/nfZwSAjyPgh1RSwWH++7vC8/WudlNvK4jlJb72L9Xg+aN5DVTVaDMQawwnc1ehYM2fln+UANs
IHCyLqidcCQpDBMoBA6G6SI/Iu2h1BOrKu0vZqTDl4WtvRevlp9daZWOercAlZgWv0Zm663xBDm5
t9HXa29o+rNQSfYaXRn8Lijx6Sy2XGkEzJh/i1jKsM9AINDHFxWVMOLMMYlNob9eUvZ/5Po5b0P2
eK7fhK3RNxhKuahZpEYXPuTHWQiXQCnZ6BQSSPHvuE/BlZ9HhkcO3zFUQYgjTzYuTydCA3dH0CU2
tsTug7/NhLxXzXIpZfLLYapKq+ILBi3+B4NSqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p62KL2mU8OwoN3GMQpZcBG81skjkLvZDzDBAYCAyP25fhgm3WW8uyO4hbRtjo2yphcUkv9h3JXBB
In/eAZVCEROMgGHbVJcqjMXg387DLTlfLl9wBn3Puza2R9diU9MyX5n5dPr4pa3KejOux87MQ2dc
FPsPtOzyCTjEwG4oiUiH5ndARtrGQtbWojZTvgupkrKH1AfXWJMkjJ8CO5cva8ssnD0y26M313RO
J4PbgFDQc4meEGYlHkfN8g+NZf9IoOrYiHrLJpg1CBBfJVMwvNiPlo79ZfImyNw2mJaw+m5Jmts1
orkaoHQ0eLtVKuKE/q1KxoSqCxwJk5Z95lVBeQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C3dniqM4Qkay5OSo9O3eg+me/7sX/UNgVJE3sASrYynzkVZx4mztN+CpTzICQhMsHbMjyJHVmlSw
bKSzmd0R9vAxkrGCpx4mD3SQkajOGsS0NoY6l+oUhepbpZxmwU/sGDBITYf+5z6G5e0O7ntdEnRK
72AbWPf1rynbxL/5r1M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GOtC5BA54So4yvdk8hx9kdiRqoGXvbEByaw1z7oEUeu7qmtibY9mD1ckTWjhnXtNDuYIk09Pmwvn
tdrxxHd/eURUiFciPSF49Dr5e2Ki54kfjvr/P+fl1xQbvzGLywhiJFXA1O26BLYvFl4jEHz6X8Sx
JeczUDnPBTRP5GC8cj6yczbjTzrn6WSth58alhKUBqMbZZQBTDJbCZFilWux2WW5ilgxNygzrI3u
qQ1aW1L/SEWbfF0hggRqRedT2g2kuMf8ngrQsovXvNCHlcXA+C4LLY7+r96YDGfN2jeht9K51MH+
mIIDXAfSkO1mwPrUMV4XoEDn/gFtaqaE/ggT9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OHSE+2fXSaG6FdedZ7vJMagnDZLmqn0F1bm/Rj3QJqtvCajG0dJtY0I5hu+dQWq05IUGHb09JW0r
VGUujyzDVRA4uSYxBEBR17F6jE7yfSqeyU7xnx+BGNoPEZoYGVBbXNMDsqzmrzjB99a+puH/c6e+
t+ZXdBCNPWjW6ixEk0jKHECxQjJ9I+1sJxzG+BB9FYEbOVUy66w1i+9a0EOCIWiL+erjkDJ/RuOv
WiX/Ncsjms/U+yp9S3wvBZDDqNbxiHPFGfnGszLZgFA5wM3VT1/W/94os4oXfWJZnzRyNXvll/sV
p3QpguYLVNXByZoAlgmCTKxVX6lutxJOpba3WA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6wd4AxAXQaPy5T8QWtkFS7KesaxeZH1aw4Vq8v06NL4ACcAK/dnAUH+0r9A9MIdROPLd38mDJD/d
+qQqJkvNSA1Z/EhlNzPqr4+pDzCEydriwXLYHyvLPVORxFFAIOwkBghoPrgGT7LQ5blm7G0dfd0K
PZFAMjjsZgmbMIqYjmoVQPMveuXZ4/wJ4IcCSqe4oRAVNZ6nEnPNOnK5JVH6RZza/Hy07b06hfI5
cWA1N9r0kDamawY0G84RqOFYKl12fc7PLeMiMxIErRg61a5TtxABPkaX4me+ka0po3S0jVgkhG/j
1yrfL8eCRrAiRQTNVDCIZle9/78+cxPdr+MPng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 110016)
`pragma protect data_block
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
HkI7/6e/
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
