
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class wb_memory
--! 
--!
--! @author      Roel Blankers  (broel@nikhef.nl)
--!
--!
--! @date        31/10/2017    created
--!
--! @version     1.0
--!
--! @brief 
--! Example to use as a slave for Wishbone bus
--!     
--!    
--!     
--!                      
--!          
--! 
--!
--!-----------------------------------------------------------------------------
--! @TODO
--!  
--!
--! ------------------------------------------------------------------------------
--! Wishbone interconnection
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.wishbone_pkg.all;

entity wb_memory is
port(
    -- WISHBONE inteface:
    slave_i : in  t_wishbone_slave_in;
    slave_o : out t_wishbone_slave_out;
    CLK_I   : in  std_logic;
    RST_I   : in  std_logic
     );
end wb_memory;

architecture Behavioral of wb_memory is
COMPONENT wishbone_memory
  PORT (
    clka    : IN STD_LOGIC;
    rsta    : IN STD_LOGIC;
    ena     : IN STD_LOGIC;
    wea     : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    dina    : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

begin

mem0 : wishbone_memory
  PORT MAP (
    clka    => CLK_I,
    rsta    => RST_I,
    ena     => slave_i.stb,
    wea(0)  => slave_i.we,
    addra   => slave_i.adr (15 downto 0),
    dina    => slave_i.dat (31 downto 0),
    douta   => slave_o.dat (31 downto 0)
  );
  
  process(CLK_I)
  variable stb_p1: std_logic;
  begin
    if rising_edge(CLK_I) then      
        slave_o.ack <=  stb_p1;
        stb_p1 := slave_i.stb;        
    end if;
  end process;
  
  slave_o.err <= '0';
  slave_o.rty <= '0';
  slave_o.stall <= '0';
  slave_o.int <= '0';
    
end Behavioral;