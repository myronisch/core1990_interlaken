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

module interlaken_0_exdes_tb
(
 input gt0_rxp_in,
 input gt0_rxn_in,
 input gt1_rxp_in,
 input gt1_rxn_in,
 input gt2_rxp_in,
 input gt2_rxn_in,
 input gt3_rxp_in,
 input gt3_rxn_in,
 output gt0_txp_out,
 output gt0_txn_out,
 output gt1_txp_out,
 output gt1_txn_out,
 output gt2_txp_out,
 output gt2_txn_out,
 output gt3_txp_out,
 output gt3_txn_out,
 output rx_aligned_led
);

  reg             init_clk;
  reg             gt_ref_clk0_p;
  reg             gt_ref_clk0_n;
  reg             sys_reset;

  reg             lbus_tx_rx_restart_in;
  wire            tx_done_led;
  wire            tx_busy_led;
  wire            tx_fail_led;
  
  wire            rx_gt_locked_led;
  wire            rx_done_led;
  wire            rx_failed_led;
  wire            rx_busy_led;
  reg                        timed_out;
  reg                        time_out_cntr_en;
  reg  [19 :0]               time_out_cntr;
  reg                        rx_failed_flag;
  reg                        s_axi_pm_tick;
parameter OPERATION          = 3;

interlaken_0_exdes EXDES
(
.init_clk                        (init_clk),
.gt_ref_clk0_p                    (gt_ref_clk0_p),
.gt_ref_clk0_n                    (gt_ref_clk0_n),
.sys_reset                       (sys_reset),

.gt0_rxp_in                   (gt0_rxp_in),
.gt0_rxn_in                   (gt0_rxn_in),
.gt1_rxp_in                   (gt1_rxp_in),
.gt1_rxn_in                   (gt1_rxn_in), 
.gt2_rxp_in                   (gt2_rxp_in),
.gt2_rxn_in                   (gt2_rxn_in),  
.gt3_rxp_in                   (gt3_rxp_in),
.gt3_rxn_in                   (gt3_rxn_in), 








.gt0_txp_out                  (gt0_txp_out),
.gt0_txn_out                  (gt0_txn_out),
.gt1_txp_out                  (gt1_txp_out),
.gt1_txn_out                  (gt1_txn_out), 
.gt2_txp_out                  (gt2_txp_out),
.gt2_txn_out                  (gt2_txn_out), 
.gt3_txp_out                  (gt3_txp_out),
.gt3_txn_out                  (gt3_txn_out), 










  .tx_done_led                  (tx_done_led),
  .tx_busy_led                  (tx_busy_led),
  .tx_fail_led                  (tx_fail_led),
  .rx_gt_locked_led             (rx_gt_locked_led),
  .rx_aligned_led               (rx_aligned_led),
  .rx_done_led                  (rx_done_led),
  .rx_failed_led                (rx_failed_led),
  .rx_busy_led                  (rx_busy_led),
    .s_axi_pm_tick              (s_axi_pm_tick),
.lbus_tx_rx_restart_in          (lbus_tx_rx_restart_in)
);
 
