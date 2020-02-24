-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Feb 17 11:41:47 2020
-- Host        : tarfa running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /data/et/myronm/wupper-interlaken/firmware/Projects/FLX709_INTERLAKEN/FLX709_INTERLAKEN.srcs/sources_1/ip/Transceiver_10g_64b67b/Transceiver_10g_64b67b_stub.vhdl
-- Design      : Transceiver_10g_64b67b
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Transceiver_10g_64b67b is
    Port (
        SOFT_RESET_TX_IN : in STD_LOGIC;                                                -- @suppress
        SOFT_RESET_RX_IN : in STD_LOGIC;                                                -- @suppress
        DONT_RESET_ON_DATA_ERROR_IN : in STD_LOGIC;                                     -- @suppress
        Q1_CLK0_GTREFCLK_PAD_N_IN : in STD_LOGIC;                                       -- @suppress
        Q1_CLK0_GTREFCLK_PAD_P_IN : in STD_LOGIC;                                       -- @suppress
        GT0_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT0_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT0_DATA_VALID_IN : in STD_LOGIC;                                               -- @suppress
        GT0_TX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT0_RX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT1_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT1_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT1_DATA_VALID_IN : in STD_LOGIC;                                               -- @suppress
        GT1_TX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT1_RX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT2_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT2_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT2_DATA_VALID_IN : in STD_LOGIC;                                               -- @suppress
        GT2_TX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT2_RX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT3_TX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT3_RX_FSM_RESET_DONE_OUT : out STD_LOGIC;                                      -- @suppress
        GT3_DATA_VALID_IN : in STD_LOGIC;                                               -- @suppress
        GT3_TX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT3_RX_MMCM_LOCK_OUT : out STD_LOGIC;                                           -- @suppress
        GT0_TXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT0_TXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT0_RXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT0_RXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT1_TXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT1_TXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT1_RXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT1_RXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT2_TXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT2_TXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT2_RXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT2_RXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT3_TXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT3_TXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        GT3_RXUSRCLK_OUT : out STD_LOGIC;                                               -- @suppress
        GT3_RXUSRCLK2_OUT : out STD_LOGIC;                                              -- @suppress
        gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );                            -- @suppress
        gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );                             -- @suppress
        gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );                           -- @suppress
        gt0_drpen_in : in STD_LOGIC;                                                    -- @suppress
        gt0_drprdy_out : out STD_LOGIC;                                                 -- @suppress
        gt0_drpwe_in : in STD_LOGIC;                                                    -- @suppress
        gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt0_eyescanreset_in : in STD_LOGIC;                                             -- @suppress
        gt0_rxuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt0_eyescandataerror_out : out STD_LOGIC;                                       -- @suppress
        gt0_eyescantrigger_in : in STD_LOGIC;                                           -- @suppress
        gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );                     -- @suppress
        gt0_rxdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );                          -- @suppress
        gt0_gthrxn_in : in STD_LOGIC;                                                   -- @suppress
        gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );                     -- @suppress
        gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );                       -- @suppress
        gt0_rxoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt0_rxdatavalid_out : out STD_LOGIC;                                            -- @suppress
        gt0_rxheader_out : out STD_LOGIC_VECTOR ( 2 downto 0 );                         -- @suppress
        gt0_rxheadervalid_out : out STD_LOGIC;                                          -- @suppress
        gt0_rxgearboxslip_in : in STD_LOGIC;                                            -- @suppress
        gt0_gtrxreset_in : in STD_LOGIC;                                                -- @suppress
        gt0_gthrxp_in : in STD_LOGIC;                                                   -- @suppress
        gt0_rxresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt0_gttxreset_in : in STD_LOGIC;                                                -- @suppress
        gt0_txuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt0_txheader_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt0_txdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );                            -- @suppress
        gt0_gthtxn_out : out STD_LOGIC;                                                 -- @suppress
        gt0_gthtxp_out : out STD_LOGIC;                                                 -- @suppress
        gt0_txoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt0_txoutclkpcs_out : out STD_LOGIC;                                            -- @suppress
        gt0_txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );                         -- @suppress
        gt0_txresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt1_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );                            -- @suppress
        gt1_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );                             -- @suppress
        gt1_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );                           -- @suppress
        gt1_drpen_in : in STD_LOGIC;                                                    -- @suppress
        gt1_drprdy_out : out STD_LOGIC;                                                 -- @suppress
        gt1_drpwe_in : in STD_LOGIC;                                                    -- @suppress
        gt1_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt1_eyescanreset_in : in STD_LOGIC;                                             -- @suppress
        gt1_rxuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt1_eyescandataerror_out : out STD_LOGIC;                                       -- @suppress
        gt1_eyescantrigger_in : in STD_LOGIC;                                           -- @suppress
        gt1_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );                     -- @suppress
        gt1_rxdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );                          -- @suppress
        gt1_gthrxn_in : in STD_LOGIC;                                                   -- @suppress
        gt1_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );                     -- @suppress
        gt1_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );                       -- @suppress
        gt1_rxoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt1_rxdatavalid_out : out STD_LOGIC;                                            -- @suppress
        gt1_rxheader_out : out STD_LOGIC_VECTOR ( 2 downto 0 );                         -- @suppress
        gt1_rxheadervalid_out : out STD_LOGIC;                                          -- @suppress
        gt1_rxgearboxslip_in : in STD_LOGIC;                                            -- @suppress
        gt1_gtrxreset_in : in STD_LOGIC;                                                -- @suppress
        gt1_gthrxp_in : in STD_LOGIC;                                                   -- @suppress
        gt1_rxresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt1_gttxreset_in : in STD_LOGIC;                                                -- @suppress
        gt1_txuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt1_txheader_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt1_txdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );                            -- @suppress
        gt1_gthtxn_out : out STD_LOGIC;                                                 -- @suppress
        gt1_gthtxp_out : out STD_LOGIC;                                                 -- @suppress
        gt1_txoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt1_txoutclkpcs_out : out STD_LOGIC;                                            -- @suppress
        gt1_txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );                         -- @suppress
        gt1_txresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt2_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );                            -- @suppress
        gt2_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );                             -- @suppress
        gt2_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );                           -- @suppress
        gt2_drpen_in : in STD_LOGIC;                                                    -- @suppress
        gt2_drprdy_out : out STD_LOGIC;                                                 -- @suppress
        gt2_drpwe_in : in STD_LOGIC;                                                    -- @suppress
        gt2_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt2_eyescanreset_in : in STD_LOGIC;                                             -- @suppress
        gt2_rxuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt2_eyescandataerror_out : out STD_LOGIC;                                       -- @suppress
        gt2_eyescantrigger_in : in STD_LOGIC;                                           -- @suppress
        gt2_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );                     -- @suppress
        gt2_rxdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );                          -- @suppress
        gt2_gthrxn_in : in STD_LOGIC;                                                   -- @suppress
        gt2_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );                     -- @suppress
        gt2_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );                       -- @suppress
        gt2_rxoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt2_rxdatavalid_out : out STD_LOGIC;                                            -- @suppress
        gt2_rxheader_out : out STD_LOGIC_VECTOR ( 2 downto 0 );                         -- @suppress
        gt2_rxheadervalid_out : out STD_LOGIC;                                          -- @suppress
        gt2_rxgearboxslip_in : in STD_LOGIC;                                            -- @suppress
        gt2_gtrxreset_in : in STD_LOGIC;                                                -- @suppress
        gt2_gthrxp_in : in STD_LOGIC;                                                   -- @suppress
        gt2_rxresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt2_gttxreset_in : in STD_LOGIC;                                                -- @suppress
        gt2_txuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt2_txheader_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt2_txdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );                            -- @suppress
        gt2_gthtxn_out : out STD_LOGIC;                                                 -- @suppress
        gt2_gthtxp_out : out STD_LOGIC;                                                 -- @suppress
        gt2_txoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt2_txoutclkpcs_out : out STD_LOGIC;                                            -- @suppress
        gt2_txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );                         -- @suppress
        gt2_txresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt3_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );                            -- @suppress
        gt3_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );                             -- @suppress
        gt3_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );                           -- @suppress
        gt3_drpen_in : in STD_LOGIC;                                                    -- @suppress
        gt3_drprdy_out : out STD_LOGIC;                                                 -- @suppress
        gt3_drpwe_in : in STD_LOGIC;                                                    -- @suppress
        gt3_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt3_eyescanreset_in : in STD_LOGIC;                                             -- @suppress
        gt3_rxuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt3_eyescandataerror_out : out STD_LOGIC;                                       -- @suppress
        gt3_eyescantrigger_in : in STD_LOGIC;                                           -- @suppress
        gt3_dmonitorout_out : out STD_LOGIC_VECTOR ( 14 downto 0 );                     -- @suppress
        gt3_rxdata_out : out STD_LOGIC_VECTOR ( 63 downto 0 );                          -- @suppress
        gt3_gthrxn_in : in STD_LOGIC;                                                   -- @suppress
        gt3_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );                     -- @suppress
        gt3_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );                       -- @suppress
        gt3_rxoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt3_rxdatavalid_out : out STD_LOGIC;                                            -- @suppress
        gt3_rxheader_out : out STD_LOGIC_VECTOR ( 2 downto 0 );                         -- @suppress
        gt3_rxheadervalid_out : out STD_LOGIC;                                          -- @suppress
        gt3_rxgearboxslip_in : in STD_LOGIC;                                            -- @suppress
        gt3_gtrxreset_in : in STD_LOGIC;                                                -- @suppress
        gt3_gthrxp_in : in STD_LOGIC;                                                   -- @suppress
        gt3_rxresetdone_out : out STD_LOGIC;                                            -- @suppress
        gt3_gttxreset_in : in STD_LOGIC;                                                -- @suppress
        gt3_txuserrdy_in : in STD_LOGIC;                                                -- @suppress
        gt3_txheader_in : in STD_LOGIC_VECTOR ( 2 downto 0 );                           -- @suppress
        gt3_txdata_in : in STD_LOGIC_VECTOR ( 63 downto 0 );                            -- @suppress
        gt3_gthtxn_out : out STD_LOGIC;                                                 -- @suppress
        gt3_gthtxp_out : out STD_LOGIC;                                                 -- @suppress
        gt3_txoutclkfabric_out : out STD_LOGIC;                                         -- @suppress
        gt3_txoutclkpcs_out : out STD_LOGIC;                                            -- @suppress
        gt3_txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );                         -- @suppress
        gt3_txresetdone_out : out STD_LOGIC;                                            -- @suppress
        GT0_QPLLLOCK_OUT : out STD_LOGIC;                                               -- @suppress
        GT0_QPLLREFCLKLOST_OUT : out STD_LOGIC;                                         -- @suppress
        GT0_QPLLOUTCLK_OUT : out STD_LOGIC;                                             -- @suppress
        GT0_QPLLOUTREFCLK_OUT : out STD_LOGIC;                                          -- @suppress
        sysclk_in : in STD_LOGIC                                                        -- @suppress
    );

