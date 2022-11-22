 
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
module interlaken_0_mon_wrapper
#(
parameter DUPLEX_PKT_NUM            =  1000   //// Duplex mode packet number
 
 )
( input wire               clk,
  input wire               sys_reset,
  input wire               reset,
  input wire               rx_restart_in,
  input wire               rx_aligned,

  input wire [127:0]       rx_datain0,
  input wire [11-1:0]      rx_chanin0,
  input wire               rx_enain0,
  input wire               rx_sopin0,
  input wire               rx_eopin0,
  input wire               rx_errin0,
  input wire [3:0]         rx_mtyin0,

  input wire [127:0]       rx_datain1,
  input wire [11-1:0]      rx_chanin1,
  input wire               rx_enain1,
  input wire               rx_sopin1,
  input wire               rx_eopin1,
  input wire               rx_errin1,
  input wire [3:0]         rx_mtyin1,

  input wire [127:0]       rx_datain2,
  input wire [11-1:0]      rx_chanin2,
  input wire               rx_enain2,
  input wire               rx_sopin2,
  input wire               rx_eopin2,
  input wire               rx_errin2,
  input wire [3:0]         rx_mtyin2,

  input wire [127:0]       rx_datain3,
  input wire [11-1:0]      rx_chanin3,
  input wire               rx_enain3,
  input wire               rx_sopin3,
  input wire               rx_eopin3,
  input wire               rx_errin3,
  input wire [3:0]         rx_mtyin3,

  output wire              rx_gt_locked_led,
  output wire              rx_aligned_led,
  output wire              rx_done_led,
  output wire              rx_failed_led,


  output                   rx_busy_led
);


interlaken_0_segmented_lbus_pkt_mon # ( 
    .DUPLEX_PKT_NUM           (DUPLEX_PKT_NUM)
) i_packet_monitor  (
   .clk                        (clk),
   .sys_reset                  (sys_reset),
   .reset                      (reset),
   .rx_restart_in              (rx_restart_in),
   .rx_aligned                 (rx_aligned),
   .rx_datain0                 (rx_datain0),
   .rx_chanin0                 (rx_chanin0),
   .rx_enain0                  (rx_enain0),
   .rx_sopin0                  (rx_sopin0),
   .rx_eopin0                  (rx_eopin0),
   .rx_errin0                  (rx_errin0),
   .rx_mtyin0                  (rx_mtyin0),
   .rx_datain1                 (rx_datain1),
   .rx_chanin1                 (rx_chanin1),
   .rx_enain1                  (rx_enain1),
   .rx_sopin1                  (rx_sopin1),
   .rx_eopin1                  (rx_eopin1),
   .rx_errin1                  (rx_errin1),
   .rx_mtyin1                  (rx_mtyin1),
   .rx_datain2                 (rx_datain2),
   .rx_chanin2                 (rx_chanin2),
   .rx_enain2                  (rx_enain2),
   .rx_sopin2                  (rx_sopin2),
   .rx_eopin2                  (rx_eopin2),
   .rx_errin2                  (rx_errin2),
   .rx_mtyin2                  (rx_mtyin2),
   .rx_datain3                 (rx_datain3),
   .rx_chanin3                 (rx_chanin3),
   .rx_enain3                  (rx_enain3),
   .rx_sopin3                  (rx_sopin3),
   .rx_eopin3                  (rx_eopin3),
   .rx_errin3                  (rx_errin3),
   .rx_mtyin3                  (rx_mtyin3),
   .rx_gt_locked_led           (rx_gt_locked_led),
   .rx_aligned_led             (rx_aligned_led),
   .rx_done_led                (rx_done_led),
   .rx_failed_led              (rx_failed_led),

 

   .rx_busy_led                (rx_busy_led)

  );



endmodule
