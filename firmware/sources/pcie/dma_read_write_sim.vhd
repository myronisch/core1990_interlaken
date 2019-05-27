
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class dma_read_write
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
--! dma_read_write contains the actual DMA state machines, it processes the descriptors
--! and reads from and writes to the PC memory if there is data in the fifo.
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

entity dma_read_write is
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
end entity dma_read_write;



architecture rtl of dma_read_write is

  
signal fromHostFifo_din_s : std_logic_vector(255 downto 0);
  
begin

  process(clk, reset)
    variable counter: std_logic_vector(63 downto 0);
  begin
    if reset = '1' then
        fromHostFifo_we <= '0';
        fromHostFifo_din_s <= (others => '0');
        counter := (others => '0');
    elsif rising_edge(clk) then
        if fromHostFifo_prog_full = '0' then
            fromHostFifo_we <= '1';
            
            fromHostFifo_din_s <= (counter + 0)& (counter+1) & (counter+2) &(counter+3);
            counter := counter + 4;
        else
            fromHostFifo_we <= '0';
        end if;
    end if;
  end process;
  
  fromHostFifo_din <= fromHostFifo_din_s;
  toHostFifo_empty_thresh <= "000000000001";
  toHostFifo_re <= not toHostFifo_prog_empty;

end architecture rtl ; -- of dma_read_write