end Transceiver_10g_64b67b;

architecture stub of Transceiver_10g_64b67b is
    attribute syn_black_box : boolean;
    attribute black_box_pad_pin : string;
    attribute syn_black_box of stub : architecture is true;
    attribute black_box_pad_pin of stub : architecture is "SOFT_RESET_TX_IN,SOFT_RESET_RX_IN,DONT_RESET_ON_DATA_ERROR_IN,Q1_CLK0_GTREFCLK_PAD_N_IN,Q1_CLK0_GTREFCLK_PAD_P_IN,GT0_TX_FSM_RESET_DONE_OUT,GT0_RX_FSM_RESET_DONE_OUT,GT0_DATA_VALID_IN,GT0_TX_MMCM_LOCK_OUT,GT0_RX_MMCM_LOCK_OUT,GT1_TX_FSM_RESET_DONE_OUT,GT1_RX_FSM_RESET_DONE_OUT,GT1_DATA_VALID_IN,GT1_TX_MMCM_LOCK_OUT,GT1_RX_MMCM_LOCK_OUT,GT2_TX_FSM_RESET_DONE_OUT,GT2_RX_FSM_RESET_DONE_OUT,GT2_DATA_VALID_IN,GT2_TX_MMCM_LOCK_OUT,GT2_RX_MMCM_LOCK_OUT,GT3_TX_FSM_RESET_DONE_OUT,GT3_RX_FSM_RESET_DONE_OUT,GT3_DATA_VALID_IN,GT3_TX_MMCM_LOCK_OUT,GT3_RX_MMCM_LOCK_OUT,GT0_TXUSRCLK_OUT,GT0_TXUSRCLK2_OUT,GT0_RXUSRCLK_OUT,GT0_RXUSRCLK2_OUT,GT1_TXUSRCLK_OUT,GT1_TXUSRCLK2_OUT,GT1_RXUSRCLK_OUT,GT1_RXUSRCLK2_OUT,GT2_TXUSRCLK_OUT,GT2_TXUSRCLK2_OUT,GT2_RXUSRCLK_OUT,GT2_RXUSRCLK2_OUT,GT3_TXUSRCLK_OUT,GT3_TXUSRCLK2_OUT,GT3_RXUSRCLK_OUT,GT3_RXUSRCLK2_OUT,gt0_drpaddr_in[8:0],gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_loopback_in[2:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_dmonitorout_out[14:0],gt0_rxdata_out[63:0],gt0_gthrxn_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclkfabric_out,gt0_rxdatavalid_out,gt0_rxheader_out[2:0],gt0_rxheadervalid_out,gt0_rxgearboxslip_in,gt0_gtrxreset_in,gt0_gthrxp_in,gt0_rxresetdone_out,gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txheader_in[2:0],gt0_txdata_in[63:0],gt0_gthtxn_out,gt0_gthtxp_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txsequence_in[6:0],gt0_txresetdone_out,gt1_drpaddr_in[8:0],gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_loopback_in[2:0],gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_dmonitorout_out[14:0],gt1_rxdata_out[63:0],gt1_gthrxn_in,gt1_rxmonitorout_out[6:0],gt1_rxmonitorsel_in[1:0],gt1_rxoutclkfabric_out,gt1_rxdatavalid_out,gt1_rxheader_out[2:0],gt1_rxheadervalid_out,gt1_rxgearboxslip_in,gt1_gtrxreset_in,gt1_gthrxp_in,gt1_rxresetdone_out,gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txheader_in[2:0],gt1_txdata_in[63:0],gt1_gthtxn_out,gt1_gthtxp_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txsequence_in[6:0],gt1_txresetdone_out,gt2_drpaddr_in[8:0],gt2_drpdi_in[15:0],gt2_drpdo_out[15:0],gt2_drpen_in,gt2_drprdy_out,gt2_drpwe_in,gt2_loopback_in[2:0],gt2_eyescanreset_in,gt2_rxuserrdy_in,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_dmonitorout_out[14:0],gt2_rxdata_out[63:0],gt2_gthrxn_in,gt2_rxmonitorout_out[6:0],gt2_rxmonitorsel_in[1:0],gt2_rxoutclkfabric_out,gt2_rxdatavalid_out,gt2_rxheader_out[2:0],gt2_rxheadervalid_out,gt2_rxgearboxslip_in,gt2_gtrxreset_in,gt2_gthrxp_in,gt2_rxresetdone_out,gt2_gttxreset_in,gt2_txuserrdy_in,gt2_txheader_in[2:0],gt2_txdata_in[63:0],gt2_gthtxn_out,gt2_gthtxp_out,gt2_txoutclkfabric_out,gt2_txoutclkpcs_out,gt2_txsequence_in[6:0],gt2_txresetdone_out,gt3_drpaddr_in[8:0],gt3_drpdi_in[15:0],gt3_drpdo_out[15:0],gt3_drpen_in,gt3_drprdy_out,gt3_drpwe_in,gt3_loopback_in[2:0],gt3_eyescanreset_in,gt3_rxuserrdy_in,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_dmonitorout_out[14:0],gt3_rxdata_out[63:0],gt3_gthrxn_in,gt3_rxmonitorout_out[6:0],gt3_rxmonitorsel_in[1:0],gt3_rxoutclkfabric_out,gt3_rxdatavalid_out,gt3_rxheader_out[2:0],gt3_rxheadervalid_out,gt3_rxgearboxslip_in,gt3_gtrxreset_in,gt3_gthrxp_in,gt3_rxresetdone_out,gt3_gttxreset_in,gt3_txuserrdy_in,gt3_txheader_in[2:0],gt3_txdata_in[63:0],gt3_gthtxn_out,gt3_gthtxp_out,gt3_txoutclkfabric_out,gt3_txoutclkpcs_out,gt3_txsequence_in[6:0],gt3_txresetdone_out,GT0_QPLLLOCK_OUT,GT0_QPLLREFCLKLOST_OUT,GT0_QPLLOUTCLK_OUT,GT0_QPLLOUTREFCLK_OUT,sysclk_in";
    attribute x_core_info : string;
    attribute x_core_info of stub : architecture is "Transceiver_10g_64b67b,gtwizard_v3_6_11,{protocol_file=Start_from_scratch}";
begin
end;
