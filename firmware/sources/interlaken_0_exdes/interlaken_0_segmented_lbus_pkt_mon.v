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
module interlaken_0_segmented_lbus_pkt_mon
#(
parameter DUPLEX_PKT_NUM            =  1000   //// Duplex mode packet number
 
 )
(
  input wire               clk,

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

  output reg               rx_gt_locked_led,
  output reg               rx_aligned_led,
  output reg               rx_done_led,
  output reg               rx_failed_led,



  output reg               rx_busy_led
);
 
localparam OPERATION                 =  3 ;
localparam VAL_TIMER_WIDTH           =  23;     //// Validation Timer bit position for time out
localparam SIM_TIMER_WIDTH           =  19;     //// Simulation Timer bit position for time out
localparam  BURST_MAX                =  3;     //// burst max
localparam  BURST_SHORT              =  1;   //// burst short
localparam  BURST_MIN                =  96;     //// burst min

localparam  RX_CHANNEL_PAR_1         =  11'd15;
localparam  RX_CHANNEL_PAR_2         =  11'd230;

localparam  TOP_IDLE_STATE           =  0;
localparam  GT_LOCK_STATE            =  1;
localparam  WAIT_RX_ALIGN_STATE      =  2;
localparam  ENABLE_PKT_RECV_STATE    =  3;
localparam  PKT_RX_INIT_STATE        =  4;
localparam  RECEIVE_STATE            =  5;
localparam  DONE_STATE               =  6;
localparam  PKT_RECV_MODE_STATE      =  7;
localparam  PKT_RESTART_STATE        =  8; 
localparam  data_AA =  {64{8'hAA}};
localparam  data_55 =  {64{8'h55}};

(* fsm_encoding = "one_hot" *) reg  [3:0]   present_state;
reg          flip_data;
reg  [15:0]  num_packets_received;
reg  [15:0]  num_packets_received_d1;
reg  [15:0]  num_packets_received_d2;
reg          rx_error_int;
reg          rx_done_int;
reg          rx_check_done_int_1;
reg          rx_check_done_int_2;
reg          rx_check_done_int_3;
reg          rx_check_done_int_4;
reg          all_lanes_rx_done;
reg          enable_data_rx;
reg  [15:0]  num_of_packets;
(* ASYNC_REG = "TRUE" *) reg          rx_restart_3d;
(* ASYNC_REG = "TRUE" *) reg          rx_restart_2d;
(* ASYNC_REG = "TRUE" *) reg          rx_restart_d;
reg          mon_gt_locked;
reg          mon_rx_aligned;
reg          mon_rx_done;
reg          mon_rx_failed;
reg          rx_busy;
reg          mon_gt_locked_led_3d;
reg          mon_rx_aligned_led_3d;
reg          mon_rx_done_led_3d;
reg          mon_rx_failed_led_3d;
reg          rx_busy_led_3d;
reg          mon_gt_locked_led_2d;
reg          mon_rx_aligned_led_2d;
reg          mon_rx_done_led_2d;
reg          mon_rx_failed_led_2d;
reg          rx_busy_led_2d;
reg          mon_gt_locked_led_d;
reg          mon_rx_aligned_led_d;
reg          mon_rx_done_led_d;
reg          mon_rx_failed_led_d;
reg          rx_busy_led_d;
reg [3:0]    data_check_1;
reg          error_rx_data_1_1;
reg          error_rx_data_1_2;
reg          error_rx_data_1_3;
reg          error_rx_data_1_4;
reg          error_rx_data_2_1;
reg          error_rx_data_2_2;
reg          error_rx_data_2_3;
reg          error_rx_data_2_4;
reg          error_rx_data_3_1;
reg          error_rx_data_3_2;
reg          error_rx_data_3_3;
reg          error_rx_data_3_4;
reg          error_rx_data_4_1;
reg          error_rx_data_4_2;
reg          error_rx_data_4_3;
reg          error_rx_data_4_4;
reg [127:0]  rx_datain0_d1;
reg [127:0]  rx_datain1_d1;
reg [127:0]  rx_datain2_d1;
reg [127:0]  rx_datain3_d1;
reg [127:0]  rx_datain0_d2;
reg [127:0]  rx_datain1_d2;
reg [127:0]  rx_datain2_d2;
reg [127:0]  rx_datain3_d2;
reg [127:0]  rx_datain0_d3;
reg [127:0]  rx_datain1_d3;
reg [127:0]  rx_datain2_d3;
reg [127:0]  rx_datain3_d3;
reg [127:0]  rx_datain0_d4;
reg [127:0]  rx_datain1_d4;
reg [127:0]  rx_datain2_d4;
reg [127:0]  rx_datain3_d4;
reg          rx_enain0_d1;
reg          rx_enain1_d1;
reg          rx_enain2_d1;
reg          rx_enain3_d1;
reg          rx_enain0_d2;
reg          rx_enain1_d2;
reg          rx_enain2_d2;
reg          rx_enain3_d2;
reg          rx_enain0_d3;
reg          rx_enain1_d3;
reg          rx_enain2_d3;
reg          rx_enain3_d3;
reg          rx_enain0_d4;
reg          rx_enain1_d4;
reg          rx_enain2_d4;
reg          rx_enain3_d4;
reg          rx_enain0_d5;
reg          rx_enain1_d5;
reg          rx_enain2_d5;
reg          rx_enain3_d5;
reg          rx_enain0_d6;
reg          rx_enain1_d6;
reg          rx_enain2_d6;
reg          rx_enain3_d6;
reg [3:0]    channel_check_1;
reg          error_rx_channel_1;
reg          error_rx_channel_2;
reg          error_rx_channel_3;
reg          error_rx_channel_4;
reg [10:0]   rx_chanin0_d1;
reg [10:0]   rx_chanin1_d1;
reg [10:0]   rx_chanin2_d1;
reg [10:0]   rx_chanin3_d1;
reg [3:0]    mty_check_1;
reg [3:0]    mty_check_1_d1;
reg          error_rx_mty;
reg [3:0]    rx_mtyin0_d1;
reg [3:0]    rx_mtyin1_d1;
reg [3:0]    rx_mtyin2_d1;
reg [3:0]    rx_mtyin3_d1;
reg          rx_eopin0_d1;
reg          rx_eopin1_d1;
reg          rx_eopin2_d1;
reg          rx_eopin3_d1;
reg          rx_errin0_d1;
reg          rx_errin1_d1;
reg          rx_errin2_d1;
reg          rx_errin3_d1;

reg  [3:0]   data_check_1_dly1;
reg  [3:0]   data_check_1_dly2;
reg  [3:0]   data_check_1_dly3;
reg [4:0]    rx_clk_cnt;
reg          rx_channel_change;
reg          rx_channel_change_pulse;
reg          second_sop_segment_1;
reg          second_sop_segment_2;
reg          second_sop_segment_3;
reg          dont_flip_data;


wire        mon_sys_reset_syncer;
reg         rx_restart_rise_edge;

always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    rx_error_int  <=  1'b0;
  end
  else
  begin
    if(mon_rx_done == 1'b1)
    begin
      rx_error_int  <=  1'b0;
    end
    else
    if(error_rx_data_1_1 || error_rx_data_1_2 || error_rx_data_1_3 || error_rx_data_1_4 || 
       error_rx_data_2_1 || error_rx_data_2_2 || error_rx_data_2_3 || error_rx_data_2_4 ||
       error_rx_data_3_1 || error_rx_data_3_2 || error_rx_data_3_3 || error_rx_data_3_4 ||
       error_rx_data_4_1 || error_rx_data_4_2 || error_rx_data_4_3 || error_rx_data_4_4 ||
       error_rx_channel_1 || error_rx_channel_2 || error_rx_channel_3 || error_rx_channel_4 || error_rx_mty) 
    begin
      rx_error_int  <=  1'b1;
    end
  end
end

always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    rx_eopin0_d1  <=  1'b0;
    rx_eopin1_d1  <=  1'b0;
    rx_eopin2_d1  <=  1'b0;
    rx_eopin3_d1  <=  1'b0;
    rx_errin0_d1  <=  1'b0;
    rx_errin1_d1  <=  1'b0;
    rx_errin2_d1  <=  1'b0;
    rx_errin3_d1  <=  1'b0;
  end
  else
  begin
    rx_eopin0_d1  <=  rx_eopin0;
    rx_eopin1_d1  <=  rx_eopin1;
    rx_eopin2_d1  <=  rx_eopin2;
    rx_eopin3_d1  <=  rx_eopin3;
    rx_errin0_d1  <=  rx_errin0;
    rx_errin1_d1  <=  rx_errin1;
    rx_errin2_d1  <=  rx_errin2;
    rx_errin3_d1  <=  rx_errin3;
  end
end


always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    num_packets_received    <=  16'd0;
    flip_data               <=  1'b0;
    dont_flip_data          <=  1'b0;
  end
  else if (rx_restart_rise_edge == 1'b1) begin
    num_packets_received    <=  16'd0;
    flip_data               <=  1'b0;
    dont_flip_data          <=  1'b0;
  end
  else
  begin
    if (rx_eopin0_d1 || rx_eopin1_d1 || rx_eopin2_d1 || rx_eopin3_d1)
    begin
      if (rx_errin0_d1 || rx_errin1_d1 || rx_errin2_d1 || rx_errin3_d1) begin
        num_packets_received  <=  num_packets_received;
      end
      else begin
        num_packets_received  <=  num_packets_received + 1;
      end
    end

    if (rx_eopin0 || rx_eopin1 || rx_eopin2 || rx_eopin3)
    begin
      dont_flip_data             <=  ~ dont_flip_data;
    end
    if ((rx_eopin0 || rx_eopin1 || rx_eopin2 || rx_eopin3) && (dont_flip_data == 1'b1)) begin
      flip_data             <=  ~ flip_data;
    end
  end
end

always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    num_packets_received_d1    <=  16'd0;
    num_packets_received_d2    <=  16'd0;
  end
  else
  begin
    num_packets_received_d1    <=  num_packets_received;
    num_packets_received_d2    <=  num_packets_received_d1;
  end
end

always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    rx_datain0_d1 <= 128'd0;
    rx_datain1_d1 <= 128'd0;
    rx_datain2_d1 <= 128'd0;
    rx_datain3_d1 <= 128'd0;

    rx_datain0_d2 <= 128'd0;
    rx_datain1_d2 <= 128'd0;
    rx_datain2_d2 <= 128'd0;
    rx_datain3_d2 <= 128'd0;

    rx_datain0_d3 <= 128'd0;
    rx_datain1_d3 <= 128'd0;
    rx_datain2_d3 <= 128'd0;
    rx_datain3_d3 <= 128'd0;

    rx_datain0_d4 <= 128'd0;
    rx_datain1_d4 <= 128'd0;
    rx_datain2_d4 <= 128'd0;
    rx_datain3_d4 <= 128'd0;

    rx_enain0_d1 <=  1'b0;
    rx_enain1_d1 <=  1'b0;
    rx_enain2_d1 <=  1'b0;
    rx_enain3_d1 <=  1'b0;

    rx_enain0_d2 <=  1'b0;
    rx_enain1_d2 <=  1'b0;
    rx_enain2_d2 <=  1'b0;
    rx_enain3_d2 <=  1'b0;

    rx_enain0_d3 <=  1'b0;
    rx_enain1_d3 <=  1'b0;
    rx_enain2_d3 <=  1'b0;
    rx_enain3_d3 <=  1'b0;

    rx_enain0_d4 <=  1'b0;
    rx_enain1_d4 <=  1'b0;
    rx_enain2_d4 <=  1'b0;
    rx_enain3_d4 <=  1'b0;

    rx_enain0_d5 <=  1'b0;
    rx_enain1_d5 <=  1'b0;
    rx_enain2_d5 <=  1'b0;
    rx_enain3_d5 <=  1'b0;

    rx_enain0_d6 <=  1'b0;
    rx_enain1_d6 <=  1'b0;
    rx_enain2_d6 <=  1'b0;
    rx_enain3_d6 <=  1'b0;

    rx_chanin0_d1 <= 11'd0;
    rx_chanin1_d1 <= 11'd0;
    rx_chanin2_d1 <= 11'd0;
    rx_chanin3_d1 <= 11'd0;

    rx_mtyin0_d1  <= 4'd0;
    rx_mtyin1_d1  <= 4'd0;
    rx_mtyin2_d1  <= 4'd0;
    rx_mtyin3_d1  <= 4'd0;

    mty_check_1_d1   <= 4'd0;

    data_check_1_dly1 <= 4'd0;
    data_check_1_dly2 <= 4'd0;
    data_check_1_dly3 <= 4'd0;

  end
  else
  begin
    rx_datain0_d1 <= rx_datain0;
    rx_datain1_d1 <= rx_datain1;
    rx_datain2_d1 <= rx_datain2;
    rx_datain3_d1 <= rx_datain3;

    rx_datain0_d2 <= rx_datain0_d1;
    rx_datain1_d2 <= rx_datain1_d1;
    rx_datain2_d2 <= rx_datain2_d1;
    rx_datain3_d2 <= rx_datain3_d1;
    
    rx_datain0_d3 <= rx_datain0_d2;
    rx_datain1_d3 <= rx_datain1_d2;
    rx_datain2_d3 <= rx_datain2_d2;
    rx_datain3_d3 <= rx_datain3_d2;
    
    rx_datain0_d4 <= rx_datain0_d3;
    rx_datain1_d4 <= rx_datain1_d3;
    rx_datain2_d4 <= rx_datain2_d3;
    rx_datain3_d4 <= rx_datain3_d3;

    rx_enain0_d1 <= rx_enain0;
    rx_enain1_d1 <= rx_enain1;
    rx_enain2_d1 <= rx_enain2;
    rx_enain3_d1 <= rx_enain3;

    rx_enain0_d2 <= rx_enain0_d1;
    rx_enain1_d2 <= rx_enain1_d1;
    rx_enain2_d2 <= rx_enain2_d1;
    rx_enain3_d2 <= rx_enain3_d1;

    rx_enain0_d3 <= rx_enain0_d2;
    rx_enain1_d3 <= rx_enain1_d2;
    rx_enain2_d3 <= rx_enain2_d2;
    rx_enain3_d3 <= rx_enain3_d2;

    rx_enain0_d4 <= rx_enain0_d3;
    rx_enain1_d4 <= rx_enain1_d3;
    rx_enain2_d4 <= rx_enain2_d3;
    rx_enain3_d4 <= rx_enain3_d3;

    rx_enain0_d5 <= rx_enain0_d4;
    rx_enain1_d5 <= rx_enain1_d4;
    rx_enain2_d5 <= rx_enain2_d4;
    rx_enain3_d5 <= rx_enain3_d4;

    rx_enain0_d6 <= rx_enain0_d5;
    rx_enain1_d6 <= rx_enain1_d5;
    rx_enain2_d6 <= rx_enain2_d5;
    rx_enain3_d6 <= rx_enain3_d5;

    rx_chanin0_d1 <= rx_chanin0;
    rx_chanin1_d1 <= rx_chanin1;
    rx_chanin2_d1 <= rx_chanin2;
    rx_chanin3_d1 <= rx_chanin3;

    mty_check_1_d1 <= mty_check_1;

    rx_mtyin0_d1  <= rx_mtyin0;
    rx_mtyin1_d1  <= rx_mtyin1;
    rx_mtyin2_d1  <= rx_mtyin2;
    rx_mtyin3_d1  <= rx_mtyin3;

    data_check_1_dly1 <= data_check_1;
    data_check_1_dly2 <= data_check_1_dly1;
    data_check_1_dly3 <= data_check_1_dly2;
  end
end


always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    error_rx_data_1_1   <= 1'b0;
    error_rx_data_1_2   <= 1'b0;
    error_rx_data_1_3   <= 1'b0;
    error_rx_data_1_4   <= 1'b0;
    error_rx_data_2_1   <= 1'b0;
    error_rx_data_2_2   <= 1'b0;
    error_rx_data_2_3   <= 1'b0;
    error_rx_data_2_4   <= 1'b0;
    error_rx_data_3_1   <= 1'b0;
    error_rx_data_3_2   <= 1'b0;
    error_rx_data_3_3   <= 1'b0;
    error_rx_data_3_4   <= 1'b0;
    error_rx_data_4_1   <= 1'b0;
    error_rx_data_4_2   <= 1'b0;
    error_rx_data_4_3   <= 1'b0;
    error_rx_data_4_4   <= 1'b0;
    rx_check_done_int_1 <= 1'b0;
    rx_check_done_int_2 <= 1'b0;
    rx_check_done_int_3 <= 1'b0;
    rx_check_done_int_4 <= 1'b0;
  end
  else
  begin
////compare rx_datain0[31:0]
    if (rx_enain0_d1 == 1'b1)
    begin
      if (data_check_1[0] == 1'b1) begin
            error_rx_data_1_1 <= |(data_AA[31:0] ^ rx_datain0_d1[31:0]);
      end
      else if (data_check_1[0] == 1'b0) begin
             error_rx_data_1_1 <= |(data_55[31:0] ^ rx_datain0_d1[31:0]);
      end
    end
////compare rx_datain0[63:32] in next clock
    if (rx_enain0_d2 == 1'b1)
    begin
      if (data_check_1_dly1[0] == 1'b1) begin
            error_rx_data_1_2 <= |(data_AA[63:32] ^ rx_datain0_d2[63:32]);
      end
      else if (data_check_1_dly1[0] == 1'b0) begin
            error_rx_data_1_2 <= |(data_55[63:32]  ^ rx_datain0_d2[63:32]);
      end
    end
////compare rx_datain0[95:64] in next clock
    if (rx_enain0_d3 == 1'b1)
    begin
      if (data_check_1_dly2[0] == 1'b1) begin
          error_rx_data_1_3 <= |(data_AA[95:64] ^ rx_datain0_d3[95:64]);
      end
      else if (data_check_1_dly2[0] == 1'b0) begin
          error_rx_data_1_3 <= |(data_55[95:64] ^ rx_datain0_d3[95:64]);
      end
    end
////compare rx_datain0[127:96] in next clock
    if (rx_enain0_d6 == 1'b1)
    begin
      if (rx_done_int) begin
        rx_check_done_int_1   <= 1'b1;
      end
      else begin
        rx_check_done_int_1   <= 1'b0;
      end
    end
       
    if (rx_enain0_d4 == 1'b1 )
    begin
      if (data_check_1_dly3[0] == 1'b1) begin
          error_rx_data_1_4 <= |(data_AA[127:96] ^ rx_datain0_d4[127:96]);
      end
      else if (data_check_1_dly3[0] == 1'b0) begin
          error_rx_data_1_4 <= |(data_55[127:96] ^ rx_datain0_d4[127:96]);
      end
    end
////compare rx_datain1[31:0]
    if (rx_enain1_d1 == 1'b1 )
    begin
      if (data_check_1[1] == 1'b1) begin
            error_rx_data_2_1 <= |(data_AA[159:128] ^ rx_datain1_d1[31:0]);
      end
      else if (data_check_1[1] == 1'b0) begin
            error_rx_data_2_1 <= |(data_55[159:128] ^ rx_datain1_d1[31:0]);
      end
    end
////compare rx_datain1[63:32] in next clock
    if (rx_enain1_d2 == 1'b1 )
    begin
      if (data_check_1_dly1[1] == 1'b1) begin
          error_rx_data_2_2 <= |(data_AA[191:160] ^ rx_datain1_d2[63:32]);
      end
      else if (data_check_1_dly1[1] == 1'b0) begin
          error_rx_data_2_2 <= |(data_55[191:160] ^ rx_datain1_d2[63:32]);
      end
    end
////compare rx_datain1[95:64] in next clock
    if (rx_enain1_d3 == 1'b1 )
    begin
      if (data_check_1_dly2[1] == 1'b1) begin
          error_rx_data_2_3 <= |(data_AA[223:192] ^ rx_datain1_d3[95:64]);
      end
      else if (data_check_1_dly2[1] == 1'b0) begin
          error_rx_data_2_3 <= |(data_55[223:192] ^ rx_datain1_d3[95:64]);
      end
    end
////compare rx_datain1[127:96] in next clock
    if (rx_enain1_d6 == 1'b1 )
    begin
      if (rx_done_int) begin
        rx_check_done_int_2   <= 1'b1;
      end
      else begin
        rx_check_done_int_2   <= 1'b0;
      end
    end
       
    if (rx_enain1_d4 == 1'b1 )
    begin
      if (data_check_1_dly3[1] == 1'b1) begin
          error_rx_data_2_4 <= |(data_AA[255:224] ^ rx_datain1_d4[127:96]);
      end
      else if (data_check_1_dly3[1] == 1'b0) begin
          error_rx_data_2_4 <= |(data_55[255:224] ^ rx_datain1_d4[127:96]);
      end
    end
////compare rx_datain2[31:0]
    if (rx_enain2_d1 == 1'b1 )
    begin
      if (data_check_1[2] == 1'b1) begin
          error_rx_data_3_1 <= |(data_AA[287:256]  ^ rx_datain2_d1[31:0]);
      end
      else if (data_check_1[2] == 1'b0) begin
          error_rx_data_3_1 <= |(data_55[287:256] ^ rx_datain2_d1[31:0]);
      end
    end
////compare rx_datain2[63:32] in next clock
    if (rx_enain2_d2 == 1'b1 )
    begin
      if (data_check_1_dly1[2] == 1'b1) begin
        error_rx_data_3_2 <= |(data_AA[319:288] ^ rx_datain2_d2[63:32]);
      end
      else if (data_check_1_dly1[2] == 1'b0) begin
          error_rx_data_3_2 <= |(data_55[319:288] ^ rx_datain2_d2[63:32]);
      end
    end
////compare rx_datain2[95:64] in next clock
    if (rx_enain2_d3 == 1'b1 )
    begin
      if (data_check_1_dly2[2] == 1'b1) begin
          error_rx_data_3_3 <= |(data_AA[351:320] ^ rx_datain2_d3[95:64]);
      end
      else if (data_check_1_dly2[2] == 1'b0) begin
          error_rx_data_3_3 <= |(data_55[351:320] ^ rx_datain2_d3[95:64]);
      end
    end
////compare rx_datain2[127:96] in next clock
    if (rx_enain2_d6 == 1'b1 )
    begin
      if (rx_done_int) begin
        rx_check_done_int_3   <= 1'b1;
      end
      else begin
        rx_check_done_int_3   <= 1'b0;
      end
    end
       
    if (rx_enain2_d4 == 1'b1 )
    begin
      if (data_check_1_dly3[2] == 1'b1) begin
          error_rx_data_3_4 <= |(data_AA[383:352] ^ rx_datain2_d4[127:96]);
      end
      else if (data_check_1_dly3[2] == 1'b0) begin
          error_rx_data_3_4 <= |(data_55[383:352] ^ rx_datain2_d4[127:96]);
      end
    end
////compare rx_datain3[31:0]
   if (rx_enain3_d1 == 1'b1 )
    begin
      if (data_check_1[3] == 1'b1) begin
          error_rx_data_4_1 <= |(data_AA[415:384] ^ rx_datain3_d1[31:0]);
      end
      else if (data_check_1[3] == 1'b0) begin
          error_rx_data_4_1 <= |(data_55[415:384] ^ rx_datain3_d1[31:0]);
      end
    end
////compare rx_datain3[63:32] in next clock
    if (rx_enain3_d2 == 1'b1 )
    begin
      if (data_check_1_dly1[3] == 1'b1) begin
          error_rx_data_4_2 <= |(data_AA[447:416] ^ rx_datain3_d2[63:32]);
      end
      else if (data_check_1_dly1[3] == 1'b0) begin
          error_rx_data_4_2 <= |(data_55[447:416] ^ rx_datain3_d2[63:32] );
      end
    end
////compare rx_datain3[95:64] in next clock
    if (rx_enain3_d3 == 1'b1 )
    begin
      if (data_check_1_dly2[3]  == 1'b1) begin
          error_rx_data_4_3 <= |(data_AA[479:448] ^ rx_datain3_d3[95:64]);
      end
      else if (data_check_1_dly2[3] == 1'b0) begin
          error_rx_data_4_3 <= |(data_55[479:448]  ^ rx_datain3_d3[95:64]);
      end
    end
////compare rx_datain3[127:96] in next clock
    if (rx_enain3_d6 == 1'b1 )
    begin
      if (rx_done_int) begin
        rx_check_done_int_4   <= 1'b1;
      end
      else begin
        rx_check_done_int_4   <= 1'b0;
      end
    end
       
    if (rx_enain3_d4 == 1'b1 )
    begin
      if (data_check_1_dly3[3] == 1'b1) begin
          error_rx_data_4_4 <= |(data_AA[511:480] ^ rx_datain3_d4[127:96]);
      end
      else if (data_check_1_dly3[3] == 1'b0) begin
          error_rx_data_4_4 <= |(data_55[511:480] ^ rx_datain3_d4[127:96]);
      end
    end
  end
end

always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    error_rx_channel_1   <= 1'b0;
    error_rx_channel_2   <= 1'b0;
    error_rx_channel_3   <= 1'b0;
    error_rx_channel_4   <= 1'b0;
  end
  else
  begin
////compare rx_chanin0
    if (rx_enain0_d1 == 1'b1)
    begin
      if (channel_check_1[0] == 1'b1) begin
        if ( RX_CHANNEL_PAR_2[10:0] == rx_chanin0_d1[10:0] )
        begin
          error_rx_channel_1 <= 1'b0;
        end
        else begin
          error_rx_channel_1 <= 1'b1;
        end
      end
      else if (channel_check_1[0] == 1'b0) begin
        if (RX_CHANNEL_PAR_1[10:0] == rx_chanin0_d1[10:0] )
        begin
          error_rx_channel_1 <= 1'b0;
        end
        else begin
          error_rx_channel_1 <= 1'b1;
        end
      end
    end
////compare rx_chanin1
    if (rx_enain1_d1 == 1'b1 )
    begin
      if (channel_check_1[1] == 1'b1) begin
        if ( RX_CHANNEL_PAR_2[10:0] == rx_chanin1_d1[10:0] )
        begin
          error_rx_channel_2 <= 1'b0;
        end
        else begin
          error_rx_channel_2 <= 1'b1;
        end
      end
      else if (channel_check_1[1] == 1'b0) begin
        if ( RX_CHANNEL_PAR_1[10:0] == rx_chanin1_d1[10:0] )
        begin
          error_rx_channel_2 <= 1'b0;
        end
        else begin
          error_rx_channel_2 <= 1'b1;
        end
      end
    end
////compare rx_chanin2
    if (rx_enain2_d1 == 1'b1 )
    begin
      if (channel_check_1[2] == 1'b1) begin
        if ( RX_CHANNEL_PAR_2[10:0] == rx_chanin2_d1[10:0] )
        begin
          error_rx_channel_3 <= 1'b0;
        end
        else begin
          error_rx_channel_3 <= 1'b1;
        end
      end
      else if (channel_check_1[2] == 1'b0) begin
        if ( RX_CHANNEL_PAR_1[10:0] == rx_chanin2_d1[10:0] )
        begin
          error_rx_channel_3 <= 1'b0;
        end
        else begin
          error_rx_channel_3 <= 1'b1;
        end
      end
    end
////compare rx_chanin3
    if (rx_enain3_d1 == 1'b1)
    begin
      if ( channel_check_1[3] == 1'b1) begin
        if ( RX_CHANNEL_PAR_2[10:0] == rx_chanin3_d1[10:0] )
        begin
          error_rx_channel_4 <= 1'b0;
        end
        else begin
          error_rx_channel_4 <= 1'b1;
        end
      end
      else if ( channel_check_1[3] == 1'b0) begin
        if ( RX_CHANNEL_PAR_1[10:0] == rx_chanin3_d1[10:0] )
        begin
          error_rx_channel_4 <= 1'b0;
        end
        else begin
          error_rx_channel_4 <= 1'b1;
        end
      end
    end
  end
end



always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    error_rx_mty   <= 1'b0;
  end
  else
  begin
      case ({rx_enain0_d1,mty_check_1})
        5'b10001 : begin
                    if ( rx_mtyin0_d1 == 4'b0101 )
                    begin
                      error_rx_mty <= 1'b0;
                    end
                    else begin
                      error_rx_mty <= 1'b1;
                    end
                  end
        5'b10010 : begin
                    if ( rx_mtyin1_d1 == 4'b0101 )
                    begin
                      error_rx_mty <= 1'b0;
                    end
                    else begin
                      error_rx_mty <= 1'b1;
                    end
                  end
        5'b10100 : begin
                    if ( rx_mtyin2_d1 == 4'b0101 )
                    begin
                      error_rx_mty <= 1'b0;
                    end
                    else begin
                      error_rx_mty <= 1'b1;
                    end
                  end
        5'b11000 : begin
                    if ( rx_mtyin3_d1 == 4'b0101 )
                    begin
                      error_rx_mty <= 1'b0;
                    end
                    else begin
                      error_rx_mty <= 1'b1;
                    end
                  end
        5'b10000 : begin ////4'b0000
                    if ( rx_mtyin0_d1 == 4'b0000 && rx_mtyin1_d1 == 4'b0000 && rx_mtyin2_d1 == 4'b0000 && rx_mtyin3_d1 == 4'b0000 )
                    begin
                      error_rx_mty <= 1'b0;
                    end
                    else begin
                      error_rx_mty <= 1'b1;
                    end
                  end
      endcase
  end
end

always @( posedge clk )
begin
  if(reset == 1'b1)
  begin
    rx_done_int             <=  1'b0;
     
    mon_gt_locked           <=  1'b0;
    mon_rx_aligned          <=  1'b0;
    mon_rx_done             <=  1'b0;
    mon_rx_failed           <=  1'b0;
    rx_busy                 <=  1'b0;
    enable_data_rx          <=  1'b0;
    data_check_1            <=  4'd0;
    channel_check_1         <=  4'd0;
    mty_check_1             <=  4'd0;
    rx_clk_cnt              <=  5'd0;
    rx_channel_change       <=  1'b0;
    rx_channel_change_pulse <=  1'b0;
    second_sop_segment_1    <=  1'b0;
    second_sop_segment_2    <=  1'b0;
    second_sop_segment_3    <=  1'b0;


    present_state           <=  TOP_IDLE_STATE;
  end
  else
  begin
      case (present_state)
               TOP_IDLE_STATE   :
                                begin
                                  present_state          <=  GT_LOCK_STATE ;
                                  mon_gt_locked          <=  1'b0;
                                  mon_rx_aligned         <=  1'b0;
                                  mon_rx_done            <=  1'b0;
                                  mon_rx_failed          <=  1'b0;
                                  rx_busy                <=  1'b0;
                                  enable_data_rx         <=  1'b0;
                                  data_check_1           <=  4'd0;
                                  channel_check_1        <=  4'd0;
                                  mty_check_1            <=  4'd0;
                                  rx_clk_cnt             <=  5'd0;
                                  rx_channel_change      <=  1'b0;
                                  rx_channel_change_pulse<=  1'b0;
                                  second_sop_segment_1   <=  1'b0;
                                  second_sop_segment_2   <=  1'b0;
                                  second_sop_segment_3   <=  1'b0;


                                end

               GT_LOCK_STATE    :
                                begin
                                  mon_gt_locked          <=  1'b1;
                                  present_state          <=  WAIT_RX_ALIGN_STATE;
                                end

           WAIT_RX_ALIGN_STATE  :
                                begin
                                  mon_rx_done            <=  1'b0;
                                  mon_rx_failed          <=  1'b0;
                                  if(rx_aligned == 1'b1) 
                                  begin
                                    present_state        <=  ENABLE_PKT_RECV_STATE;
                                    mon_rx_aligned       <=  1'b1;


                                  end
                                  else
                                  begin 
                                    present_state        <=  WAIT_RX_ALIGN_STATE;
                                    mon_rx_aligned       <=  1'b0;
                                  end 
                                end

         ENABLE_PKT_RECV_STATE  : 
                                begin
                                  mon_rx_done            <=  1'b0;
                                  mon_rx_failed          <=  1'b0;
                                  enable_data_rx         <=  1'b1;
                                  present_state          <=  PKT_RX_INIT_STATE;
                                   num_of_packets     <=  DUPLEX_PKT_NUM;
                                end

             PKT_RX_INIT_STATE  : 
                                begin
                                  present_state          <=  RECEIVE_STATE;
                                  rx_done_int            <=  1'b0;
                                  data_check_1           <=  4'd0;
                                  channel_check_1        <=  4'd0;
                                  mty_check_1            <=  4'd0;
                                  rx_busy                <=  1'b1;
                                  rx_clk_cnt             <=  5'd0;
                                  rx_channel_change      <=  1'b0;
                                  rx_channel_change_pulse<=  1'b0;
                                  second_sop_segment_1   <=  1'b0;
                                  second_sop_segment_2   <=  1'b0;
                                  second_sop_segment_3   <=  1'b0;
                                end

             RECEIVE_STATE      :
                                begin
                                    //// count the clocks in the packet and also
                                    //// to know which segmemnt has second sop
                                    if (rx_enain0 && rx_enain1 && rx_enain2 && rx_enain3)
                                    begin
                                      ////to know which segment has second sop
                                      if (!rx_eopin3 && !rx_eopin2 && !rx_eopin1 && !rx_eopin0)
                                      begin
                                        if (rx_sopin1) begin
                                          second_sop_segment_1 <= 1'b1;
                                        end
                                        if (rx_sopin2) begin
                                          second_sop_segment_2 <= 1'b1;
                                        end
                                        if (rx_sopin3) begin
                                          second_sop_segment_3 <= 1'b1;
                                        end
                                      end

                                      ////count the clocks in the packet
                                      if (rx_clk_cnt == 23) begin
                                        rx_clk_cnt <=0;
                                      end
                                      else begin
                                        rx_clk_cnt <= rx_clk_cnt+1;
                                      end
                                    end//// if (rx_enain0 && rx_enain1 && rx_enain2 && rx_enain3)
                                    
                                    ////to deassert second sop  
                                    if ((rx_enain0 == 1'b1 && rx_enain1 == 1'b0 && rx_enain2 == 1'b0 && rx_enain3 == 1'b0) ||
                                        (rx_enain0 == 1'b1 && rx_enain1 == 1'b1 && rx_enain2 == 1'b0 && rx_enain3 == 1'b0) ||
                                        (rx_enain0 == 1'b1 && rx_enain1 == 1'b1 && rx_enain2 == 1'b1 && rx_enain3 == 1'b0) 
                                       ) begin
                                      second_sop_segment_1 <= 1'b0;
                                      second_sop_segment_2 <= 1'b0;
                                      second_sop_segment_3 <= 1'b0;
                                    end

                                    //// when any enable is asserted
                                    if (rx_enain0 || rx_enain1 || rx_enain2 || rx_enain3)
                                    begin
                                      //// to know when the channel will change
                                      case (BURST_MAX)
                                        2'b11 : begin
                                                if ((rx_clk_cnt+1)%4 == 0) begin
                                                  rx_channel_change_pulse <= ~rx_channel_change_pulse;
                                                  rx_channel_change <= ~rx_channel_change;
                                                end
                                                else begin
                                                  rx_channel_change_pulse <= 1'b0;
                                                end
                                              end
                                      endcase
                                      end

                                      //// check the data, mty and channels 
                                          case ({flip_data,rx_eopin3,rx_eopin2,rx_eopin1,rx_eopin0})
                                            5'b00001 : begin
                                                        mty_check_1 <= 4'b0001;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b1111;
                                                            channel_check_1 <= 4'b1110;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b0001;
                                                            channel_check_1 <= 4'b0001;
                                                        end
                                                      end
                                            5'b00010 : begin
                                                        mty_check_1 <= 4'b0010;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b1111;
                                                            channel_check_1 <= 4'b1100;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b0011;
                                                            channel_check_1 <= 4'b0011;
                                                        end
                                                      end
                                            5'b00100 : begin
                                                        mty_check_1 <= 4'b0100;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b1111;
                                                            channel_check_1 <= 4'b1000;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b0111;
                                                            channel_check_1 <= 4'b0111;
                                                        end
                                                      end
                                            5'b01000 : begin
                                                        mty_check_1 <= 4'b1000;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b1111;
                                                            channel_check_1 <= 4'b1111;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b1111;
                                                            channel_check_1 <= 4'b0000;
                                                        end
                                                      end
                                            5'b00000 : begin
                                                      mty_check_1 <= 4'b0000;
                                                      data_check_1 <= 4'b1111;
                                                      case ({rx_enain3,rx_enain2,rx_enain1,rx_enain0})
                                                        4'b0001 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1110;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0001;
                                                                    end
                                                                  end
                                                      4'b0011 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1100;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0011;
                                                                    end
                                                                  end
                                                      4'b0111 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1000;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0111;
                                                                    end
                                                                  end
                                                      default : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      if ((rx_sopin1 && rx_channel_change_pulse) || (second_sop_segment_1 && rx_channel_change_pulse) ) begin
                                                                        channel_check_1 <= 4'b1110;
                                                                      end
                                                                      else if ((rx_sopin2 && rx_channel_change_pulse) || (second_sop_segment_2 && rx_channel_change_pulse) ) begin
                                                                        channel_check_1 <= 4'b1100;
                                                                      end
                                                                      else if ((rx_sopin3 && rx_channel_change_pulse) || (second_sop_segment_3 && rx_channel_change_pulse) ) begin
                                                                        channel_check_1 <= 4'b1000;
                                                                      end
                                                                      else begin
                                                                        channel_check_1 <= 4'b1111;
                                                                      end
                                                                    end
                                                                    else begin
                                                                      if ((rx_sopin1 && rx_channel_change_pulse) || (second_sop_segment_1 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0001;
                                                                      end
                                                                      else if ((rx_sopin2 && rx_channel_change_pulse) || (second_sop_segment_2 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0011;
                                                                      end
                                                                      else if ((rx_sopin3 && rx_channel_change_pulse) || (second_sop_segment_3 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0111;
                                                                      end
                                                                      else begin
                                                                        channel_check_1 <= 4'b0000;
                                                                      end
                                                                    end
                                                                  end
                                                        endcase
                                                      end
                                            5'b10001 : begin
                                                        mty_check_1 <= 4'b0001;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b0000;
                                                            channel_check_1 <= 4'b1110;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b1110;
                                                            channel_check_1 <= 4'b0001;
                                                        end
                                                      end
                                            5'b10010 : begin
                                                        mty_check_1 <= 4'b0010;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b0000;
                                                            channel_check_1 <= 4'b1100;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b1100;
                                                            channel_check_1 <= 4'b0011;
                                                        end
                                                      end
                                            5'b10100 : begin
                                                        mty_check_1 <= 4'b0100;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b0000;
                                                            channel_check_1 <= 4'b1000;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b1000;
                                                            channel_check_1 <= 4'b0001;
                                                        end
                                                      end
                                            5'b11000 : begin
                                                        mty_check_1 <= 4'b1000;
                                                        if (rx_channel_change == 1'b1) begin
                                                            data_check_1 <= 4'b0000;
                                                            channel_check_1 <= 4'b1111;
                                                        end
                                                        else begin
                                                            data_check_1 <= 4'b0000;
                                                            channel_check_1 <= 4'b0000;
                                                        end
                                                      end
                                            5'b10000 : begin
                                                      mty_check_1 <= 4'b0000;
                                                      data_check_1 <= 4'b0000;
                                                      case ({rx_enain3,rx_enain2,rx_enain1,rx_enain0})
                                                        4'b0001 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1110;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0001;
                                                                    end
                                                                  end
                                                      4'b0011 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1100;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0011;
                                                                    end
                                                                  end
                                                      4'b0111 : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      channel_check_1 <= 4'b1000;
                                                                    end
                                                                    else begin
                                                                      channel_check_1 <= 4'b0111;
                                                                    end
                                                                  end
                                                      default : begin
                                                                    if (rx_channel_change == 1'b1) begin
                                                                      if ((rx_sopin1 && rx_channel_change_pulse) || (second_sop_segment_1 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b1110;
                                                                      end
                                                                      else if ((rx_sopin2 && rx_channel_change_pulse) || (second_sop_segment_2 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b1100;
                                                                      end
                                                                      else if ((rx_sopin3 && rx_channel_change_pulse) || (second_sop_segment_3 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b1000;
                                                                      end
                                                                      else begin
                                                                        channel_check_1 <= 4'b1111;
                                                                     end
                                                                    end
                                                                    else begin
                                                                      if ((rx_sopin1 && rx_channel_change_pulse) || (second_sop_segment_1 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0001;
                                                                      end
                                                                      else if ((rx_sopin2 && rx_channel_change_pulse) || (second_sop_segment_2 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0011;
                                                                      end
                                                                      else if ((rx_sopin3 && rx_channel_change_pulse) || (second_sop_segment_3 && rx_channel_change_pulse)) begin
                                                                        channel_check_1 <= 4'b0111;
                                                                      end
                                                                      else begin
                                                                        channel_check_1 <= 4'b0000;
                                                                      end
                                                                    end
                                                                  end
                                                        endcase
                                                    end
                                          endcase
                                  if( (enable_data_rx) && (num_packets_received_d2 < num_of_packets))
                                  begin
                                      present_state  <=  RECEIVE_STATE;
                                  end
                                  else
                                  begin
                                    present_state      <=  DONE_STATE;
                                    enable_data_rx     <=  1'b0;
                                  end
                                end
 

             DONE_STATE         : 
                                begin
                                  rx_done_int           <=  1'b1;
                                  all_lanes_rx_done     <= (rx_check_done_int_1 || rx_check_done_int_2 || rx_check_done_int_3 || rx_check_done_int_4);
                                  if (all_lanes_rx_done == 1'b1) begin
                                    present_state       <=  PKT_RECV_MODE_STATE;  
                                  end
                                end

             PKT_RECV_MODE_STATE   :
                                begin
                                  mon_rx_done        <= 1'b1;
                                  if(rx_error_int == 1'b1)
                                  begin
                                    mon_rx_failed      <= 1'b1;
                                  end
                                  else  
                                  begin
                                    mon_rx_failed    <= 1'b0;
                                  present_state      <=  PKT_RESTART_STATE; 
                                  end 
                                end





            PKT_RESTART_STATE   : 
                                begin
                                  rx_busy                <= 1'b0;
                                   
                                  if((rx_restart_rise_edge == 1'b1) && (rx_aligned == 1'b1)) 
                                    present_state        <= TOP_IDLE_STATE;
                                  else 
                                    present_state        <= PKT_RESTART_STATE;
                                end

                  default       : 
                                begin
                                  present_state          <=  TOP_IDLE_STATE;
                                  mon_gt_locked          <=  1'b0;
                                  mon_rx_aligned         <=  1'b0;
                                  mon_rx_done            <=  1'b0;
                                  mon_rx_failed          <=  1'b0;
                                  rx_busy                <=  1'b0;
                                  enable_data_rx         <=  1'b0;
                                  data_check_1           <=  4'd0;
                                  channel_check_1        <=  4'd0;
                                  mty_check_1            <=  4'd0;
                                  rx_clk_cnt             <=  5'd0;
                                  rx_channel_change      <=  1'b0;
                                  rx_channel_change_pulse<=  1'b0;
                                  second_sop_segment_1   <=  1'b0;
                                  second_sop_segment_2   <=  1'b0;
                                  second_sop_segment_3   <=  1'b0;


                                end
        endcase //// case
    end

end


always @( posedge clk )
begin
  if  ( reset == 1'b1 )
    rx_restart_rise_edge   <= 1'b0;
  else
  begin
    if  (( rx_restart_2d == 1'b1) && ( rx_restart_3d == 1'b0))
      rx_restart_rise_edge  <= 1'b1;
    else 
      rx_restart_rise_edge  <= 1'b0;
  end
end

////3 stage registering 
always@( posedge clk )
begin
  if(reset == 1'b1)  begin
    
    mon_gt_locked_led_3d    <=  1'b0;
    mon_rx_aligned_led_3d   <=  1'b0;
    mon_rx_done_led_3d      <=  1'b0;
    mon_rx_failed_led_3d    <=  1'b0;
    rx_busy_led_3d          <=  1'b0;
    
    mon_gt_locked_led_2d    <=  1'b0;
    mon_rx_aligned_led_2d   <=  1'b0;
    mon_rx_done_led_2d      <=  1'b0;
    mon_rx_failed_led_2d    <=  1'b0;
    rx_busy_led_2d          <=  1'b0;
    
    mon_gt_locked_led_d     <=  1'b0;
    mon_rx_aligned_led_d    <=  1'b0;
    mon_rx_done_led_d       <=  1'b0;
    mon_rx_failed_led_d     <=  1'b0;
    rx_busy_led_d           <=  1'b0;
  end 
  else 
  begin
    mon_gt_locked_led_d     <=  mon_gt_locked;
    mon_gt_locked_led_2d    <=  mon_gt_locked_led_d;
    mon_gt_locked_led_3d    <=  mon_gt_locked_led_2d;
     
    mon_rx_aligned_led_d    <=  mon_rx_aligned;
    mon_rx_aligned_led_2d   <=  mon_rx_aligned_led_d;
    mon_rx_aligned_led_3d   <=  mon_rx_aligned_led_2d;
        
    mon_rx_done_led_d       <=  mon_rx_done;
    mon_rx_done_led_2d      <=  mon_rx_done_led_d;
    mon_rx_done_led_3d      <=  mon_rx_done_led_2d;
   
    mon_rx_failed_led_d     <=  mon_rx_failed;
    mon_rx_failed_led_2d    <=  mon_rx_failed_led_d;
    mon_rx_failed_led_3d    <=  mon_rx_failed_led_2d;
    
    rx_busy_led_d           <=  rx_busy;
    rx_busy_led_2d          <=  rx_busy_led_d;
    rx_busy_led_3d          <=  rx_busy_led_2d;
  end
end



  syncer_mon i_mon_sys_reset_syncer (

    .clk                 (clk),
    .resetn_async        (sys_reset),
    .resetn              (mon_sys_reset_syncer)

  );

always@(posedge clk )
begin
  if(mon_sys_reset_syncer == 1'b1)  begin

    rx_gt_locked_led        <=  1'b0;
    rx_aligned_led          <=  1'b0;
    rx_done_led             <=  1'b0;
    rx_failed_led           <=  1'b0;
    rx_busy_led             <=  1'b0;
  end 
  else 
  begin
    rx_gt_locked_led        <=  mon_gt_locked_led_3d;
    rx_aligned_led          <=  mon_rx_aligned_led_3d;
    rx_done_led             <=  mon_rx_done_led_3d;
    rx_failed_led           <=  mon_rx_failed_led_3d;
    rx_busy_led             <=  rx_busy_led_3d;
  end
end




////3 stage registering
always@(posedge clk)
begin
  if(reset  == 1'b1)  begin
    rx_restart_3d           <=   1'b0;
    rx_restart_2d           <=   1'b0;
    rx_restart_d            <=   1'b0;
  end else begin
    rx_restart_d            <=   rx_restart_in;
    rx_restart_2d           <=   rx_restart_d;
    rx_restart_3d           <=   rx_restart_2d;
    end
end
////*********************************



endmodule


module syncer_mon
#(
  parameter PIPE_LEN = 5
 )
(
  input  wire clk,
  input  wire resetn_async,
  output wire resetn
) ;
(* ASYNC_REG = "TRUE" *) reg  [PIPE_LEN-1:0] pipe /* synthesis syn_preserve = 1 */;

/*
   NOTE: The initial block below is required for Verilog simulation but is
         undesirable for synthesis.  Hence the pragma's.
*/

// pragma translate_off

  initial  pipe = {PIPE_LEN{1'b1}};
 
// pragma translate_on
  assign resetn = pipe[PIPE_LEN-1];
  always @( posedge clk , posedge resetn_async )
    begin
      if ( resetn_async == 1'b1 )
        begin
          pipe <= {PIPE_LEN{1'b1}};
        end
      else
        begin
          pipe <= {pipe[PIPE_LEN-2:0], 1'b0};
        end
    end

endmodule

