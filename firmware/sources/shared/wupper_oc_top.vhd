
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class virtex7_dma_top
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)
--!
--!
--! @date        07/01/2015    created
--!
--! @version     1.1
--!
--! @brief 
--! Top level design containing a simple application and the PCIe DMA 
--! core
--!
--!
--! 11/19/2015 B. Kuschak <brian@skybox.com> 
--!          Modifications for KCU105.
--! 
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



library ieee, UNISIM, work;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity wupper_oc_top is
  generic(
    NUMBER_OF_INTERRUPTS  : integer := 8;
    NUMBER_OF_DESCRIPTORS : integer := 8;
    CARD_TYPE             : integer := 709;
    SVN_VERSION           : integer := 0;
    BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
    GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
    COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
    GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
    GIT_COMMIT_NUMBER     : integer := 0);
  port (
    emcclk      : in     std_logic; --! emcclk is part of the JTAG high speed programming.
    emcclk_out  : out    std_logic; --! use emcclk_out in order to not optimize emcclk away
    SCL         : inout  std_logic; --! I2C port
    SDA         : inout  std_logic; --! I2C port
    i2cmux_rst  : out    std_logic; --! I2C port
    leds        : out    std_logic_vector(7 downto 0); --! 8 status leds
    pcie_rxn    : in     std_logic_vector(7 downto 0);
    pcie_rxp    : in     std_logic_vector(7 downto 0);
    pcie_txn    : out    std_logic_vector(7 downto 0);
    pcie_txp    : out    std_logic_vector(7 downto 0); --! PCIe link lanes
    sys_clk_n   : in     std_logic;
    sys_clk_p   : in     std_logic; --! 100MHz PCIe reference clock
    sys_reset_n : in     std_logic); --! Active-low system reset from PCIe interface
end entity wupper_oc_top;


