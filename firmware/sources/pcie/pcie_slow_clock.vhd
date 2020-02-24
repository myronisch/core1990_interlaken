
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
--! @date        26/01/2015    created
--!
--! @version     1.0
--!
--! @brief 
--! Creates a slow clock of ~40 MHz (41.667) by dividing the 250MHz clock by 6.
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
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package"
use ieee.std_logic_1164.all;

entity pcie_slow_clock is
  port (
    clk        : in     std_logic;
    regmap_clk : out    std_logic;
    pll_locked : out    std_logic;
    reset_n    : in     std_logic;
    reset_out  : out    std_logic);
end entity pcie_slow_clock;



architecture rtl of pcie_slow_clock is
component clk_wiz_regmap -- @suppress "Component declaration is not equal to its matching entity"
port
 (-- Clock in ports
  clk_in1           : in     std_logic;
  -- Clock out ports
  clk_out25          : out    std_logic;
  -- Status and control signals
  reset             : in     std_logic;
  locked            : out    std_logic
 );
end component;



   signal regmap_clk_s: std_logic;
   signal reset_s: std_logic;
   signal locked_s: std_logic;
   

begin

reset_out <= not locked_s;
reset_s <= not reset_n;
pll_locked <= locked_s;
regmap_clk <= regmap_clk_s;

clk0 : clk_wiz_regmap
    port map ( 
 
    -- Clock in ports
    clk_in1 => clk,
   -- Clock out ports  
    clk_out25 => regmap_clk_s,
   -- Status and control signals                
    reset => reset_s,
    locked => locked_s            
  );

 
end architecture rtl ; -- of pcie_slow_clock

