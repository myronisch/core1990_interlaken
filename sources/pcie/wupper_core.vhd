
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class DMA_Core
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
--! DMA Core is the unit that bundles the DMA core, the control and the cache units.
--! 
--! 
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



library ieee, UNISIM, work;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity wupper_core is
  generic(
    NUMBER_OF_DESCRIPTORS : integer := 8;
    NUMBER_OF_INTERRUPTS  : integer := 8;
    SVN_VERSION           : integer := 0;
    BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
    CARD_TYPE             : integer := 709;
    GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
    COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
    GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
    GIT_COMMIT_NUMBER     : integer := 0);
  port (
    bar0                            : in     std_logic_vector(31 downto 0);
    bar1                            : in     std_logic_vector(31 downto 0);
    bar2                            : in     std_logic_vector(31 downto 0);
    clk                             : in     std_logic;
    clkDiv6                         : in     std_logic;
    dma_interrupt_call              : out    std_logic_vector(3 downto 0);
    flush_fifo                      : out    std_logic;
    fromHostFifo_din                : out    std_logic_vector(255 downto 0);
    fromHostFifo_prog_full          : in     std_logic;
    fromHostFifo_we                 : out    std_logic;
    fromhost_pfull_threshold_assert : out    std_logic_vector(6 downto 0);
    fromhost_pfull_threshold_negate : out    std_logic_vector(6 downto 0);
    interrupt_table_en              : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
    interrupt_vector                : out    interrupt_vectors_type(0 to (NUMBER_OF_INTERRUPTS-1));
    m_axis_cc                       : out    axis_type;
    m_axis_r_cc                     : in     axis_r_type;
    m_axis_r_rq                     : in     axis_r_type;
    m_axis_rq                       : out    axis_type;
    register_map_control            : out    register_map_control_type;
    register_map_monitor            : in     register_map_monitor_type;
    reset                           : in     std_logic;
    reset_global_soft               : out    std_logic;
    s_axis_cq                       : in     axis_type;
    s_axis_r_cq                     : out    axis_r_type;
    s_axis_r_rc                     : out    axis_r_type;
    s_axis_rc                       : in     axis_type;
    toHostFifo_dout                 : in     std_logic_vector(255 downto 0);
    toHostFifo_empty_thresh         : out    std_logic_vector(11 downto 0);
    toHostFifo_prog_empty           : in     std_logic;
    toHostFifo_re                   : out    std_logic;
    tohost_pfull_threshold_assert   : out    std_logic_vector(11 downto 0);
    tohost_pfull_threshold_negate   : out    std_logic_vector(11 downto 0);
    user_lnk_up                     : in     std_logic);
end entity wupper_core;


architecture structure of wupper_core is

  signal dma_status         : dma_statuses_type(0 to (NUMBER_OF_DESCRIPTORS-1));
  signal u1_dma_descriptors : dma_descriptors_type(0 to (NUMBER_OF_DESCRIPTORS-1));
  signal dma_soft_reset     : std_logic;

  component dma_read_write
    generic(
      NUMBER_OF_DESCRIPTORS : integer := 8);
    port (
      clk                     : in     std_logic;
      dma_descriptors         : in     dma_descriptors_type(0 to (NUMBER_OF_DESCRIPTORS-1));
      dma_soft_reset          : in     std_logic;
      dma_status              : out    dma_statuses_type(0 to (NUMBER_OF_DESCRIPTORS-1));
      fromHostFifo_din        : out    std_logic_vector(255 downto 0);
      fromHostFifo_prog_full  : in     std_logic;
      fromHostFifo_we         : out    std_logic;
      m_axis_r_rq             : in     axis_r_type;
      m_axis_rq               : out    axis_type;
      reset                   : in     std_logic;
      s_axis_r_rc             : out    axis_r_type;
      s_axis_rc               : in     axis_type;
      toHostFifo_dout         : in     std_logic_vector(255 downto 0);
      toHostFifo_empty_thresh : out    std_logic_vector(11 downto 0);
      toHostFifo_prog_empty   : in     std_logic;
      toHostFifo_re           : out    std_logic);
  end component dma_read_write;

  component dma_control
    generic(
      NUMBER_OF_DESCRIPTORS : integer := 8;
      NUMBER_OF_INTERRUPTS  : integer := 8;
      SVN_VERSION           : integer := 0;
      BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
      CARD_TYPE             : integer := 709;
      GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
      COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
      GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
      GIT_COMMIT_NUMBER     : integer := 0);
    port (
      bar0                            : in     std_logic_vector(31 downto 0);
      bar1                            : in     std_logic_vector(31 downto 0);
      bar2                            : in     std_logic_vector(31 downto 0);
      clk                             : in     std_logic;
      clkDiv6                         : in     std_logic;
      dma_descriptors                 : out    dma_descriptors_type(0 to (NUMBER_OF_DESCRIPTORS-1));
      dma_soft_reset                  : out    std_logic;
      dma_status                      : in     dma_statuses_type;
      flush_fifo                      : out    std_logic;
      interrupt_vector                : out    interrupt_vectors_type(0 to (NUMBER_OF_INTERRUPTS-1));
      m_axis_cc                       : out    axis_type;
      m_axis_r_cc                     : in     axis_r_type;
      reset                           : in     std_logic;
      reset_global_soft               : out    std_logic;
      s_axis_cq                       : in     axis_type;
      s_axis_r_cq                     : out    axis_r_type;
      register_map_monitor            : in     register_map_monitor_type;
      register_map_control            : out    register_map_control_type;
      interrupt_table_en              : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
      dma_interrupt_call              : out    std_logic_vector(3 downto 0);
      fifo_empty                      : in     std_logic;
      fifo_full                       : in     std_logic;
      fromhost_pfull_threshold_assert : out    std_logic_vector(6 downto 0);
      fromhost_pfull_threshold_negate : out    std_logic_vector(6 downto 0);
      tohost_pfull_threshold_assert   : out    std_logic_vector(11 downto 0);
      tohost_pfull_threshold_negate   : out    std_logic_vector(11 downto 0));
  end component dma_control;

