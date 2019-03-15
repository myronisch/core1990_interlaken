// (c) Copyright 1995-2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.
`timescale 1ps / 1ps


(* CHECK_LICENSE_TYPE = "interlaken_0,interlaken,{}" *)
(* CORE_GENERATION_INFO = "interlaken_0,interlaken,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=interlaken,x_ipVersion=2.4,x_ipCoreRevision=0,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,x_ipLicense=interlaken@2018.04(design_linking),C_LINE_RATE=10.3125,C_NUM_LANES=1,C_GT_TYPE=GTY,C_GT_REF_CLK_FREQ=156.25,C_OPERATING_MODE=3,C_CLOCKING_MODE=Synchronous,C_GT_DRP_CLK=40,C_PACKET_MODE=packet_mode,C_BURSTMAX=3,C_MFRAMELEN_MINUS1=2027,C_BURSTSHORT=1,C_CHAN_EXT=0,C_ENABLE_IN_BAND_FC=0,C_IN_BAND_FC_CALLEN=256,C_OUT_BAND_FC_CALLEN=256,C_ENABLE_OUT_BAND_FC=0,C_BYPASS_MODE=0,C_DISABLE_SKIPWORD=1,C_ENABLE_AXI_INTERFACE=0,C_ENABLE_ERR_INJ=0,C_TX_RLIM_ENABLE=0,C_TX_RLIM_MAX=384,C_TX_RLIM_DELTA=384,C_TX_RLIM_INTV=16,C_EN_RETRANS=0,C_TX_RETRANS_RAM_BANKS=4,C_TX_RETRANS_DEPTH=2048,C_TX_RETRANS_MULT=1,C_RX_RETRANS_MULT=1,C_TIMER_MODES=2,C_RX_RETRANS_TIMER1=2048,C_RX_RETRANS_TIMER2=0,C_RX_RETRANS_RETRY=2,C_RX_RETRANS_WRAP_TIMER=0,C_RX_RETRANS_WDOG=0,C_ILKN_CORE_LOC=ILKNE4_X1Y8,C_GT_SELECT=X1Y48,C_LANE1_GT_LOC=X1Y48,C_LANE2_GT_LOC=NA,C_LANE3_GT_LOC=NA,C_LANE4_GT_LOC=NA,C_LANE5_GT_LOC=NA,C_LANE6_GT_LOC=NA,C_LANE7_GT_LOC=NA,C_LANE8_GT_LOC=NA,C_LANE9_GT_LOC=NA,C_LANE10_GT_LOC=X0Y9,C_LANE11_GT_LOC=NA,C_LANE12_GT_LOC=NA,C_INS_LOSS_NYQ=10,C_RX_EQ_MODE=Auto,C_GT_LOCATION=1,C_INCLUDE_SHARED_LOGIC=2,C_ENABLE_PIPELINE_REG=0,C_ADD_GT_CNRL_STS_PORTS=0,C_PLL_TYPE=QPLL0,C_SPEEDGRADE=-2,C_FAMILY_CHK=virtexuplus,GT_COLUMN=Right,IS_BOARD_PROJECT=0,C_FAST_SIM_MODE=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)

module interlaken_0 (
   gt_ref_clk0_p,
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
   gt_loopback_in
);
   input wire            gt0_rxp_in;
   input wire            gt0_rxn_in;
   output wire          gt0_txn_out;
   output wire          gt0_txp_out;
   input wire              core_rx_reset;
   output wire             rx_ovfout;
   output wire   [127:0]   rx_dataout0;
   output wire   [10:0]    rx_chanout0;
   output wire             rx_enaout0;
   output wire             rx_sopout0;
   output wire             rx_eopout0;
   output wire             rx_errout0;
   output wire   [3:0]     rx_mtyout0;
   output wire   [127:0]   rx_dataout1;
   output wire   [10:0]    rx_chanout1;
   output wire             rx_enaout1;
   output wire             rx_sopout1;
   output wire             rx_eopout1;
   output wire             rx_errout1;
   output wire   [3:0]     rx_mtyout1;
   output wire   [127:0]   rx_dataout2;
   output wire   [10:0]    rx_chanout2;
   output wire             rx_enaout2;
   output wire             rx_sopout2;
   output wire             rx_eopout2;
   output wire             rx_errout2;
   output wire   [3:0]     rx_mtyout2;
   output wire   [127:0]   rx_dataout3;
   output wire   [10:0]    rx_chanout3;
   output wire             rx_enaout3;
   output wire             rx_sopout3;
   output wire             rx_eopout3;
   output wire             rx_errout3;
   output wire   [3:0]     rx_mtyout3;
   input wire              core_tx_reset;
   output wire             tx_rdyout;
   output wire             tx_ovfout;
   input wire   [127:0]    tx_datain0;
   input wire   [10:0]     tx_chanin0;
   input wire              tx_enain0;
   input wire              tx_sopin0;
   input wire              tx_eopin0;
   input wire              tx_errin0;
   input wire   [3:0]      tx_mtyin0;
   input wire              tx_bctlin0;
   input wire   [127:0]    tx_datain1;
   input wire   [10:0]     tx_chanin1;
   input wire              tx_enain1;
   input wire              tx_sopin1;
   input wire              tx_eopin1;
   input wire              tx_errin1;
   input wire   [3:0]      tx_mtyin1;
   input wire              tx_bctlin1;
   input wire   [127:0]    tx_datain2;
   input wire   [10:0]     tx_chanin2;
   input wire              tx_enain2;
   input wire              tx_sopin2;
   input wire              tx_eopin2;
   input wire              tx_errin2;
   input wire   [3:0]      tx_mtyin2;
   input wire              tx_bctlin2;
   input wire   [127:0]    tx_datain3;
   input wire   [10:0]     tx_chanin3;
   input wire              tx_enain3;
   input wire              tx_sopin3;
   input wire              tx_eopin3;
   input wire              tx_errin3;
   input wire   [3:0]      tx_mtyin3;
   input wire              tx_bctlin3;
   input wire              ctl_tx_enable;
   input wire              lockedn;
   input wire              core_drp_reset;
   input wire              drp_clk;
   input wire              drp_en;
   input wire              drp_we;
   input wire   [9:0]      drp_addr;
   input wire   [15:0]     drp_di;
   output wire  [15:0]     drp_do;
   output wire             drp_rdy;
   input wire              core_clk;
   input wire              lbus_clk;
   input wire   [11:0]     ctl_tx_diagword_lanestat;
   input wire              ctl_tx_diagword_intfstat;
   input wire   [7:0]      ctl_tx_mubits;
   output wire             stat_tx_underflow_err;
   output wire             stat_tx_burst_err;
   output wire             stat_tx_overflow_err;
   input wire              ctl_rx_force_resync;
   output wire   [11:0]    stat_rx_diagword_lanestat;
   output wire   [11:0]    stat_rx_diagword_intfstat;
   output wire   [11:0]    stat_rx_crc32_valid;
   output wire   [11:0]    stat_rx_crc32_err;
   output wire   [7:0]     stat_rx_mubits;
   output wire             stat_rx_mubits_updated;
   output wire   [11:0]    stat_rx_word_sync;
   output wire   [11:0]    stat_rx_synced;
   output wire   [11:0]    stat_rx_synced_err;
   output wire   [11:0]    stat_rx_framing_err;
   output wire   [11:0]    stat_rx_bad_type_err;
   output wire   [11:0]    stat_rx_mf_err;
   output wire   [11:0]    stat_rx_descram_err;
   output wire   [11:0]    stat_rx_mf_len_err;
   output wire   [11:0]    stat_rx_mf_repeat_err;
   output wire             stat_rx_aligned;
   output wire             stat_rx_misaligned;
   output wire             stat_rx_aligned_err;
   output wire             stat_rx_crc24_err;
   output wire             stat_rx_msop_err;
   output wire             stat_rx_meop_err;
   output wire             stat_rx_overflow_err;
   output wire             stat_rx_burstmax_err;
   output wire             stat_rx_burst_err;
   input wire   [2 :0]    gt_loopback_in;
   input wire               gtwiz_reset_tx_datapath;
   input wire               gtwiz_reset_rx_datapath;
   input wire              sys_reset;
   output wire             gt_txusrclk2;
   output wire             gt_tx_reset_done_inv;
   output wire             usr_tx_reset;
   output wire             usr_rx_reset;
   output wire             gt_rxusrclk2;
   output wire             gt_rx_reset_done_inv;
   input wire              gt_ref_clk0_p;
   input wire              gt_ref_clk0_n;
   output wire             gt_refclk_out;
   output wire [0 :0] gtpowergood_out;
    output            gt_txresetdone_int;
    output            gt_rxresetdone_int;
 input wire              init_clk;


  interlaken_0_wrapper #(
    .C_NUM_LANES(1),
    .C_LINE_RATE(10.3125),
    .C_GT_REF_CLK_FREQ(156.25),
    .C_OPERATING_MODE("3"),
    .C_PACKET_MODE("packet_mode"),
    .C_BURSTMAX(3),
    .C_BURSTSHORT(1),
    .C_EN_RETRANS(0),
    .C_TX_RLIM_ENABLE(0),
    .C_ENABLE_IN_BAND_FC(0),
    .C_IN_BAND_FC_CALLEN(256),
    .C_OUT_BAND_FC_CALLEN(256),
    .C_ENABLE_OUT_BAND_FC(0),
    .C_CHAN_EXT(0),
    .C_MFRAMELEN_MINUS1(2027),
    .GT_COLUMN("Right"),
    .C_LANE1_GT_LOC("X1Y48"),
    .C_LANE2_GT_LOC("NA"),
    .C_LANE3_GT_LOC("NA"),
    .C_LANE4_GT_LOC("NA"),
    .C_LANE5_GT_LOC("NA"),
    .C_LANE6_GT_LOC("NA"),
    .C_LANE7_GT_LOC("NA"),
    .C_LANE8_GT_LOC("NA"),
    .C_LANE9_GT_LOC("NA"),
    .C_LANE10_GT_LOC("X0Y9"),
    .C_LANE11_GT_LOC("NA"),
    .C_LANE12_GT_LOC("NA"),
    .C_GT_TYPE("GTY"),
    .C_INCLUDE_SHARED_LOGIC(2),
    .C_ADD_GT_CNRL_STS_PORTS(0),
    .C_ENABLE_ERR_INJ(0),
    .C_ENABLE_PIPELINE_REG(0),
    .C_TX_RLIM_MAX(384),
    .C_TX_RLIM_DELTA(384),
    .C_TX_RLIM_INTV(16),
    .C_TX_RETRANS_RAM_BANKS(4),
    .C_TX_RETRANS_DEPTH(2048),
    .C_TX_RETRANS_MULT(1),
    .C_RX_RETRANS_MULT(1),
    .C_RX_RETRANS_TIMER1(2048),
    .C_RX_RETRANS_TIMER2(0),
    .C_RX_RETRANS_RETRY(2),
    .C_RX_RETRANS_WDOG(0),
    .C_RX_RETRANS_WRAP_TIMER(0),
    .C_CLOCKING_MODE("Synchronous"),
    .C_RX_EQ_MODE("Auto"),
    .C_INS_LOSS_NYQ(10)
  ) inst (

    .gt_ref_clk0_p(gt_ref_clk0_p),
    .gt_ref_clk0_n(gt_ref_clk0_n), 
 
    .gt_refclk_out (gt_refclk_out), 
    .init_clk(init_clk),
    .sys_reset(sys_reset),
    .gt_txusrclk2(gt_txusrclk2),
    .gtpowergood_out (gtpowergood_out),
    .gt_rxusrclk2(gt_rxusrclk2),
    .gt_rx_reset_done_inv(gt_rx_reset_done_inv),
    .usr_rx_reset(usr_rx_reset),
    .gt0_rxp_in(gt0_rxp_in),
    .gt0_rxn_in(gt0_rxn_in),
    .gt1_rxp_in(1'B0),
    .gt1_rxn_in(1'B0),
    .gt2_rxp_in(1'B0),
    .gt2_rxn_in(1'B0),
    .gt3_rxp_in(1'B0),
    .gt3_rxn_in(1'B0),
    .gt4_rxp_in(1'B0),
    .gt4_rxn_in(1'B0),
    .gt5_rxp_in(1'B0),
    .gt5_rxn_in(1'B0),
    .gt6_rxp_in(1'B0),
    .gt6_rxn_in(1'B0),
    .gt7_rxp_in(1'B0),
    .gt7_rxn_in(1'B0),
    .gt8_rxp_in(1'B0),
    .gt8_rxn_in(1'B0),
    .gt9_rxp_in(1'B0),
    .gt9_rxn_in(1'B0),
    .gt10_rxp_in(1'B0),
    .gt10_rxn_in(1'B0),
    .gt11_rxp_in(1'B0),
    .gt11_rxn_in(1'B0),
    .gt_tx_reset_done_inv(gt_tx_reset_done_inv),
    .usr_tx_reset(usr_tx_reset),
    .gt0_txn_out(gt0_txn_out),
    .gt0_txp_out(gt0_txp_out),
    .gt1_txn_out(),
    .gt1_txp_out(),
    .gt2_txn_out(),
    .gt2_txp_out(),
    .gt3_txn_out(),
    .gt3_txp_out(),
    .gt4_txn_out(),
    .gt4_txp_out(),
    .gt5_txn_out(),
    .gt5_txp_out(),
    .gt6_txn_out(),
    .gt6_txp_out(),
    .gt7_txn_out(),
    .gt7_txp_out(),
    .gt8_txn_out(),
    .gt8_txp_out(),
    .gt9_txn_out(),
    .gt9_txp_out(),
    .gt10_txn_out(),
    .gt10_txp_out(),
    .gt11_txn_out(),
    .gt11_txp_out(),
    .core_rx_reset(core_rx_reset),
    .rx_ovfout(rx_ovfout),
    .rx_dataout0(rx_dataout0),
    .rx_chanout0(rx_chanout0),
    .rx_enaout0(rx_enaout0),
    .rx_sopout0(rx_sopout0),
    .rx_eopout0(rx_eopout0),
    .rx_errout0(rx_errout0),
    .rx_mtyout0(rx_mtyout0),
    .rx_dataout1(rx_dataout1),
    .rx_chanout1(rx_chanout1),
    .rx_enaout1(rx_enaout1),
    .rx_sopout1(rx_sopout1),
    .rx_eopout1(rx_eopout1),
    .rx_errout1(rx_errout1),
    .rx_mtyout1(rx_mtyout1),
    .rx_dataout2(rx_dataout2),
    .rx_chanout2(rx_chanout2),
    .rx_enaout2(rx_enaout2),
    .rx_sopout2(rx_sopout2),
    .rx_eopout2(rx_eopout2),
    .rx_errout2(rx_errout2),
    .rx_mtyout2(rx_mtyout2),
    .rx_dataout3(rx_dataout3),
    .rx_chanout3(rx_chanout3),
    .rx_enaout3(rx_enaout3),
    .rx_sopout3(rx_sopout3),
    .rx_eopout3(rx_eopout3),
    .rx_errout3(rx_errout3),
    .rx_mtyout3(rx_mtyout3),
    .core_tx_reset(core_tx_reset),
    .tx_rdyout(tx_rdyout),
    .tx_ovfout(tx_ovfout),
    .tx_datain0(tx_datain0),
    .tx_chanin0(tx_chanin0),
    .tx_enain0(tx_enain0),
    .tx_sopin0(tx_sopin0),
    .tx_eopin0(tx_eopin0),
    .tx_errin0(tx_errin0),
    .tx_mtyin0(tx_mtyin0),
    .tx_bctlin0(tx_bctlin0),
    .tx_datain1(tx_datain1),
    .tx_chanin1(tx_chanin1),
    .tx_enain1(tx_enain1),
    .tx_sopin1(tx_sopin1),
    .tx_eopin1(tx_eopin1),
    .tx_errin1(tx_errin1),
    .tx_mtyin1(tx_mtyin1),
    .tx_bctlin1(tx_bctlin1),
    .tx_datain2(tx_datain2),
    .tx_chanin2(tx_chanin2),
    .tx_enain2(tx_enain2),
    .tx_sopin2(tx_sopin2),
    .tx_eopin2(tx_eopin2),
    .tx_errin2(tx_errin2),
    .tx_mtyin2(tx_mtyin2),
    .tx_bctlin2(tx_bctlin2),
    .tx_datain3(tx_datain3),
    .tx_chanin3(tx_chanin3),
    .tx_enain3(tx_enain3),
    .tx_sopin3(tx_sopin3),
    .tx_eopin3(tx_eopin3),
    .tx_errin3(tx_errin3),
    .tx_mtyin3(tx_mtyin3),
    .tx_bctlin3(tx_bctlin3),
    .ctl_tx_enable(ctl_tx_enable),
    .lockedn(lockedn),
    .core_drp_reset(core_drp_reset),
    .drp_clk(drp_clk),
    .drp_en(drp_en),
    .drp_we(drp_we),
    .drp_addr(drp_addr),
    .drp_di(drp_di),
    .drp_do(drp_do),
    .drp_rdy(drp_rdy),
    .core_clk(core_clk),
    .lbus_clk(lbus_clk),
    //.gtwiz_reset_tx_pll_and_datapath_in_temp(1'b0),
    //.gtwiz_reset_rx_pll_and_datapath_in_temp(1'b0),
    .gtwiz_reset_tx_datapath_in (gtwiz_reset_tx_datapath),
    .gtwiz_reset_rx_datapath_in (gtwiz_reset_rx_datapath),
    .gt_eyescanreset(1'B0),
    .gt_eyescantrigger(1'B0),
    .gt_rxcdrhold(1'B0),
    .gt_rxpolarity(1'B0),
    .gt_rxrate(3'B0),
    .gt_txdiffctrl(5'B0),
    .gt_txpolarity(1'B0),
    .gt_txpostcursor(5'B0),
    .gt_txprbsforceerr(1'B0),
    .gt_txprecursor(5'B0),
    .gt_eyescandataerror(),
    .gt_txbufstatus(),
    .gt_rxdfelpmreset    (1'B0),
    .gt_rxlpmen          (1'B0),
    .gt_rxprbscntreset   (1'B0),
    .gt_rxprbserr       (),
    .gt_rxprbssel        (4'B0),
    .gt_rxresetdone     (),
    .gt_txprbssel        (4'B0),
    .gt_txresetdone     (),
    .gt_rxbufstatus     (),
    .gt_drpclk          (1'b0),
    .gt_drp_done        (1'b0   ),
    .gt0_drpaddr      (10'B0),
    .gt0_drpen        (1'B0),
    .gt0_drpdi        (16'B0),
    .gt0_drpwe        (1'B0),
    .gt0_drpdo        (),
    .gt0_drprdy       (),
    .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat),
    .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),
    .ctl_tx_rlim_enable(1'B0),
    .ctl_tx_rlim_max(12'B0),
    .ctl_tx_rlim_delta(12'B0),
    .ctl_tx_rlim_intv(8'B0),

    .stat_rx_fc_stat(),
    .ctl_tx_fc_stat(256'B0),
    .ctl_tx_mubits(ctl_tx_mubits),
    .stat_tx_underflow_err(stat_tx_underflow_err),
    .stat_tx_burst_err(stat_tx_burst_err),
    .stat_tx_overflow_err(stat_tx_overflow_err),
    .ctl_tx_errinj_biterr_go(1'B0),
    .ctl_tx_errinj_biterr_lane(4'B0),
    .stat_tx_errinj_biterr_done(),
    .ctl_rx_force_resync(ctl_rx_force_resync),
    .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),
    .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),
    .stat_rx_crc32_valid(stat_rx_crc32_valid),
    .stat_rx_crc32_err(stat_rx_crc32_err),
    .stat_rx_mubits(stat_rx_mubits),
    .stat_rx_mubits_updated(stat_rx_mubits_updated),
    .stat_rx_word_sync(stat_rx_word_sync),
    .stat_rx_synced(stat_rx_synced),
    .stat_rx_synced_err(stat_rx_synced_err),
    .stat_rx_framing_err(stat_rx_framing_err),
    .stat_rx_bad_type_err(stat_rx_bad_type_err),
    .stat_rx_mf_err(stat_rx_mf_err),
    .stat_rx_descram_err(stat_rx_descram_err),
    .stat_rx_mf_len_err(stat_rx_mf_len_err),
    .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),
    .stat_rx_aligned(stat_rx_aligned),
    .stat_rx_misaligned(stat_rx_misaligned),
    .stat_rx_aligned_err(stat_rx_aligned_err),
    .stat_rx_crc24_err(stat_rx_crc24_err),
    .stat_rx_msop_err(stat_rx_msop_err),
    .stat_rx_meop_err(stat_rx_meop_err),
    .stat_rx_overflow_err(stat_rx_overflow_err),
    .stat_rx_burstmax_err(stat_rx_burstmax_err),
    .stat_rx_burst_err(stat_rx_burst_err),
    .ctl_tx_retrans_enable(1'B0),
    .stat_tx_retrans_burst_err(),
    .stat_tx_retrans_ram_perrout(),
    .ctl_tx_retrans_req(1'B0),
    .ctl_tx_retrans_req_valid(1'B0),
    .stat_tx_retrans_busy(),
    .stat_tx_retrans_ram_raddr(),
    .stat_tx_retrans_ram_rsel(),
    .stat_tx_retrans_ram_rd_b0(),
    .stat_tx_retrans_ram_rd_b1(),
    .stat_tx_retrans_ram_rd_b2(),
    .stat_tx_retrans_ram_rd_b3(),
    .stat_tx_retrans_ram_waddr(),
    .stat_tx_retrans_ram_wdata(),
    .stat_tx_retrans_ram_we_b0(),
    .stat_tx_retrans_ram_we_b1(),
    .stat_tx_retrans_ram_we_b2(),
    .stat_tx_retrans_ram_we_b3(),
    .ctl_tx_retrans_ram_perrin(1'B0),
    .ctl_tx_retrans_ram_rdata(644'B0),
    .ctl_rx_retrans_ack(1'B0),
    .ctl_rx_retrans_enable(1'B0),
    .ctl_rx_retrans_errin(1'B0),
    .ctl_rx_retrans_force_req(1'B0),
    .ctl_rx_retrans_reset(1'B0),
    .ctl_rx_retrans_reset_mode(1'B0),
    .stat_rx_retrans_crc24_err(),
    .stat_rx_retrans_disc(),
    .stat_rx_retrans_latency(),
    .stat_rx_retrans_req(),
    .stat_rx_retrans_retry_err(),
    .stat_rx_retrans_seq(),
    .stat_rx_retrans_seq_updated(),
    .stat_rx_retrans_state(),
    .stat_rx_retrans_subseq(),
    .stat_rx_retrans_wdog_err(),
    .stat_rx_retrans_wrap_err(),
    .qpll0clk_in    (1'B0),
    .qpll0refclk_in (1'B0),
    .qpll1clk_in    (1'B0),
    .qpll1refclk_in (1'B0),
    .gtwiz_reset_qpll0lock_in (1'b0),
    .gtwiz_reset_qpll1lock_in (1'b0),

    .gtwiz_reset_qpll0reset_out(),
    .gtwiz_reset_qpll1reset_out(),
    .tx_bypass_ctrlin             (12'd0),
    .tx_bypass_datain00           (64'd0),
    .tx_bypass_datain01           (64'd0),
    .tx_bypass_datain02           (64'd0),
    .tx_bypass_datain03           (64'd0),
    .tx_bypass_datain04           (64'd0),
    .tx_bypass_datain05           (64'd0),
    .tx_bypass_datain06           (64'd0),
    .tx_bypass_datain07           (64'd0),
    .tx_bypass_datain08           (64'd0),
    .tx_bypass_datain09           (64'd0),
    .tx_bypass_datain10           (64'd0),
    .tx_bypass_datain11           (64'd0),
    .tx_bypass_enain              (1'b0),
    .tx_bypass_gearbox_seqin      (8'd0),
    .tx_bypass_mframer_statein    (4'b0000),
    .rx_bypass_force_realignin    (1'b0),
    .rx_bypass_rdin               (1'b0),
    .rx_bypass_dataout00          (),
    .rx_bypass_dataout01          (),
    .rx_bypass_dataout02          (),
    .rx_bypass_dataout03          (),
    .rx_bypass_dataout04          (),
    .rx_bypass_dataout05          (),
    .rx_bypass_dataout06          (),
    .rx_bypass_dataout07          (),
    .rx_bypass_dataout08          (),
    .rx_bypass_dataout09          (),
    .rx_bypass_dataout10          (),
    .rx_bypass_dataout11          (),
    .rx_bypass_enaout             (),
    .rx_bypass_is_availout        (),
    .rx_bypass_is_badlyframedout  (),
    .rx_bypass_is_overflowout     (),
    .rx_bypass_is_syncedout       (),
    .rx_bypass_is_syncwordout     (),

    .gt_loopback_in(gt_loopback_in)
  );
endmodule

