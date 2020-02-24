
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class pcie_dma_wrap
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)
--!
--!
--! @date        07/01/2015    created
--!
--! @version     1.0
--!
--! @brief 
--! This wrapper would be the unit to instantiate when creating a custom design with
--! this PCIe DMA Core. 
--! It contains the DMA core, the PCI Express hard block and the interrupt controller.
--!
--! @detail
--!
--!-----------------------------------------------------------------------------
--! @TODO
--!  
--!
--! ------------------------------------------------------------------------------
--! Virtex7 PCIe Gen3 DMA Core
--! 
--! \copyright GNU LGPL License
--! Copyright (c) Nikhef, Amsterdam, All rights reserved. <br>
--! This library is free software; you can redistribute it and/or
--! modify it under the terms of the GNU Lesser General Public
--! License as published by the Free Software Foundation; either
--! version 3.0 of the License, or (at your option) any later version.
--! This library is distributed in the hope that it will be useful,
--! but WITHOUT ANY WARRANTY; without even the implied warranty of
--! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
--! Lesser General Public License for more details.<br>
--! You should have received a copy of the GNU Lesser General Public
--! License along with this library.
--! 
-- 
--! @brief ieee



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity wupper is
    generic(
        NUMBER_OF_INTERRUPTS  : integer := 8;
        NUMBER_OF_DESCRIPTORS : integer := 8;
        BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
        SVN_VERSION           : integer := 0;
        CARD_TYPE             : integer := 710;
        GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
        COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
        GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
        GIT_COMMIT_NUMBER     : integer := 0;
        PCIE_ENDPOINT         : integer := 0;
        PCIE_LANES            : integer;
        DATA_WIDTH            : integer;
        SIMULATION            : boolean := false;
        CLKCM_CFG : boolean;
        CLKRCV_TRST : boolean;
        CLKSWING_CFG : bit_vector );
    port (
        appreg_clk                          : out    std_logic; --Original clock of unsynchronized registermap
        sync_clk                            : in     std_logic; --Clock to synchronize the registermap to
        flush_fifo                          : out    std_logic;
        fromhost_busy_out                   : out    std_logic;
        interrupt_call                      : in     std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
        lnk_up                              : out    std_logic;
        pcie_rxn                            : in     std_logic_vector(PCIE_LANES-1 downto 0);
        pcie_rxp                            : in     std_logic_vector(PCIE_LANES-1 downto 0);
        pcie_txn                            : out    std_logic_vector(PCIE_LANES-1 downto 0);
        pcie_txp                            : out    std_logic_vector(PCIE_LANES-1 downto 0);
        pll_locked                          : out    std_logic;
        register_map_control_sync           : out    register_map_control_type;
        register_map_control_appreg_clk     : out    register_map_control_type;
        register_map_gen_board_info         : in     register_map_gen_board_info_type;
        register_map_hk_monitor             : in     register_map_hk_monitor_type;
        reset_hard                          : out    std_logic;
        reset_soft                          : out    std_logic;
        reset_soft_appreg_clk               : out    std_logic;
        reset_hw_in                         : in     std_logic;
        sys_clk_n                           : in     std_logic;
        sys_clk_p                           : in     std_logic;
        sys_reset_n                         : in     std_logic;
        tohost_busy_out                     : out    std_logic;
        fromHostFifo_dout                   : out    std_logic_vector(DATA_WIDTH-1 downto 0);
        fromHostFifo_empty                  : out    std_logic;
        fromHostFifo_rd_clk                 : in     std_logic;
        fromHostFifo_rd_en                  : in     std_logic;
        fromHostFifo_rst                    : in     std_logic;
        toHostFifo_din                      : in     slv_array(0 to NUMBER_OF_DESCRIPTORS-2);
        toHostFifo_prog_full                : out    std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
        toHostFifo_rst                      : in     std_logic;
        toHostFifo_wr_clk                   : in     std_logic;
        wr_data_count                       : out    slv12_array(0 to NUMBER_OF_DESCRIPTORS-2);
        toHostFifo_wr_en                    : in     std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
        clk250_out                          : out    std_logic);
