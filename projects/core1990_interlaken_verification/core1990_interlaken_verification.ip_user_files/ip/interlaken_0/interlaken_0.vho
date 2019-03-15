-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:interlaken:2.4
-- IP Revision: 0

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT interlaken_0
  PORT (
    gt_ref_clk0_p : IN STD_LOGIC;
    gt_ref_clk0_n : IN STD_LOGIC;
    gt_refclk_out : OUT STD_LOGIC;
    init_clk : IN STD_LOGIC;
    sys_reset : IN STD_LOGIC;
    gt_txusrclk2 : OUT STD_LOGIC;
    gt_rxusrclk2 : OUT STD_LOGIC;
    gt_txresetdone_int : OUT STD_LOGIC;
    gt_rxresetdone_int : OUT STD_LOGIC;
    gt_tx_reset_done_inv : OUT STD_LOGIC;
    gt_rx_reset_done_inv : OUT STD_LOGIC;
    gt0_rxp_in : IN STD_LOGIC;
    gt0_rxn_in : IN STD_LOGIC;
    gt0_txn_out : OUT STD_LOGIC;
    gt0_txp_out : OUT STD_LOGIC;
    rx_ovfout : OUT STD_LOGIC;
    rx_dataout0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout0 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout0 : OUT STD_LOGIC;
    rx_sopout0 : OUT STD_LOGIC;
    rx_eopout0 : OUT STD_LOGIC;
    rx_errout0 : OUT STD_LOGIC;
    rx_mtyout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout1 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout1 : OUT STD_LOGIC;
    rx_sopout1 : OUT STD_LOGIC;
    rx_eopout1 : OUT STD_LOGIC;
    rx_errout1 : OUT STD_LOGIC;
    rx_mtyout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout2 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout2 : OUT STD_LOGIC;
    rx_sopout2 : OUT STD_LOGIC;
    rx_eopout2 : OUT STD_LOGIC;
    rx_errout2 : OUT STD_LOGIC;
    rx_mtyout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout3 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout3 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout3 : OUT STD_LOGIC;
    rx_sopout3 : OUT STD_LOGIC;
    rx_eopout3 : OUT STD_LOGIC;
    rx_errout3 : OUT STD_LOGIC;
    rx_mtyout3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_rdyout : OUT STD_LOGIC;
    tx_ovfout : OUT STD_LOGIC;
    tx_datain0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin0 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain0 : IN STD_LOGIC;
    tx_sopin0 : IN STD_LOGIC;
    tx_eopin0 : IN STD_LOGIC;
    tx_errin0 : IN STD_LOGIC;
    tx_mtyin0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin0 : IN STD_LOGIC;
    tx_datain1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain1 : IN STD_LOGIC;
    tx_sopin1 : IN STD_LOGIC;
    tx_eopin1 : IN STD_LOGIC;
    tx_errin1 : IN STD_LOGIC;
    tx_mtyin1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin1 : IN STD_LOGIC;
    tx_datain2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin2 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain2 : IN STD_LOGIC;
    tx_sopin2 : IN STD_LOGIC;
    tx_eopin2 : IN STD_LOGIC;
    tx_errin2 : IN STD_LOGIC;
    tx_mtyin2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin2 : IN STD_LOGIC;
    tx_datain3 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin3 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain3 : IN STD_LOGIC;
    tx_sopin3 : IN STD_LOGIC;
    tx_eopin3 : IN STD_LOGIC;
    tx_errin3 : IN STD_LOGIC;
    core_tx_reset : IN STD_LOGIC;
    core_rx_reset : IN STD_LOGIC;
    tx_mtyin3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin3 : IN STD_LOGIC;
    drp_clk : IN STD_LOGIC;
    core_drp_reset : IN STD_LOGIC;
    lockedn : IN STD_LOGIC;
    drp_en : IN STD_LOGIC;
    drp_we : IN STD_LOGIC;
    drp_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    drp_di : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    drp_do : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    usr_tx_reset : OUT STD_LOGIC;
    usr_rx_reset : OUT STD_LOGIC;
    drp_rdy : OUT STD_LOGIC;
    core_clk : IN STD_LOGIC;
    lbus_clk : IN STD_LOGIC;
    ctl_tx_enable : IN STD_LOGIC;
    gt_loopback_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    gtwiz_reset_tx_datapath : IN STD_LOGIC;
    gtwiz_reset_rx_datapath : IN STD_LOGIC;
    ctl_tx_diagword_lanestat : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    ctl_tx_diagword_intfstat : IN STD_LOGIC;
    ctl_tx_mubits : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    stat_tx_underflow_err : OUT STD_LOGIC;
    stat_tx_burst_err : OUT STD_LOGIC;
    stat_tx_overflow_err : OUT STD_LOGIC;
    ctl_rx_force_resync : IN STD_LOGIC;
    stat_rx_diagword_lanestat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_diagword_intfstat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_crc32_valid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_crc32_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mubits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    stat_rx_mubits_updated : OUT STD_LOGIC;
    stat_rx_word_sync : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_synced : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_synced_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_framing_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_bad_type_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_descram_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_len_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_repeat_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_aligned : OUT STD_LOGIC;
    stat_rx_misaligned : OUT STD_LOGIC;
    stat_rx_aligned_err : OUT STD_LOGIC;
    stat_rx_crc24_err : OUT STD_LOGIC;
    stat_rx_msop_err : OUT STD_LOGIC;
    stat_rx_meop_err : OUT STD_LOGIC;
    stat_rx_overflow_err : OUT STD_LOGIC;
    stat_rx_burstmax_err : OUT STD_LOGIC;
    stat_rx_burst_err : OUT STD_LOGIC;
    gtpowergood_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : interlaken_0
  PORT MAP (
    gt_ref_clk0_p => gt_ref_clk0_p,
    gt_ref_clk0_n => gt_ref_clk0_n,
    gt_refclk_out => gt_refclk_out,
    init_clk => init_clk,
    sys_reset => sys_reset,
    gt_txusrclk2 => gt_txusrclk2,
    gt_rxusrclk2 => gt_rxusrclk2,
    gt_txresetdone_int => gt_txresetdone_int,
    gt_rxresetdone_int => gt_rxresetdone_int,
    gt_tx_reset_done_inv => gt_tx_reset_done_inv,
    gt_rx_reset_done_inv => gt_rx_reset_done_inv,
    gt0_rxp_in => gt0_rxp_in,
    gt0_rxn_in => gt0_rxn_in,
    gt0_txn_out => gt0_txn_out,
    gt0_txp_out => gt0_txp_out,
    rx_ovfout => rx_ovfout,
    rx_dataout0 => rx_dataout0,
    rx_chanout0 => rx_chanout0,
    rx_enaout0 => rx_enaout0,
    rx_sopout0 => rx_sopout0,
    rx_eopout0 => rx_eopout0,
    rx_errout0 => rx_errout0,
    rx_mtyout0 => rx_mtyout0,
    rx_dataout1 => rx_dataout1,
    rx_chanout1 => rx_chanout1,
    rx_enaout1 => rx_enaout1,
    rx_sopout1 => rx_sopout1,
    rx_eopout1 => rx_eopout1,
    rx_errout1 => rx_errout1,
    rx_mtyout1 => rx_mtyout1,
    rx_dataout2 => rx_dataout2,
    rx_chanout2 => rx_chanout2,
    rx_enaout2 => rx_enaout2,
    rx_sopout2 => rx_sopout2,
    rx_eopout2 => rx_eopout2,
    rx_errout2 => rx_errout2,
    rx_mtyout2 => rx_mtyout2,
    rx_dataout3 => rx_dataout3,
    rx_chanout3 => rx_chanout3,
    rx_enaout3 => rx_enaout3,
    rx_sopout3 => rx_sopout3,
    rx_eopout3 => rx_eopout3,
    rx_errout3 => rx_errout3,
    rx_mtyout3 => rx_mtyout3,
    tx_rdyout => tx_rdyout,
    tx_ovfout => tx_ovfout,
    tx_datain0 => tx_datain0,
    tx_chanin0 => tx_chanin0,
    tx_enain0 => tx_enain0,
    tx_sopin0 => tx_sopin0,
    tx_eopin0 => tx_eopin0,
    tx_errin0 => tx_errin0,
    tx_mtyin0 => tx_mtyin0,
    tx_bctlin0 => tx_bctlin0,
    tx_datain1 => tx_datain1,
    tx_chanin1 => tx_chanin1,
    tx_enain1 => tx_enain1,
    tx_sopin1 => tx_sopin1,
    tx_eopin1 => tx_eopin1,
    tx_errin1 => tx_errin1,
    tx_mtyin1 => tx_mtyin1,
    tx_bctlin1 => tx_bctlin1,
    tx_datain2 => tx_datain2,
    tx_chanin2 => tx_chanin2,
    tx_enain2 => tx_enain2,
    tx_sopin2 => tx_sopin2,
    tx_eopin2 => tx_eopin2,
    tx_errin2 => tx_errin2,
    tx_mtyin2 => tx_mtyin2,
    tx_bctlin2 => tx_bctlin2,
    tx_datain3 => tx_datain3,
    tx_chanin3 => tx_chanin3,
    tx_enain3 => tx_enain3,
    tx_sopin3 => tx_sopin3,
    tx_eopin3 => tx_eopin3,
    tx_errin3 => tx_errin3,
    core_tx_reset => core_tx_reset,
    core_rx_reset => core_rx_reset,
    tx_mtyin3 => tx_mtyin3,
    tx_bctlin3 => tx_bctlin3,
    drp_clk => drp_clk,
    core_drp_reset => core_drp_reset,
    lockedn => lockedn,
    drp_en => drp_en,
    drp_we => drp_we,
    drp_addr => drp_addr,
    drp_di => drp_di,
    drp_do => drp_do,
    usr_tx_reset => usr_tx_reset,
    usr_rx_reset => usr_rx_reset,
    drp_rdy => drp_rdy,
    core_clk => core_clk,
    lbus_clk => lbus_clk,
    ctl_tx_enable => ctl_tx_enable,
    gt_loopback_in => gt_loopback_in,
    gtwiz_reset_tx_datapath => gtwiz_reset_tx_datapath,
    gtwiz_reset_rx_datapath => gtwiz_reset_rx_datapath,
    ctl_tx_diagword_lanestat => ctl_tx_diagword_lanestat,
    ctl_tx_diagword_intfstat => ctl_tx_diagword_intfstat,
    ctl_tx_mubits => ctl_tx_mubits,
    stat_tx_underflow_err => stat_tx_underflow_err,
    stat_tx_burst_err => stat_tx_burst_err,
    stat_tx_overflow_err => stat_tx_overflow_err,
    ctl_rx_force_resync => ctl_rx_force_resync,
    stat_rx_diagword_lanestat => stat_rx_diagword_lanestat,
    stat_rx_diagword_intfstat => stat_rx_diagword_intfstat,
    stat_rx_crc32_valid => stat_rx_crc32_valid,
    stat_rx_crc32_err => stat_rx_crc32_err,
    stat_rx_mubits => stat_rx_mubits,
    stat_rx_mubits_updated => stat_rx_mubits_updated,
    stat_rx_word_sync => stat_rx_word_sync,
    stat_rx_synced => stat_rx_synced,
    stat_rx_synced_err => stat_rx_synced_err,
    stat_rx_framing_err => stat_rx_framing_err,
    stat_rx_bad_type_err => stat_rx_bad_type_err,
    stat_rx_mf_err => stat_rx_mf_err,
    stat_rx_descram_err => stat_rx_descram_err,
    stat_rx_mf_len_err => stat_rx_mf_len_err,
    stat_rx_mf_repeat_err => stat_rx_mf_repeat_err,
    stat_rx_aligned => stat_rx_aligned,
    stat_rx_misaligned => stat_rx_misaligned,
    stat_rx_aligned_err => stat_rx_aligned_err,
    stat_rx_crc24_err => stat_rx_crc24_err,
    stat_rx_msop_err => stat_rx_msop_err,
    stat_rx_meop_err => stat_rx_meop_err,
    stat_rx_overflow_err => stat_rx_overflow_err,
    stat_rx_burstmax_err => stat_rx_burstmax_err,
    stat_rx_burst_err => stat_rx_burst_err,
    gtpowergood_out => gtpowergood_out
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file interlaken_0.vhd when simulating
-- the core, interlaken_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

