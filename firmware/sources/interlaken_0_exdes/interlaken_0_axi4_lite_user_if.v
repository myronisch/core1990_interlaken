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

module interlaken_0_axi4_lite_user_if
   (
    input  wire            lbus_clk,
    input  wire            reset,
    input  wire            rx_gt_locked,
    input  wire            stat_rx_aligned,
    input                  rx_done,
    input                  rx_busy,
    output wire            rx_busy_led,

    output wire            sanity_init_done,

    input                  s_axi_aclk,
    input                  s_axi_sreset,
    input                  s_axi_pm_tick,
    output  [31:0]         s_axi_awaddr,
    output                 s_axi_awvalid,
    
    input                  s_axi_awready,
    
    output  [31:0]         s_axi_wdata,
    output  [3:0]          s_axi_wstrb,
    output                 s_axi_wvalid,
    input                  s_axi_wready,
    
    input   [1:0]          s_axi_bresp,
    input                  s_axi_bvalid,
    output                 s_axi_bready,
    
    output  [31:0]         s_axi_araddr,
    output                 s_axi_arvalid,
    input                  s_axi_arready,
    input   [31:0]         s_axi_rdata,
    input   [1:0]          s_axi_rresp,
    input                  s_axi_rvalid,
    output                 s_axi_rready

    );

    //// axi_user_prestate
    parameter STATE_AXI_IDLE            = 0;
    parameter STATE_GT_LOCKED           = 1;
    parameter STATE_INIT_RX_ALIGNED     = 2;
    parameter STATE_WAIT_RX_ALIGNED     = 3;
    parameter STATE_AXI_RD_WR           = 4;
    parameter STATE_INIT_PKT_TRANSFER   = 5;
    parameter STATE_WAIT_SANITY_DONE    = 6;
    parameter STATE_TEST_WAIT           = 7;
    parameter STATE_READ_STATS          = 8;
    parameter STATE_READ_DONE           = 9;
    parameter STATE_TEST_DONE           = 10;
    parameter STATE_INVALID_AXI_RD_WR   = 11;

    //// axi_reg_map address
    parameter  ADDR_CORE_VERSION_REG                 =  32'h00000000;
    parameter  ADDR_GT_RESET_REG                     =  32'h00000004;
    parameter  ADDR_RESET_REG                        =  32'h00000008;
    parameter  ADDR_CONFIGURATION_TX_REG             =  32'h0000000C;
    parameter  ADDR_CONFIGURATION_TX_DIAGWORD_REG    =  32'h00000010;
    parameter  ADDR_CONFIGURATION_RX_REG             =  32'h00000014;

    parameter  ADDR_STAT_TX_STATUS_REG               =  32'h00000200;

    parameter  ADDR_STAT_RX_STATUS_REG               =  32'h00000204;
    parameter  ADDR_STAT_RX_DIAGWORD_REG             =  32'h00000208;
    parameter  ADDR_STAT_RX_MUBITS_REG               =  32'h0000020C;
    parameter  ADDR_STAT_RX_SYNCED_REG               =  32'h00000210;
    parameter  ADDR_STAT_RX_SYNCED_ERR_REG           =  32'h00000214;
    parameter  ADDR_STAT_RX_MF_ERR_REG               =  32'h00000218;
    parameter  ADDR_STAT_RX_MF_LEN_ERR_REG           =  32'h0000021C;
    parameter  ADDR_STAT_RX_MF_REPEAT_ERR_REG        =  32'h00000220;
    parameter  ADDR_STAT_RX_DESCRAM_ERR_MSG          =  32'h00000224;

    parameter  ADDR_STAT_RX_CRC32_ERR_LANE0          =  32'h000002C0;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE1          =  32'h000002C8;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE2          =  32'h000002D0;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE3          =  32'h000002D8;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE4          =  32'h000002E0;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE5          =  32'h000002E8;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE6          =  32'h000002F0;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE7          =  32'h000002F8;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE8          =  32'h00000300;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE9          =  32'h00000308;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE10         =  32'h00000310;
    parameter  ADDR_STAT_RX_CRC32_ERR_LANE11         =  32'h00000318;
    parameter  ADDR_STAT_RX_CRC24_ERR                =  32'h00000320;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE0       =  32'h00000328;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE1       =  32'h00000330;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE2       =  32'h00000338;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE3       =  32'h00000340;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE4       =  32'h00000348;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE5       =  32'h00000350;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE6       =  32'h00000358;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE7       =  32'h00000360;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE8       =  32'h00000368;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE9       =  32'h00000370;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE10      =  32'h00000378;
    parameter  ADDR_STAT_RX_BAD_TYPE_ERR_LANE11      =  32'h00000380;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE0        =  32'h00000388;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE1        =  32'h00000390;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE2        =  32'h00000398;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE3        =  32'h000003A0;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE4        =  32'h000003A8;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE5        =  32'h000003B0;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE6        =  32'h000003B8;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE7        =  32'h000003C0;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE8        =  32'h000003C8;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE9        =  32'h000003D0;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE10       =  32'h000003D8;
    parameter  ADDR_STAT_RX_FRAMING_ERR_LANE11       =  32'h000003E0;


    parameter  ADDR_TICK_REG                         =  32'h000002B0;

    ////State Registers for TX
    reg  [3:0]     axi_user_prestate;

    reg  [31:0]    axi_wr_data;
    reg  [31:0]    axi_read_data;
    wire [31:0]    axi_rd_data;
    reg  [31:0]    axi_wr_addr, axi_rd_addr;
    reg  [3:0]     axi_wr_strobe;
    reg            axi_wr_data_valid;
    reg            axi_wr_addr_valid;
    reg            axi_rd_addr_valid;
    reg            axi_rd_req;
    reg            axi_wr_req;
    wire           axi_wr_ack;
    wire           axi_rd_ack;
    wire           axi_wr_err;
    wire           axi_rd_err;
    reg  [7:0]     rd_wr_cntr; 
    reg  [31:0]    stat_tx_status_v;
    reg  [31:0]    stat_rx_status_v, stat_rx_mubits_v, stat_rx_synced_v, stat_rx_synced_err_lane0_v, stat_rx_crc32_err_v, stat_rx_crc24_err_v, stat_rx_bad_type_err_lane0_v;
    reg            sanity_init_done_r;
    reg            init_rx_aligned;
    reg            init_data_sanity;
    reg            init_stat_read;
    wire           stat_rx_aligned_sync;
    wire           gt_locked_sync;
    wire           rx_done_sync;
    wire           rx_busy_sync;
    reg            rx_busy_led_r;
     
    wire            pm_tick_r;
    assign pm_tick_r = s_axi_pm_tick;

    ////----------------------------------------TX Module -----------------------//
    
    //////////////////////////////////////////////////
    ////State Machine 
    //////////////////////////////////////////////////
    always @( posedge s_axi_aclk )
    begin
        if ( s_axi_sreset == 1'b1 )
        begin
            axi_user_prestate         <= STATE_AXI_IDLE;
            axi_rd_addr               <= 32'd0;
            axi_rd_addr_valid         <= 1'b0;
            axi_wr_data               <= 32'd0;
            axi_read_data             <= 32'd0;
            axi_wr_addr               <= 32'd0;
            axi_wr_addr_valid         <= 1'b0;
            axi_wr_data_valid         <= 1'b0;
            axi_wr_strobe             <= 4'd0;
            axi_rd_req                <= 1'b0;
            axi_wr_req                <= 1'b0;
            rd_wr_cntr                <= 8'd0;
            init_rx_aligned           <= 1'b0;
            init_data_sanity          <= 1'b0;
            init_stat_read            <= 1'b0;
            sanity_init_done_r        <= 1'b0;
            rx_busy_led_r             <= 1'b0;
            stat_tx_status_v          <= 32'd0;
            stat_rx_status_v             <= 32'd0;
            stat_rx_mubits_v             <= 32'd0;
            stat_rx_synced_v             <= 32'd0;
            stat_rx_synced_err_lane0_v         <= 32'd0;
            stat_rx_crc32_err_v          <= 32'd0;
            stat_rx_crc24_err_v          <= 32'd0;
            stat_rx_bad_type_err_lane0_v <= 32'd0;
        end
        else
        begin
        case (axi_user_prestate)
            STATE_AXI_IDLE            :
                                     begin
                                         axi_rd_addr               <= 32'd0;
                                         axi_rd_addr_valid         <= 1'b0;
                                         axi_wr_data               <= 32'd0;
                                         axi_read_data             <= 32'd0;
                                         axi_wr_addr               <= 32'd0;
                                         axi_wr_addr_valid         <= 1'b0;
                                         axi_wr_data_valid         <= 1'b0;
                                         axi_wr_strobe             <= 4'd0;
                                         axi_rd_req                <= 1'b0;
                                         axi_wr_req                <= 1'b0;
                                         rd_wr_cntr                <= 8'd0;
                                         init_rx_aligned           <= 1'b0;
                                         init_data_sanity          <= 1'b0;
                                         init_stat_read            <= 1'b0;
                                         sanity_init_done_r        <= 1'b0;
                                         rx_busy_led_r             <= 1'b0;
                                         stat_tx_status_v          <= 32'd0;
                                         stat_rx_status_v          <= 32'd0;
                                         stat_rx_mubits_v          <= 32'd0;
                                         stat_rx_synced_v          <= 32'd0;
                                         stat_rx_synced_err_lane0_v      <= 32'd0;
                                         stat_rx_crc32_err_v       <= 32'd0;
                                         stat_rx_crc24_err_v       <= 32'd0;
                                         stat_rx_bad_type_err_lane0_v <= 32'd0;
                                         //// State transition
                                         if  (gt_locked_sync == 1'b1)
                                         begin
                                             axi_user_prestate <= STATE_GT_LOCKED;
                                         end
                                         else
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                     end
            STATE_GT_LOCKED          :
                                     begin
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_read_data           <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         rx_busy_led_r           <= 1'b1;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b0;
                                         //// State transition
                                         if  (gt_locked_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else 
                                             axi_user_prestate <= STATE_INIT_RX_ALIGNED;
                                     end
            STATE_INIT_RX_ALIGNED    :
                                     begin
                                         rx_busy_led_r           <= 1'b1;
                                         init_rx_aligned         <= 1'b1;

                                         case (rd_wr_cntr)
                                             'd0     : begin
                                                           $display( "           AXI4-Lite Write Started to Config the Core CTL_* Ports ..." );
                                                           axi_wr_data             <= 32'h00000000;       
                                                           axi_wr_addr             <= ADDR_CONFIGURATION_TX_REG; 
                                                           axi_wr_addr_valid       <= 1'b1;
                                                           axi_wr_data_valid       <= 1'b1;
                                                           axi_wr_strobe           <= 4'hF;
                                                           axi_rd_req              <= 1'b0;
                                                           axi_wr_req              <= 1'b1;
                                                       end
                                             'd1     : begin
                                                           axi_wr_data             <= 32'h00001FFF;
                                                           axi_wr_addr             <= ADDR_CONFIGURATION_TX_DIAGWORD_REG;
                                                           axi_wr_addr_valid       <= 1'b1;
                                                           axi_wr_data_valid       <= 1'b1;
                                                           axi_wr_strobe           <= 4'hF;
                                                           axi_rd_req              <= 1'b0;
                                                           axi_wr_req              <= 1'b1;
                                                       end
                                             default : begin
                                                           axi_wr_data             <= 32'h0;
                                                           axi_wr_addr             <= 32'h0;
                                                           axi_wr_addr_valid       <= 1'b0;
                                                           axi_wr_data_valid       <= 1'b0;
                                                           axi_wr_strobe           <= 4'h0;
                                                           axi_rd_req              <= 1'b0;
                                                           axi_wr_req              <= 1'b0;
                                                       end
                                         endcase

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else if  (rd_wr_cntr == 8'd2)
                                         begin
                                             $display( "           AXI4-Lite Write Completed" );
                                             axi_user_prestate <= STATE_WAIT_RX_ALIGNED;
                                         end
                                         else
                                             axi_user_prestate <= STATE_AXI_RD_WR;
                                     end
            STATE_AXI_RD_WR          :
                                     begin
                                         if (s_axi_awready) begin
                                             axi_wr_addr             <= 32'd0;
                                             axi_wr_addr_valid       <= 1'b0;
                                             axi_wr_req              <= 1'b0;
                                        end
                                        if (s_axi_wready) begin
                                             axi_wr_data             <= 32'd0;
                                             axi_wr_data_valid       <= 1'b0;
                                             axi_wr_strobe           <= 4'd0;
                                        end
                                        if (s_axi_arready) begin
                                             axi_rd_addr             <= 32'd0;
                                             axi_rd_addr_valid       <= 1'b0;
                                             axi_rd_req              <= 1'b0;
                                        end
                                        
                                         //// State transition
                                         if (pm_tick_r == 1'b1)
                                         begin
                                            rd_wr_cntr        <= rd_wr_cntr + 8'd1;
                                            axi_user_prestate <= STATE_READ_STATS;
                                         end
                                         else if  ((axi_wr_ack == 1'b1 && axi_wr_err == 1'b1) || (axi_rd_ack == 1'b1 && axi_rd_err == 1'b1))
                                         begin
                                             $display("ERROR : INVALID AXI4-Lite READ/WRITE OPERATION OCCURED, APPLY SYS_RESET TO RECOVER ..........");
                                             axi_user_prestate <= STATE_INVALID_AXI_RD_WR;
                                         end
                                         else if  ((axi_wr_ack == 1'b1 && axi_wr_err == 1'b0) || (axi_rd_ack == 1'b1 && axi_rd_err == 1'b0))
                                         begin
                                             rd_wr_cntr              <= rd_wr_cntr + 8'd1;
                                             axi_read_data           <= axi_rd_data;
                                             if  (init_rx_aligned == 1'b1)
                                                 axi_user_prestate <= STATE_INIT_RX_ALIGNED;
                                             else if  (init_data_sanity == 1'b1)
                                                 axi_user_prestate <= STATE_INIT_PKT_TRANSFER;
                                             else if  (init_stat_read == 1'b1)
                                                 axi_user_prestate <= STATE_READ_STATS;
                                             else
                                                 axi_user_prestate <= STATE_AXI_RD_WR;
                                         end
                                     end
            STATE_WAIT_RX_ALIGNED    :
                                     begin
                                         rx_busy_led_r           <= 1'b1;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_read_data           <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b0;

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else if  (stat_rx_aligned_sync == 1'b1)
                                         begin
                                             axi_user_prestate <= STATE_INIT_PKT_TRANSFER;
                                         end
                                         else
                                             axi_user_prestate <= STATE_WAIT_RX_ALIGNED;
                                     end
            STATE_INIT_PKT_TRANSFER  : 
                                     begin
                                         rx_busy_led_r           <= 1'b1;
                                         init_data_sanity        <= 1'b1;

                                         case (rd_wr_cntr)
                                             'd0     : begin
                                                           $display( "           AXI4 Lite Read Started for Core Version Reg..." );
                                                           axi_rd_addr             <= ADDR_CORE_VERSION_REG;
                                                           axi_rd_addr_valid       <= 1'b1;
                                                           axi_rd_req              <= 1'b1;
                                                           axi_wr_req              <= 1'b0;
                                                       end
                                             'd1     : begin
                                                           $display( "           Core_Version  =  %d.%0d", axi_read_data[15:8], axi_read_data[7:0] );
                                                           $display( "           AXI4-Lite Write Started to Enable data sanity check..." );
                                                           axi_wr_data             <= 32'h00000001;         //// ctl_tx_enable=1 
                                                           axi_wr_addr             <= ADDR_CONFIGURATION_TX_REG;   //// CONFIGURATION_TX_REG
                                                           axi_wr_addr_valid       <= 1'b1;
                                                           axi_wr_data_valid       <= 1'b1;
                                                           axi_wr_strobe           <= 4'hF;
                                                           axi_rd_addr_valid       <= 1'b0;
                                                           axi_rd_req              <= 1'b0;
                                                           axi_wr_req              <= 1'b1;
                                                       end
                                             default : begin
                                                           axi_wr_data             <= 32'h0;
                                                           axi_wr_addr             <= 32'h0;
                                                           axi_wr_addr_valid       <= 1'b0;
                                                           axi_wr_data_valid       <= 1'b0;
                                                           axi_wr_strobe           <= 4'h0;
                                                           axi_rd_addr_valid       <= 1'b0;
                                                           axi_rd_req              <= 1'b0;
                                                           axi_wr_req              <= 1'b0;
                                                       end
                                         endcase

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else if  (rd_wr_cntr == 8'd2)
                                         begin
                                             $display( "           AXI4-Lite Write Completed" );
                                             $display("INFO : Packet Generator and Monitor (SANITY Testing) STARTED");
                                             axi_user_prestate <= STATE_WAIT_SANITY_DONE;
                                         end
                                         else
                                             axi_user_prestate <= STATE_AXI_RD_WR;
                                     end
            STATE_WAIT_SANITY_DONE   :
                                      begin
                                         rx_busy_led_r           <= 1'b1;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_read_data           <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b1;

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else if  (rx_busy_sync == 1'b0)
                                             axi_user_prestate <= STATE_TEST_WAIT;
                                         else
                                             axi_user_prestate <= STATE_WAIT_SANITY_DONE;
                                     end

            STATE_TEST_WAIT          :
                                      begin
                                         rx_busy_led_r           <= 1'b1;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_read_data           <= 32'd0;
                                         axi_wr_data             <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b1;

                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         //// State transition
                                         else if  (rx_busy_sync == 1'b0)
                                         begin
                                             axi_user_prestate <= STATE_READ_STATS;
                                         end
                                         else
                                             axi_user_prestate <= STATE_TEST_WAIT;
                                     end
            STATE_READ_STATS         : 
                                     begin
                                         rx_busy_led_r           <= 1'b1;
                                         init_stat_read          <= 1'b1;

                                         case (rd_wr_cntr)
                                             'd0       : begin
                                                             if (pm_tick_r == 1'b1)
                                                                $display( "           PM Tick input is driven as %b", pm_tick_r );
                                                             else
                                                             begin
                                                                $display( "           PM Tick is written through AXI" );
                                                                axi_wr_data             <= 32'h00000001;   //// If input pin pm_tick = 1'b0, then AXI pm tick write 1'b1 will happen thru AXI interface
                                                                axi_wr_addr             <= ADDR_TICK_REG;  //// ADDR_TICK_REG
                                                                axi_wr_addr_valid       <= 1'b1;
                                                                axi_wr_data_valid       <= 1'b1;
                                                                axi_wr_strobe           <= 4'hF;
                                                                axi_rd_req              <= 1'b0;
                                                                axi_wr_req              <= 1'b1;
                                                             end
                                                       end
                                             'd1       : begin
                                                             $display( "           AXI4-Lite Read Started for TX Status..." );
                                                             axi_rd_addr                     <= ADDR_STAT_TX_STATUS_REG;
                                                             axi_rd_addr_valid               <= 1'b1;
                                                             axi_rd_req                      <= 1'b1;
                                                             axi_wr_req                      <= 1'b0;
                                                       end
                                             'd2       : begin
                                                             $display( "           AXI4-Lite Read Started for RX Status..." );
                                                             axi_rd_addr                     <= ADDR_STAT_RX_MUBITS_REG;
                                                             axi_rd_addr_valid               <= 1'b1;
                                                             axi_rd_req                      <= 1'b1;
                                                             axi_wr_req                      <= 1'b0;
                                                             stat_tx_status_v                <= axi_read_data;
                                                       end
                                             'd3       : begin
                                                             axi_rd_addr                     <= ADDR_STAT_RX_CRC32_ERR_LANE0;
                                                             axi_rd_addr_valid               <= 1'b1;
                                                             axi_rd_req                      <= 1'b1;
                                                             axi_wr_req                      <= 1'b0;
                                                             stat_rx_mubits_v                <= axi_read_data;
                                                       end
                                             'd4       : begin
                                                             axi_rd_addr                     <= ADDR_STAT_RX_CRC24_ERR;
                                                             axi_rd_addr_valid               <= 1'b1;
                                                             axi_rd_req                      <= 1'b1;
                                                             axi_wr_req                      <= 1'b0;
                                                             stat_rx_crc32_err_v             <= axi_read_data;
                                                       end
                                             'd5       : begin
                                                             stat_rx_crc24_err_v             <= axi_read_data;
                                                             axi_wr_addr                      <= 32'h0;
                                                             axi_wr_addr_valid                <= 1'b0;
                                                             axi_wr_data_valid                <= 1'b0;
                                                             axi_wr_strobe                    <= 4'h0;
                                                             axi_rd_req                       <= 1'b0;
                                                             axi_wr_req                       <= 1'b0;
                                                             axi_rd_addr                      <= 32'd0;
                                                             axi_rd_addr_valid                <= 1'b0;
                                                       end
                                              default : begin
                                                             axi_wr_data                      <= 32'h0;
                                                             axi_wr_addr                      <= 32'h0;
                                                             axi_wr_addr_valid                <= 1'b0;
                                                             axi_wr_data_valid                <= 1'b0;
                                                             axi_wr_strobe                    <= 4'h0;
                                                             axi_rd_req                       <= 1'b0;
                                                             axi_wr_req                       <= 1'b0;
                                                             axi_rd_addr                      <= 32'd0;
                                                             axi_rd_addr_valid                <= 1'b0;
                                                       end
                                         endcase

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                         begin
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         end
                                         else if  (rd_wr_cntr == 8'd5)
                                         begin
                                             axi_user_prestate <= STATE_READ_DONE;
                                         end
                                         else
                                             axi_user_prestate <= STATE_AXI_RD_WR;
                                     end
            STATE_READ_DONE          :
                                     begin
                                         rx_busy_led_r           <= 1'b0;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b0;

                                         $display( "               STAT_TX_STATUS_GEG         = %d", stat_tx_status_v);
                                         $display( "               STAT_RX_MUBITS_REG         = %d", stat_rx_mubits_v );
                                         $display( "               STAT_RX_CRC32_ERR          = %d", stat_rx_crc32_err_v );
                                         $display( "               STAT_RX_CRC24_ERR          = %d", stat_rx_crc24_err_v );
                                         $display( "           AXI4-Lite Read Completed" );
                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else 
                                             axi_user_prestate <= STATE_TEST_DONE;
                                     end
             STATE_TEST_DONE         :
                                     begin
                                         rx_busy_led_r           <= 1'b0;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b0;

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else if (rx_busy_sync == 1'b1 && stat_rx_aligned_sync == 1'b1)
                                             axi_user_prestate <= STATE_WAIT_SANITY_DONE;
                                         else
                                             axi_user_prestate <= STATE_TEST_DONE;
                                     end
             STATE_INVALID_AXI_RD_WR :
                                     begin
                                         rx_busy_led_r           <= 1'b0;
                                         axi_rd_addr             <= 32'd0;
                                         axi_rd_addr_valid       <= 1'b0;
                                         axi_wr_data             <= 32'd0;
                                         axi_wr_addr             <= 32'd0;
                                         axi_wr_addr_valid       <= 1'b0;
                                         axi_wr_data_valid       <= 1'b0;
                                         axi_wr_strobe           <= 4'd0;
                                         axi_rd_req              <= 1'b0;
                                         axi_wr_req              <= 1'b0;
                                         rd_wr_cntr              <= 8'd0;
                                         init_rx_aligned         <= 1'b0;
                                         init_data_sanity        <= 1'b0;
                                         init_stat_read          <= 1'b0;
                                         sanity_init_done_r      <= 1'b0;

                                         //// State transition
                                         if  (gt_locked_sync == 1'b0 || stat_rx_aligned_sync == 1'b0)
                                             axi_user_prestate <= STATE_AXI_IDLE;
                                         else
                                             axi_user_prestate <= STATE_INVALID_AXI_RD_WR;
                                     end
            default                  :
                                     begin
                                         axi_rd_addr               <= 32'd0;
                                         axi_rd_addr_valid         <= 1'b0;
                                         axi_wr_data               <= 32'd0;
                                         axi_read_data             <= 32'd0;
                                         axi_wr_addr               <= 32'd0;
                                         axi_wr_addr_valid         <= 1'b0;
                                         axi_wr_data_valid         <= 1'b0;
                                         axi_wr_strobe             <= 4'd0;
                                         axi_rd_req                <= 1'b0;
                                         axi_wr_req                <= 1'b0;
                                         rd_wr_cntr                <= 8'd0;
                                         init_rx_aligned           <= 1'b0;
                                         init_data_sanity          <= 1'b0;
                                         init_stat_read            <= 1'b0;
                                         sanity_init_done_r        <= 1'b0;
                                         rx_busy_led_r             <= 1'b0;
                                         stat_tx_status_v          <= 32'd0;
                                         stat_rx_status_v          <= 32'd0;
                                         stat_rx_mubits_v          <= 32'd0;
                                         stat_rx_synced_v          <= 32'd0;
                                         stat_rx_synced_err_lane0_v      <= 32'd0;
                                         stat_rx_crc32_err_v       <= 32'd0;
                                         stat_rx_crc24_err_v       <= 32'd0;
                                         stat_rx_bad_type_err_lane0_v <= 32'd0;
                                         axi_user_prestate         <= STATE_AXI_IDLE;
                                     end
            endcase
        end
    end

interlaken_0_axi4_lite_rd_wr_if i_interlaken_0_axi4_lite_rd_wr_if
  (
    .axi_aclk(s_axi_aclk),
    .axi_sreset(s_axi_sreset),
    .axi_bresp(s_axi_bresp),
    .axi_bvalid(s_axi_bvalid),
    .axi_bready(s_axi_bready),
    .axi_rdata(s_axi_rdata),
    .axi_rresp(s_axi_rresp),
    .axi_rvalid(s_axi_rvalid),
    .axi_rready(s_axi_rready),
    .axi_awaddr(s_axi_awaddr),
    .axi_awvalid(s_axi_awvalid),
    .axi_awready(s_axi_awready),
    .axi_wdata(s_axi_wdata),
    .axi_wstrb(s_axi_wstrb),
    .axi_wvalid(s_axi_wvalid),
    .axi_wready(s_axi_wready),
    .axi_araddr(s_axi_araddr),
    .axi_arvalid(s_axi_arvalid),
    .axi_arready(s_axi_arready),
    .usr_write_req(axi_wr_req),
    .usr_read_req(axi_rd_req),
    .usr_rdata(axi_rd_data),
    .usr_araddr(axi_rd_addr),
    .usr_arvalid(axi_rd_addr_valid),
    .usr_awaddr(axi_wr_addr),
    .usr_awvalid(axi_wr_addr_valid),
    .usr_wdata(axi_wr_data),
    .usr_wvalid(axi_wr_data_valid),
    .usr_wstrb(axi_wr_strobe),    
    .usr_wrack(axi_wr_ack),
    .usr_rdack(axi_rd_ack),
    .usr_wrerr(axi_wr_err),
    .usr_rderr(axi_rd_err)
  );
 
   interlaken_0_cdc_sync_axi i_interlaken_0_ilkn_cdc_sync_sanity_init_done
  (
   .clk              (lbus_clk),
   .signal_in        (sanity_init_done_r), 
   .signal_out       (sanity_init_done)
  );
  

   interlaken_0_cdc_sync_axi i_interlaken_0_ilkn_cdc_sync_rx_gt_locked_led
  (
   .clk              (s_axi_aclk),
   .signal_in        (rx_gt_locked), 
   .signal_out       (gt_locked_sync)
  );
  
   interlaken_0_cdc_sync_axi i_interlaken_0_ilkn_cdc_sync_stat_rx_aligned
  (
   .clk              (s_axi_aclk),
   .signal_in        (stat_rx_aligned), 
   .signal_out       (stat_rx_aligned_sync)
  );
 
   interlaken_0_cdc_sync_axi i_interlaken_0_ilkn_cdc_sync_rx_done_led
  (
   .clk              (s_axi_aclk),
   .signal_in        (rx_done), 
   .signal_out       (rx_done_sync)
  );
 
  interlaken_0_cdc_sync_axi i_interlaken_0_ilkn_cdc_sync_rx_busy
  (
   .clk              (s_axi_aclk),
   .signal_in        (rx_busy), 
   .signal_out       (rx_busy_sync)
  );

  assign rx_busy_led      = rx_busy_led_r;

    ////----------------------------------------END TX Module-----------------------//

endmodule

(* DowngradeIPIdentifiedWarnings="yes" *)
module interlaken_0_axi4_lite_rd_wr_if
  (

  input  wire                    axi_aclk,
  input  wire                    axi_sreset,

  input  wire                    usr_write_req,
  input  wire                    usr_read_req,

  //// write side from usr
  input  wire [31:0]             usr_awaddr,
  input  wire                    usr_awvalid,
  input  wire [31:0]             usr_wdata,
  input  wire                    usr_wvalid,
  input  wire [3:0]              usr_wstrb,

  //// write response from axi
  input  wire [1:0]              axi_bresp,
  input  wire                    axi_bvalid,
  output wire                    axi_bready,

  //// read side from usr
  input  wire [31:0]             usr_araddr,
  input  wire                    usr_arvalid,

  //// read side from axi
  input  wire [31:0]             axi_rdata,
  input  wire [1:0]              axi_rresp,
  
  input  wire                    axi_rvalid,
  output wire                    axi_rready,
  output wire                    axi_arvalid,
  input  wire                    axi_arready,

  //// write side to axi
  output wire [31:0]             axi_awaddr,
  output wire                    axi_awvalid,
  input  wire                    axi_awready,

  output wire [31:0]             axi_wdata,
  output wire [3:0]              axi_wstrb,
  output wire                    axi_wvalid,
  input  wire                    axi_wready,

  //// read side to usr
  output wire [31:0]             usr_rdata,
  output wire [31:0]             axi_araddr, 
  output wire                    usr_wrack,
  output wire                    usr_rdack,
  output wire                    usr_wrerr,
  output wire                    usr_rderr
  );

  //// States
  parameter IDLE_STATE  = 0;
  parameter WRITE_STATE = 1;
  parameter READ_STATE  = 2;
  parameter READ_WRITE_STATE = 3;
  parameter ACK_STATE   = 4;

  reg [2:0] pstate;

  reg [31:0]             axi_awaddr_r;
  reg                    axi_awvalid_r;
  reg [31:0]             axi_wdata_r;
  reg [31:0]             axi_rdata_r;
  reg [3:0]              axi_wstrb_r;
  reg                    axi_wvalid_r;

  reg [31:0]             usr_araddr_r;
  reg                    usr_wrack_r;
  reg                    usr_rdack_r;
  reg                    usr_wrerr_r;
  reg                    usr_rderr_r;

  reg                    axi_arvalid_r;
  reg                    axi_bready_r;
  reg                    axi_rready_r;

  reg                    axi_awready_r;
  reg                    axi_wready_r;
  reg                    axi_arready_r;
 
  assign axi_awaddr   =  axi_awready_r ? 32'd0 : axi_awaddr_r;
  assign axi_awvalid  =  axi_awready_r ? 32'd0 : axi_awvalid_r;
  assign axi_wdata    =  axi_wready_r  ? 32'd0 : axi_wdata_r;
  assign axi_wstrb    =  axi_wstrb_r;
  assign axi_wvalid   =  axi_wready_r  ? 32'd0 : axi_wvalid_r;

  assign usr_rdata    =  axi_rdata_r;
  assign axi_bready   =  axi_bready_r;
  assign axi_rready   =  axi_rready_r;
  assign axi_arvalid  =  axi_arready_r ? 32'd0 : axi_arvalid_r;
  assign axi_araddr   =  axi_arready_r ? 32'd0 : usr_araddr_r;

  assign usr_wrack    =  usr_wrack_r;
  assign usr_rdack    =  usr_rdack_r;
  assign usr_wrerr    =  usr_wrerr_r;
  assign usr_rderr    =  usr_rderr_r;

  always @ (posedge axi_aclk)
  begin
        axi_awready_r <= axi_awready;
        axi_wready_r  <= axi_wready;
        axi_arready_r <= axi_arready;   
   end
 
//////////////////////////////////////////////////////////////////////////////
//// Implement axi_bready generation
////
////  axi_bready is asserted for one s_axi_aclk clock cycle when 
////  axi_bvalid is asserted. axi_bready is
////  de-asserted when reset is low.
//////////////////////////////////////////////////////////////////////////////
  always @(posedge axi_aclk)
  begin
     if (axi_sreset == 1'b1)
     begin
        axi_bready_r  <=  1'b0;
     end
     else
     begin
        if ((~axi_bready_r) && (axi_bvalid))
           axi_bready_r  <=  1'b1;
        else
           axi_bready_r  <=  1'b0;
     end
  end

//////////////////////////////////////////////////////////////////////////////
//// Implement axi_rready generation
////
////  axi_rready is asserted for one axi_aclk clock cycle when
////  axi_rvalid is asserted. axi_rready is
////  de-asserted when reset (active low) is asserted.
//////////////////////////////////////////////////////////////////////////////
  always @(posedge axi_aclk)
  begin
     if (axi_sreset == 1'b1)
     begin
        axi_rready_r  <=  1'b0;
     end
     else
     begin
        if ((~axi_rready_r) && (axi_rvalid))
           axi_rready_r  <=  1'b1;
        else
           axi_rready_r  <=  1'b0;
     end
  end

//////////////////////////////////////////////////////////////////////////////
//// State machine flow
//////////////////////////////////////////////////////////////////////////////
  always @(posedge axi_aclk)
  begin
     if (axi_sreset == 1'b1)
     begin
        pstate        <=  IDLE_STATE;

        axi_arvalid_r <=  1'b0;
        usr_araddr_r  <=  32'd0;
        axi_rdata_r   <=  32'd0;

        axi_awvalid_r <=  1'b0;
        axi_awaddr_r  <=  32'd0;
        axi_wvalid_r  <=  1'b0;
        axi_wdata_r   <=  32'd0;
        axi_wstrb_r   <=  4'd0;

        usr_wrack_r   <=  1'b0;
        usr_rdack_r   <=  1'b0;
        usr_wrerr_r   <=  1'b0;
        usr_rderr_r   <=  1'b0;
     end
     else
     begin
        case (pstate)
                IDLE_STATE    : begin
                                    if (usr_read_req == 1'b1 && usr_write_req == 1'b0)
                                    begin
                                       pstate        <=  READ_STATE;
                                       axi_arvalid_r <=  usr_arvalid;
                                       usr_araddr_r  <=  usr_araddr;
                                    end
                                    else if (usr_write_req == 1'b1 && usr_read_req == 1'b0)
                                    begin
                                       pstate        <=  WRITE_STATE;
                                       axi_awvalid_r <=  usr_awvalid;
                                       axi_awaddr_r  <=  usr_awaddr;
                                       axi_wvalid_r  <=  usr_wvalid;
                                       axi_wdata_r   <=  usr_wdata;
                                       axi_wstrb_r   <=  usr_wstrb;
                                    end
                                    else if ((usr_write_req == 1'b1) && (usr_read_req == 1'b1))
                                    begin
                                       pstate        <=  READ_WRITE_STATE;
                                       axi_arvalid_r <=  usr_arvalid;
                                       usr_araddr_r  <=  usr_araddr;
                                       axi_awvalid_r <=  usr_awvalid;
                                       axi_awaddr_r  <=  usr_awaddr;
                                       axi_wvalid_r  <=  usr_wvalid;
                                       axi_wdata_r   <=  usr_wdata;
                                       axi_wstrb_r   <=  usr_wstrb;
                                    end
                                    else
                                    begin
                                       pstate        <=  IDLE_STATE;
                                       axi_arvalid_r <=  1'b0;
                                       usr_araddr_r  <=  32'd0;
                                       axi_rdata_r   <=  32'd0;

                                       axi_awvalid_r <=  1'b0;
                                       axi_awaddr_r  <=  32'd0;
                                       axi_wvalid_r  <=  1'b0;
                                       axi_wdata_r   <=  32'd0;
                                       axi_wstrb_r   <=  4'd0;

                                       usr_wrack_r   <=  1'b0;
                                       usr_rdack_r   <=  1'b0;
                                       usr_wrerr_r   <=  1'b0;
                                       usr_rderr_r   <=  1'b0;
                                    end
                                 end

                WRITE_STATE    : begin
                                    if ((axi_bvalid == 1'b1) && (axi_bready_r == 1'b1))
                                    begin
                                       pstate        <=  ACK_STATE;
                                       usr_wrack_r   <=  1'b1;
                                       if (axi_bresp == 2'b10)
                                          usr_wrerr_r <=  1'b1;
                                       else
                                          usr_wrerr_r <=  1'b0;
                                    end
                                    else
                                    begin
                                       pstate        <=  WRITE_STATE;
                                       axi_awvalid_r <=  usr_awvalid;
                                       axi_awaddr_r  <=  usr_awaddr;
                                       axi_wvalid_r  <=  usr_wvalid;
                                       axi_wdata_r   <=  usr_wdata;
                                       axi_wstrb_r   <=  usr_wstrb;
                                    end
                                 end

                READ_STATE     : begin
                                    if ((axi_rvalid == 1'b1) && (axi_rready_r == 1'b1)) begin
                                       pstate        <=  ACK_STATE;
                                       axi_rdata_r   <=  axi_rdata;
                                       usr_rdack_r   <=  1'b1;
                                       if (axi_rresp == 2'b10)
                                          usr_rderr_r <=  1'b1;
                                       else
                                          usr_rderr_r <=  1'b0;
                                    end
                                    else
                                    begin
                                       pstate        <=  READ_STATE;
                                       axi_arvalid_r <=  usr_arvalid;
                                       usr_araddr_r  <=  usr_araddr;
                                    end
                                 end

              READ_WRITE_STATE : begin
                                  if ((axi_rvalid == 1'b1) && (axi_rready_r == 1'b1)) begin
                                    axi_rdata_r   <= axi_rdata;
                                    if (axi_rresp == 2'b10) 
                                      usr_rderr_r <= 1'b1;
                                    else
                                      usr_rderr_r <= 1'b0;
                                  end
                                 else if ((axi_bvalid == 1'b1) && (axi_bready_r == 1'b1))begin
                                   pstate         <= ACK_STATE;
                                   usr_wrack_r    <= 1'b1;
                                   usr_rdack_r    <= 1'b1;
                                    if (axi_bresp == 2'b10)     
                                     usr_wrerr_r  <= 1'b1;
                                    else
                                     usr_wrerr_r  <= 1'b0;
                                 end 
                                 else
                                 begin
                                    pstate        <=  READ_WRITE_STATE;
                                    axi_awvalid_r <=  usr_awvalid;
                                    axi_awaddr_r  <=  usr_awaddr;
                                    axi_wvalid_r  <=  usr_wvalid;
                                    axi_wdata_r   <=  usr_wdata;
                                    axi_wstrb_r   <=  usr_wstrb;
                                    axi_arvalid_r <=  usr_arvalid;
                                    usr_araddr_r  <=  usr_araddr;
                                 end
                                 end
               
                ACK_STATE      : begin
                                    pstate        <=  IDLE_STATE;
                                    usr_wrack_r   <=  1'b0;
                                    usr_rdack_r   <=  1'b0;
                                    usr_wrerr_r   <=  1'b0;
                                    usr_rderr_r   <=  1'b0;
                                 end

                default        : begin
                                    pstate        <=  IDLE_STATE;
                                    axi_arvalid_r <=  1'b0;
                                    usr_araddr_r  <=  32'd0;
                                    axi_rdata_r   <=  32'd0;
                                    
                                    axi_awvalid_r <=  1'b0;
                                    axi_awaddr_r  <=  32'd0;
                                    axi_wvalid_r  <=  1'b0;
                                    axi_wdata_r   <=  32'd0;
                                    axi_wstrb_r   <=  4'd0;
                                    
                                    usr_wrack_r   <=  1'b0;
                                    usr_rdack_r   <=  1'b0;
                                    usr_wrerr_r   <=  1'b0;
                                    usr_rderr_r   <=  1'b0;
                                 end
        endcase
     end
  end

endmodule


(* DowngradeIPIdentifiedWarnings="yes" *)
module interlaken_0_cdc_sync_axi (
 input clk,
 input signal_in,
 output reg signal_out
);

                          wire sig_in_cdc_from ;
 (* ASYNC_REG = "TRUE" *) reg  s_out_d2_cdc_to;
 (* ASYNC_REG = "TRUE" *) reg  s_out_d3;
 (* ASYNC_REG = "TRUE" *) reg  s_out_d4;

assign sig_in_cdc_from = signal_in;

always @(posedge clk) 
begin
  signal_out       <= s_out_d4;
  s_out_d4         <= s_out_d3;
  s_out_d3         <= s_out_d2_cdc_to;
  s_out_d2_cdc_to  <= sig_in_cdc_from;
end

endmodule