end entity wupper;


architecture structure of wupper is

    signal m_axis_r_MM2S              : axis_r_type;
    signal s_axis_r_S2MM              : axis_r_type;
    signal m_axis_r_CNTRL             : axis_r_type;
    signal s_axis_r_STS               : axis_r_type;
    signal cfg_interrupt_msix_sent    : std_logic;
    signal cfg_interrupt_msix_fail    : std_logic;
    signal cfg_interrupt_msix_int     : std_logic;
    signal cfg_interrupt_msix_address : std_logic_vector(63 downto 0);
    signal cfg_interrupt_msix_data    : std_logic_vector(31 downto 0);
    signal cfg_interrupt_msix_enable  : std_logic_vector(3 downto 0);
    signal interrupt_vector           : interrupt_vectors_type(0 to (NUMBER_OF_INTERRUPTS-1));
    signal reset                      : std_logic;
    signal clk                        : std_logic;
    signal cfg_mgmt_addr              : std_logic_vector(18 downto 0);
    signal cfg_mgmt_write_data        : std_logic_vector(31 downto 0);
    signal cfg_mgmt_byte_enable       : std_logic_vector(3 downto 0);
    signal cfg_mgmt_write             : std_logic;
    signal cfg_mgmt_read              : std_logic;
    signal cfg_mgmt_read_write_done   : std_logic;
    signal cfg_mgmt_read_data         : std_logic_vector(31 downto 0);
    signal interrupt_table_en         : std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
    signal regmap_clk                 : std_logic;
    signal dma_interrupt_call         : std_logic_vector(3 downto 0);
    signal m_axis_cq                  : axis_type;
    signal m_axis_cc                  : axis_type;
    signal m_axis_rc                  : axis_type;
    signal m_axis_rq                  : axis_type;
    signal cfg_fc_ph                  : std_logic_vector(7 downto 0);
    signal cfg_fc_pd                  : std_logic_vector(11 downto 0);
    signal cfg_fc_nph                 : std_logic_vector(7 downto 0);
    signal cfg_fc_npd                 : std_logic_vector(11 downto 0);
    signal cfg_fc_cplh                : std_logic_vector(7 downto 0);
    signal cfg_fc_cpld                : std_logic_vector(11 downto 0);
    signal cfg_fc_sel                 : std_logic_vector(2 downto 0);
    signal sys_rst_n                  : std_logic;
    signal lnk_up_net                 : std_logic;
    signal reset_hard_s, wupper_reset: std_logic;


  signal fromHostFifo_din                    :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal fromHostFifoIndex                   :  integer range 0 to 0;
    signal fromHostFifo_pfull_threshold_assert :  std_logic_vector(8 downto 0);
    signal fromHostFifo_pfull_threshold_negate :  std_logic_vector(8 downto 0);
    signal fromHostFifo_prog_full              :  std_logic;
    signal fromHostFifo_we                     :  std_logic;
    signal fromHostFifo_wr_clk                 :  std_logic;

    signal toHostFifo_dout                     :  std_logic_vector(DATA_WIDTH-1 downto 0);
    signal toHostFifoIndex                     :  integer range 0 to NUMBER_OF_DESCRIPTORS-2;
    signal toHostFifo_empty_thresh             :  std_logic_vector(11 downto 0);
    signal toHostFifo_pfull_threshold_assert   :  std_logic_vector(11 downto 0);
    signal toHostFifo_pfull_threshold_negate   :  std_logic_vector(11 downto 0);
    signal toHostFifo_prog_empty               :  std_logic_vector(NUMBER_OF_DESCRIPTORS-2 downto 0);
    signal toHostFifo_rd_clk                   :  std_logic;
    signal toHostFifo_re                       :  std_logic;
    signal register_map_control_appreg_clk_s   :  register_map_control_type;
    signal register_map_monitor                :  register_map_monitor_type;
    

  
  signal irq0_interrupt_call : std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
  
  
  
  signal  reset_soft_appreg_clk_s : std_logic;
  

