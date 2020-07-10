//------------------------------------------------------------------------------
//  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module interlaken_0_lbus_pkt_gen_mon
#(
parameter DUPLEX_PKT_NUM            =  1000   //// Duplex mode packet number
 
 )
(
input wire              lbus_tx_rx_restart_in,
input wire              sys_reset,
input wire              tx_reset,
input wire              rx_reset,

input wire              rx_aligned,
input wire              tx_rdyin,
input wire              tx_ovfin,

output wire [127:0]     tx_dataout0,
output wire [11-1:0]    tx_chanout0,
output wire             tx_enaout0,
output wire             tx_sopout0,
output wire             tx_eopout0,
output wire             tx_errout0,
output wire [3:0]       tx_mtyout0,
output wire             tx_bctlout0,

output wire [127:0]     tx_dataout1,
output wire [11-1:0]    tx_chanout1,
output wire             tx_enaout1,
output wire             tx_sopout1,
output wire             tx_eopout1,
output wire             tx_errout1,
output wire [3:0]       tx_mtyout1,
output wire             tx_bctlout1,

output wire [127:0]     tx_dataout2,
output wire [11-1:0]    tx_chanout2,
output wire             tx_enaout2,
output wire             tx_sopout2,
output wire             tx_eopout2,
output wire             tx_errout2,
output wire [3:0]       tx_mtyout2,
output wire             tx_bctlout2,

output wire [127:0]     tx_dataout3,
output wire [11-1:0]    tx_chanout3, 
output wire             tx_enaout3,
output wire             tx_sopout3,
output wire             tx_eopout3,
output wire             tx_errout3,
output wire [3:0]       tx_mtyout3,
output wire             tx_bctlout3,

output wire             tx_gt_locked_led,
output wire             tx_done_led,
output wire             tx_busy_led,
output wire             tx_fail_led,
// AXI
input                      s_axi_aclk,
input                      s_axi_sreset,
input                      s_axi_pm_tick,
output wire [31:0]         s_axi_awaddr,
output wire                s_axi_awvalid,

input                      s_axi_awready,

output wire [31:0]         s_axi_wdata,
output wire [3:0]          s_axi_wstrb,
output wire                s_axi_wvalid,
input                      s_axi_wready,

input       [1:0]          s_axi_bresp,
input                      s_axi_bvalid,
output wire                s_axi_bready,

output wire [31:0]         s_axi_araddr,
output wire                s_axi_arvalid,
input                      s_axi_arready,
input       [31:0]         s_axi_rdata,
input       [1:0]          s_axi_rresp,
input                      s_axi_rvalid,
output wire                s_axi_rready,
/////////////////////////////////////// //////////////////////////////////

input wire [127:0]      rx_datain0,
input wire [11-1:0]     rx_chanin0,
input wire              rx_enain0,
input wire              rx_sopin0,
input wire              rx_eopin0,
input wire              rx_errin0,
input wire [3:0]        rx_mtyin0,

input wire [127:0]      rx_datain1,
input wire [11-1:0]     rx_chanin1,
input wire              rx_enain1,
input wire              rx_sopin1,
input wire              rx_eopin1,
input wire              rx_errin1,
input wire [3:0]        rx_mtyin1,

input wire [127:0]      rx_datain2,
input wire [11-1:0]     rx_chanin2,
input wire              rx_enain2,
input wire              rx_sopin2,
input wire              rx_eopin2,
input wire              rx_errin2,
input wire [3:0]        rx_mtyin2,

input wire [127:0]      rx_datain3,
input wire [11-1:0]     rx_chanin3,
input wire              rx_enain3,
input wire              rx_sopin3,
input wire              rx_eopin3,
input wire              rx_errin3,
input wire [3:0]        rx_mtyin3,

output wire             rx_gt_locked_led,
output wire             rx_aligned_led,
output wire             rx_done_led,
output wire             rx_failed_led,
output wire             rx_busy_led,

input  [11:0]           stat_rx_diagword_lanestat,
input  [11:0]           stat_rx_diagword_intfstat,
input  [11:0]           stat_rx_crc32_valid,
input  [7:0]            stat_rx_mubits,
input                   stat_rx_mubits_updated,
input  [11:0]           stat_rx_word_sync,
input  [11:0]           stat_rx_synced,
input  [11:0]           stat_rx_synced_err,
input  [11:0]           stat_rx_bad_type_err,
input  [11:0]           stat_rx_mf_err,
input  [11:0]           stat_rx_descram_err,
input  [11:0]           stat_rx_mf_repeat_err,
input                   stat_rx_aligned,
input                   stat_rx_misaligned,
input                   stat_rx_aligned_err,
input                   stat_rx_crc24_err,
input                   stat_rx_msop_err,
input                   stat_rx_meop_err,
input                   stat_rx_overflow_err,
input                   stat_rx_burstmax_err,
input                   stat_rx_burst_err,
input                   stat_tx_underflow_err,
input                   stat_tx_burst_err,
input                   stat_tx_overflow_err,
input  [11:0]           stat_rx_crc32_err,
input  [11:0]           stat_rx_framing_err,
input  [11:0]           stat_rx_mf_len_err,






input wire               clk
);
wire                sanity_init_done;
wire                rx_busy;

