-------------------------------------------------------------------------------
-- Title      : Main package file
-- Project    : Generics RAMs and FIFOs collection
-------------------------------------------------------------------------------
-- File       : genram_pkg.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN BE-CO-HT
-- Created    : 2011-01-25
-- Last update: 2013-10-30
-- Platform   : 
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
--
-- Copyright (c) 2011 CERN
--
-- This source file is free software; you can redistribute it   
-- and/or modify it under the terms of the GNU Lesser General   
-- Public License as published by the Free Software Foundation; 
-- either version 2.1 of the License, or (at your option) any   
-- later version.                                               
--
-- This source is distributed in the hope that it will be       
-- useful, but WITHOUT ANY WARRANTY; without even the implied   
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      
-- PURPOSE.  See the GNU Lesser General Public License for more 
-- details.                                                     
--
-- You should have received a copy of the GNU Lesser General    
-- Public License along with this source; if not, download it   
-- from http://www.gnu.org/licenses/lgpl-2.1.html
--
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author          Description
-- 2011-01-25  1.0      twlostow        Created
-------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package genram_pkg is

  function f_log2_size (A       : natural) return natural;
  function f_gen_dummy_vec (val : std_logic; size : natural) return std_logic_vector;
  function f_zeros (size : integer) return std_logic_vector;

  type t_generic_ram_init is array (integer range <>, integer range <>) of std_logic;
   
end genram_pkg;

package body genram_pkg is

  function f_log2_size (A : natural) return natural is
  begin
    for I in 1 to 64 loop               -- Works for up to 64 bits
      if (2**I >= A) then
        return(I);
      end if;
    end loop;
    return(63);
  end function f_log2_size;

  function f_gen_dummy_vec (val : std_logic; size : natural) return std_logic_vector is
    variable tmp : std_logic_vector(size-1 downto 0);
  begin
    for i in 0 to size-1 loop
      tmp(i) := val;
    end loop;  -- i
    return tmp;
  end f_gen_dummy_vec;

  function f_zeros(size : integer)
    return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(0, size));
  end f_zeros;


end genram_pkg;
