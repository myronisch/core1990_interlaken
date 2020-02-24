
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
--! Housekeeping module with I2C and general board info
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



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package"
use ieee.std_logic_1164.all;
use work.pcie_package.all;
use work.I2C.all;

entity housekeeping is
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
end entity housekeeping;


architecture structure of housekeeping is

  signal rst                            : std_logic;
  signal nReset                         : std_logic;
  signal clk                            : std_logic;
  signal cmd_ack                        : std_logic;
  --signal ack_out                        : std_logic;
  signal Dout                           : std_logic_vector(7 downto 0);
  signal Din                            : std_logic_vector(7 downto 0);
  signal ack_in                         : std_logic;
  signal write                          : std_logic;
  signal read                           : std_logic;
  signal stop                           : std_logic;
  signal start                          : std_logic;
  signal ena                            : std_logic;
  
  

  component i2c_interface
  	port(
  		Din                  : out std_logic_vector(7 downto 0);
  		Dout                 : in  std_logic_vector(7 downto 0);
  		I2C_RD               : out bitfield_i2c_rd_r_type;
  		I2C_WR               : out bitfield_i2c_wr_r_type;
  		RST                  : in  std_logic;
  		ack_in               : out std_logic;
  		appreg_clk           : in  std_logic;
  		clk                  : out std_logic;
  		cmd_ack              : in  std_logic;
  		ena                  : out std_logic;
  		nReset               : out std_logic;
  		read                 : out std_logic;
  		register_map_control : in  register_map_control_type;
  		rst_soft             : in  std_logic;
  		start                : out std_logic;
  		stop                 : out std_logic;
  		write                : out std_logic
  	);
  end component i2c_interface;

  component xadc_drp
    generic(
      CARD_TYPE : integer := 711);
    port (
      clk40   : in     std_logic;
      reset   : in     std_logic;
      temp    : out    std_logic_vector(11 downto 0);
      vccint  : out    std_logic_vector(11 downto 0);
      vccaux  : out    std_logic_vector(11 downto 0);
      vccbram : out    std_logic_vector(11 downto 0));
  end component xadc_drp;

  component dna
    generic(
      CARD_TYPE : integer := 710);
    port (
      clk40   : in     std_logic;
      reset   : in     std_logic;
      dna_out : out    std_logic_vector(63 downto 0));
  end component dna;

begin

  leds <= register_map_control.STATUS_LEDS;
  rst <= reset_soft or reset_hard;
  i2cmux_rst <= not rst;
  
  i2c0: simple_i2c
    port map(
      clk     => clk,
      ena     => ena,
      nReset  => nReset,
      clk_cnt => "01100100",
      start   => start,
      stop    => stop,
      read    => read,
      write   => write,
      ack_in  => ack_in,
      Din     => Din,
      cmd_ack => cmd_ack,
      ack_out => open,
      Dout    => Dout,
      SCL     => SCL,
      SDA     => SDA);

  i2cint0: i2c_interface
    port map(
      Din                  => Din,
      Dout                 => Dout,
      I2C_RD               => register_map_hk_monitor.I2C_RD,
      I2C_WR               => register_map_hk_monitor.I2C_WR,
      RST                  => rst,
      ack_in               => ack_in,
      --ack_out              => ack_out,
      appreg_clk           => appreg_clk,
      clk                  => clk,
      cmd_ack              => cmd_ack,
      ena                  => ena,
      nReset               => nReset,
      read                 => read,
      register_map_control => register_map_control,
      rst_soft             => rst,
      start                => start,
      stop                 => stop,
      write                => write);

  xadc0: xadc_drp
    generic map(
      CARD_TYPE => CARD_TYPE)
    port map(
      clk40   => appreg_clk,
      reset   => rst,
      temp    => register_map_hk_monitor.FPGA_CORE_TEMP,
      vccint  => register_map_hk_monitor.FPGA_CORE_VCCINT,
      vccaux  => register_map_hk_monitor.FPGA_CORE_VCCAUX,
      vccbram => register_map_hk_monitor.FPGA_CORE_VCCBRAM);

  dna0: dna
    generic map(
      CARD_TYPE => CARD_TYPE)
    port map(
      clk40   => appreg_clk,
      reset   => rst,
      dna_out => register_map_hk_monitor.FPGA_DNA);


  register_map_hk_monitor.MMCM_MAIN_PLL_LOCK <= (others => MMCM_Locked_in);

end architecture structure ; -- of housekeeping

