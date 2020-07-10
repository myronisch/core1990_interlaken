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
module interlaken_0_gen_wrapper
#(
parameter DUPLEX_PKT_NUM            =  1000   //// Duplex mode packet number
 
 )
(

  input wire             clk,
  input wire             sys_reset,
  input wire             reset,
  input wire             tx_restart_in,

  input wire             rx_aligned, 

  input wire             tx_rdyin,
  input wire             tx_ovfin,
  output wire [127:0]    tx_dataout0,
  output wire [11-1:0]   tx_chanout0,
  output wire            tx_enaout0,
  output wire            tx_sopout0,
  output wire            tx_eopout0,
  output wire            tx_errout0,
  output wire [3:0]      tx_mtyout0,
  output wire            tx_bctlout0,

  output wire [127:0]    tx_dataout1,
  output wire [11-1:0]   tx_chanout1,
  output wire            tx_enaout1,
  output wire            tx_sopout1,
  output wire            tx_eopout1,
  output wire            tx_errout1,
  output wire [3:0]      tx_mtyout1,
  output wire            tx_bctlout1,

  output wire [127:0]    tx_dataout2,
  output wire [11-1:0]   tx_chanout2,
  output wire            tx_enaout2,
  output wire            tx_sopout2,
  output wire            tx_eopout2,
  output wire            tx_errout2,
  output wire [3:0]      tx_mtyout2,
  output wire            tx_bctlout2,

  output wire [127:0]    tx_dataout3,
  output wire [11-1:0]   tx_chanout3,
  output wire            tx_enaout3,
  output wire            tx_sopout3,
  output wire            tx_eopout3,
  output wire            tx_errout3,
  output wire [3:0]      tx_mtyout3,
  output wire            tx_bctlout3,

  output wire            tx_busy_led,
  output wire            tx_done_led,
  output wire            tx_fail_led,
   input  wire           sanity_init_done,


  output wire            tx_gt_locked_led
);

interlaken_0_segmented_lbus_pkt_gen #(
    .DUPLEX_PKT_NUM           (DUPLEX_PKT_NUM)
) i_packet_generator   (
  .clk                       (clk),
  .sys_reset                 (sys_reset),
  .reset                     (reset),
  .tx_restart_in             (tx_restart_in),

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


  







endmodule
