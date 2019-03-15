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
module interlaken_0_wrapper
#(
    ////PHYSICAL LAYER OPTIONS
    parameter   C_NUM_LANES                      =   12,
    parameter   C_LINE_RATE                      =   12.5,
    parameter   C_GT_REF_CLK_FREQ                =   195.3125,
    parameter   C_OPERATING_MODE                 =   "duplex",
    ////LINK-LAYER OPTIONS
    parameter   C_PACKET_MODE                    =   "packet_mode",
    parameter [1:0]  C_BURSTMAX                  =   3,
    parameter [2:0]  C_BURSTSHORT                =   1,
    parameter [15:0] C_MFRAMELEN_MINUS1          =   2047,
    ////IN-BAND FLOW PARAMS
    parameter   C_ENABLE_IN_BAND_FC              =   0,
    parameter  [6:0] C_IN_BAND_FC_CALLEN         =   16,
    ////OUT-BAND FLOW PARAMS
    parameter   C_ENABLE_OUT_BAND_FC             =   0,
    parameter  [6:0] C_OUT_BAND_FC_CALLEN        =   16,
    ////IP ADDITIONAL FEATURES
    parameter   C_EN_RETRANS                     =   0,
    parameter   C_TX_RLIM_ENABLE                 =   0,
    ////GT-SEL OPTIONS
    parameter   GT_COLUMN                        =   "right",

    parameter   [1:0]  C_CHAN_EXT                =   2'b00, ////00-256 channels,01-512 channels,10-1024 channels & 11-2048 channels

    parameter   C_LANE1_GT_LOC                   =   "X0Y0",     
    parameter   C_LANE2_GT_LOC                   =   "X0Y1",     
    parameter   C_LANE3_GT_LOC                   =   "X0Y2",     
    parameter   C_LANE4_GT_LOC                   =   "X0Y3",     
    parameter   C_LANE5_GT_LOC                   =   "X0Y4",     
    parameter   C_LANE6_GT_LOC                   =   "X0Y5",     
    parameter   C_LANE7_GT_LOC                   =   "X0Y6",     
    parameter   C_LANE8_GT_LOC                   =   "X0Y7",   
    parameter   C_LANE9_GT_LOC                   =   "X0Y8",     
    parameter   C_LANE10_GT_LOC                  =   "X0Y9",     
    parameter   C_LANE11_GT_LOC                  =   "X0Y10",     
    parameter   C_LANE12_GT_LOC                  =   "X0Y11",
    parameter   C_GT_TYPE                  	 =   "GTH",  

    parameter   C_INCLUDE_SHARED_LOGIC           =   1,
    parameter   C_ADD_GT_CNRL_STS_PORTS          =   0,
    parameter   C_ENABLE_ERR_INJ                 =   0,
    parameter   C_TX_RLIM_MAX                    =   2048,
    parameter   C_TX_RLIM_DELTA                  =   1024,
    parameter   C_TX_RLIM_INTV                   =   64,
    parameter   C_TX_RETRANS_RAM_BANKS           =   1,
    parameter   C_TX_RETRANS_DEPTH               =   2048,
    parameter   C_TX_RETRANS_MULT                =   1,
    parameter   C_RX_RETRANS_MULT                =   1,
    parameter   C_RX_RETRANS_TIMER1              =   2048,
    parameter   C_RX_RETRANS_TIMER2              =   3000,
    parameter   C_RX_RETRANS_RETRY               =   2,
    parameter   C_RX_RETRANS_WDOG                =   0,
    parameter   C_RX_RETRANS_WRAP_TIMER          =   0,

    parameter   C_ENABLE_PIPELINE_REG            =   0,
    parameter   C_CLOCKING_MODE                  =   "Synchronous",
    parameter   C_RX_EQ_MODE                     =   "Auto",
    parameter   C_INS_LOSS_NYQ                   =   20

)
(
    input             gt0_rxp_in,
    input             gt0_rxn_in,
    input             gt1_rxp_in,
    input             gt1_rxn_in,
    input             gt2_rxp_in,
    input             gt2_rxn_in,
    input             gt3_rxp_in,
    input             gt3_rxn_in,
    input             gt4_rxp_in,
    input             gt4_rxn_in,
    input             gt5_rxp_in,
    input             gt5_rxn_in,
    input             gt6_rxp_in,
    input             gt6_rxn_in,
    input             gt7_rxp_in,
    input             gt7_rxn_in,
    input             gt8_rxp_in,
    input             gt8_rxn_in,
    input             gt9_rxp_in,
    input             gt9_rxn_in,
    input             gt10_rxp_in,
    input             gt10_rxn_in,
    input             gt11_rxp_in,
    input             gt11_rxn_in,

    output            gt0_txn_out,
    output            gt0_txp_out,
    output            gt1_txn_out,
    output            gt1_txp_out,
    output            gt2_txn_out,
    output            gt2_txp_out,
    output            gt3_txn_out,
    output            gt3_txp_out,
    output            gt4_txn_out,
    output            gt4_txp_out,
    output            gt5_txn_out,
    output            gt5_txp_out,
    output            gt6_txn_out,
    output            gt6_txp_out,
    output            gt7_txn_out,
    output            gt7_txp_out,
    output            gt8_txn_out,
    output            gt8_txp_out,
    output            gt9_txn_out,
    output            gt9_txp_out,
    output            gt10_txn_out,
    output            gt10_txp_out,
    output            gt11_txn_out,
    output            gt11_txp_out,
  
    output            rx_ovfout,
    output  [127:0]   rx_dataout0,
    output  [10:0]    rx_chanout0,
    output            rx_enaout0,
    output            rx_sopout0,
    output            rx_eopout0,
    output            rx_errout0,
    output  [3:0]     rx_mtyout0,
    output  [127:0]   rx_dataout1,
    output  [10:0]    rx_chanout1,
    output            rx_enaout1,
    output            rx_sopout1,
    output            rx_eopout1,
    output            rx_errout1,
    output  [3:0]     rx_mtyout1,
    output  [127:0]   rx_dataout2,
    output  [10:0]    rx_chanout2,
    output            rx_enaout2,
    output            rx_sopout2,
    output            rx_eopout2,
    output            rx_errout2,
    output  [3:0]     rx_mtyout2,
    output  [127:0]   rx_dataout3,
    output  [10:0]    rx_chanout3,
    output            rx_enaout3,
    output            rx_sopout3,
    output            rx_eopout3,
    output            rx_errout3,
    output  [3:0]     rx_mtyout3,

    output            tx_rdyout,
    output            tx_ovfout,
    input  [127:0]    tx_datain0,
    input  [10:0]     tx_chanin0,
    input             tx_enain0,
    input             tx_sopin0,
    input             tx_eopin0,
    input             tx_errin0,
    input  [3:0]      tx_mtyin0,
    input             tx_bctlin0,
    input  [127:0]    tx_datain1,
    input  [10:0]     tx_chanin1,
    input             tx_enain1,
    input             tx_sopin1,
    input             tx_eopin1,
    input             tx_errin1,
    input  [3:0]      tx_mtyin1,
    input             tx_bctlin1,
    input  [127:0]    tx_datain2,
    input  [10:0]     tx_chanin2,
    input             tx_enain2,
    input             tx_sopin2,
    input             tx_eopin2,
    input             tx_errin2,
    input  [3:0]      tx_mtyin2,
    input             tx_bctlin2,
    input  [127:0]    tx_datain3,
    input  [10:0]     tx_chanin3,
    input             tx_enain3,
    input             tx_sopin3,
    input             tx_eopin3,
    input             tx_errin3,
    input  [3:0]      tx_mtyin3,
    input             tx_bctlin3,

    input             core_drp_reset,
    input             drp_clk,
    input             drp_en,
    input             drp_we,
    input  [9:0]      drp_addr,
    input  [15:0]     drp_di,
    output  [15:0]    drp_do,
    output            drp_rdy,
    input             core_clk,
    input             lbus_clk,
    input             lockedn,
    input             core_tx_reset,
    input             core_rx_reset,
    input             ctl_tx_errinj_biterr_go,
    input  [3:0]      ctl_tx_errinj_biterr_lane,
    input             ctl_tx_rlim_enable,
    input  [11:0]     ctl_tx_rlim_max,
    input  [11:0]     ctl_tx_rlim_delta,
    input  [7:0]      ctl_tx_rlim_intv,
    input             ctl_tx_enable,
    input  [7:0]      ctl_tx_mubits,
    input  [11:0]     ctl_tx_diagword_lanestat,
    input             ctl_tx_diagword_intfstat,
    input             ctl_rx_force_resync,
    input  [255:0]    ctl_tx_fc_stat,
    output            stat_tx_underflow_err,
    output            stat_tx_burst_err,
    output            stat_tx_overflow_err,
    input             ctl_tx_retrans_enable,
    output            stat_tx_retrans_burst_err,
    //output          stat_tx_retrans_ovf,
    input             ctl_tx_retrans_req,
    input             ctl_tx_retrans_req_valid,
    output            stat_tx_retrans_busy,
    output            stat_tx_errinj_biterr_done,
    output  [11:0]    stat_rx_diagword_lanestat,
    output  [11:0]    stat_rx_diagword_intfstat,
    output  [11:0]    stat_rx_crc32_valid,
    output  [11:0]    stat_rx_crc32_err,
    output  [255:0]   stat_rx_fc_stat,
    output  [7:0]     stat_rx_mubits,
    output            stat_rx_mubits_updated,
    output  [11:0]    stat_rx_word_sync,
    output  [11:0]    stat_rx_synced,
    output  [11:0]    stat_rx_synced_err,
    output  [11:0]    stat_rx_framing_err,
    output  [11:0]    stat_rx_bad_type_err,
    output  [11:0]    stat_rx_mf_err,
    output  [11:0]    stat_rx_descram_err,
    output  [11:0]    stat_rx_mf_len_err,
    output  [11:0]    stat_rx_mf_repeat_err,
    output            stat_rx_aligned,
    output            stat_rx_misaligned,
    output            stat_rx_aligned_err,
    output            stat_rx_crc24_err,
    output            stat_rx_msop_err,
    output            stat_rx_meop_err,
    output            stat_rx_overflow_err,
    output            stat_rx_burstmax_err,

    input             ctl_rx_retrans_ack,
    input             ctl_rx_retrans_enable,
    input             ctl_rx_retrans_errin,
    input             ctl_rx_retrans_force_req,
    input             ctl_rx_retrans_reset,
    input             ctl_rx_retrans_reset_mode,
    output            stat_rx_retrans_crc24_err,
    output            stat_rx_retrans_disc,
    output [15:0]     stat_rx_retrans_latency,
    output            stat_rx_retrans_req,
    output            stat_rx_retrans_retry_err,
    output [7:0]      stat_rx_retrans_seq,
    output            stat_rx_retrans_seq_updated,
    output [2:0]      stat_rx_retrans_state,
    output [4:0]      stat_rx_retrans_subseq,
    output            stat_rx_retrans_wdog_err,
    output            stat_rx_retrans_wrap_err,

    output [8:0]      stat_tx_retrans_ram_raddr,
    //output          tx_retrans_ram_rd,
    output [8:0]      stat_tx_retrans_ram_waddr,
    output [643:0]    stat_tx_retrans_ram_wdata,
    //output          tx_retrans_ram_we,
    input             ctl_tx_retrans_ram_perrin,
    input [643:0]     ctl_tx_retrans_ram_rdata,
  
    output 	      stat_tx_retrans_ram_perrout,
    output [1:0]      stat_tx_retrans_ram_rsel,
    output 	      stat_tx_retrans_ram_rd_b0,
    output 	      stat_tx_retrans_ram_rd_b1,
    output 	      stat_tx_retrans_ram_rd_b2,
    output 	      stat_tx_retrans_ram_rd_b3,
    output 	      stat_tx_retrans_ram_we_b0,
    output 	      stat_tx_retrans_ram_we_b1,
    output 	      stat_tx_retrans_ram_we_b2,
    output 	      stat_tx_retrans_ram_we_b3,
    input [11:0]      tx_bypass_ctrlin,
    input [63:0]      tx_bypass_datain00,
    input [63:0]      tx_bypass_datain01,
    input [63:0]      tx_bypass_datain02,
    input [63:0]      tx_bypass_datain03,
    input [63:0]      tx_bypass_datain04,
    input [63:0]      tx_bypass_datain05,
    input [63:0]      tx_bypass_datain06,
    input [63:0]      tx_bypass_datain07,
    input [63:0]      tx_bypass_datain08,
    input [63:0]      tx_bypass_datain09,
    input [63:0]      tx_bypass_datain10,
    input [63:0]      tx_bypass_datain11,
    input             tx_bypass_enain,
    input [7:0]       tx_bypass_gearbox_seqin,
    input [3:0]       tx_bypass_mframer_statein,
    input             rx_bypass_force_realignin,
    input             rx_bypass_rdin,
    output [65:0]     rx_bypass_dataout00,
    output [65:0]     rx_bypass_dataout01,
    output [65:0]     rx_bypass_dataout02,
    output [65:0]     rx_bypass_dataout03,
    output [65:0]     rx_bypass_dataout04,
    output [65:0]     rx_bypass_dataout05,
    output [65:0]     rx_bypass_dataout06,
    output [65:0]     rx_bypass_dataout07,
    output [65:0]     rx_bypass_dataout08,
    output [65:0]     rx_bypass_dataout09,
    output [65:0]     rx_bypass_dataout10,
    output [65:0]     rx_bypass_dataout11,
    output [11:0]     rx_bypass_enaout,
    output [11:0]     rx_bypass_is_availout,
    output [11:0]     rx_bypass_is_badlyframedout,
    output [11:0]     rx_bypass_is_overflowout,
    output [11:0]     rx_bypass_is_syncedout,
    output [11:0]     rx_bypass_is_syncwordout,


    input  [2 :0]    gt_loopback_in,

////  Ports present when shared logic is implemented outside core
    input      [0 :0]  qpll0clk_in,
    input      [0 :0]  qpll0refclk_in,
    input      [0 :0]  qpll1clk_in,
    input      [0 :0]  qpll1refclk_in,
    input      [0 :0]   gtwiz_reset_qpll0lock_in,  
    output     [0 :0]   gtwiz_reset_qpll0reset_out,
    input      [0 :0]   gtwiz_reset_qpll1lock_in,  
    output     [0 :0]   gtwiz_reset_qpll1reset_out,


////GT Transceiver debug interface ports
    input  [0 :0] gt_eyescanreset,
    input  [0 :0] gt_eyescantrigger,
    input  [0 :0] gt_rxcdrhold,
    input  [0 :0] gt_rxpolarity,
    input  [2 :0] gt_rxrate,
    input  [4 :0] gt_txdiffctrl,
    input  [0 :0] gt_txpolarity,
    input  [4 :0] gt_txpostcursor,
    input  [0 :0] gt_txprbsforceerr,
    input  [4 :0] gt_txprecursor,
    output [0 :0] gt_eyescandataerror,
    output [1 :0] gt_txbufstatus,
    input  [0 :0]  gt_rxdfelpmreset,
    input  [0 :0]  gt_rxlpmen,
    input  [0 :0]  gt_rxprbscntreset,
    output [0 :0]  gt_rxprbserr,
    input  [3 :0]  gt_rxprbssel,
    output [0 :0]  gt_rxresetdone,
    input  [3 :0]  gt_txprbssel,
    output [0 :0]  gt_txresetdone,
    output [2 :0]  gt_rxbufstatus,
    input             gt_drpclk,
    input             gt_drp_done,
    input             gtwiz_reset_tx_datapath_in,
    input             gtwiz_reset_rx_datapath_in,
//    input             gtwiz_reset_tx_pll_and_datapath_in_temp,
//    input             gtwiz_reset_rx_pll_and_datapath_in_temp,
    input  [9:0]      gt0_drpaddr,
    input             gt0_drpen, 
    input  [15:0]     gt0_drpdi,  
    output [15:0]     gt0_drpdo,  
    output            gt0_drprdy, 
    input             gt0_drpwe,  
    input             sys_reset,
    output            gt_txusrclk2,
    output            gt_tx_reset_done_inv,
    output            gt_rx_reset_done_inv,
    output            gt_rxusrclk2,
    output            usr_tx_reset,
    output            usr_rx_reset,
    input wire        gt_ref_clk0_p,
    input wire        gt_ref_clk0_n,
    output wire       gt_refclk_out,
    output wire [0 :0] gtpowergood_out,
    input             init_clk,
    output            stat_rx_burst_err

);