initial 
  begin
      $display("****************");
      $display("INFO : Simulation time may be longer. For faster simulation, please use SIM_SPEED_UP option. For more information refer product guide.");
      $display("****************");
    sys_reset             = 1'b1;  
    lbus_tx_rx_restart_in = 1'b0;
    rx_failed_flag        = 1'b0;
    s_axi_pm_tick         = 1'b0; 
    repeat(1) @(posedge init_clk);
    // Test Case - 1 //
    sys_reset = 0;
    $display("INFO : SYS_RESET RELEASED TO INTERLAKEN IP");
    // timer_en   = 1;
    $display("INFO : WAITING FOR GT LOCK..........");        
      time_out_cntr_en = 1;
      if (OPERATION == 0)
      begin
          $display("ERROR : Invalid Operation");
          $display("INFO  : Test FAILED");
	      $finish;
      end
  
         wait(rx_gt_locked_led || timed_out);

      if(timed_out) 
      begin
        $display("ERROR : TIME OUT, GT LOCK FAILED");
        $finish;
      end
      else 
      begin
        $display("INFO : GT LOCKED");
      end

      $display("INFO : WAITING FOR STAT_RX_ALIGNED..........");
      time_out_cntr_en = 0;
      repeat(1) @(posedge init_clk);

      time_out_cntr_en = 1;
      if (OPERATION == 2)
      begin
          wait ( timed_out);
          lbus_tx_rx_restart_in = 1;
      end
      else
      begin
          wait ( rx_aligned_led || timed_out);
          if(timed_out) 
          begin
              $display("ERROR : TIME OUT, STAT_RX_ALIGNED FAILED");
              $finish;
          end
          else 
          begin
          end   
      end
      time_out_cntr_en = 0;
  

      wait(tx_done_led );
      $display("INFO : ALL PACKETS SENT");
      if (tx_fail_led) 
      begin
          $display("ERROR : TX Overflow error -TX ERROR ");
      end

      wait((rx_done_led || rx_failed_led));
      if(rx_failed_led == 1'b1)
      begin
          rx_failed_flag  = 1'b1;
          $display("ERROR : DATA SANITY FAILED ");
          $display("ERROR : TEST FAILED -RX ERROR ");
      end
      else 
      begin
          $display("INFO : ALL PACKETS RECEIVED");
      end

      //repeat (6) @(posedge init_clk); //// Clocks to complete the pause operation
      //s_axi_pm_tick = 1;  //// If the user wishes to provide the pm tick thru the s_axi_pm_tick input pin, assign 1'b1 else 1'b0
      //                    //// If input pin s_axi_pm_tick = 1'b0, then AXI pm tick write 1'b1 will happen thru AXI interface
      //repeat (2) @(posedge init_clk);
      //s_axi_pm_tick = 0; 

      wait((~tx_busy_led) && (~rx_busy_led))


      repeat(1) @(posedge init_clk);
      lbus_tx_rx_restart_in = 1'b1;
      repeat(1) @(posedge init_clk);
      lbus_tx_rx_restart_in = 1'b0;
      $display("INFO : *****PACKET GENERATION  RESTARTED*****");
      $display("INFO : Packet Generator and Monitor (SANITY Test) STARTED");

      wait((tx_busy_led) && (rx_busy_led))
      wait(tx_done_led);
      $display("INFO : ALL PACKETS SENT");

      wait((rx_done_led || rx_failed_led));
      if(rx_failed_led == 1'b1)
      begin
        rx_failed_flag  = 1'b1;
        $display("ERROR : DATA SANITY FAILED ");
        $display("ERROR : TEST FAILED -RX ERROR ");
      end
      else 
      begin
        $display("INFO : ALL PACKETS RECEIVED");
       end 
      

      //repeat (6) @(posedge init_clk); //// Clocks to complete the pause operation
      //s_axi_pm_tick = 1;  //// If the user wishes to provide the pm tick thru the s_axi_pm_tick input pin, assign 1'b1 else 1'b0
      //                    //// If input pin s_axi_pm_tick = 1'b0, then AXI pm tick write 1'b1 will happen thru AXI interface
      //repeat (2) @(posedge init_clk);
      //s_axi_pm_tick = 0; 
      wait((~tx_busy_led) && (~rx_busy_led))

      if(rx_failed_flag == 1'b1)
      begin
        $display("ERROR : All the Test Case Completed but Failed with Errors/Warnings");
      end
      else 
      begin
        $display("INFO : Test completed successfully");
      end

       repeat(200) @(posedge init_clk);
      $finish;
  end
    ////////////////////////////////////////////////
    //time_out_cntr signal generation Max 26ms
    ////////////////////////////////////////////////
    always @( posedge init_clk or negedge sys_reset )
    begin
        if ( sys_reset == 1'b1 )
        begin
            timed_out     <= 1'b0;
            time_out_cntr <= 20'd0;
        end
        else
        begin
          timed_out <= time_out_cntr[19];
          if (time_out_cntr_en == 1'b1)
            time_out_cntr <= time_out_cntr + 24'd1;	    
          else 
            time_out_cntr <= 20'd0;
         end
    end

  
initial begin
  gt_ref_clk0_p =1;
  forever
    begin
      #3200.000   gt_ref_clk0_p = ~  gt_ref_clk0_p;
    end
end

initial begin
  gt_ref_clk0_n =0;
  forever 
    begin
      #3200.000   gt_ref_clk0_n = ~  gt_ref_clk0_n;
   end
end


initial begin
  init_clk =1;
  forever #3333.000 init_clk = ~init_clk;
end

endmodule
