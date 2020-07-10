////------------------------------------------------------------------------------
////  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
////
////  This file contains confidential and proprietary information
////  of Xilinx, Inc. and is protected under U.S. and
////  international copyright and other intellectual property
////  laws.
////
////  DISCLAIMER
////  This disclaimer is not a license and does not grant any
////  rights to the materials distributed herewith. Except as
////  otherwise provided in a valid license issued to you by
////  Xilinx, and to the maximum extent permitted by applicable
////  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
////  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
////  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
////  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
////  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
////  (2) Xilinx shall not be liable (whether in contract or tort,
////  including negligence, or under any other theory of
////  liability) for any loss or damage of any kind or nature
////  related to, arising under or in connection with these
////  materials, including for any direct, or any indirect,
////  special, incidental, or consequential loss or damage
////  (including loss of data, profits, goodwill, or any type of
////  loss or damage suffered as a result of any action brought
////  by a third party) even if such damage or loss was
////  reasonably foreseeable or Xilinx had been advised of the
////  possibility of the same.
////
////  CRITICAL APPLICATIONS
////  Xilinx products are not designed or intended to be fail-
////  safe, or for use in any application requiring fail-safe
////  performance, such as life-support or safety devices or
////  systems, Class III medical devices, nuclear facilities,
////  applications related to the deployment of airbags, or any
////  other applications that could lead to death, personal
////  injury, or severe property or environmental damage
////  (individually and collectively, "Critical
////  Applications"). Customer assumes the sole risk and
////  liability of any use of Xilinx products in Critical
////  Applications, subject only to applicable laws and
////  regulations governing limitations on product liability.
////
////  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
////  PART OF THIS FILE AT ALL TIMES.
////------------------------------------------------------------------------------
`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module interlaken_0_exdes
(
  
  output          tx_busy_led,
  output          tx_done_led,
  output          tx_fail_led,
  
  output          rx_gt_locked_led,
  output          rx_aligned_led,
  output          rx_done_led,
  output          rx_failed_led,
  output          rx_busy_led,
  input wire      lbus_tx_rx_restart_in,

  input wire      init_clk,
  input wire      gt_ref_clk0_p,
  input wire      gt_ref_clk0_n,
  input           gt0_rxp_in,
  input           gt0_rxn_in,
  input           gt1_rxp_in,
  input           gt1_rxn_in, 
  input           gt2_rxp_in,
  input           gt2_rxn_in, 
  input           gt3_rxp_in,
  input           gt3_rxn_in, 








  output          gt0_txn_out,
  output          gt0_txp_out,
  output          gt1_txn_out,
  output          gt1_txp_out, 
  output          gt2_txn_out,
  output          gt2_txp_out, 
  output          gt3_txn_out,
  output          gt3_txp_out, 








 

  input  wire     s_axi_pm_tick,
  input wire      sys_reset
);
                                              //// Number of packets should be even and should be within the range 2 to 65534
parameter DUPLEX_PKT_NUM            =  1000;   //// Duplex mode packet number
                                               //// NOTE: Number of Packets should be even

wire [11:0]    gt_loopback_in;

//// For other GT loopback option please change the value appropriately
//// For example, for internal loopback gt_loopback_in[2:0] = 3'b010;
//// For more information and settings on loopback, refer GT Transceivers user guide
assign gt_loopback_in =  {4{3'b000}};


  wire            s_axi_aclk;
  wire            s_axi_sreset;
  wire [31:0]     s_axi_awaddr;
  wire            s_axi_awvalid;
  wire            s_axi_awready;
  wire [31:0]     s_axi_wdata;
  wire [3:0]      s_axi_wstrb;
  wire            s_axi_wvalid;
  wire            s_axi_wready;
  wire [1:0]      s_axi_bresp;
  wire            s_axi_bvalid;
  wire            s_axi_bready;
  wire [31:0]     s_axi_araddr;
  wire            s_axi_arvalid;
  wire            s_axi_arready;
  wire [31:0]     s_axi_rdata;
  wire [1:0]      s_axi_rresp;
  wire            s_axi_rvalid;
  wire            s_axi_rready;
 
wire          gtwiz_reset_tx_datapath = 1'b0;
wire          gtwiz_reset_rx_datapath = 1'b0;
wire          lbus_clk;
wire          core_clk;
wire          locked;
wire          lockedn;
wire          rx_align;
wire          gt_txusrclk2;
wire          gt_rxusrclk2;
wire          gt_txresetdone_int;
wire          gt_rxresetdone_int;
wire          gt_tx_reset_done_inv;
wire          gt_rx_reset_done_inv;
wire          gt_refclk_out;
wire [3 :0] gtpowergood_out;
//////////////////////////////////////////
wire          tx_gt_locked_led;
wire [127:0]  tx_data0;
wire [11-1:0] tx_chan0;
wire          tx_ena0;
wire          tx_sop0;
wire          tx_eop0;
wire          tx_err0;
wire [3:0]    tx_mty0;
wire          tx_bctl0;

wire [127:0]  tx_data1;
wire [11-1:0] tx_chan1;
wire          tx_ena1;
wire          tx_sop1;
wire          tx_eop1;
wire          tx_err1;
wire [3:0]    tx_mty1;
wire          tx_bctl1;

wire [127:0]  tx_data2;
wire [11-1:0] tx_chan2;
wire          tx_ena2;
wire          tx_sop2;
wire          tx_eop2;
wire          tx_err2;
wire [3:0]    tx_mty2;
wire          tx_bctl2;

wire [127:0]  tx_data3;
wire [11-1:0] tx_chan3;
wire          tx_ena3;
wire          tx_sop3;
wire          tx_eop3;
wire          tx_err3;
wire [3:0]    tx_mty3;
wire          tx_bctl3;
wire          tx_ovf;
wire          tx_rdy;
////////////////////////////////////////
wire [127:0]  rx_data0;
wire [11-1:0] rx_chan0;
wire          rx_ena0;
wire          rx_sop0;
wire          rx_eop0;
wire          rx_err0;
wire [3:0]    rx_mty0;
                           
wire [127:0]  rx_data1;
wire [11-1:0] rx_chan1;
wire          rx_ena1;
wire          rx_sop1;
wire          rx_eop1;
wire          rx_err1;
wire [3:0]    rx_mty1;
                          
wire [127:0]  rx_data2;
wire [11-1:0] rx_chan2;
wire          rx_ena2;
wire          rx_sop2;
wire          rx_eop2;
wire          rx_err2;
wire [3:0]    rx_mty2;
                          
wire [127:0]  rx_data3;
wire [11-1:0] rx_chan3;
wire          rx_ena3;
wire          rx_sop3;
wire          rx_eop3;
wire          rx_err3;
wire [3:0]    rx_mty3;
wire          rx_ovf;

///////////////////////////////////////

wire [11:0]   diagword_lanestat;
wire [11:0]   diagword_intfstat;
wire [11:0]   crc32_valid;
wire [11:0]   crc32_err;
wire [7:0]    mubits;
wire          mubits_updated;
wire [11:0]   word_sync;
wire [11:0]   synced;
wire [11:0]   synced_err;
wire [11:0]   framing_err;
wire [11:0]   bad_type_err;
wire [11:0]   mf_err;
wire [11:0]   descram_err;
wire [11:0]   mf_len_err;
wire [11:0]   mf_repeat_err;
wire          misaligned;
wire          aligned_err;
wire          crc24_err;
wire          msop_err;
wire          meop_err;
wire          overflow_err;
wire          burstmax_err;
wire          burst_err;
wire          tx_underflow_err;
wire          tx_burst_err;
wire          tx_overflow_err;
wire  [15:0]  drp_do;
wire          drp_rdy;
wire          usr_tx_reset;
wire          usr_rx_reset;



wire [7:0]    ctl_tx_mubits;
wire          ctl_tx_enable;
wire [11:0]   ctl_tx_diagword_lanestat;
wire          ctl_tx_diagword_intfstat;
wire          ctl_rx_force_resync;
 
assign lockedn = ~locked;


/////////////////CLK WIZ/////////////////
  clk_wiz_0 i_CLK_GEN
   (
   //// Clock in ports
    .clk_in1    (gt_txusrclk2), 
    .clk_out1   (lbus_clk),
 
    .reset      (gt_tx_reset_done_inv),
    .locked     (locked)
 );
assign core_clk = lbus_clk; 

interlaken_0_lbus_pkt_gen_mon #(
    .DUPLEX_PKT_NUM           (DUPLEX_PKT_NUM)
) i_pkt_gen_mon(
    .tx_reset                  (usr_tx_reset),
    .rx_reset                  (usr_rx_reset),
    .sys_reset                 (sys_reset),
    .lbus_tx_rx_restart_in     (lbus_tx_rx_restart_in),
    .s_axi_aclk                (init_clk),
    .s_axi_sreset              (sys_reset),
    .s_axi_pm_tick             (s_axi_pm_tick),
    .s_axi_awaddr              (s_axi_awaddr),
    .s_axi_awvalid             (s_axi_awvalid),
    .s_axi_awready             (s_axi_awready),
    .s_axi_wdata               (s_axi_wdata),
    .s_axi_wstrb               (s_axi_wstrb),
    .s_axi_wvalid              (s_axi_wvalid),
    .s_axi_wready              (s_axi_wready),
    .s_axi_bresp               (s_axi_bresp),
    .s_axi_bvalid              (s_axi_bvalid),
    .s_axi_bready              (s_axi_bready),
    .s_axi_araddr              (s_axi_araddr),
    .s_axi_arvalid             (s_axi_arvalid),
    .s_axi_arready             (s_axi_arready),
    .s_axi_rdata               (s_axi_rdata),
    .s_axi_rresp               (s_axi_rresp),
    .s_axi_rvalid              (s_axi_rvalid),
    .s_axi_rready              (s_axi_rready),
    .rx_aligned                (rx_align),
    .tx_rdyin                  (tx_rdy),
    .tx_ovfin                  (tx_ovf),
    .tx_dataout0               (tx_data0),
    .tx_chanout0               (tx_chan0),
    .tx_enaout0                (tx_ena0),
    .tx_sopout0                (tx_sop0),
    .tx_eopout0                (tx_eop0),
    .tx_errout0                (tx_err0),
    .tx_mtyout0                (tx_mty0),
    .tx_bctlout0               (tx_bctl0),
    .tx_dataout1               (tx_data1),
    .tx_chanout1               (tx_chan1),
    .tx_enaout1                (tx_ena1),
    .tx_sopout1                (tx_sop1),
    .tx_eopout1                (tx_eop1),
    .tx_errout1                (tx_err1),
    .tx_mtyout1                (tx_mty1),
    .tx_bctlout1               (tx_bctl1),
    .tx_dataout2               (tx_data2),
    .tx_chanout2               (tx_chan2),
    .tx_enaout2                (tx_ena2),
    .tx_sopout2                (tx_sop2),
    .tx_eopout2                (tx_eop2),
    .tx_errout2                (tx_err2),
    .tx_mtyout2                (tx_mty2),
    .tx_bctlout2               (tx_bctl2),
    .tx_dataout3               (tx_data3),
    .tx_chanout3               (tx_chan3),
    .tx_enaout3                (tx_ena3),
    .tx_sopout3                (tx_sop3),
    .tx_eopout3                (tx_eop3),
    .tx_errout3                (tx_err3),
    .tx_mtyout3                (tx_mty3),
    .tx_bctlout3               (tx_bctl3),
    .tx_gt_locked_led          (tx_gt_locked_led),
    .tx_busy_led               (tx_busy_led),
    .tx_fail_led               (tx_fail_led),
    .tx_done_led               (tx_done_led),
    .rx_datain0                (rx_data0),
    .rx_chanin0                (rx_chan0),
    .rx_enain0                 (rx_ena0),
    .rx_sopin0                 (rx_sop0),
    .rx_eopin0                 (rx_eop0),
    .rx_errin0                 (rx_err0),
    .rx_mtyin0                 (rx_mty0),
    .rx_datain1                (rx_data1),
    .rx_chanin1                (rx_chan1),
    .rx_enain1                 (rx_ena1),
    .rx_sopin1                 (rx_sop1),
    .rx_eopin1                 (rx_eop1),
    .rx_errin1                 (rx_err1),
    .rx_mtyin1                 (rx_mty1),
    .rx_datain2                (rx_data2),
    .rx_chanin2                (rx_chan2),
    .rx_enain2                 (rx_ena2),
    .rx_sopin2                 (rx_sop2),
    .rx_eopin2                 (rx_eop2),
    .rx_errin2                 (rx_err2),
    .rx_mtyin2                 (rx_mty2),
    .rx_datain3                (rx_data3),
    .rx_chanin3                (rx_chan3),
    .rx_enain3                 (rx_ena3),
    .rx_sopin3                 (rx_sop3),
    .rx_eopin3                 (rx_eop3),
    .rx_errin3                 (rx_err3),
    .rx_mtyin3                 (rx_mty3),
    .stat_rx_diagword_lanestat (diagword_lanestat),
    .stat_rx_diagword_intfstat (diagword_intfstat),
    .stat_rx_crc32_valid       (crc32_valid),
    .stat_rx_crc32_err         (crc32_err),
    .stat_rx_mubits            (mubits),
    .stat_rx_mubits_updated    (mubits_updated),
    .stat_rx_word_sync         (word_sync),
    .stat_rx_synced            (synced),
    .stat_rx_synced_err        (synced_err),
    .stat_rx_framing_err       (framing_err),
    .stat_rx_bad_type_err      (bad_type_err),
    .stat_rx_mf_err            (mf_err),
    .stat_rx_descram_err       (descram_err),
    .stat_rx_mf_len_err        (mf_len_err),
    .stat_rx_mf_repeat_err     (mf_repeat_err),
    .stat_rx_aligned           (rx_align),
    .stat_rx_misaligned        (misaligned),
    .stat_rx_aligned_err       (aligned_err),
    .stat_rx_crc24_err         (crc24_err),
    .stat_rx_msop_err          (msop_err),
    .stat_rx_meop_err          (meop_err),
    .stat_rx_overflow_err      (overflow_err),
    .stat_rx_burstmax_err      (burstmax_err),
    .stat_rx_burst_err         (burst_err),
    .stat_tx_underflow_err     (tx_underflow_err),
    .stat_tx_burst_err         (tx_burst_err),
    .stat_tx_overflow_err      (tx_overflow_err),
    .rx_gt_locked_led          (rx_gt_locked_led),
    .rx_aligned_led            (rx_aligned_led),
    .rx_done_led               (rx_done_led),
    .rx_failed_led             (rx_failed_led),
    .rx_busy_led               (rx_busy_led),


    .clk                        (lbus_clk)
);

interlaken_0 DUT
(
    .gt0_rxp_in                (gt0_rxp_in),
    .gt0_rxn_in                (gt0_rxn_in),
    .gt1_rxp_in                (gt1_rxp_in),
    .gt1_rxn_in                (gt1_rxn_in), 
    .gt2_rxp_in                (gt2_rxp_in),
    .gt2_rxn_in                (gt2_rxn_in), 
    .gt3_rxp_in                (gt3_rxp_in),
    .gt3_rxn_in                (gt3_rxn_in), 








    .gt0_txp_out               (gt0_txp_out),
    .gt0_txn_out               (gt0_txn_out),
    .gt1_txp_out               (gt1_txp_out),
    .gt1_txn_out               (gt1_txn_out), 
    .gt2_txp_out               (gt2_txp_out),
    .gt2_txn_out               (gt2_txn_out), 
    .gt3_txp_out               (gt3_txp_out),
    .gt3_txn_out               (gt3_txn_out), 








    .rx_ovfout                    (rx_ovf),
    .rx_dataout0                  (rx_data0),
    .rx_chanout0                  (rx_chan0),
    .rx_enaout0                   (rx_ena0),
    .rx_sopout0                   (rx_sop0),
    .rx_eopout0                   (rx_eop0),
    .rx_errout0                   (rx_err0),
    .rx_mtyout0                   (rx_mty0),
    .rx_dataout1                  (rx_data1),
    .rx_chanout1                  (rx_chan1),
    .rx_enaout1                   (rx_ena1),
    .rx_sopout1                   (rx_sop1),
    .rx_eopout1                   (rx_eop1),
    .rx_errout1                   (rx_err1),
    .rx_mtyout1                   (rx_mty1),
    .rx_dataout2                  (rx_data2),
    .rx_chanout2                  (rx_chan2),
    .rx_enaout2                   (rx_ena2),
    .rx_sopout2                   (rx_sop2),
    .rx_eopout2                   (rx_eop2),
    .rx_errout2                   (rx_err2),
    .rx_mtyout2                   (rx_mty2),
    .rx_dataout3                  (rx_data3),
    .rx_chanout3                  (rx_chan3),
    .rx_enaout3                   (rx_ena3),
    .rx_sopout3                   (rx_sop3),
    .rx_eopout3                   (rx_eop3),
    .rx_errout3                   (rx_err3),
    .rx_mtyout3                   (rx_mty3),
    .gt_rx_reset_done_inv         (gt_rx_reset_done_inv), 
    .tx_rdyout                    (tx_rdy),
    .tx_ovfout                    (tx_ovf),
    .tx_datain0                   (tx_data0),
    .tx_chanin0                   (tx_chan0),
    .tx_enain0                    (tx_ena0),
    .tx_sopin0                    (tx_sop0),
    .tx_eopin0                    (tx_eop0),
    .tx_errin0                    (tx_err0),
    .tx_mtyin0                    (tx_mty0),
    .tx_bctlin0                   (tx_bctl0),
    .tx_datain1                   (tx_data1),
    .tx_chanin1                   (tx_chan1),
    .tx_enain1                    (tx_ena1),
    .tx_sopin1                    (tx_sop1),
    .tx_eopin1                    (tx_eop1),
    .tx_errin1                    (tx_err1),
    .tx_mtyin1                    (tx_mty1),
    .tx_bctlin1                   (tx_bctl1),
    .tx_datain2                   (tx_data2),
    .tx_chanin2                   (tx_chan2),
    .tx_enain2                    (tx_ena2),
    .tx_sopin2                    (tx_sop2),
    .tx_eopin2                    (tx_eop2),
    .tx_errin2                    (tx_err2),
    .tx_mtyin2                    (tx_mty2),
    .tx_bctlin2                   (tx_bctl2),
    .tx_datain3                   (tx_data3),
    .tx_chanin3                   (tx_chan3),
    .tx_enain3                    (tx_ena3),
    .tx_sopin3                    (tx_sop3),
    .tx_eopin3                    (tx_eop3),
    .tx_errin3                    (tx_err3),
    .tx_mtyin3                    (tx_mty3),
    .tx_bctlin3                   (tx_bctl3),


    .gt_txusrclk2                 (gt_txusrclk2),
    .gtpowergood_out              (gtpowergood_out),
    .gt_tx_reset_done_inv         (gt_tx_reset_done_inv), 

    .gt_rxusrclk2                 (gt_rxusrclk2),
    .gt_txresetdone_int           (gt_txresetdone_int),
    .gt_rxresetdone_int           (gt_rxresetdone_int),
    .gt_refclk_out                (gt_refclk_out), 
    .core_drp_reset               (1'b0),
    .drp_clk                      (1'b0),
    .drp_en                       (1'b0),
    .drp_we                       (1'b0),
    .drp_addr                     (10'b0),
    .drp_di                       (16'b0),
    .drp_do                       (drp_do),
    .drp_rdy                      (drp_rdy),
    .core_clk                     (core_clk),
    .lbus_clk                     (lbus_clk),
    .core_tx_reset                (1'b0),
    .core_rx_reset                (1'b0),
    .lockedn                      (lockedn),
    .s_axi_aclk                   (init_clk),
    .s_axi_sreset                 (sys_reset),
    .s_axi_pm_tick                (s_axi_pm_tick),
    .s_axi_awaddr                 (s_axi_awaddr),
    .s_axi_awvalid                (s_axi_awvalid),
    .s_axi_awready                (s_axi_awready),
    .s_axi_wdata                  (s_axi_wdata),
    .s_axi_wstrb                  (s_axi_wstrb),
    .s_axi_wvalid                 (s_axi_wvalid),
    .s_axi_wready                 (s_axi_wready),
    .s_axi_bresp                  (s_axi_bresp),
    .s_axi_bvalid                 (s_axi_bvalid),
    .s_axi_bready                 (s_axi_bready),
    .s_axi_araddr                 (s_axi_araddr),
    .s_axi_arvalid                (s_axi_arvalid),
    .s_axi_arready                (s_axi_arready),
    .s_axi_rdata                  (s_axi_rdata),
    .s_axi_rresp                  (s_axi_rresp),
    .s_axi_rvalid                 (s_axi_rvalid),
    .s_axi_rready                 (s_axi_rready),

 
 
    .gt_ref_clk0_p                 (gt_ref_clk0_p),
    .gt_ref_clk0_n                 (gt_ref_clk0_n), 
    .sys_reset                    (sys_reset),
    .init_clk                     (init_clk),
    .usr_tx_reset                 (usr_tx_reset),
    .usr_rx_reset                 (usr_rx_reset),
    .stat_tx_underflow_err        (tx_underflow_err),
    .stat_tx_burst_err            (tx_burst_err),
    .stat_tx_overflow_err         (tx_overflow_err),
    .gtwiz_reset_tx_datapath      (gtwiz_reset_tx_datapath),
    .gtwiz_reset_rx_datapath      (gtwiz_reset_rx_datapath),

    .stat_rx_diagword_lanestat    (diagword_lanestat),
    .stat_rx_diagword_intfstat    (diagword_intfstat),
    .stat_rx_crc32_valid          (crc32_valid),
    .stat_rx_crc32_err            (crc32_err),
    .stat_rx_mubits               (mubits),
    .stat_rx_mubits_updated       (mubits_updated),
    .stat_rx_word_sync            (word_sync),
    .stat_rx_synced               (synced),
    .stat_rx_synced_err           (synced_err),
    .stat_rx_framing_err          (framing_err),
    .stat_rx_bad_type_err         (bad_type_err),
    .stat_rx_mf_err               (mf_err),
    .stat_rx_descram_err          (descram_err),
    .stat_rx_mf_len_err           (mf_len_err),
    .stat_rx_mf_repeat_err        (mf_repeat_err),
    .stat_rx_aligned              (rx_align),
    .stat_rx_misaligned           (misaligned),
    .stat_rx_aligned_err          (aligned_err),
    .stat_rx_crc24_err            (crc24_err),
    .stat_rx_msop_err             (msop_err),
    .stat_rx_meop_err             (meop_err),
    .stat_rx_overflow_err         (overflow_err),
    .stat_rx_burstmax_err         (burstmax_err),
    .stat_rx_burst_err            (burst_err), 
    .gt_loopback_in               (gt_loopback_in)
);


endmodule