begin

  u0: dma_read_write
    generic map(
      NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS)
    port map(
      clk                     => clk,
      dma_descriptors         => u1_dma_descriptors,
      dma_soft_reset          => dma_soft_reset,
      dma_status              => dma_status,
      fromHostFifo_din        => fromHostFifo_din,
      fromHostFifo_prog_full  => fromHostFifo_prog_full,
      fromHostFifo_we         => fromHostFifo_we,
      m_axis_r_rq             => m_axis_r_rq,
      m_axis_rq               => m_axis_rq,
      reset                   => reset,
      s_axis_r_rc             => s_axis_r_rc,
      s_axis_rc               => s_axis_rc,
      toHostFifo_dout         => toHostFifo_dout,
      toHostFifo_empty_thresh => toHostFifo_empty_thresh,
      toHostFifo_prog_empty   => toHostFifo_prog_empty,
      toHostFifo_re           => toHostFifo_re);

  u1: dma_control
    generic map(
      NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS,
      NUMBER_OF_INTERRUPTS  => NUMBER_OF_INTERRUPTS,
      SVN_VERSION           => SVN_VERSION,
      BUILD_DATETIME        => BUILD_DATETIME,
      CARD_TYPE             => CARD_TYPE,
      GIT_HASH              => GIT_HASH,
      COMMIT_DATETIME       => COMMIT_DATETIME,
      GIT_TAG               => GIT_TAG,
      GIT_COMMIT_NUMBER     => GIT_COMMIT_NUMBER)
    port map(
      bar0                            => bar0,
      bar1                            => bar1,
      bar2                            => bar2,
      clk                             => clk,
      clkDiv6                         => clkDiv6,
      dma_descriptors                 => u1_dma_descriptors,
      dma_soft_reset                  => dma_soft_reset,
      dma_status                      => dma_status,
      flush_fifo                      => flush_fifo,
      interrupt_vector                => interrupt_vector,
      m_axis_cc                       => m_axis_cc,
      m_axis_r_cc                     => m_axis_r_cc,
      reset                           => reset,
      reset_global_soft               => reset_global_soft,
      s_axis_cq                       => s_axis_cq,
      s_axis_r_cq                     => s_axis_r_cq,
      register_map_monitor            => register_map_monitor,
      register_map_control            => register_map_control,
      interrupt_table_en              => interrupt_table_en,
      dma_interrupt_call              => dma_interrupt_call,
      fifo_empty                      => toHostFifo_prog_empty,
      fifo_full                       => fromHostFifo_prog_full,
      fromhost_pfull_threshold_assert => fromhost_pfull_threshold_assert,
      fromhost_pfull_threshold_negate => fromhost_pfull_threshold_negate,
      tohost_pfull_threshold_assert   => tohost_pfull_threshold_assert,
      tohost_pfull_threshold_negate   => tohost_pfull_threshold_negate);
end architecture structure ; -- of wupper_core

