
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class wb_syscon
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
--! Systemcontroller for the Wishbone bus. 
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

library ieee;
use ieee.std_logic_1164.all;


----------------------------------------------------------------------
-- Entity declaration.
----------------------------------------------------------------------

entity wb_syscon is
    port(
            -- WISHBONE Interface

            CLK_O:  out std_logic;
            RST_O:  out std_logic;


            -- NON-WISHBONE Signals

            EXTCLK: in  std_logic;   
            EXTRST: in  std_logic
         );

end wb_syscon;


----------------------------------------------------------------------
-- Architecture definition.
----------------------------------------------------------------------

architecture wb_syscon of wb_syscon IS

    
begin

  CLK_O <= EXTCLK;
  RST_O <= EXTRST;


end architecture wb_syscon;