wire [0 : 0] gtwiz_reset_tx_pll_and_datapath_in;
wire [0 : 0] gtwiz_reset_rx_pll_and_datapath_in;
//assign gtwiz_reset_tx_pll_and_datapath_in 	= gtwiz_reset_tx_pll_and_datapath_in_temp;
//assign gtwiz_reset_rx_pll_and_datapath_in 	= gtwiz_reset_rx_pll_and_datapath_in_temp;
assign gtwiz_reset_tx_pll_and_datapath_in 	= 1'b0;
assign gtwiz_reset_rx_pll_and_datapath_in 	= 1'b0;
wire [0 : 0] gtwiz_reset_rx_data_good_in;
assign gtwiz_reset_rx_data_good_in 		= 1'b1;


  wire    [63:0] gt_0_txdata;
  wire    [63:0] gt_1_txdata;
  wire    [63:0] gt_2_txdata;
  wire    [63:0] gt_3_txdata;
  wire    [63:0] gt_4_txdata;
  wire    [63:0] gt_5_txdata;
  wire    [63:0] gt_6_txdata;
  wire    [63:0] gt_7_txdata;
  wire    [63:0] gt_8_txdata;
  wire    [63:0] gt_9_txdata;
  wire    [63:0] gt_10_txdata;
  wire    [63:0] gt_11_txdata;
  wire    [63:0] gt_0_rxdata;
  wire    [63:0] gt_1_rxdata;
  wire    [63:0] gt_2_rxdata;
  wire    [63:0] gt_3_rxdata;
  wire    [63:0] gt_4_rxdata;
  wire    [63:0] gt_5_rxdata;
  wire    [63:0] gt_6_rxdata;
  wire    [63:0] gt_7_rxdata;
  wire    [63:0] gt_8_rxdata;
  wire    [63:0] gt_9_rxdata;
  wire    [63:0] gt_10_rxdata;
  wire    [63:0] gt_11_rxdata;
  wire    [63:0] gt_0_rxdata_int_signal;
  wire    [63:0] gt_1_rxdata_int_signal;
  wire    [63:0] gt_2_rxdata_int_signal;
  wire    [63:0] gt_3_rxdata_int_signal;
  wire    [63:0] gt_4_rxdata_int_signal;
  wire    [63:0] gt_5_rxdata_int_signal;
  wire    [63:0] gt_6_rxdata_int_signal;
  wire    [63:0] gt_7_rxdata_int_signal;
  wire    [63:0] gt_8_rxdata_int_signal;
  wire    [63:0] gt_9_rxdata_int_signal;
  wire    [63:0] gt_10_rxdata_int_signal;
  wire    [63:0] gt_11_rxdata_int_signal;
  wire    [63:0] gt_0_txdata_int_signal;
  wire    [63:0] gt_1_txdata_int_signal;
  wire    [63:0] gt_2_txdata_int_signal;
  wire    [63:0] gt_3_txdata_int_signal;
  wire    [63:0] gt_4_txdata_int_signal;
  wire    [63:0] gt_5_txdata_int_signal;
  wire    [63:0] gt_6_txdata_int_signal;
  wire    [63:0] gt_7_txdata_int_signal;
  wire    [63:0] gt_8_txdata_int_signal;
  wire    [63:0] gt_9_txdata_int_signal;
  wire    [63:0] gt_10_txdata_int_signal;
  wire    [63:0] gt_11_txdata_int_signal;
  wire           gt_txusrclk;
  wire           gt_txoutclk;
  wire           gt_rxoutclk;
  wire           gt_rxusrclk;
  wire           reset_done_inv;
  wire           gt_txresetdone_int;
  wire           tx_reset_done;
  wire           tx_reset_async;
  reg            tx_reset_sync;
  wire           tx_serdes_refclk;
  wire           tx_serdes_refclk_reset;
  wire           tx_reset_in;

  wire           gt_rxresetdone_int;
  wire           rx_reset_done;
  wire           rx_reset_async;
  reg            rx_reset_sync;
  wire           rx_reset_in;
  wire    [11:0] rx_serdes_reset;
  wire    [11:0] rx_serdes_clk;
  wire [0 :0] txpmaresetdone_out;
  wire [0 :0] gthrxn_int;
  (* shreg_extract = "no" *) reg  [63 :0] txdata;
  (* shreg_extract = "no" *) reg  [63 :0] rxdata_int_1d;
  (* shreg_extract = "no" *) reg  [63 :0] txdata_int_1d;
  (* shreg_extract = "no" *) reg  [63 :0] rxdata_int_2d;
 wire [63 :0] rxdata_int;
 wire [63 :0] txdata_int;

 (* ASYNC_REG = "TRUE" *) reg [11:0]  ctl_tx_diagword_lanestat_1d;
 (* ASYNC_REG = "TRUE" *) reg [11:0]  ctl_tx_diagword_lanestat_2d;
 (* ASYNC_REG = "TRUE" *) reg [11:0]  ctl_tx_diagword_lanestat_3d;
 wire  usr_rx_reset_sync;
 wire  usr_tx_reset_sync;





  assign gthrxn_int[0:0] = gt0_rxn_in;

  wire [0 :0] gthrxp_int;
  assign gthrxp_int[0:0] = gt0_rxp_in;

  ////--------------------------------------------------------------------------------------------------------------------
  wire [0 :0] gthtxn_int;
  assign gt0_txn_out = gthtxn_int[0:0];

  ////--------------------------------------------------------------------------------------------------------------------
  wire [0 :0] gthtxp_int;
  assign gt0_txp_out = gthtxp_int[0:0];


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  assign gtwiz_reset_qpll0reset_out[0] = 1'b0;
  assign gtwiz_reset_qpll1reset_out[0] = 1'b0;



  wire [0 :0]      gtrefclk00_int;
  wire gt_refclk_copy;
  wire gt_ref_clk0;
 IBUFDS_GTE4 IBUFDS_GTE4_GTREFCLK0_INST (
    .I     (gt_ref_clk0_p),
    .IB    (gt_ref_clk0_n),
    .CEB   (1'b0),
    .O     (gt_ref_clk0),
    .ODIV2 (gt_refclk_copy)
  );

wire power_good;
assign power_good = & gtpowergood_out;
     BUFG_GT refclk_bufg_gt_i
  (
      .I       (gt_refclk_copy),
      .CE      (1'b1),
      .CEMASK  (1'b1),
      .CLR     (1'b0),
      .CLRMASK (1'b1),
      .DIV     (3'b000),
      .O       (gt_refclk_out)
  ); 
  assign gtrefclk00_int[0] = gt_ref_clk0;
  wire [0:0] gtwiz_userclk_tx_srcclk_int;
  wire [0:0] gtwiz_userclk_tx_usrclk_int;
  wire [0:0] gtwiz_userclk_tx_usrclk2_int;
  wire [0:0] gtwiz_userclk_rx_srcclk_int;
  wire [0:0] gtwiz_userclk_rx_usrclk_int;
  wire [0:0] gtwiz_userclk_rx_usrclk2_int;
  wire [0:0] gtwiz_reset_tx_done_int;
  wire [0:0] gtwiz_reset_rx_done_int;

assign reset_done_inv= lockedn | core_drp_reset;

assign tx_serdes_refclk  = gt_txusrclk2;
assign tx_reset_done     = gt_tx_reset_done_inv | core_drp_reset;
assign tx_reset_async    = reset_done_inv | core_tx_reset | gt_tx_reset_done_inv;

assign rx_reset_done     = gt_rx_reset_done_inv | core_drp_reset;
assign rx_reset_async    = reset_done_inv | core_rx_reset | gt_rx_reset_done_inv;

assign gt_tx_reset_done_inv =  ~(gt_txresetdone_int);
assign gt_rx_reset_done_inv =  ~(gt_rxresetdone_int);

assign tx_serdes_refclk_reset =  tx_reset_done;

assign rx_serdes_reset[0]     =  rx_reset_done;
assign rx_serdes_reset[1]     =  1'b1;
assign rx_serdes_reset[2]     =  1'b1;
assign rx_serdes_reset[3]     =  1'b1;
assign rx_serdes_reset[4]     =  1'b1;
assign rx_serdes_reset[5]     =  1'b1;
assign rx_serdes_reset[6]     =  1'b1;
assign rx_serdes_reset[7]     =  1'b1;
assign rx_serdes_reset[8]     =  1'b1;
assign rx_serdes_reset[9]     =  1'b1;
assign rx_serdes_reset[10]    =  1'b1;
assign rx_serdes_reset[11]    =  1'b1;

assign rx_serdes_clk[0]       = gt_rxusrclk2;
assign rx_serdes_clk[1]       = 1'b0;
assign rx_serdes_clk[2]       = 1'b0;
assign rx_serdes_clk[3]       = 1'b0;
assign rx_serdes_clk[4]       = 1'b0;
assign rx_serdes_clk[5]       = 1'b0;
assign rx_serdes_clk[6]       = 1'b0;
assign rx_serdes_clk[7]       = 1'b0;
assign rx_serdes_clk[8]       = 1'b0;
assign rx_serdes_clk[9]       = 1'b0;
assign rx_serdes_clk[10]      = 1'b0;
assign rx_serdes_clk[11]      = 1'b0;

assign txdata_int[63:0]     	= gt_0_txdata_int_signal[63:0]; 













assign  gt_0_rxdata_int_signal[63:0]  = rxdata_int_2d[63:0];
assign  gt_1_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_2_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_3_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_4_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_5_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_6_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_7_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_8_rxdata_int_signal[63:0]  = 64'd0; 
assign  gt_9_rxdata_int_signal[63:0]  = 64'd0; 
assign gt_10_rxdata_int_signal[63:0] = 64'd0; 
assign gt_11_rxdata_int_signal[63:0] = 64'd0; 



always @(posedge gt_txusrclk2)
  begin  
    txdata_int_1d     <=  txdata_int;
    txdata            <=  txdata_int_1d;
  end

always @(posedge rx_serdes_clk[0])
  begin
    rxdata_int_1d     <=  rxdata_int;
    rxdata_int_2d     <=  rxdata_int_1d;
  end

assign gt_txoutclk  = gtwiz_userclk_tx_srcclk_int[0];
assign gt_txusrclk  = gtwiz_userclk_tx_usrclk_int[0];
assign gt_txusrclk2 = gtwiz_userclk_tx_usrclk2_int[0];

assign gt_rxoutclk  = gtwiz_userclk_rx_srcclk_int[0];
assign gt_rxusrclk  = gtwiz_userclk_rx_usrclk_int[0];
assign gt_rxusrclk2 = gtwiz_userclk_rx_usrclk2_int[0];

assign gt_txresetdone_int = gtwiz_reset_tx_done_int[0]; 
assign gt_rxresetdone_int = gtwiz_reset_rx_done_int[0]; 



always @(posedge gt_txusrclk2)
  begin
    tx_reset_sync     <=  tx_reset_async;
  end
interlaken_0_cdc_sync i_ilkn_cdc_user_tx_reset_inst
(
 .clk         (lbus_clk),
 .signal_in   (tx_reset_sync), 
 .signal_out  (usr_tx_reset_sync)
);

assign usr_tx_reset = usr_tx_reset_sync; 


always @(posedge gt_rxusrclk2)
  begin
    rx_reset_sync     <=  rx_reset_async;
  end

interlaken_0_cdc_sync i_ilkn_cdc_user_rx_reset_inst
(
 .clk         (lbus_clk),
 .signal_in   (rx_reset_sync), 
 .signal_out  (usr_rx_reset_sync)
);

assign usr_rx_reset = usr_rx_reset_sync; 



wire [0 : 0] gtwiz_userclk_tx_reset_in;
wire [0 : 0] gtwiz_userclk_tx_srcclk_out;
wire [0 : 0] gtwiz_userclk_tx_usrclk_out;
wire [0 : 0] gtwiz_userclk_tx_usrclk2_out;
wire [0 : 0] gtwiz_userclk_rx_reset_in;
wire [0 : 0] gtwiz_userclk_rx_srcclk_out;
wire [0 : 0] gtwiz_userclk_rx_usrclk_out;
wire [0 : 0] gtwiz_userclk_rx_usrclk2_out;
wire [0 : 0] gtwiz_reset_clk_freerun_in;
wire [0 : 0] gtwiz_reset_all_in;
wire [0 : 0] gtwiz_reset_rx_cdr_stable_out;
wire [0 : 0] gtwiz_reset_tx_done_out;
wire [0 : 0] gtwiz_reset_rx_done_out;


wire [0 :0] gtrefclk00_in;
wire [0 :0] qpll0outclk_out;
wire [0 :0] qpll0outrefclk_out;
wire [2 :0] loopback_in;
wire [63 :0] gtwiz_userdata_tx_in;
wire [63 :0] gtwiz_userdata_rx_out;
wire [0 :0] rxpmaresetdone_out;
wire [0 :0] txprgdivresetdone_out;
wire [0 :0] gtyrxn_in;
wire [0 :0] gtyrxp_in;
wire [0 :0] gtytxn_out;
wire [0 :0] gtytxp_out;


////assign inputs to GT
assign gtwiz_userclk_tx_reset_in 		= 1'b0;
assign gtwiz_userclk_rx_reset_in 		= 1'b0;
assign gtwiz_reset_clk_freerun_in[0] 		= init_clk;
assign gtwiz_reset_all_in[0] 			= sys_reset;
assign gtrefclk00_in 				= gtrefclk00_int;
assign loopback_in 				= gt_loopback_in;
assign gtwiz_userdata_tx_in                     = txdata;

////outputs from GT
assign gtwiz_userclk_tx_srcclk_int 		= gtwiz_userclk_tx_srcclk_out;
assign gtwiz_userclk_tx_usrclk_int 		= gtwiz_userclk_tx_usrclk_out;
assign gtwiz_userclk_tx_usrclk2_int 		= gtwiz_userclk_tx_usrclk2_out;
assign gtwiz_userclk_rx_srcclk_int 		= gtwiz_userclk_rx_srcclk_out;
assign gtwiz_userclk_rx_usrclk_int 		= gtwiz_userclk_rx_usrclk_out;
assign gtwiz_userclk_rx_usrclk2_int 		= gtwiz_userclk_rx_usrclk2_out;
assign gtwiz_reset_tx_done_int 			= gtwiz_reset_tx_done_out;
assign gtwiz_reset_rx_done_int 			= gtwiz_reset_rx_done_out;
assign rxdata_int 				= gtwiz_userdata_rx_out;
assign gtyrxn_in 				= gthrxn_int;
assign gtyrxp_in 				= gthrxp_int;
assign gthtxn_int 				= gtytxn_out;
assign gthtxp_int 				= gtytxp_out;

  //// ===================================================================================================================
  //// TX/RX USER CLOCKING Helper block integration
  //// ===================================================================================================================
wire [0 : 0] interlaken_gtwiz_userclk_tx_reset_in; 
wire [0 : 0] interlaken_gtwiz_userclk_tx_active_out;

wire [0 : 0] interlaken_gtwiz_userclk_rx_active_out;

wire [0 :0] txoutclk_out;
wire [0 :0] rxoutclk_out;
  //// ===================================================================================================================
  //// USER CLOCKING RESETS
  //// ===================================================================================================================

  //// The TX user clocking helper block should be held in reset until the clock source of that block is known to be
  //// stable. The following assignment is an example of how that stability can be determined, based on the selected TX
  //// user clock source. Replace the assignment with the appropriate signal or logic to achieve that behavior as needed.

  
assign interlaken_gtwiz_userclk_tx_reset_in = ~((&txprgdivresetdone_out) && (&txpmaresetdone_out));


  //// ===================================================================================================================
  //// USER CLOCKING Source clocks
  //// ===================================================================================================================
  //// Generate a single module instance which is driven by a clock source associated with the master transmitter channel,
  //// and which drives TXUSRCLK and TXUSRCLK2 for all channels

  //// The source clock is TXOUTCLK from the master transmitter channel

  
assign gtwiz_userclk_tx_srcclk_out = txoutclk_out[0];


  //// Generate a single module instance which is driven by a clock source associated with the master receiver channel,
  //// and which drives RXUSRCLK and RXUSRCLK2 for all channels

  //// The source clock is RXOUTCLK from the master receiver channel

  

assign gtwiz_userclk_rx_srcclk_out = txoutclk_out[0];




  //// Instantiate a single instance of the transmitter user clocking network helper block

  interlaken_0_ultrascale_tx_userclk #( 
    .P_CONTENTS (0),
    .P_FREQ_RATIO_SOURCE_TO_USRCLK (1),
    .P_FREQ_RATIO_USRCLK_TO_USRCLK2 (1) 
)i_interlaken_gtwiz_userclk_tx_inst (
    .gtwiz_userclk_tx_srcclk_in   (gtwiz_userclk_tx_srcclk_out),
    .gtwiz_userclk_tx_reset_in    (interlaken_gtwiz_userclk_tx_reset_in),
    .gtwiz_userclk_tx_usrclk_out  (gtwiz_userclk_tx_usrclk_out),
    .gtwiz_userclk_tx_usrclk2_out (gtwiz_userclk_tx_usrclk2_out),
    .gtwiz_userclk_tx_active_out  (interlaken_gtwiz_userclk_tx_active_out)
  );
  // Instantiate a single instance of the receiver user clocking network helper block
  interlaken_0_ultrascale_rx_userclk #( 
    .P_CONTENTS (0),
    .P_FREQ_RATIO_SOURCE_TO_USRCLK (1),
    .P_FREQ_RATIO_USRCLK_TO_USRCLK2 (1) 
)i_interlaken_gtwiz_userclk_rx_inst (
    .gtwiz_userclk_rx_srcclk_in   (gtwiz_userclk_rx_srcclk_out),
    .gtwiz_userclk_rx_reset_in    (interlaken_gtwiz_userclk_tx_reset_in), 

    .gtwiz_userclk_rx_usrclk_out  (gtwiz_userclk_rx_usrclk_out),
    .gtwiz_userclk_rx_usrclk2_out (gtwiz_userclk_rx_usrclk2_out),
    .gtwiz_userclk_rx_active_out  (interlaken_gtwiz_userclk_rx_active_out)
  );

	wire [0 : 0] gtwiz_userclk_tx_active_in;
	wire [0 : 0] gtwiz_userclk_rx_active_in;

	wire [0 :0] txusrclk_in;
	wire [0 :0] txusrclk2_in;
	wire [0 :0] rxusrclk_in;
	wire [0 :0] rxusrclk2_in;

assign gtwiz_userclk_tx_active_in 		= interlaken_gtwiz_userclk_tx_active_out;		
assign gtwiz_userclk_rx_active_in 		= interlaken_gtwiz_userclk_rx_active_out;		

  //// Drive TXUSRCLK and TXUSRCLK2 for all channels with the respective helper block outputs



  assign txusrclk_in  = {1{gtwiz_userclk_tx_usrclk_out}};
  assign txusrclk2_in = {1{gtwiz_userclk_tx_usrclk2_out}};


  //// Drive RXUSRCLK and RXUSRCLK2 for all channels with the respective helper block outputs


  assign rxusrclk_in  = {1{gtwiz_userclk_rx_usrclk_out}};
  assign rxusrclk2_in = {1{gtwiz_userclk_rx_usrclk2_out}};

assign gt_eyescandataerror 			= 1'b0 ;
assign gt_txbufstatus 			= 2'b0 ;
assign gt_rxprbserr        = 1'b0 ;
assign gt_rxresetdone      = 1'b0 ;
assign gt_txresetdone      = 1'b0 ;

assign gt_rxbufstatus      = 3'b0 ;


assign   gt0_drpdo = 16'b0;

assign   gt0_drprdy = 1'b0;

  interlaken_0_gt interlaken_0_gt_i
  (
   .gtpowergood_out(gtpowergood_out),
   .gtrefclk00_in(gtrefclk00_in),
   .gtwiz_reset_all_in(gtwiz_reset_all_in),
   .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
   .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
   .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
   .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
   .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
   .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
   .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
   .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
   .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
   .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
   .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
   .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
   .gtyrxn_in(gtyrxn_in),
   .gtyrxp_in(gtyrxp_in),
   .gtytxn_out(gtytxn_out),
   .gtytxp_out(gtytxp_out),
   .loopback_in(loopback_in),
   .qpll0outclk_out(qpll0outclk_out),
   .qpll0outrefclk_out(qpll0outrefclk_out),
   .rxoutclk_out(rxoutclk_out),
   .rxpmaresetdone_out(rxpmaresetdone_out),
   .rxusrclk2_in(rxusrclk2_in),
   .rxusrclk_in(rxusrclk_in),
   .txoutclk_out(txoutclk_out),
   .txpmaresetdone_out(txpmaresetdone_out),
   .txprgdivresetdone_out(txprgdivresetdone_out),
   .txusrclk2_in(txusrclk2_in),
   .txusrclk_in(txusrclk_in)
  );



always @(posedge tx_serdes_refclk)
begin
  if(tx_serdes_refclk_reset == 1)
  begin
    ctl_tx_diagword_lanestat_1d     <=  0;
    ctl_tx_diagword_lanestat_2d     <=  0;
    ctl_tx_diagword_lanestat_3d     <=  0;
  end
  else
  begin  
    ctl_tx_diagword_lanestat_1d     <=  ctl_tx_diagword_lanestat;
    ctl_tx_diagword_lanestat_2d     <=  ctl_tx_diagword_lanestat_1d;
    ctl_tx_diagword_lanestat_3d     <=  ctl_tx_diagword_lanestat_2d;
  end
end







interlaken_0_endianness_swapper i_endianness_swapper_rxdata_0_inst
(
 .forward  (gt_0_rxdata_int_signal),
 .reverse  (gt_0_rxdata)
);

  assign gt_1_rxdata = 64'd0;

  assign gt_2_rxdata = 64'd0;


  assign gt_3_rxdata = 64'd0;

  assign gt_4_rxdata = 64'd0;

  assign gt_5_rxdata = 64'd0;

  assign gt_6_rxdata = 64'd0;

  assign gt_7_rxdata = 64'd0;

  assign gt_8_rxdata = 64'd0;

  assign gt_9_rxdata = 64'd0;

  assign gt_10_rxdata = 64'd0;

  assign gt_11_rxdata = 64'd0;


interlaken_0_endianness_swapper i_endianness_swapper_txdata_0_inst
(
 .forward  (gt_0_txdata),
 .reverse  (gt_0_txdata_int_signal)
);


  assign gt_1_txdata_int_signal = 64'd0;


  assign gt_2_txdata_int_signal = 64'd0;

  assign gt_3_txdata_int_signal = 64'd0;

  assign gt_4_txdata_int_signal = 64'd0;

  assign gt_5_txdata_int_signal = 64'd0;

  assign gt_6_txdata_int_signal = 64'd0;

  assign gt_7_txdata_int_signal = 64'd0;

  assign gt_8_txdata_int_signal = 64'd0;

  assign gt_9_txdata_int_signal = 64'd0;

  assign gt_10_txdata_int_signal = 64'd0;

  assign gt_11_txdata_int_signal = 64'd0;

interlaken_v2_4_0_top4 
#(
.BYPASS                         ("FALSE"),
.CTL_RX_BURSTMAX                (3),
.CTL_RX_CHAN_EXT                (0),
.CTL_RX_LAST_LANE               (0 ),
`ifdef SIM_SPEED_UP
.CTL_RX_MFRAMELEN_MINUS1        (256),
`else
.CTL_RX_MFRAMELEN_MINUS1        (2027 ),
`endif
.CTL_RX_PACKET_MODE             ("TRUE"),
 
.CTL_RX_RETRANS_MULT            (3'h0),
.CTL_RX_RETRANS_RETRY           (2),
.CTL_RX_RETRANS_TIMER1          (2048),
.CTL_RX_RETRANS_TIMER2          (0),
.CTL_RX_RETRANS_WDOG            (0),
.CTL_RX_RETRANS_WRAP_TIMER      (0),
.CTL_TX_BURSTMAX                (3),
.CTL_TX_BURSTSHORT              (1),  
.CTL_TX_DISABLE_SKIPWORD        ("TRUE"),
.CTL_TX_FC_CALLEN               (15),
.CTL_TX_LAST_LANE               (0 ),
`ifdef SIM_SPEED_UP
.CTL_TX_MFRAMELEN_MINUS1        (256),
`else
.CTL_TX_MFRAMELEN_MINUS1        (2027 ),
`endif
.CTL_TX_RETRANS_DEPTH           (2048 ),
.CTL_TX_RETRANS_MULT            (3'h0),
.CTL_TX_RETRANS_RAM_BANKS       (2'h3),
.MODE                           ("TRUE"),
.CTL_TX_CHAN_EXT                (0)
) i_ilkn_top_inst (
    .core_clk                     (core_clk),
    .lbus_clk                     (lbus_clk),
    .rx_serdes_clk                (rx_serdes_clk),
    .tx_serdes_refclk             (tx_serdes_refclk),
    .rx_serdes_data00             (gt_0_rxdata),
    .rx_serdes_data01             (gt_1_rxdata),
    .rx_serdes_data02             (gt_2_rxdata),
    .rx_serdes_data03             (gt_3_rxdata),
    .rx_serdes_data04             (gt_4_rxdata),
    .rx_serdes_data05             (gt_5_rxdata),
    .rx_serdes_data06             (gt_6_rxdata),
    .rx_serdes_data07             (gt_7_rxdata),
    .rx_serdes_data08             (gt_8_rxdata),
    .rx_serdes_data09             (gt_9_rxdata),
    .rx_serdes_data10             (gt_10_rxdata),
    .rx_serdes_data11             (gt_11_rxdata),
    .tx_serdes_data00             (gt_0_txdata),
    .tx_serdes_data01             (gt_1_txdata),
    .tx_serdes_data02             (gt_2_txdata),
    .tx_serdes_data03             (gt_3_txdata),
    .tx_serdes_data04             (gt_4_txdata),
    .tx_serdes_data05             (gt_5_txdata),
    .tx_serdes_data06             (gt_6_txdata),
    .tx_serdes_data07             (gt_7_txdata),
    .tx_serdes_data08             (gt_8_txdata),
    .tx_serdes_data09             (gt_9_txdata),
    .tx_serdes_data10             (gt_10_txdata),
    .tx_serdes_data11             (gt_11_txdata),
    .rx_ovfout                    (rx_ovfout),
    .rx_dataout0                  (rx_dataout0),
    .rx_chanout0                  (rx_chanout0),
    .rx_enaout0                   (rx_enaout0),
    .rx_sopout0                   (rx_sopout0),
    .rx_eopout0                   (rx_eopout0),
    .rx_errout0                   (rx_errout0),
    .rx_mtyout0                   (rx_mtyout0),
    .rx_dataout1                  (rx_dataout1),
    .rx_chanout1                  (rx_chanout1),
    .rx_enaout1                   (rx_enaout1),
    .rx_sopout1                   (rx_sopout1),
    .rx_eopout1                   (rx_eopout1),
    .rx_errout1                   (rx_errout1),
    .rx_mtyout1                   (rx_mtyout1),
    .rx_dataout2                  (rx_dataout2),
    .rx_chanout2                  (rx_chanout2),
    .rx_enaout2                   (rx_enaout2),
    .rx_sopout2                   (rx_sopout2),
    .rx_eopout2                   (rx_eopout2),
    .rx_errout2                   (rx_errout2),
    .rx_mtyout2                   (rx_mtyout2),
    .rx_dataout3                  (rx_dataout3),
    .rx_chanout3                  (rx_chanout3),
    .rx_enaout3                   (rx_enaout3),
    .rx_sopout3                   (rx_sopout3),
    .rx_eopout3                   (rx_eopout3),
    .rx_errout3                   (rx_errout3),
    .rx_mtyout3                   (rx_mtyout3),
    .tx_rdyout                    (tx_rdyout),
    .tx_ovfout                    (tx_ovfout),
    .tx_datain0                   (tx_datain0),
    .tx_chanin0                   (tx_chanin0),
    .tx_enain0                    (tx_enain0),
    .tx_sopin0                    (tx_sopin0),
    .tx_eopin0                    (tx_eopin0),
    .tx_errin0                    (tx_errin0),
    .tx_mtyin0                    (tx_mtyin0),
    .tx_bctlin0                   (tx_bctlin0),
    .tx_datain1                   (tx_datain1),
    .tx_chanin1                   (tx_chanin1),
    .tx_enain1                    (tx_enain1),
    .tx_sopin1                    (tx_sopin1),
    .tx_eopin1                    (tx_eopin1),
    .tx_errin1                    (tx_errin1),
    .tx_mtyin1                    (tx_mtyin1),
    .tx_bctlin1                   (tx_bctlin1),
    .tx_datain2                   (tx_datain2),
    .tx_chanin2                   (tx_chanin2),
    .tx_enain2                    (tx_enain2),
    .tx_sopin2                    (tx_sopin2),
    .tx_eopin2                    (tx_eopin2),
    .tx_errin2                    (tx_errin2),
    .tx_mtyin2                    (tx_mtyin2),
    .tx_bctlin2                   (tx_bctlin2),
    .tx_datain3                   (tx_datain3),
    .tx_chanin3                   (tx_chanin3),
    .tx_enain3                    (tx_enain3),
    .tx_sopin3                    (tx_sopin3),
    .tx_eopin3                    (tx_eopin3),
    .tx_errin3                    (tx_errin3),
    .tx_mtyin3                    (tx_mtyin3),
    .tx_bctlin3                   (tx_bctlin3),
    .ctl_tx_enable                (ctl_tx_enable),
    .ctl_tx_diagword_lanestat     (ctl_tx_diagword_lanestat_3d),
    .ctl_tx_diagword_intfstat     (ctl_tx_diagword_intfstat),
    .ctl_tx_rlim_enable           (ctl_tx_rlim_enable),
    .ctl_tx_rlim_max              (ctl_tx_rlim_max),
    .ctl_tx_rlim_delta            (ctl_tx_rlim_delta),
    .ctl_tx_rlim_intv             (ctl_tx_rlim_intv),
    .ctl_tx_fc_stat               (ctl_tx_fc_stat),
    .ctl_tx_mubits                (ctl_tx_mubits),
    .stat_tx_underflow_err        (stat_tx_underflow_err),
    .stat_tx_burst_err            (stat_tx_burst_err),
    .stat_tx_overflow_err         (stat_tx_overflow_err),
    .ctl_tx_retrans_enable        (ctl_tx_retrans_enable),
    .stat_tx_retrans_burst_err    (stat_tx_retrans_burst_err),
    .ctl_tx_retrans_req           (ctl_tx_retrans_req),
    .ctl_tx_retrans_req_valid     (ctl_tx_retrans_req_valid),
    .stat_tx_retrans_busy         (stat_tx_retrans_busy),
    .ctl_tx_errinj_biterr_go      (ctl_tx_errinj_biterr_go),
    .stat_tx_errinj_biterr_done   (stat_tx_errinj_biterr_done),
    .ctl_tx_errinj_biterr_lane    (ctl_tx_errinj_biterr_lane),
    .ctl_rx_force_resync          (ctl_rx_force_resync),
    .stat_rx_diagword_lanestat    (stat_rx_diagword_lanestat),
    .stat_rx_diagword_intfstat    (stat_rx_diagword_intfstat),
    .stat_rx_crc32_valid          (stat_rx_crc32_valid),
    .stat_rx_crc32_err            (stat_rx_crc32_err),
    .stat_rx_fc_stat              (stat_rx_fc_stat),
    .stat_rx_mubits               (stat_rx_mubits),
    .stat_rx_mubits_updated       (stat_rx_mubits_updated),
    .stat_rx_word_sync            (stat_rx_word_sync),
    .stat_rx_synced               (stat_rx_synced),
    .stat_rx_synced_err           (stat_rx_synced_err),
    .stat_rx_framing_err          (stat_rx_framing_err),
    .stat_rx_bad_type_err         (stat_rx_bad_type_err),
    .stat_rx_mf_err               (stat_rx_mf_err),
    .stat_rx_descram_err          (stat_rx_descram_err),
    .stat_rx_mf_len_err           (stat_rx_mf_len_err),
    .stat_rx_mf_repeat_err        (stat_rx_mf_repeat_err),
    .stat_rx_aligned              (stat_rx_aligned),
    .stat_rx_misaligned           (stat_rx_misaligned),
    .stat_rx_aligned_err          (stat_rx_aligned_err),
    .stat_rx_crc24_err            (stat_rx_crc24_err),
    .stat_rx_msop_err             (stat_rx_msop_err),
    .stat_rx_meop_err             (stat_rx_meop_err),
    .stat_rx_overflow_err         (stat_rx_overflow_err),
    .ctl_rx_retrans_enable        (ctl_rx_retrans_enable),
    .stat_rx_retrans_req          (stat_rx_retrans_req),
    .ctl_rx_retrans_ack           (ctl_rx_retrans_ack),
    .stat_rx_retrans_state        (stat_rx_retrans_state),
    .stat_rx_retrans_seq          (stat_rx_retrans_seq),
    .stat_rx_retrans_subseq       (stat_rx_retrans_subseq),
    .stat_rx_retrans_seq_updated  (stat_rx_retrans_seq_updated),
    .ctl_rx_retrans_reset         (ctl_rx_retrans_reset),
    .ctl_rx_retrans_reset_mode    (ctl_rx_retrans_reset_mode),
    .stat_rx_retrans_retry_err    (stat_rx_retrans_retry_err),
    .stat_rx_retrans_wrap_err     (stat_rx_retrans_wrap_err),
    .stat_rx_retrans_wdog_err     (stat_rx_retrans_wdog_err),
    .ctl_rx_retrans_errin         (ctl_rx_retrans_errin),
    .stat_rx_retrans_disc         (stat_rx_retrans_disc),
    .stat_rx_retrans_crc24_err    (stat_rx_retrans_crc24_err),
    .ctl_rx_retrans_force_req     (ctl_rx_retrans_force_req),
    .stat_rx_retrans_latency      (stat_rx_retrans_latency),
    .stat_tx_retrans_ram_waddr    (stat_tx_retrans_ram_waddr),
    .stat_tx_retrans_ram_wdata    (stat_tx_retrans_ram_wdata),
    .stat_tx_retrans_ram_we_b0    (stat_tx_retrans_ram_we_b0),
    .stat_tx_retrans_ram_we_b1    (stat_tx_retrans_ram_we_b1),
    .stat_tx_retrans_ram_we_b2    (stat_tx_retrans_ram_we_b2),
    .stat_tx_retrans_ram_we_b3    (stat_tx_retrans_ram_we_b3),
    .stat_tx_retrans_ram_raddr    (stat_tx_retrans_ram_raddr),
    .ctl_tx_retrans_ram_rdata     (ctl_tx_retrans_ram_rdata),
    .stat_tx_retrans_ram_rsel     (stat_tx_retrans_ram_rsel),
    .stat_tx_retrans_ram_perrout  (stat_tx_retrans_ram_perrout),
    .stat_tx_retrans_ram_rd_b0    (stat_tx_retrans_ram_rd_b0),
    .stat_tx_retrans_ram_rd_b1    (stat_tx_retrans_ram_rd_b1),
    .stat_tx_retrans_ram_rd_b2    (stat_tx_retrans_ram_rd_b2),
    .stat_tx_retrans_ram_rd_b3    (stat_tx_retrans_ram_rd_b3),
    .ctl_tx_retrans_ram_perrin    (ctl_tx_retrans_ram_perrin),
    .stat_rx_burstmax_err         (stat_rx_burstmax_err),
    .stat_rx_burst_err            (stat_rx_burst_err),
    .drp_clk                      (drp_clk),
    .drp_en                       (drp_en),
    .drp_we                       (drp_we),
    .drp_addr                     (drp_addr),
    .drp_di                       (drp_di),
    .drp_do                       (drp_do),
    .drp_rdy                      (drp_rdy),
    .rx_reset                     (usr_rx_reset_sync),
    .tx_reset                     (usr_tx_reset_sync),
    .rx_serdes_reset              (rx_serdes_reset),
    .tx_serdes_refclk_reset       (tx_serdes_refclk_reset),
    .tx_bypass_ctrlin             (tx_bypass_ctrlin),
    .tx_bypass_datain00           (tx_bypass_datain00),
    .tx_bypass_datain01           (tx_bypass_datain01),
    .tx_bypass_datain02           (tx_bypass_datain02),
    .tx_bypass_datain03           (tx_bypass_datain03),
    .tx_bypass_datain04           (tx_bypass_datain04),
    .tx_bypass_datain05           (tx_bypass_datain05),
    .tx_bypass_datain06           (tx_bypass_datain06),
    .tx_bypass_datain07           (tx_bypass_datain07),
    .tx_bypass_datain08           (tx_bypass_datain08),
    .tx_bypass_datain09           (tx_bypass_datain09),
    .tx_bypass_datain10           (tx_bypass_datain10),
    .tx_bypass_datain11           (tx_bypass_datain11),
    .tx_bypass_enain              (tx_bypass_enain),
    .tx_bypass_gearbox_seqin      (tx_bypass_gearbox_seqin),
    .tx_bypass_mframer_statein    (tx_bypass_mframer_statein),
    .rx_bypass_force_realignin    (rx_bypass_force_realignin),
    .rx_bypass_rdin               (rx_bypass_rdin),
    .rx_bypass_dataout00          (rx_bypass_dataout00),
    .rx_bypass_dataout01          (rx_bypass_dataout01),
    .rx_bypass_dataout02          (rx_bypass_dataout02),
    .rx_bypass_dataout03          (rx_bypass_dataout03),
    .rx_bypass_dataout04          (rx_bypass_dataout04),
    .rx_bypass_dataout05          (rx_bypass_dataout05),
    .rx_bypass_dataout06          (rx_bypass_dataout06),
    .rx_bypass_dataout07          (rx_bypass_dataout07),
    .rx_bypass_dataout08          (rx_bypass_dataout08),
    .rx_bypass_dataout09          (rx_bypass_dataout09),
    .rx_bypass_dataout10          (rx_bypass_dataout10),
    .rx_bypass_dataout11          (rx_bypass_dataout11),
    .rx_bypass_enaout             (rx_bypass_enaout),
    .rx_bypass_is_availout        (rx_bypass_is_availout),
    .rx_bypass_is_badlyframedout  (rx_bypass_is_badlyframedout),
    .rx_bypass_is_overflowout     (rx_bypass_is_overflowout),
    .rx_bypass_is_syncedout       (rx_bypass_is_syncedout),
    .rx_bypass_is_syncwordout     (rx_bypass_is_syncwordout)
);


endmodule


(* DowngradeIPIdentifiedWarnings="yes" *)
  module interlaken_0_cdc_sync (
   input clk,
   input signal_in,
   output wire signal_out
  );
                                wire sig_in_cdc_from ;
       (* ASYNC_REG = "TRUE" *) reg  s_out_d2_cdc_to;
       (* ASYNC_REG = "TRUE" *) reg  s_out_d2;
       (* ASYNC_REG = "TRUE" *) reg  s_out_d3;
      
      assign sig_in_cdc_from = signal_in;
      assign signal_out      = s_out_d3;

      always @(posedge clk) 
      begin
        s_out_d3         <= s_out_d2;
        s_out_d2         <= s_out_d2_cdc_to;
        s_out_d2_cdc_to  <= sig_in_cdc_from;
      end
  
  endmodule





module interlaken_0_endianness_swapper 
    (input [63:0] forward, output reg [63:0] reverse);
  
    always @(forward) begin: swapper
      integer i;
        for (i=0; i<64; i=i+1)
          reverse[63-i] = forward[i];
    end
  endmodule

