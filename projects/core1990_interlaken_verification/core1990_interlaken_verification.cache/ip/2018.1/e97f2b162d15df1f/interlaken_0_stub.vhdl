-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Mar 13 10:44:36 2019
-- Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ interlaken_0_stub.vhdl
-- Design      : interlaken_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flgb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    gt_ref_clk0_p : in STD_LOGIC;
    gt_ref_clk0_n : in STD_LOGIC;
    gt_refclk_out : out STD_LOGIC;
    init_clk : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    gt_txusrclk2 : out STD_LOGIC;
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxusrclk2 : out STD_LOGIC;
    gt_rx_reset_done_inv : out STD_LOGIC;
    usr_rx_reset : out STD_LOGIC;
    gt0_rxp_in : in STD_LOGIC;
    gt0_rxn_in : in STD_LOGIC;
    gt_tx_reset_done_inv : out STD_LOGIC;
    usr_tx_reset : out STD_LOGIC;
    gt0_txn_out : out STD_LOGIC;
    gt0_txp_out : out STD_LOGIC;
    core_rx_reset : in STD_LOGIC;
    rx_ovfout : out STD_LOGIC;
    rx_dataout0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout0 : out STD_LOGIC;
    rx_sopout0 : out STD_LOGIC;
    rx_eopout0 : out STD_LOGIC;
    rx_errout0 : out STD_LOGIC;
    rx_mtyout0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout1 : out STD_LOGIC;
    rx_sopout1 : out STD_LOGIC;
    rx_eopout1 : out STD_LOGIC;
    rx_errout1 : out STD_LOGIC;
    rx_mtyout1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout2 : out STD_LOGIC;
    rx_sopout2 : out STD_LOGIC;
    rx_eopout2 : out STD_LOGIC;
    rx_errout2 : out STD_LOGIC;
    rx_mtyout2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout3 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout3 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout3 : out STD_LOGIC;
    rx_sopout3 : out STD_LOGIC;
    rx_eopout3 : out STD_LOGIC;
    rx_errout3 : out STD_LOGIC;
    rx_mtyout3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    core_tx_reset : in STD_LOGIC;
    tx_rdyout : out STD_LOGIC;
    tx_ovfout : out STD_LOGIC;
    tx_datain0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain0 : in STD_LOGIC;
    tx_sopin0 : in STD_LOGIC;
    tx_eopin0 : in STD_LOGIC;
    tx_errin0 : in STD_LOGIC;
    tx_mtyin0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin0 : in STD_LOGIC;
    tx_datain1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain1 : in STD_LOGIC;
    tx_sopin1 : in STD_LOGIC;
    tx_eopin1 : in STD_LOGIC;
    tx_errin1 : in STD_LOGIC;
    tx_mtyin1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin1 : in STD_LOGIC;
    tx_datain2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain2 : in STD_LOGIC;
    tx_sopin2 : in STD_LOGIC;
    tx_eopin2 : in STD_LOGIC;
    tx_errin2 : in STD_LOGIC;
    tx_mtyin2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin2 : in STD_LOGIC;
    tx_datain3 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain3 : in STD_LOGIC;
    tx_sopin3 : in STD_LOGIC;
    tx_eopin3 : in STD_LOGIC;
    tx_errin3 : in STD_LOGIC;
    tx_mtyin3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin3 : in STD_LOGIC;
    ctl_tx_enable : in STD_LOGIC;
    lockedn : in STD_LOGIC;
    core_drp_reset : in STD_LOGIC;
    drp_clk : in STD_LOGIC;
    drp_en : in STD_LOGIC;
    drp_we : in STD_LOGIC;
    drp_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drp_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_rdy : out STD_LOGIC;
    core_clk : in STD_LOGIC;
    lbus_clk : in STD_LOGIC;
    gtwiz_reset_tx_datapath : in STD_LOGIC;
    gtwiz_reset_rx_datapath : in STD_LOGIC;
    ctl_tx_diagword_lanestat : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ctl_tx_diagword_intfstat : in STD_LOGIC;
    ctl_tx_mubits : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_tx_underflow_err : out STD_LOGIC;
    stat_tx_burst_err : out STD_LOGIC;
    stat_tx_overflow_err : out STD_LOGIC;
    ctl_rx_force_resync : in STD_LOGIC;
    stat_rx_diagword_lanestat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_diagword_intfstat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_valid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mubits : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_rx_mubits_updated : out STD_LOGIC;
    stat_rx_word_sync : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_framing_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_bad_type_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_descram_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_len_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_repeat_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_aligned : out STD_LOGIC;
    stat_rx_misaligned : out STD_LOGIC;
    stat_rx_aligned_err : out STD_LOGIC;
    stat_rx_crc24_err : out STD_LOGIC;
    stat_rx_msop_err : out STD_LOGIC;
    stat_rx_meop_err : out STD_LOGIC;
    stat_rx_overflow_err : out STD_LOGIC;
    stat_rx_burstmax_err : out STD_LOGIC;
    stat_rx_burst_err : out STD_LOGIC;
    gt_txresetdone_int : out STD_LOGIC;
    gt_rxresetdone_int : out STD_LOGIC;
    gt_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gt_ref_clk0_p,gt_ref_clk0_n,gt_refclk_out,init_clk,sys_reset,gt_txusrclk2,gtpowergood_out[0:0],gt_rxusrclk2,gt_rx_reset_done_inv,usr_rx_reset,gt0_rxp_in,gt0_rxn_in,gt_tx_reset_done_inv,usr_tx_reset,gt0_txn_out,gt0_txp_out,core_rx_reset,rx_ovfout,rx_dataout0[127:0],rx_chanout0[10:0],rx_enaout0,rx_sopout0,rx_eopout0,rx_errout0,rx_mtyout0[3:0],rx_dataout1[127:0],rx_chanout1[10:0],rx_enaout1,rx_sopout1,rx_eopout1,rx_errout1,rx_mtyout1[3:0],rx_dataout2[127:0],rx_chanout2[10:0],rx_enaout2,rx_sopout2,rx_eopout2,rx_errout2,rx_mtyout2[3:0],rx_dataout3[127:0],rx_chanout3[10:0],rx_enaout3,rx_sopout3,rx_eopout3,rx_errout3,rx_mtyout3[3:0],core_tx_reset,tx_rdyout,tx_ovfout,tx_datain0[127:0],tx_chanin0[10:0],tx_enain0,tx_sopin0,tx_eopin0,tx_errin0,tx_mtyin0[3:0],tx_bctlin0,tx_datain1[127:0],tx_chanin1[10:0],tx_enain1,tx_sopin1,tx_eopin1,tx_errin1,tx_mtyin1[3:0],tx_bctlin1,tx_datain2[127:0],tx_chanin2[10:0],tx_enain2,tx_sopin2,tx_eopin2,tx_errin2,tx_mtyin2[3:0],tx_bctlin2,tx_datain3[127:0],tx_chanin3[10:0],tx_enain3,tx_sopin3,tx_eopin3,tx_errin3,tx_mtyin3[3:0],tx_bctlin3,ctl_tx_enable,lockedn,core_drp_reset,drp_clk,drp_en,drp_we,drp_addr[9:0],drp_di[15:0],drp_do[15:0],drp_rdy,core_clk,lbus_clk,gtwiz_reset_tx_datapath,gtwiz_reset_rx_datapath,ctl_tx_diagword_lanestat[11:0],ctl_tx_diagword_intfstat,ctl_tx_mubits[7:0],stat_tx_underflow_err,stat_tx_burst_err,stat_tx_overflow_err,ctl_rx_force_resync,stat_rx_diagword_lanestat[11:0],stat_rx_diagword_intfstat[11:0],stat_rx_crc32_valid[11:0],stat_rx_crc32_err[11:0],stat_rx_mubits[7:0],stat_rx_mubits_updated,stat_rx_word_sync[11:0],stat_rx_synced[11:0],stat_rx_synced_err[11:0],stat_rx_framing_err[11:0],stat_rx_bad_type_err[11:0],stat_rx_mf_err[11:0],stat_rx_descram_err[11:0],stat_rx_mf_len_err[11:0],stat_rx_mf_repeat_err[11:0],stat_rx_aligned,stat_rx_misaligned,stat_rx_aligned_err,stat_rx_crc24_err,stat_rx_msop_err,stat_rx_meop_err,stat_rx_overflow_err,stat_rx_burstmax_err,stat_rx_burst_err,gt_txresetdone_int,gt_rxresetdone_int,gt_loopback_in[2:0]";
begin
end;