interlaken_0_gen_wrapper #(
    .DUPLEX_PKT_NUM           (DUPLEX_PKT_NUM)
)i_gen_top  (
   .clk                       (clk),
   .sys_reset                 (sys_reset),
   .reset                     (tx_reset),
   .tx_restart_in             (lbus_tx_rx_restart_in),
   .rx_aligned                (rx_aligned),
   .tx_rdyin                  (tx_rdyin),
   .tx_ovfin                  (tx_ovfin),
   .tx_dataout0               (tx_dataout0),
   .tx_chanout0               (tx_chanout0),
   .tx_enaout0                (tx_enaout0),
   .tx_sopout0                (tx_sopout0),
   .tx_eopout0                (tx_eopout0),
   .tx_errout0                (tx_errout0),
   .tx_mtyout0                (tx_mtyout0),
   .tx_bctlout0               (tx_bctlout0),
   .tx_dataout1               (tx_dataout1),
   .tx_chanout1               (tx_chanout1),
   .tx_enaout1                (tx_enaout1),
   .tx_sopout1                (tx_sopout1),
   .tx_eopout1                (tx_eopout1),
   .tx_errout1                (tx_errout1),
   .tx_mtyout1                (tx_mtyout1),
   .tx_bctlout1               (tx_bctlout1),
   .tx_dataout2               (tx_dataout2),
   .tx_chanout2               (tx_chanout2),
   .tx_enaout2                (tx_enaout2),
   .tx_sopout2                (tx_sopout2),
   .tx_eopout2                (tx_eopout2),
   .tx_errout2                (tx_errout2),
   .tx_mtyout2                (tx_mtyout2),
   .tx_bctlout2               (tx_bctlout2),
   .tx_dataout3               (tx_dataout3),
   .tx_chanout3               (tx_chanout3),
   .tx_enaout3                (tx_enaout3),
   .tx_sopout3                (tx_sopout3),
   .tx_eopout3                (tx_eopout3),
   .tx_errout3                (tx_errout3),
   .tx_mtyout3                (tx_mtyout3),
   .tx_bctlout3               (tx_bctlout3),
   .tx_done_led               (tx_done_led),
   .tx_busy_led               (tx_busy_led),
   .tx_fail_led               (tx_fail_led),
   .sanity_init_done                      (sanity_init_done),
   .tx_gt_locked_led          (tx_gt_locked_led)
   );

interlaken_0_mon_wrapper # (
   .DUPLEX_PKT_NUM           (DUPLEX_PKT_NUM)

)  i_mon_top  (
   .clk                       (clk),
   .sys_reset                 (sys_reset),
   .reset                     (rx_reset),
   .rx_restart_in             (lbus_tx_rx_restart_in),
   .rx_aligned                (rx_aligned),
   .rx_datain0                (rx_datain0),
   .rx_chanin0                (rx_chanin0),
   .rx_enain0                 (rx_enain0),
   .rx_sopin0                 (rx_sopin0),
   .rx_eopin0                 (rx_eopin0),
   .rx_errin0                 (rx_errin0),
   .rx_mtyin0                 (rx_mtyin0),
   .rx_datain1                (rx_datain1),
   .rx_chanin1                (rx_chanin1),
   .rx_enain1                 (rx_enain1),
   .rx_sopin1                 (rx_sopin1),
   .rx_eopin1                 (rx_eopin1),
   .rx_errin1                 (rx_errin1),
   .rx_mtyin1                 (rx_mtyin1),
   .rx_datain2                (rx_datain2),
   .rx_chanin2                (rx_chanin2),
   .rx_enain2                 (rx_enain2),
   .rx_sopin2                 (rx_sopin2),
   .rx_eopin2                 (rx_eopin2),
   .rx_errin2                 (rx_errin2),
   .rx_mtyin2                 (rx_mtyin2),
   .rx_datain3                (rx_datain3),
   .rx_chanin3                (rx_chanin3),
   .rx_enain3                 (rx_enain3),
   .rx_sopin3                 (rx_sopin3),
   .rx_eopin3                 (rx_eopin3),
   .rx_errin3                 (rx_errin3),
   .rx_mtyin3                 (rx_mtyin3),
   .rx_gt_locked_led          (rx_gt_locked_led),
   .rx_aligned_led            (rx_aligned_led),
   .rx_done_led               (rx_done_led),
   .rx_failed_led             (rx_failed_led),
   .rx_busy_led               (rx_busy)
  );




interlaken_0_axi4_lite_user_if i_interlaken_0_axi4_lite_user_if
(
.lbus_clk                              (clk),
.reset                                 (sys_reset),
.rx_gt_locked                          (rx_gt_locked_led),
.stat_rx_aligned                       (stat_rx_aligned),
.rx_done                               (rx_done_led),
.rx_busy                               (rx_busy),
.rx_busy_led                           (rx_busy_led),
.sanity_init_done                      (sanity_init_done),
.s_axi_aclk                            (s_axi_aclk),
.s_axi_sreset                          (s_axi_sreset),
.s_axi_pm_tick                         (s_axi_pm_tick),
.s_axi_awaddr                          (s_axi_awaddr),
.s_axi_awvalid                         (s_axi_awvalid),
.s_axi_awready                         (s_axi_awready),
.s_axi_wdata                           (s_axi_wdata),
.s_axi_wstrb                           (s_axi_wstrb),
.s_axi_wvalid                          (s_axi_wvalid),
.s_axi_wready                          (s_axi_wready),
.s_axi_bresp                           (s_axi_bresp),
.s_axi_bvalid                          (s_axi_bvalid),
.s_axi_bready                          (s_axi_bready),
.s_axi_araddr                          (s_axi_araddr),
.s_axi_arvalid                         (s_axi_arvalid),
.s_axi_arready                         (s_axi_arready),
.s_axi_rdata                           (s_axi_rdata),
.s_axi_rresp                           (s_axi_rresp),
.s_axi_rvalid                          (s_axi_rvalid),
.s_axi_rready                          (s_axi_rready)
);

endmodule