begin
    toHostFifo_rd_clk <= clk;
    fromHostFifo_wr_clk <= clk;
    appreg_clk <= regmap_clk;
    sys_rst_n <= sys_reset_n;
    lnk_up <= lnk_up_net;
    clk250_out <= clk;

    ep0: entity work.pcie_ep_wrap
        generic map(
            CLKCM_CFG => CLKCM_CFG,
            CLKRCV_TRST => CLKRCV_TRST,
            CLKSWING_CFG => CLKSWING_CFG,
            CARD_TYPE => CARD_TYPE,
            PCIE_ENDPOINT => PCIE_ENDPOINT,
            PCIE_LANES => PCIE_LANES,
            DATA_WIDTH => DATA_WIDTH,
            SIMULATION => SIMULATION)
        port map(
            cfg_fc_cpld                => cfg_fc_cpld,
            cfg_fc_cplh                => cfg_fc_cplh,
            cfg_fc_npd                 => cfg_fc_npd,
            cfg_fc_nph                 => cfg_fc_nph,
            cfg_fc_pd                  => cfg_fc_pd,
            cfg_fc_ph                  => cfg_fc_ph,
            cfg_fc_sel                 => cfg_fc_sel,
            cfg_interrupt_msix_address => cfg_interrupt_msix_address,
            cfg_interrupt_msix_data    => cfg_interrupt_msix_data,
            cfg_interrupt_msix_enable  => cfg_interrupt_msix_enable,
            cfg_interrupt_msix_fail    => cfg_interrupt_msix_fail,
            cfg_interrupt_msix_int     => cfg_interrupt_msix_int,
            cfg_interrupt_msix_sent    => cfg_interrupt_msix_sent,
            cfg_mgmt_addr              => cfg_mgmt_addr,
            cfg_mgmt_byte_enable       => cfg_mgmt_byte_enable,
            cfg_mgmt_read              => cfg_mgmt_read,
            cfg_mgmt_read_data         => cfg_mgmt_read_data,
            cfg_mgmt_read_write_done   => cfg_mgmt_read_write_done,
            cfg_mgmt_write             => cfg_mgmt_write,
            cfg_mgmt_write_data        => cfg_mgmt_write_data,
            clk                        => clk,
            m_axis_cq                  => m_axis_cq,
            m_axis_r_cq                => s_axis_r_STS,
            m_axis_r_rc                => s_axis_r_S2MM,
            m_axis_rc                  => m_axis_rc,
            pci_exp_rxn                => pcie_rxn,
            pci_exp_rxp                => pcie_rxp,
            pci_exp_txn                => pcie_txn,
            pci_exp_txp                => pcie_txp,
            reset                      => reset,
            s_axis_cc                  => m_axis_cc,
            s_axis_r_cc                => m_axis_r_CNTRL,
            s_axis_r_rq                => m_axis_r_MM2S,
            s_axis_rq                  => m_axis_rq,
            sys_clk_n                  => sys_clk_n,
            sys_clk_p                  => sys_clk_p,
            sys_rst_n                  => sys_rst_n,
            user_lnk_up                => lnk_up_net);

    dma0: entity work.wupper_core
        generic map(
            NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS,
            NUMBER_OF_INTERRUPTS  => NUMBER_OF_INTERRUPTS,
            SVN_VERSION           => SVN_VERSION,
            BUILD_DATETIME        => BUILD_DATETIME,
            CARD_TYPE             => CARD_TYPE,
            GIT_HASH              => GIT_HASH,
            COMMIT_DATETIME       => COMMIT_DATETIME,
            GIT_TAG               => GIT_TAG,
            GIT_COMMIT_NUMBER     => GIT_COMMIT_NUMBER,
            PCIE_ENDPOINT         => PCIE_ENDPOINT,
            DATA_WIDTH            => DATA_WIDTH)
        port map(
            clk                             => clk,
            regmap_clk                      => regmap_clk,
            dma_interrupt_call              => dma_interrupt_call,
            flush_fifo                      => flush_fifo,
            fromHostFifo_din                => fromHostFifo_din,
            fromHostFifoIndex               => fromHostFifoIndex,
            fromHostFifo_prog_full          => fromHostFifo_prog_full,
            fromHostFifo_we                 => fromHostFifo_we,
            fromhost_busy_out               => fromhost_busy_out,
            fromhost_pfull_threshold_assert => fromHostFifo_pfull_threshold_assert,
            fromhost_pfull_threshold_negate => fromHostFifo_pfull_threshold_negate,
            interrupt_table_en              => interrupt_table_en,
            interrupt_vector                => interrupt_vector,
            m_axis_cc                       => m_axis_cc,
            m_axis_r_cc                     => m_axis_r_CNTRL,
            m_axis_r_rq                     => m_axis_r_MM2S,
            m_axis_rq                       => m_axis_rq,
            register_map_control            => register_map_control_appreg_clk_s,
            register_map_monitor            => register_map_monitor,
            reset                           => wupper_reset,
            reset_global_soft               => reset_soft_appreg_clk_s,
            s_axis_cq                       => m_axis_cq,
            s_axis_r_cq                     => s_axis_r_STS,
            s_axis_r_rc                     => s_axis_r_S2MM,
            s_axis_rc                       => m_axis_rc,
            toHostFifo_dout                 => toHostFifo_dout,
            toHostFifoIndex                 => toHostFifoIndex,
            toHostFifo_empty_thresh         => toHostFifo_empty_thresh,
            toHostFifo_prog_empty           => toHostFifo_prog_empty,
            toHostFifo_re                   => toHostFifo_re,
            tohost_busy_out                 => tohost_busy_out,
            tohost_pfull_threshold_assert   => toHostFifo_pfull_threshold_assert,
            tohost_pfull_threshold_negate   => toHostFifo_pfull_threshold_negate,
            user_lnk_up                     => lnk_up_net);

    irq0: entity work.intr_ctrl
        generic map(
            NUMBER_OF_INTERRUPTS => NUMBER_OF_INTERRUPTS)
        port map(
            cfg_interrupt_msix_address => cfg_interrupt_msix_address,
            cfg_interrupt_msix_data    => cfg_interrupt_msix_data,
            cfg_interrupt_msix_enable  => cfg_interrupt_msix_enable,
            cfg_interrupt_msix_fail    => cfg_interrupt_msix_fail,
            cfg_interrupt_msix_int     => cfg_interrupt_msix_int,
            cfg_interrupt_msix_sent    => cfg_interrupt_msix_sent,
            clk                        => clk,
            regmap_clk                 => regmap_clk,
            dma_interrupt_call         => dma_interrupt_call,
            interrupt_call             => irq0_interrupt_call,
            interrupt_table_en         => interrupt_table_en,
            interrupt_vector           => interrupt_vector,
            reset                      => reset,
            s_axis_cc                  => m_axis_cc,
            s_axis_cq                  => m_axis_cq,
            s_axis_rc                  => m_axis_rc,
            s_axis_rq                  => m_axis_rq,
            int_test                   => register_map_control_appreg_clk_s.INT_TEST);

    init0: entity work.pcie_init
        port map(
            cfg_fc_cpld              => cfg_fc_cpld,
            cfg_fc_cplh              => cfg_fc_cplh,
            cfg_fc_npd               => cfg_fc_npd,
            cfg_fc_nph               => cfg_fc_nph,
            cfg_fc_pd                => cfg_fc_pd,
            cfg_fc_ph                => cfg_fc_ph,
            cfg_fc_sel               => cfg_fc_sel,
            cfg_mgmt_addr            => cfg_mgmt_addr,
            cfg_mgmt_byte_enable     => cfg_mgmt_byte_enable,
            cfg_mgmt_read            => cfg_mgmt_read,
            cfg_mgmt_read_data       => cfg_mgmt_read_data,
            cfg_mgmt_read_write_done => cfg_mgmt_read_write_done,
            cfg_mgmt_write           => cfg_mgmt_write,
            cfg_mgmt_write_data      => cfg_mgmt_write_data,
            clk                      => clk,
            reset                    => reset);

    clk0: entity work.pcie_slow_clock
        port map(
            clk        => clk,
            regmap_clk => regmap_clk,
            pll_locked => pll_locked,
            reset_n    => sys_rst_n,
            reset_out  => reset_hard_s);

    reset_hard <= reset_hard_s;
    wupper_reset <= reset_hard_s or reset;
      
      
  fifos0: entity work.WupperFifos
        generic map(
            NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS,
            DATA_WIDTH => DATA_WIDTH
        )
        port map(
            fromHostFifoIndex => fromHostFifoIndex,
            fromHostFifo_din => fromHostFifo_din,
            fromHostFifo_dout => fromHostFifo_dout,
            fromHostFifo_empty => fromHostFifo_empty,
            fromHostFifo_pfull_threshold_assert => fromHostFifo_pfull_threshold_assert,
            fromHostFifo_pfull_threshold_negate => fromHostFifo_pfull_threshold_negate,
            fromHostFifo_prog_full => fromHostFifo_prog_full,
            fromHostFifo_rd_clk => fromHostFifo_rd_clk,
            fromHostFifo_rd_en => fromHostFifo_rd_en,
            fromHostFifo_rst => fromHostFifo_rst,
            fromHostFifo_we => fromHostFifo_we,
            fromHostFifo_wr_clk => fromHostFifo_wr_clk,
            toHostFifoIndex => toHostFifoIndex,
            toHostFifo_din => toHostFifo_din,
            toHostFifo_dout => toHostFifo_dout,
            toHostFifo_empty_thresh => toHostFifo_empty_thresh,
            toHostFifo_pfull_threshold_assert => toHostFifo_pfull_threshold_assert,
            toHostFifo_pfull_threshold_negate => toHostFifo_pfull_threshold_negate,
            toHostFifo_prog_empty => toHostFifo_prog_empty,
            toHostFifo_prog_full => toHostFifo_prog_full,
            toHostFifo_rd_clk => toHostFifo_rd_clk,
            toHostFifo_re => toHostFifo_re,
            toHostFifo_rst => toHostFifo_rst,
            toHostFifo_wr_clk => toHostFifo_wr_clk,
            toHostFifo_wr_data_count => wr_data_count,
            toHostFifo_wr_en => toHostFifo_wr_en
        );

    regsync0: entity work.register_map_sync
        generic map(
            NUMBER_OF_INTERRUPTS => NUMBER_OF_INTERRUPTS)
        port map(
            appreg_clk                    => regmap_clk,
            clk40                         => sync_clk,
            interrupt_call                => irq0_interrupt_call,
            interrupt_call_cr             => interrupt_call,
            register_map_40_control       => register_map_control_sync,
            register_map_control          => register_map_control_appreg_clk_s,
            register_map_gen_board_info   => register_map_gen_board_info,
            register_map_hk_monitor       => register_map_hk_monitor,
            register_map_monitor          => register_map_monitor,
            rst_hw                        => reset_hw_in,
            rst_soft_40                   => reset_soft,
            rst_soft_appregclk            => reset_soft_appreg_clk_s);

    register_map_control_appreg_clk <= register_map_control_appreg_clk_s;
    reset_soft_appreg_clk           <= reset_soft_appreg_clk_s;
end architecture structure ; -- of wupper

