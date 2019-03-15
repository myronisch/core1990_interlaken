// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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

// IP VLNV: xilinx.com:ip:interlaken:2.4
// IP Revision: 0

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
interlaken_0 your_instance_name (
  .gt_ref_clk0_p(gt_ref_clk0_p),                          // input wire gt_ref_clk0_p
  .gt_ref_clk0_n(gt_ref_clk0_n),                          // input wire gt_ref_clk0_n
  .gt_refclk_out(gt_refclk_out),                          // output wire gt_refclk_out
  .init_clk(init_clk),                                    // input wire init_clk
  .sys_reset(sys_reset),                                  // input wire sys_reset
  .gt_txusrclk2(gt_txusrclk2),                            // output wire gt_txusrclk2
  .gt_rxusrclk2(gt_rxusrclk2),                            // output wire gt_rxusrclk2
  .gt_txresetdone_int(gt_txresetdone_int),                // output wire gt_txresetdone_int
  .gt_rxresetdone_int(gt_rxresetdone_int),                // output wire gt_rxresetdone_int
  .gt_tx_reset_done_inv(gt_tx_reset_done_inv),            // output wire gt_tx_reset_done_inv
  .gt_rx_reset_done_inv(gt_rx_reset_done_inv),            // output wire gt_rx_reset_done_inv
  .gt0_rxp_in(gt0_rxp_in),                                // input wire gt0_rxp_in
  .gt0_rxn_in(gt0_rxn_in),                                // input wire gt0_rxn_in
  .gt0_txn_out(gt0_txn_out),                              // output wire gt0_txn_out
  .gt0_txp_out(gt0_txp_out),                              // output wire gt0_txp_out
  .rx_ovfout(rx_ovfout),                                  // output wire rx_ovfout
  .rx_dataout0(rx_dataout0),                              // output wire [127 : 0] rx_dataout0
  .rx_chanout0(rx_chanout0),                              // output wire [10 : 0] rx_chanout0
  .rx_enaout0(rx_enaout0),                                // output wire rx_enaout0
  .rx_sopout0(rx_sopout0),                                // output wire rx_sopout0
  .rx_eopout0(rx_eopout0),                                // output wire rx_eopout0
  .rx_errout0(rx_errout0),                                // output wire rx_errout0
  .rx_mtyout0(rx_mtyout0),                                // output wire [3 : 0] rx_mtyout0
  .rx_dataout1(rx_dataout1),                              // output wire [127 : 0] rx_dataout1
  .rx_chanout1(rx_chanout1),                              // output wire [10 : 0] rx_chanout1
  .rx_enaout1(rx_enaout1),                                // output wire rx_enaout1
  .rx_sopout1(rx_sopout1),                                // output wire rx_sopout1
  .rx_eopout1(rx_eopout1),                                // output wire rx_eopout1
  .rx_errout1(rx_errout1),                                // output wire rx_errout1
  .rx_mtyout1(rx_mtyout1),                                // output wire [3 : 0] rx_mtyout1
  .rx_dataout2(rx_dataout2),                              // output wire [127 : 0] rx_dataout2
  .rx_chanout2(rx_chanout2),                              // output wire [10 : 0] rx_chanout2
  .rx_enaout2(rx_enaout2),                                // output wire rx_enaout2
  .rx_sopout2(rx_sopout2),                                // output wire rx_sopout2
  .rx_eopout2(rx_eopout2),                                // output wire rx_eopout2
  .rx_errout2(rx_errout2),                                // output wire rx_errout2
  .rx_mtyout2(rx_mtyout2),                                // output wire [3 : 0] rx_mtyout2
  .rx_dataout3(rx_dataout3),                              // output wire [127 : 0] rx_dataout3
  .rx_chanout3(rx_chanout3),                              // output wire [10 : 0] rx_chanout3
  .rx_enaout3(rx_enaout3),                                // output wire rx_enaout3
  .rx_sopout3(rx_sopout3),                                // output wire rx_sopout3
  .rx_eopout3(rx_eopout3),                                // output wire rx_eopout3
  .rx_errout3(rx_errout3),                                // output wire rx_errout3
  .rx_mtyout3(rx_mtyout3),                                // output wire [3 : 0] rx_mtyout3
  .tx_rdyout(tx_rdyout),                                  // output wire tx_rdyout
  .tx_ovfout(tx_ovfout),                                  // output wire tx_ovfout
  .tx_datain0(tx_datain0),                                // input wire [127 : 0] tx_datain0
  .tx_chanin0(tx_chanin0),                                // input wire [10 : 0] tx_chanin0
  .tx_enain0(tx_enain0),                                  // input wire tx_enain0
  .tx_sopin0(tx_sopin0),                                  // input wire tx_sopin0
  .tx_eopin0(tx_eopin0),                                  // input wire tx_eopin0
  .tx_errin0(tx_errin0),                                  // input wire tx_errin0
  .tx_mtyin0(tx_mtyin0),                                  // input wire [3 : 0] tx_mtyin0
  .tx_bctlin0(tx_bctlin0),                                // input wire tx_bctlin0
  .tx_datain1(tx_datain1),                                // input wire [127 : 0] tx_datain1
  .tx_chanin1(tx_chanin1),                                // input wire [10 : 0] tx_chanin1
  .tx_enain1(tx_enain1),                                  // input wire tx_enain1
  .tx_sopin1(tx_sopin1),                                  // input wire tx_sopin1
  .tx_eopin1(tx_eopin1),                                  // input wire tx_eopin1
  .tx_errin1(tx_errin1),                                  // input wire tx_errin1
  .tx_mtyin1(tx_mtyin1),                                  // input wire [3 : 0] tx_mtyin1
  .tx_bctlin1(tx_bctlin1),                                // input wire tx_bctlin1
  .tx_datain2(tx_datain2),                                // input wire [127 : 0] tx_datain2
  .tx_chanin2(tx_chanin2),                                // input wire [10 : 0] tx_chanin2
  .tx_enain2(tx_enain2),                                  // input wire tx_enain2
  .tx_sopin2(tx_sopin2),                                  // input wire tx_sopin2
  .tx_eopin2(tx_eopin2),                                  // input wire tx_eopin2
  .tx_errin2(tx_errin2),                                  // input wire tx_errin2
  .tx_mtyin2(tx_mtyin2),                                  // input wire [3 : 0] tx_mtyin2
  .tx_bctlin2(tx_bctlin2),                                // input wire tx_bctlin2
  .tx_datain3(tx_datain3),                                // input wire [127 : 0] tx_datain3
  .tx_chanin3(tx_chanin3),                                // input wire [10 : 0] tx_chanin3
  .tx_enain3(tx_enain3),                                  // input wire tx_enain3
  .tx_sopin3(tx_sopin3),                                  // input wire tx_sopin3
  .tx_eopin3(tx_eopin3),                                  // input wire tx_eopin3
  .tx_errin3(tx_errin3),                                  // input wire tx_errin3
  .core_tx_reset(core_tx_reset),                          // input wire core_tx_reset
  .core_rx_reset(core_rx_reset),                          // input wire core_rx_reset
  .tx_mtyin3(tx_mtyin3),                                  // input wire [3 : 0] tx_mtyin3
  .tx_bctlin3(tx_bctlin3),                                // input wire tx_bctlin3
  .drp_clk(drp_clk),                                      // input wire drp_clk
  .core_drp_reset(core_drp_reset),                        // input wire core_drp_reset
  .lockedn(lockedn),                                      // input wire lockedn
  .drp_en(drp_en),                                        // input wire drp_en
  .drp_we(drp_we),                                        // input wire drp_we
  .drp_addr(drp_addr),                                    // input wire [9 : 0] drp_addr
  .drp_di(drp_di),                                        // input wire [15 : 0] drp_di
  .drp_do(drp_do),                                        // output wire [15 : 0] drp_do
  .usr_tx_reset(usr_tx_reset),                            // output wire usr_tx_reset
  .usr_rx_reset(usr_rx_reset),                            // output wire usr_rx_reset
  .drp_rdy(drp_rdy),                                      // output wire drp_rdy
  .core_clk(core_clk),                                    // input wire core_clk
  .lbus_clk(lbus_clk),                                    // input wire lbus_clk
  .ctl_tx_enable(ctl_tx_enable),                          // input wire ctl_tx_enable
  .gt_loopback_in(gt_loopback_in),                        // input wire [2 : 0] gt_loopback_in
  .gtwiz_reset_tx_datapath(gtwiz_reset_tx_datapath),      // input wire gtwiz_reset_tx_datapath
  .gtwiz_reset_rx_datapath(gtwiz_reset_rx_datapath),      // input wire gtwiz_reset_rx_datapath
  .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat),    // input wire [11 : 0] ctl_tx_diagword_lanestat
  .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),    // input wire ctl_tx_diagword_intfstat
  .ctl_tx_mubits(ctl_tx_mubits),                          // input wire [7 : 0] ctl_tx_mubits
  .stat_tx_underflow_err(stat_tx_underflow_err),          // output wire stat_tx_underflow_err
  .stat_tx_burst_err(stat_tx_burst_err),                  // output wire stat_tx_burst_err
  .stat_tx_overflow_err(stat_tx_overflow_err),            // output wire stat_tx_overflow_err
  .ctl_rx_force_resync(ctl_rx_force_resync),              // input wire ctl_rx_force_resync
  .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),  // output wire [11 : 0] stat_rx_diagword_lanestat
  .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),  // output wire [11 : 0] stat_rx_diagword_intfstat
  .stat_rx_crc32_valid(stat_rx_crc32_valid),              // output wire [11 : 0] stat_rx_crc32_valid
  .stat_rx_crc32_err(stat_rx_crc32_err),                  // output wire [11 : 0] stat_rx_crc32_err
  .stat_rx_mubits(stat_rx_mubits),                        // output wire [7 : 0] stat_rx_mubits
  .stat_rx_mubits_updated(stat_rx_mubits_updated),        // output wire stat_rx_mubits_updated
  .stat_rx_word_sync(stat_rx_word_sync),                  // output wire [11 : 0] stat_rx_word_sync
  .stat_rx_synced(stat_rx_synced),                        // output wire [11 : 0] stat_rx_synced
  .stat_rx_synced_err(stat_rx_synced_err),                // output wire [11 : 0] stat_rx_synced_err
  .stat_rx_framing_err(stat_rx_framing_err),              // output wire [11 : 0] stat_rx_framing_err
  .stat_rx_bad_type_err(stat_rx_bad_type_err),            // output wire [11 : 0] stat_rx_bad_type_err
  .stat_rx_mf_err(stat_rx_mf_err),                        // output wire [11 : 0] stat_rx_mf_err
  .stat_rx_descram_err(stat_rx_descram_err),              // output wire [11 : 0] stat_rx_descram_err
  .stat_rx_mf_len_err(stat_rx_mf_len_err),                // output wire [11 : 0] stat_rx_mf_len_err
  .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),          // output wire [11 : 0] stat_rx_mf_repeat_err
  .stat_rx_aligned(stat_rx_aligned),                      // output wire stat_rx_aligned
  .stat_rx_misaligned(stat_rx_misaligned),                // output wire stat_rx_misaligned
  .stat_rx_aligned_err(stat_rx_aligned_err),              // output wire stat_rx_aligned_err
  .stat_rx_crc24_err(stat_rx_crc24_err),                  // output wire stat_rx_crc24_err
  .stat_rx_msop_err(stat_rx_msop_err),                    // output wire stat_rx_msop_err
  .stat_rx_meop_err(stat_rx_meop_err),                    // output wire stat_rx_meop_err
  .stat_rx_overflow_err(stat_rx_overflow_err),            // output wire stat_rx_overflow_err
  .stat_rx_burstmax_err(stat_rx_burstmax_err),            // output wire stat_rx_burstmax_err
  .stat_rx_burst_err(stat_rx_burst_err),                  // output wire stat_rx_burst_err
  .gtpowergood_out(gtpowergood_out)                      // output wire [0 : 0] gtpowergood_out
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file interlaken_0.v when simulating
// the core, interlaken_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

