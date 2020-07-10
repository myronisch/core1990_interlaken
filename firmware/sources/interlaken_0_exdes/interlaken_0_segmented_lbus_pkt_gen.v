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
module interlaken_0_segmented_lbus_pkt_gen
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
   input  wire            sanity_init_done,
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

   output reg             tx_done_led,
   output reg             tx_busy_led,
   output reg             tx_fail_led,
 


   output reg             tx_gt_locked_led
);

localparam  OPERATION                =  3;  

localparam  BURST_MAX                =  3;     //// burst max
localparam  BURST_SHORT              =  1;     //// burst short
localparam  BURST_MIN                =  96;     //// burst min

localparam  TX_CHANNEL_PAR_1         =  11'd15;
localparam  TX_CHANNEL_PAR_2         =  11'd230;


localparam  TOP_IDLE_STATE           =  0;
localparam  GT_LOCK_STATE            =  1;
localparam  WAIT_RX_ALIGN_STATE      =  2;
localparam  ENABLE_PKT_TRANS_STATE   =  3;
localparam  PKT_TX_INIT_STATE        =  4;
localparam  TRANSMIT_STATE_0         =  5;
localparam  TRANSMIT_STATE_1         =  6;
localparam  HOLD_STATE               =  7;
localparam  DONE_STATE               =  8;
localparam  PKT_RESTART_STATE        =  9;