architecture structure of wupper_oc_top is

  signal register_map_monitor                : register_map_monitor_type; --! this signal contains all status (read only) signals from the application. The record members are described in pcie_package.vhd
  signal register_map_control                : register_map_control_type; --! contains all read/write registers that control the application. The record members are described in pcie_package.vhd
  signal interrupt_call                      : std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
  signal appreg_clk                          : std_logic;
  signal pll_locked                       : std_logic;
  signal reset_soft                          : std_logic;
  signal reset_hard                          : std_logic;
  signal flush_fifo                          : std_logic;
  signal fromHostFifo_pfull_threshold_assert : std_logic_vector(6 downto 0);
  signal fromHostFifo_pfull_threshold_negate : std_logic_vector(6 downto 0);
  signal fromHostFifo_we                     : std_logic;
  signal fromHostFifo_din                    : std_logic_vector(255 downto 0);
  signal fromHostFifo_prog_full              : std_logic;
  signal toHostFifo_dout                     : std_logic_vector(255 downto 0);
  signal toHostFifo_re                       : std_logic;
  signal toHostFifo_prog_empty               : std_logic;
  signal toHostFifo_empty_thresh             : std_logic_vector(11 downto 0);
  signal toHostFifo_rd_clk                   : std_logic;
  signal toHostFifo_pfull_threshold_assert   : std_logic_vector(11 downto 0);
  signal toHostFifo_pfull_threshold_negate   : std_logic_vector(11 downto 0);
  signal fromHostFifo_dout                   : std_logic_vector(255 downto 0);
  signal fromHostFifo_rd_en                  : std_logic;
  signal fromHostFifo_empty                  : std_logic;
  signal fromHostFifo_rd_clk                 : std_logic;
  signal fromHostFifo_rst                    : std_logic;
  signal toHostFifo_din                      : std_logic_vector(255 downto 0);
  signal toHostFifo_wr_en                    : std_logic;
  signal toHostFifo_prog_full                : std_logic;
  signal toHostFifo_wr_clk                   : std_logic;
  signal toHostFifo_rst                      : std_logic;
  signal fromHostFifo_wr_clk                 : std_logic;

  component wupper
    generic(
      NUMBER_OF_INTERRUPTS  : integer := 8;
      NUMBER_OF_DESCRIPTORS : integer := 8;
      BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
      SVN_VERSION           : integer := 0;
      CARD_TYPE             : integer := 709;
      DEVID                 : std_logic_vector(15 downto 0) := x"7038";
      GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
      COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
      GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
      GIT_COMMIT_NUMBER     : integer := 0);
    port (
      appreg_clk                          : out    std_logic;
      flush_fifo                          : out    std_logic;
      fromHostFifo_din                    : out    std_logic_vector(255 downto 0);
      fromHostFifo_pfull_threshold_assert : out    std_logic_vector(6 downto 0);
      fromHostFifo_pfull_threshold_negate : out    std_logic_vector(6 downto 0);
      fromHostFifo_prog_full              : in     std_logic;
      fromHostFifo_we                     : out    std_logic;
      fromHostFifo_wr_clk                 : out    std_logic;
      interrupt_call                      : in     std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
      lnk_up                              : out    std_logic;
      pcie_rxn                            : in     std_logic_vector(7 downto 0);
      pcie_rxp                            : in     std_logic_vector(7 downto 0);
      pcie_txn                            : out    std_logic_vector(7 downto 0);
      pcie_txp                            : out    std_logic_vector(7 downto 0);
      pll_locked                          : out    std_logic;
      register_map_control                : out    register_map_control_type;
      register_map_monitor                : in     register_map_monitor_type;
      reset_hard                          : out    std_logic;
      reset_soft                          : out    std_logic;
      sys_clk_n                           : in     std_logic;
      sys_clk_p                           : in     std_logic;
      sys_reset_n                         : in     std_logic;
      toHostFifo_dout                     : in     std_logic_vector(255 downto 0);
      toHostFifo_empty_thresh             : out    std_logic_vector(11 downto 0);
      toHostFifo_pfull_threshold_assert   : out    std_logic_vector(11 downto 0);
      toHostFifo_pfull_threshold_negate   : out    std_logic_vector(11 downto 0);
      toHostFifo_prog_empty               : in     std_logic;
      toHostFifo_rd_clk                   : out    std_logic;
      toHostFifo_re                       : out    std_logic);
  end component wupper;

  component application
    generic(
      NUMBER_OF_INTERRUPTS : integer := 8;
      CARD_TYPE            : integer := 709);
    port (
      appreg_clk           : in     std_logic;
      clk250               : in     std_logic;
      flush_fifo           : in     std_logic;
      fromHostFifo_dout    : in     std_logic_vector(255 downto 0);
      fromHostFifo_empty   : in     std_logic;
      fromHostFifo_rd_clk  : out    std_logic;
      fromHostFifo_rd_en   : out    std_logic;
      fromHostFifo_rst     : out    std_logic;
      interrupt_call       : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
      register_map_control : in     register_map_control_type; --! contains all read/write registers that control the application. The record members are described in pcie_package.vhd
      reset_hard           : in     std_logic;
      reset_soft           : in     std_logic;
      toHostFifo_din       : out    std_logic_vector(255 downto 0);
      toHostFifo_prog_full : in     std_logic;
      toHostFifo_rst       : out    std_logic;
      toHostFifo_wr_clk    : out    std_logic;
      toHostFifo_wr_en     : out    std_logic);
  end component application;
  
  component housekeeping
    generic(
      CARD_TYPE               : integer := 710
      );
    port (
      MMCM_Locked_in              : in     std_logic;
      SCL                         : inout  std_logic;
      SDA                         : inout  std_logic;
      appreg_clk                  : in     std_logic;
      i2cmux_rst                  : out    std_logic;
      leds                        : out    std_logic_vector(7 downto 0);
      register_map_control        : in     register_map_control_type;
      register_map_hk_monitor     : out    register_map_hk_monitor_type;
      reset_hard                  : in     std_logic;
      reset_soft                  : in     std_logic
      );
  end component housekeeping;

  component fifo4KB_256bit
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(255 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_full_thresh_assert : in     std_logic_vector(6 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(6 downto 0);
      dout                    : out    std_logic_vector(255 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic);
  end component fifo4KB_256bit;

  component fifo128KB_256bit
    port (
      rst                     : in     std_logic;
      wr_clk                  : in     std_logic;
      rd_clk                  : in     std_logic;
      din                     : in     std_logic_vector(255 downto 0);
      wr_en                   : in     std_logic;
      rd_en                   : in     std_logic;
      prog_empty_thresh       : in     std_logic_vector(11 downto 0);
      prog_full_thresh_assert : in     std_logic_vector(11 downto 0);
      prog_full_thresh_negate : in     std_logic_vector(11 downto 0);
      dout                    : out    std_logic_vector(255 downto 0);
      full                    : out    std_logic;
      empty                   : out    std_logic;
      prog_full               : out    std_logic;
      prog_empty              : out    std_logic);
  end component fifo128KB_256bit;

begin
  emcclk_out <= emcclk;


  --! Instantiation of the actual PCI express core. Please note the 40MHz
  --! clock required by the core, the 250MHz clock (fifo_rd_clk and fifo_wr_clk) 
  --! are generated from sys_clk_p and _n
  pcie0: wupper
    generic map(
      NUMBER_OF_INTERRUPTS  => NUMBER_OF_INTERRUPTS,
      NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS,
      BUILD_DATETIME        => BUILD_DATETIME,
      SVN_VERSION           => SVN_VERSION,
      CARD_TYPE             => CARD_TYPE,
      DEVID                 => x"7039",
      GIT_HASH              => GIT_HASH,
      COMMIT_DATETIME       => COMMIT_DATETIME,
      GIT_TAG               => GIT_TAG,
      GIT_COMMIT_NUMBER     => GIT_COMMIT_NUMBER)
    port map(
      appreg_clk                          => appreg_clk,
      flush_fifo                          => flush_fifo,
      fromHostFifo_din                    => fromHostFifo_din,
      fromHostFifo_pfull_threshold_assert => fromHostFifo_pfull_threshold_assert,
      fromHostFifo_pfull_threshold_negate => fromHostFifo_pfull_threshold_negate,
      fromHostFifo_prog_full              => fromHostFifo_prog_full,
      fromHostFifo_we                     => fromHostFifo_we,
      fromHostFifo_wr_clk                 => fromHostFifo_wr_clk,
      interrupt_call                      => interrupt_call,
      lnk_up                              => open,
      pcie_rxn                            => pcie_rxn,
      pcie_rxp                            => pcie_rxp,
      pcie_txn                            => pcie_txn,
      pcie_txp                            => pcie_txp,
      pll_locked                          => pll_locked,
      register_map_control                => register_map_control,
      register_map_monitor                => register_map_monitor,
      reset_hard                          => reset_hard,
      reset_soft                          => reset_soft,
      sys_clk_n                           => sys_clk_n,
      sys_clk_p                           => sys_clk_p,
      sys_reset_n                         => sys_reset_n,
      toHostFifo_dout                     => toHostFifo_dout,
      toHostFifo_empty_thresh             => toHostFifo_empty_thresh,
      toHostFifo_pfull_threshold_assert   => toHostFifo_pfull_threshold_assert,
      toHostFifo_pfull_threshold_negate   => toHostFifo_pfull_threshold_negate,
      toHostFifo_prog_empty               => toHostFifo_prog_empty,
      toHostFifo_rd_clk                   => toHostFifo_rd_clk,
      toHostFifo_re                       => toHostFifo_re);


  --! The example application only instantiates one fifo (PC=>PCIe). 
  --! it fills it with some constants and a counter value.
  u0: application
    generic map(
      NUMBER_OF_INTERRUPTS => NUMBER_OF_INTERRUPTS)
    port map(
      appreg_clk           => appreg_clk,
      clk250               => fromHostFifo_wr_clk,
      flush_fifo           => flush_fifo,
      fromHostFifo_dout    => fromHostFifo_dout,
      fromHostFifo_empty   => fromHostFifo_empty,
      fromHostFifo_rd_clk  => fromHostFifo_rd_clk,
      fromHostFifo_rd_en   => fromHostFifo_rd_en,
      fromHostFifo_rst     => fromHostFifo_rst,
      interrupt_call       => interrupt_call,
      register_map_control => register_map_control,
      reset_hard           => reset_hard,
      reset_soft           => reset_soft,
      toHostFifo_din       => toHostFifo_din,
      toHostFifo_prog_full => toHostFifo_prog_full,
      toHostFifo_rst       => toHostFifo_rst,
      toHostFifo_wr_clk    => toHostFifo_wr_clk,
      toHostFifo_wr_en     => toHostFifo_wr_en);
      
  hk0: housekeeping
    generic map (
      CARD_TYPE => CARD_TYPE
    )
    port map(
      MMCM_Locked_in              => pll_locked,
      SCL                         => SCL,
      SDA                         => SDA,
      appreg_clk                  => appreg_clk,
      i2cmux_rst                  => i2cmux_rst,
      leds                        => leds,
      register_map_control        => register_map_control,
      register_map_hk_monitor     => register_map_monitor.register_map_hk_monitor,
      reset_hard                  => reset_hard,
      reset_soft                  => reset_soft
    );

  fromHostFifo0: fifo4KB_256bit
    port map(
      rst                     => fromHostFifo_rst,
      wr_clk                  => fromHostFifo_wr_clk,
      rd_clk                  => fromHostFifo_rd_clk,
      din                     => fromHostFifo_din,
      wr_en                   => fromHostFifo_we,
      rd_en                   => fromHostFifo_rd_en,
      prog_full_thresh_assert => fromHostFifo_pfull_threshold_assert,
      prog_full_thresh_negate => fromHostFifo_pfull_threshold_negate,
      dout                    => fromHostFifo_dout,
      full                    => open,
      empty                   => fromHostFifo_empty,
      prog_full               => fromHostFifo_prog_full);

  toHostFifo0: fifo128KB_256bit
    port map(
      rst                     => toHostFifo_rst,
      wr_clk                  => toHostFifo_wr_clk,
      rd_clk                  => toHostFifo_rd_clk,
      din                     => toHostFifo_din,
      wr_en                   => toHostFifo_wr_en,
      rd_en                   => toHostFifo_re,
      prog_empty_thresh       => toHostFifo_empty_thresh,
      prog_full_thresh_assert => toHostFifo_pfull_threshold_assert,
      prog_full_thresh_negate => toHostFifo_pfull_threshold_negate,
      dout                    => toHostFifo_dout,
      full                    => open,
      empty                   => open,
      prog_full               => toHostFifo_prog_full,
      prog_empty              => toHostFifo_prog_empty);
      
  wb0: entity work.wb_intercon
    port map(
      control_in              => register_map_control,
      monitor_out             => register_map_monitor.wishbone_monitor,     
      wupper_clk_i            => appreg_clk,
      rst_soft_i              => reset_soft,
      rst_hard_i              => reset_hard);      
            
end architecture structure ; -- of wupper_oc_top