localparam  f = {64{8'hAA}};
localparam  data_55 = {64{8'h55}};

(* fsm_encoding = "one_hot" *) reg  [4:0]  present_state;

reg            flip_data;
reg            flip_data_d1;
reg  [15:0]    num_packets_sent;
reg            num_of_pkts_grtr;
reg            num_of_pkts_eql;
reg            enable;
reg            ready;
reg            tx_done_int;
reg            ready_d1;
reg            ready_d2;
reg [127:0]    dataout0;
reg            sopout0;
reg            eopout0;
reg            enaout0;
reg            errout0;
reg [3:0]      mtyout0;
reg            bctlout0;
reg [10:0]     chanout0;

reg [127:0]    dataout1;
reg            sopout1;
reg            eopout1;
reg            enaout1;
reg            errout1;
reg [3:0]      mtyout1;
reg            bctlout1;
reg [10:0]     chanout1;

reg [127:0]    dataout2;
reg            sopout2;
reg            eopout2;
reg            enaout2;
reg            errout2;
reg [3:0]      mtyout2;
reg            bctlout2;
reg [10:0]     chanout2;

reg [127:0]    dataout3;
reg            sopout3;
reg            eopout3;
reg            enaout3;
reg            errout3;
reg [3:0]      mtyout3;
reg            bctlout3;
reg [10:0]     chanout3;

reg            sopout0_d1;
reg            eopout0_d1;
reg            enaout0_d1;
reg            errout0_d1;
reg [3:0]      mtyout0_d1;
reg            bctlout0_d1;
reg [10:0]     chanout0_d1;

reg            sopout1_d1;
reg            eopout1_d1;
reg            enaout1_d1;
reg            errout1_d1;
reg [3:0]      mtyout1_d1;
reg            bctlout1_d1;
reg [10:0]     chanout1_d1;

reg            sopout2_d1;
reg            eopout2_d1;
reg            enaout2_d1;
reg            errout2_d1;
reg [3:0]      mtyout2_d1;
reg            bctlout2_d1;
reg [10:0]     chanout2_d1;

reg            sopout3_d1;
reg            eopout3_d1;
reg            enaout3_d1;
reg            errout3_d1;
reg [3:0]      mtyout3_d1;
reg            bctlout3_d1;
reg [10:0]     chanout3_d1;


reg [127:0]    dataout0_d1;
reg [127:0]    dataout1_d1;
reg [127:0]    dataout2_d1;
reg [127:0]    dataout3_d1;

reg  [15:0]    num_of_packets;
(* ASYNC_REG = "TRUE" *) reg            tx_restart_3d;
(* ASYNC_REG = "TRUE" *) reg            tx_restart_2d;
(* ASYNC_REG = "TRUE" *) reg            tx_restart_d;
reg            gen_gt_locked;
reg            gen_busy;
reg            tx_fail_led_3d;
reg            gen_gt_locked_led_3d;
reg            tx_gen_busy_led_3d;
reg            gen_tx_done_led_3d;
reg            tx_fail_led_2d;
reg            gen_gt_locked_led_2d;
reg            tx_gen_busy_led_2d;
reg            gen_tx_done_led_2d;
reg            tx_fail_led_d;
reg            gen_gt_locked_led_d;
reg            tx_gen_busy_led_d;
reg            gen_tx_done_led_d;
wire           gen_tx_done;

reg            assert_bctl_1;
reg            pkt_end;
reg            assert_bctl_2;
reg            eop_bm64;
reg [2:0]      segment_no;
reg [7:0]      channel ;
reg [1:0]      from_st ;
reg            tx_fail_reg;
reg            send_sop;
reg            send_eop;
reg            no_sop;
reg            channel_change;
reg            channel_pulse;
reg            cnt_0;
reg [4:0]      clk_cnt; 

wire           gen_sys_reset_syncer;


reg            tx_restart_rise_edge;

assign  tx_chanout0  =  chanout0_d1;
assign  tx_chanout1  =  chanout1_d1;
assign  tx_chanout2  =  chanout2_d1;
assign  tx_chanout3  =  chanout3_d1;
assign  tx_dataout0  =  dataout0;
assign  tx_dataout1  =  dataout1;
assign  tx_dataout2  =  dataout2;
assign  tx_dataout3  =  dataout3;

assign  tx_sopout0   =  sopout0_d1;
assign  tx_eopout0   =  eopout0_d1;
assign  tx_enaout0   =  enaout0_d1;
assign  tx_errout0   =  errout0_d1;
assign  tx_mtyout0   =  mtyout0_d1;
assign  tx_bctlout0  =  bctlout0_d1;

assign  tx_sopout1   =  sopout1_d1;
assign  tx_eopout1   =  eopout1_d1;
assign  tx_enaout1   =  enaout1_d1;
assign  tx_errout1   =  errout1_d1;
assign  tx_mtyout1   =  mtyout1_d1;
assign  tx_bctlout1  =  bctlout1_d1;

assign  tx_sopout2   =  sopout2_d1;
assign  tx_eopout2   =  eopout2_d1;
assign  tx_enaout2   =  enaout2_d1;
assign  tx_errout2   =  errout2_d1;
assign  tx_mtyout2   =  mtyout2_d1;
assign  tx_bctlout2  =  bctlout2_d1;

assign  tx_sopout3   =  sopout3_d1;
assign  tx_eopout3   =  eopout3_d1;
assign  tx_enaout3   =  enaout3_d1;
assign  tx_errout3   =  errout3_d1;
assign  tx_mtyout3   =  mtyout3_d1;
assign  tx_bctlout3  =  bctlout3_d1;

always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    dataout0_d1 <= 'd0;
    dataout1_d1 <= 'd0;
    dataout2_d1 <= 'd0;
    dataout3_d1 <= 'd0;   
  end
  else begin
    dataout0_d1 <= dataout0;
    dataout1_d1 <= dataout1;
    dataout2_d1 <= dataout2;
    dataout3_d1 <= dataout3;   
  end
end


always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    chanout0_d1 <= 'd0;
    sopout0_d1  <= 'd0;
    eopout0_d1  <= 'd0;
    enaout0_d1  <= 'd0;
    errout0_d1  <= 'd0;
    mtyout0_d1  <= 'd0;
    bctlout0_d1 <= 'd0;
    
    chanout1_d1 <= 'd0;
    sopout1_d1  <= 'd0;
    eopout1_d1  <= 'd0;
    enaout1_d1  <= 'd0;
    errout1_d1  <= 'd0;
    mtyout1_d1  <= 'd0;
    bctlout1_d1 <= 'd0;
    
    chanout2_d1 <= 'd0;
    sopout2_d1  <= 'd0;
    eopout2_d1  <= 'd0;
    enaout2_d1  <= 'd0;
    errout2_d1  <= 'd0;
    mtyout2_d1  <= 'd0;
    bctlout2_d1 <= 'd0;
    
    chanout3_d1 <= 'd0;
    sopout3_d1  <= 'd0;
    eopout3_d1  <= 'd0;
    enaout3_d1  <= 'd0;
    errout3_d1  <= 'd0;
    mtyout3_d1  <= 'd0;
    bctlout3_d1 <= 'd0;

  end
  else
  begin
    chanout0_d1 <= chanout0;
    sopout0_d1  <= sopout0;
    eopout0_d1  <= eopout0;
    enaout0_d1  <= enaout0;
    errout0_d1  <= errout0;
    mtyout0_d1  <= mtyout0;
    bctlout0_d1 <= bctlout0;
    
    chanout1_d1 <= chanout1;
    sopout1_d1  <= sopout1;
    eopout1_d1  <= eopout1;
    enaout1_d1  <= enaout1;
    errout1_d1  <= errout1;
    mtyout1_d1  <= mtyout1;
    bctlout1_d1 <= bctlout1;
    
    chanout2_d1 <= chanout2;
    sopout2_d1  <= sopout2;
    eopout2_d1  <= eopout2;
    enaout2_d1  <= enaout2;
    errout2_d1  <= errout2;
    mtyout2_d1  <= mtyout2;
    bctlout2_d1 <= bctlout2;
    
    chanout3_d1 <= chanout3;
    sopout3_d1  <= sopout3;
    eopout3_d1  <= eopout3;
    enaout3_d1  <= enaout3;
    errout3_d1  <= errout3;
    mtyout3_d1  <= mtyout3;
    bctlout3_d1 <= bctlout3;

  end
end

assign  gen_tx_done = tx_done_int;

always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    tx_fail_reg   <= 1'b0;
  end
  else
  begin
    tx_fail_reg   <= tx_ovfin;
  end
end


always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    ready     <=  1'b0;
    ready_d1  <=  1'b0;
    ready_d2  <=  1'b0;
  end
  else
  begin
    ready     <=  (tx_rdyin) & (~tx_ovfin) & (rx_aligned);

    ready_d1  <=  ready;
    ready_d2  <=  ready_d1;
  end
end

///////Number of packets sent
///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    num_packets_sent          <=  16'd0;
///  end
///  else if (tx_restart_rise_edge == 1'b1) begin
///    num_packets_sent          <=  16'd0;
///  end
///  else if ((present_state == TRANSMIT_STATE_1) && (ready == 1'b1) && (assert_bctl_1 == 1'b0) && (pkt_end == 1'b1))
///  begin
///    num_packets_sent <=  num_packets_sent + 1;
///  end
///end

///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    num_of_pkts_grtr             <=  1'b0;
///    num_of_pkts_eql              <=  1'b0;
///  end  
///  else if (tx_restart_rise_edge == 1'b1) begin
///    num_of_pkts_grtr             <=  1'b0;
///    num_of_pkts_eql              <=  1'b0;
///  end
///  else
///  begin
///    if(enable == 1'b1 && (num_packets_sent < num_of_packets+1)) begin
///      num_of_pkts_grtr <= 1'b1;
///      if (num_packets_sent == num_of_packets) begin
///        num_of_pkts_eql <= 1'b1;
///      end
///      else begin
///        num_of_pkts_eql <= 1'b0;
///      end
///    end
///    else begin
///      num_of_pkts_grtr <= 1'b0;
///    end
///  end
///end

///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    from_st  <=  2'd0;
///  end
///  else if (tx_restart_rise_edge == 1'b1) begin
///    from_st  <=  2'd0;
///  end
///  else if (ready == 1'b0) begin
///    if (present_state == TRANSMIT_STATE_0) begin
///      from_st  <=  2'b01;
///    end
///    else if (present_state == TRANSMIT_STATE_1) begin
///      from_st  <=  2'b10;
///    end
///  end
///  else if (((present_state == TRANSMIT_STATE_0) || (present_state == TRANSMIT_STATE_1)) && ready == 1'b1) begin
///    from_st  <=  2'b00;
///  end
///end


////segment number
///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    segment_no   <=  3'd0;
///    clk_cnt      <=  0;
///    no_sop       <=  1'b0;
///    flip_data    <=  1'b0;  
///  end
///  else if (tx_restart_rise_edge == 1'b1) begin
///    segment_no   <=  3'd0;
///    clk_cnt      <=  0;
///    no_sop       <=  1'b0;
///    flip_data    <=  1'b0;  
///  end
///  else if ((present_state == TRANSMIT_STATE_0) && (ready == 1'b1)) begin
///    if (clk_cnt == 23) begin
///      clk_cnt   <= 0;
///      flip_data <= ~ flip_data;  
///    end
///    else if (cnt_0 != 1) 
///    begin
///      clk_cnt  <= clk_cnt+1;  
///    end
///    
///    if (no_sop == 1'b1) begin
///      case (segment_no) 
///        0 : begin
///              no_sop     <= 1'b1;
///            end    
///        1 : begin
///              segment_no <= 0;
///              no_sop     <= 1'b0;
///            end    
///        2 : begin
///              segment_no <= 1;
///              no_sop     <= 1'b0;
///            end    
///        3 : begin
///              segment_no <= 2;
///              no_sop     <= 1'b0;
///            end    
///        4 : begin
///              segment_no <= 3;
///              no_sop     <= 1'b0;
///            end    
///      endcase    
///    end
///    else begin 
///      if (segment_no == 3'b100) begin
///        segment_no <= 0;
///      end
///      if (segment_no != 3'b100) begin
///        no_sop     <= 1'b1;
///      end
///    end
///  end
///  else if ((present_state == TRANSMIT_STATE_1) && (ready == 1'b1))
///  begin
///    //// counter to count the number of LBUS clocks from sop to eop
///    clk_cnt <= clk_cnt + 1; 
///    if (clk_cnt == 23) begin
///      clk_cnt  <= 0;  
///    end
///
///    if ((assert_bctl_1 == 1'b0) && (pkt_end == 1'b1)) begin
///        segment_no <=  segment_no + 1;////increment scenario
///    end
///  end
///end
   
///////Channel change logic for burst mode
///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    channel         <=  8'd0;
///    channel_change  <=  1'b0;
///    channel_pulse   <=  1'b0;
///  end
///  else
///  begin
///    case (BURST_MAX)
///      2'b11 :begin
///             if (((clk_cnt+2)%4 == 0) && (ready == 1'b1) && ((present_state == TRANSMIT_STATE_1) || (present_state == TRANSMIT_STATE_0))) begin
///               channel_change <= ~channel_change;
///               channel_pulse <=1'b0;
///             end
///             else if ((channel_pulse == 1'b1) && (ready == 1'b0 ||  present_state == HOLD_STATE ) )begin
///               channel_pulse <=1'b0;
///             end
///             else if(present_state == TOP_IDLE_STATE) begin
///               channel  <=  0;
///               channel_change <=  1'b0;
///             end
///             else begin
///               channel_pulse <=1'b0;
///             end
///           end
///    endcase
///    
///  end
///end


/////// Logic for assertion of bctl and to know packet end in burst mode
///always @( posedge clk  )
///begin
///  if(reset == 1'b1)
///  begin
///    assert_bctl_1             <=  1'b0;
///    pkt_end                   <=  1'b0;
///    assert_bctl_2             <=  1'b0;
///    eop_bm64                  <=  1'b0;
///  end
///  else
///  begin
///    ////assert bctl and packet end w.r.t burst max and burst short configurations
///    case (BURST_MAX)
///      2'b11 :begin
///             case (BURST_SHORT)
///               3'b001 : begin
///                     if ((((clk_cnt == 16) || (clk_cnt == 20)) && (segment_no < 2) && (ready == 1'b1) && (present_state == TRANSMIT_STATE_1)) ||
///                          ((assert_bctl_1 == 1'b1) && (ready == 1'b0 ||  present_state == HOLD_STATE ) ) )begin
///                        assert_bctl_1 <= 1'b1;
///                      end
///                       else begin
///                        assert_bctl_1 <= 1'b0;
///                      end
///                     
///                      if ((((clk_cnt == 17) || (clk_cnt == 21)) && (ready == 1'b1) && (present_state == TRANSMIT_STATE_1) || 
///                               ((pkt_end == 1'b1) && (ready == 1'b0 ||  present_state == HOLD_STATE ) ) ) ) begin
///                    
///                        pkt_end <= 1'b1;
///                        if (segment_no > 1) begin
///                          assert_bctl_2 <= 1'b1;
///                        end
///                      end
///                      else begin
///                        assert_bctl_2 <= 1'b0;
///                        pkt_end <= 1'b0;
///                      end
///                    end ////64
///             endcase
///           end////256
///    endcase
///
///
///    end
///end////always



///always @( posedge clk )
///begin
///  if(reset == 1'b1)
///  begin
///    present_state             <=  TOP_IDLE_STATE;
///    tx_done_int               <=  1'b0;
///
///    sopout0                   <=  1'b0;
///    eopout0                   <=  1'b0;
///    enaout0                   <=  1'b0;
///    errout0                   <=  1'b0;
///    mtyout0                   <=  4'd0;
///    bctlout0                  <=  1'b0;
///
///    sopout1                   <=  1'b0;
///    eopout1                   <=  1'b0;
///    enaout1                   <=  1'b0;
///    errout1                   <=  1'b0;
///    mtyout1                   <=  4'd0;
///    bctlout1                  <=  1'b0;
///
///    sopout2                   <=  1'b0;
///    eopout2                   <=  1'b0;
///    enaout2                   <=  1'b0;
///    errout2                   <=  1'b0;
///    mtyout2                   <=  4'd0;
///    bctlout2                  <=  1'b0;
///
///    sopout3                   <=  1'b0;
///    eopout3                   <=  1'b0;
///    enaout3                   <=  1'b0;
///    errout3                   <=  1'b0;
///    mtyout3                   <=  4'd0;
///    bctlout3                  <=  1'b0;
///    enable                    <=  1'b0;
///    gen_gt_locked             <=  1'b0;
///    gen_busy                  <=  1'b0;
///    send_sop                  <=  1'b0;
///    send_eop                  <=  1'b0;
///    cnt_0                     <=  1'b0;
///
///
///  end
///  else
///  begin
///    case (present_state)
///            TOP_IDLE_STATE    :
///                              begin
///                                gen_gt_locked             <=  1'b1;
///                                present_state             <=  GT_LOCK_STATE ;
///                                tx_done_int               <=  1'b0;
///
///                                sopout0                   <=  1'b0;
///                                eopout0                   <=  1'b0;
///                                enaout0                   <=  1'b0;
///                                errout0                   <=  1'b0;
///                                mtyout0                   <=  4'd0;
///                                bctlout0                  <=  1'b0;
///
///                                sopout1                   <=  1'b0;
///                                eopout1                   <=  1'b0;
///                                enaout1                   <=  1'b0;
///                                errout1                   <=  1'b0;
///                                mtyout1                   <=  4'd0;
///                                bctlout1                  <=  1'b0;
///
///                                sopout2                   <=  1'b0;
///                                eopout2                   <=  1'b0;
///                                enaout2                   <=  1'b0;
///                                errout2                   <=  1'b0;
///                                mtyout2                   <=  4'd0;
///                                bctlout2                  <=  1'b0;
///
///                                sopout3                   <=  1'b0;
///                                eopout3                   <=  1'b0;
///                                enaout3                   <=  1'b0;
///                                errout3                   <=  1'b0;
///                                mtyout3                   <=  4'd0;
///                                bctlout3                  <=  1'b0;
///                                enable                    <=  1'b0;
///                                gen_busy                  <=  1'b0;
///                                send_sop                  <=  1'b0;
///                                send_eop                  <=  1'b0;
///                                cnt_0                     <=  1'b1;
///
/// 
///                              end
///
///            GT_LOCK_STATE     :
///                              begin
///                                present_state              <=  WAIT_RX_ALIGN_STATE;
///                              end
///
///         WAIT_RX_ALIGN_STATE  :
///                              begin
///                                tx_done_int          <= 1'b0;
///                                if (rx_aligned == 1'b1) 
///
///                                begin
///                                  present_state      <=  ENABLE_PKT_TRANS_STATE;
///
///
///                                end
///                                else 
///                                  present_state      <=  WAIT_RX_ALIGN_STATE;
///                              end
///   ENABLE_PKT_TRANS_STATE     :
///                              begin
///                                gen_busy             <=  1'b1;
///                                tx_done_int          <=  1'b0;
///                                   num_of_packets     <=  DUPLEX_PKT_NUM;
///
///                                if(sanity_init_done == 1'b1) begin
///                                  enable               <=  1'b1;
///                                  present_state        <=  PKT_TX_INIT_STATE;
///                                end
///                                else begin
///                                  enable               <=  1'b0;
///                                end
///                              end
///         PKT_TX_INIT_STATE    :
///                              begin
///                                if(ready == 1'b0)
///                                  begin
///                                    present_state      <=  PKT_TX_INIT_STATE;
///                                  end
///                                  else
///                                  begin
///                                    if(enable == 1'b1)
///                                    begin
///                                      present_state    <=  TRANSMIT_STATE_0;
///                                    end
///                                    else
///                                    begin
///                                      present_state    <=  PKT_TX_INIT_STATE;
///                                    end
///                                  end
///                                  tx_done_int          <=  1'b0;
///
///                                  sopout0              <=  1'b0;
///                                  eopout0              <=  1'b0;
///                                  enaout0              <=  1'b0;
///                                  errout0              <=  1'b0;
///                                  mtyout0              <=  4'd0;
///                                  bctlout0             <=  1'b0;
///
///                                  sopout1              <=  1'b0;
///                                  eopout1              <=  1'b0;
///                                  enaout1              <=  1'b0;
///                                  errout1              <=  1'b0;
///                                  mtyout1              <=  4'd0;
///                                  bctlout1             <=  1'b0;
///
///                                  sopout2              <=  1'b0;
///                                  eopout2              <=  1'b0;
///                                  enaout2              <=  1'b0;
///                                  errout2              <=  1'b0;
///                                  mtyout2              <=  4'd0;
///                                  bctlout2             <=  1'b0;
///
///                                  sopout3              <=  1'b0;
///                                  eopout3              <=  1'b0;
///                                  enaout3              <=  1'b0;
///                                  errout3              <=  1'b0;
///                                  mtyout3              <=  4'd0;
///                                  bctlout3             <=  1'b0;
///                                  cnt_0                <=  1'b1; 
///                                end
///            TRANSMIT_STATE_0    :
///                                begin
///                                  if (num_of_pkts_grtr == 1'b1)
///                                  begin
///                                    if(ready == 1'b0)
///                                    begin
///                                      present_state   <=  HOLD_STATE;
///                                      //result <= send_packet(8'd0,4'b0000,4'b0000,4'b0000,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                      sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                      eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                      enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                      errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                      mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                      bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                    end
///                                    else
///                                    begin
///                                       if (BURST_MAX != 2'b00) begin//// other than burst max 64
///                                         if (num_of_pkts_eql == 1'b1) begin ////Last Packet
///                                           case (segment_no) //// To toggle sop and eop in each LBUS segment
///                                             0 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0000,4'b0000,4'b0000,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     enable <=  1'b0;
///                                                 end 
///                                             1 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0000,4'b0001,4'b0001,4'b0000,{4'b0,4'b0,4'b0,4'b0101},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b1;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0101;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     enable <= 1'b0;
///                                                 end 
///                                             2 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0000,4'b0010,4'b0011,4'b0000,{4'b0,4'b0,4'b0101,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b1;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0101;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     enable <=  1'b0;
///                                                 end 
///                                             3 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0000,4'b0100,4'b0111,4'b0000,{4'b0,4'b0101,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b1;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b0;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0101;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     enable <=  1'b0;
///                                                 end
///                                             4 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0000,4'b1000,4'b1111,4'b0000,{4'b0101,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b1;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0101;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     enable     <=  1'b0;
///                                                 end
///                                           endcase
///                                         end
///                                         else begin
///                                           case (segment_no) //// To toggle sop and eop in each LBUS segment
///                                             0 : begin
///                                                     ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                     //result <= send_packet(channel,4'b0001,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b1;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     send_sop <= 1'b1;
///                                                     present_state  <=  TRANSMIT_STATE_1;
///                                                 end 
///                                             1 : begin
///                                                     if (no_sop == 1'b1) begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0000,4'b0001,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0101},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b1;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0101;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     end
///                                                     else begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0010,4'b0001,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0101},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b1;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b1;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0101;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       send_sop <= 1'b1;
///                                                     end
///                                                     present_state    <=  TRANSMIT_STATE_1;
///                                                 end 
///                                             2 : begin
///                                                     if (no_sop == 1'b1) begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0000,4'b0010,4'b1111,4'b0000,{4'b0,4'b0,4'b0101,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b1;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0101;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     end
///                                                     else begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0100,4'b0010,4'b1111,4'b0000,{4'b0,4'b0,4'b0101,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b1;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b1;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0101;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       send_sop <= 1'b1;
///                                                     end
///                                                     present_state    <=  TRANSMIT_STATE_1;
///                                                 end 
///                                             3 : begin
///                                                     if (no_sop == 1'b1) begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0000,4'b0100,4'b1111,4'b0000,{4'b0,4'b0101,4'b0,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b1;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0101;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                     end
///                                                     else begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b1000,4'b0100,4'b1111,4'b0000,{4'b0,4'b0101,4'b0,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b1;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b1;     eopout3 <= 1'b0;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0101;  mtyout3 <= 4'b0000;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       send_sop <= 1'b1;
///                                                     end
///                                                     present_state <=  TRANSMIT_STATE_1;
///                                                 end
///                                             4 : begin
///                                                     if (no_sop == 1'b1) begin
///                                                       ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                       //result <= send_packet(channel,4'b0000,4'b1000,4'b1111,4'b0000,{4'b0101,4'b0,4'b0,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b1;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0101;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       present_state    <=  TRANSMIT_STATE_1;
///                                                     end
///                                                     else begin   
///                                                       //result <= send_packet(channel,4'b0000,4'b1000,4'b1111,4'b0000,{4'b0101,4'b0,4'b0,4'b0},4'b0000);
///                                                       sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                       eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b1;
///                                                       enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                       errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                       mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0101;
///                                                       bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       cnt_0      <=  1'b1;
///                                                     end
///                                                 end
///                                           endcase
///                                         end
///                                       end
///                                    end
///                                  end
///                                  else
///                                  begin
///                                    enable             <=  1'b0;
///                                    send_sop           <=  1'b0;
///                                    send_eop           <=  1'b0;
///                                    cnt_0              <=  1'b1;
///                                    //result <= send_packet(8'd0,4'b0000,4'b0000,4'b0000,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                    sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                    eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                    enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                    errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                    mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                    bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                    present_state      <=  DONE_STATE;
///                                  end
///                                end
/// 
///            TRANSMIT_STATE_1      :
///                                begin
///                                 if(ready == 1'b0)
///                                   begin
///                                    present_state   <=  HOLD_STATE;
///                                    //result <= send_packet(8'd0,4'b0000,4'b0000,4'b0000,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                      sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                      eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                      enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
///                                      errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                      mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                      bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                    end
///                                   else
///                                   begin
///                                     cnt_0   <=  1'b0;
///                                     //// to drive bctl and eop
///                                     if (assert_bctl_1 == 1'b0) begin
///                                       if (pkt_end == 1) begin //// transmit eop after 2 LBUS clocks
///                                         if ((assert_bctl_2 == 1'b1) || (eop_bm64 == 1'b1)) begin
///                                           //result <= send_packet_with_bctl(segment_no);
///                                               if ((BURST_MAX == 2'b11) && (BURST_SHORT == 3'b001)) begin
///                                                 case (segment_no)
///                                                   0 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0100);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b1;    bctlout3 <= 1'b0;
///                                                       end 
///                                                   1 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b1000);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b1;
///                                                       end
///                                                   2 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0001);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b1;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       end 
///                                                   3 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0010);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b1;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       end 
///                                                 endcase
///                                               end
///                                           if ((BURST_MAX == 2'b00) && (send_eop == 1'b0)) begin////send second eop in burst mode for burst max 64
///                                             send_eop         <=  1'b1;
///                                             present_state    <=  TRANSMIT_STATE_1;
///                                           end
///                                           else begin
///                                             send_eop         <=  1'b0;
///                                             present_state    <=  TRANSMIT_STATE_0;
///                                           end
///                                         end////if (assert_bctl_2 == 1'b1)
///                                         else begin
///                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                           //result <= send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                           present_state    <=  TRANSMIT_STATE_0;
///                                         end////if (assert_bctl_2 == 1'b1)
///                                       end////if (pkt_end == 1)
///                                       else begin //// transmit same for remaining LBUS clocks
///                                         if (send_sop == 1'b1 && channel_change == 1'b1) begin
///                                           if (BURST_MAX != 2'b00) begin
///                                             case (segment_no)
///                                               0: begin
///                                                    //result <= send_packet(channel,4'b0001,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b1;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                  end
///                                               1: begin
///                                                    //result <= send_packet(channel,4'b0010,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b1;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                  end
///                                               2: begin
///                                                    //result <= send_packet(channel,4'b0100,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b1;     sopout3 <= 1'b0;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                  end
///                                               3: begin
///                                                    //result <= send_packet(channel,4'b1000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b1;
///                                                     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                     enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                  end
///                                             endcase
///                                           end 
///                                           send_sop <= 1'b0;
///                                         end
///                                         else begin
///                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                           //result <= send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0000);
///                                                sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                         end////if (send_sop == 1'b1)
///                                       end////if (pkt_end == 1)
///                                     end ////if (assert_bctl_1 == 1'b0)
///                                     else begin ////transmit bctl
///                                       //result <= send_packet_with_bctl(segment_no);
///                                               if ((BURST_MAX == 2'b11) && (BURST_SHORT == 3'b001)) begin
///                                                 case (segment_no)
///                                                   0 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0100);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b1;    bctlout3 <= 1'b0;
///                                                       end 
///                                                   1 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b1000);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b1;
///                                                       end
///                                                   2 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0001);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b1;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       end 
///                                                   3 : begin
///                                                           ////(channel,sop,eop,enable,errout,mtyout,bctlout)
///                                                           //result = send_packet(channel,4'b0000,4'b0000,4'b1111,4'b0000,{4'b0,4'b0,4'b0,4'b0},4'b0010);
///                                                           sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
///                                                           eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
///                                                           enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
///                                                           errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
///                                                           mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
///                                                           bctlout0 <= 1'b0;    bctlout1 <= 1'b1;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
///                                                       end 
///                                                 endcase
///                                               end
///                                     end////if (assert_bctl_1 == 1'b0)
///                                  end////if(ready == 1'b0)
///                                end
///            HOLD_STATE          :
///                                begin
///                                  if((ready == 1'b0) || (ready_d1 == 1'b0) || (ready_d2 == 1'b0))
///                                  begin
///                                    present_state      <=  HOLD_STATE;
///                                  end
///                                  else
///                                  begin
///                                    if (from_st == 2'b01) begin
///                                      present_state      <=  TRANSMIT_STATE_0;
///                                    end
///                                    else if (from_st == 2'b10)
///                                    begin
///                                      present_state      <=  TRANSMIT_STATE_1;
///                                    end
///                                  end
///                                end
///
///            DONE_STATE          : 
///                                begin
///                                  tx_done_int        <=  1'b1;
///                                  present_state      <=  PKT_RESTART_STATE; 
///
///                                end
/// 
///
///        PKT_RESTART_STATE       : 
///                                begin 
///                                  gen_busy             <=  1'b0;
///                                  if((tx_restart_rise_edge == 1'b1) && (rx_aligned == 1'b1)) 
///
///                                  begin 
///                                    present_state    <=    TOP_IDLE_STATE;
///                                  end
///                                  else
///                                  begin
///                                    present_state    <=    PKT_RESTART_STATE;
///                                  end
///                                end
///
///                default         : 
///                                begin
///                                  present_state      <=  TOP_IDLE_STATE;
///                                  tx_done_int        <=  1'b0;
///                                  gen_gt_locked      <=  1'b0;
///                                  gen_busy           <=  1'b0;
///                                  sopout0            <=  1'b0;
///                                  eopout0            <=  1'b0;
///                                  enaout0            <=  1'b0;
///                                  errout0            <=  1'b0;
///                                  mtyout0            <=  4'd0;
///                                  bctlout0           <=  1'b0;
///
///                                  sopout1            <=  1'b0;
///                                  eopout1            <=  1'b0;
///                                  enaout1            <=  1'b0;
///                                  errout1            <=  1'b0;
///                                  mtyout1            <=  4'd0;
///                                  bctlout1           <=  1'b0;
///
///                                  sopout2            <=  1'b0;
///                                  eopout2            <=  1'b0;
///                                  enaout2            <=  1'b0;
///                                  errout2            <=  1'b0;
///                                  mtyout2            <=  4'd0;
///                                  bctlout2           <=  1'b0;
///
///                                  sopout3            <=  1'b0;
///                                  eopout3            <=  1'b0;
///                                  enaout3            <=  1'b0;
///                                  errout3            <=  1'b0;
///                                  mtyout3            <=  4'd0;
///                                  bctlout3           <=  1'b0;
///                                  enable             <=  1'b0;  
///
///
///                                end
///    endcase 
///  end
///end

always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
    flip_data_d1   <= 1'b0;
  end
  else
  begin
    flip_data_d1   <= flip_data;
  end
end


always @( posedge clk  )
begin
  if(reset == 1'b1)
  begin
     dataout0           <=  128'd0;
     dataout1           <=  128'd0;
     dataout2           <=  128'd0;
     dataout3           <=  128'd0;
     chanout0 <= TX_CHANNEL_PAR_1; 
     chanout1 <= TX_CHANNEL_PAR_1;
     chanout2 <= TX_CHANNEL_PAR_1;
     chanout3 <= TX_CHANNEL_PAR_1;
     sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
     eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
     errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
     mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
     bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
     clk_cnt <= 5'b0;
  end
  else
  begin
     if(ready == 1'b1) begin
       clk_cnt <= clk_cnt + 5'b1;
       if (clk_cnt == 0) begin
         sopout0 <= 1'b1;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
         eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
         enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
         errout0 <= 1'b0;     errout1 <= 1'b0;     errout2 <= 1'b0;     errout3 <= 1'b0;
         mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
         bctlout0 <= 1'b0;    bctlout1 <= 1'b0;    bctlout2 <= 1'b0;    bctlout3 <= 1'b0;
         dataout0       <=  128'h00000000000000010000000000000000;
         dataout1       <=  128'h00000000000000030000000000000002;
         dataout2       <=  128'h00000000000000050000000000000004;
         dataout3       <=  128'h00000000000000070000000000000006;
       end
       else
       begin 
         sopout0 <= 1'b0;     sopout1 <= 1'b0;     sopout2 <= 1'b0;     sopout3 <= 1'b0;
         enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
         dataout0 <= dataout0 + 128'h4;
         dataout1 <= dataout1 + 128'h4;
         dataout2 <= dataout2 + 128'h4;
         dataout3 <= dataout3 + 128'h4;
       end
       if (clk_cnt == 15) begin
         enaout0 <= 1'b1;     enaout1 <= 1'b1;     enaout2 <= 1'b1;     enaout3 <= 1'b1;
         eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b1;
         mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0101;
       end
       if (clk_cnt == 16) begin
         eopout0 <= 1'b0;     eopout1 <= 1'b0;     eopout2 <= 1'b0;     eopout3 <= 1'b0;
         mtyout0 <= 4'b0000;  mtyout1 <= 4'b0000;  mtyout2 <= 4'b0000;  mtyout3 <= 4'b0000;
         enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
       end
      end
      else
      begin
        enaout0 <= 1'b0;     enaout1 <= 1'b0;     enaout2 <= 1'b0;     enaout3 <= 1'b0;
      end
   end



end







////3 stage registering
always @( posedge clk )
begin
  if(reset == 1'b1)  begin
    tx_fail_led_3d          <=  1'b0;
    gen_gt_locked_led_3d    <=  1'b0;
    tx_gen_busy_led_3d      <=  1'b0;
    gen_tx_done_led_3d      <=  1'b0;
    
    tx_fail_led_2d          <=  1'b0;
    gen_gt_locked_led_2d    <=  1'b0;
    tx_gen_busy_led_2d      <=  1'b0;
    gen_tx_done_led_2d      <=  1'b0;
    
    tx_fail_led_d          <=  1'b0;
    gen_gt_locked_led_d     <=  1'b0;
    tx_gen_busy_led_d       <=  1'b0;
    gen_tx_done_led_d       <=  1'b0;
  end 
  else 
  begin
    tx_fail_led_d           <=  tx_fail_reg;
    tx_fail_led_2d          <=  tx_fail_led_d;
    tx_fail_led_3d          <=  tx_fail_led_2d;

    gen_gt_locked_led_d     <=  gen_gt_locked;
    gen_gt_locked_led_2d    <=  gen_gt_locked_led_d;
    gen_gt_locked_led_3d    <=  gen_gt_locked_led_2d;
    
    tx_gen_busy_led_d       <=  gen_busy;
    tx_gen_busy_led_2d      <=  tx_gen_busy_led_d;
    tx_gen_busy_led_3d      <=  tx_gen_busy_led_2d;
    
    gen_tx_done_led_d       <=  gen_tx_done;
    gen_tx_done_led_2d      <=  gen_tx_done_led_d;
    gen_tx_done_led_3d      <=  gen_tx_done_led_2d;
    
  end
end

 syncer_gen i_gen_sys_reset_syncer (

    .clk                 (clk),
    .resetn_async        (sys_reset),
    .resetn              (gen_sys_reset_syncer)

  ); 

always @( posedge clk )
begin
  if  ( reset == 1'b1 )
    tx_restart_rise_edge   <= 1'b0;
  else
  begin
    if  (( tx_restart_2d == 1'b1) && ( tx_restart_3d == 1'b0))
      tx_restart_rise_edge  <= 1'b1;
    else 
      tx_restart_rise_edge  <= 1'b0;
  end
end

always @( posedge clk )
begin
  if(gen_sys_reset_syncer == 1'b1)  begin
    tx_gt_locked_led        <=  1'b0;
    tx_busy_led             <=  1'b0;
    tx_done_led             <=  1'b0;
    tx_fail_led             <=  1'b0;
  end 
  else 
  begin
    tx_gt_locked_led        <=  gen_gt_locked_led_3d;
    tx_busy_led             <=  tx_gen_busy_led_3d;
    tx_done_led             <=  gen_tx_done_led_3d;
    tx_fail_led             <=  tx_fail_led_3d;
  end
end




////3 stage registering
always@(posedge clk)
begin
  if(reset == 1'b1)  begin
    tx_restart_d            <=  1'b0;
    tx_restart_2d           <=  1'b0;
    tx_restart_3d           <=  1'b0;
  end else begin
    tx_restart_d            <=  tx_restart_in;
    tx_restart_2d           <=  tx_restart_d;
    tx_restart_3d           <=  tx_restart_2d;
    end
end




    
endmodule


module syncer_gen
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


