
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class application
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)<br>
--!              Oussama el Kharraz Alami<br>
--!
--!
--! @date        05/10/2015    created
--!
--! @version     1.0
--!
--! @brief 
--! This example application fills the downfifo (PCIe -> PC) with pseudo random data by using
--! a LFSR and multiplies the data from upfifo (PC -> PCIe) back to the downfifo. The size
--! of the randomdata is 256 bits. The DMA core will take care of the data and writes it into PC memory
--! according to the DMA descriptors.
--! 
--! @detail
--! We are discarding any DMA data sent by the PC, otherwise a second fifo could be connected to these ports: <br>
--! fifo_din <br>
--! fifo_we <br>
--! fifo_full <br>
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

entity application is
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
end entity application;

architecture rtl of application is

COMPONENT LFSR
  PORT (
    clk               : in     STD_LOGIC;
    load_seed         : in     STD_LOGIC_VECTOR (0   downto 0);
    enable	          : in     STD_LOGIC;
    rndmdata          : out    STD_LOGIC_VECTOR (255 downto 0);
    seed              : in     STD_LOGIC_VECTOR (255 downto 0)
);
END COMPONENT;
  
    signal s_fromHostFifo_rd_en           : std_logic;
    signal reset                 : std_logic;
    signal s_flush_fifo          : std_logic;
    signal loopback_valid        : std_logic;
    
    --! These signals belong to the LFSR
    signal lfsr_enable, lfsr_valid   :std_logic;
    signal lfsr_data                 :std_logic_vector(255 downto 0);
    
    --! This signal start the write process
    signal start_write            :std_logic;
    
    --! Enable application enable 
    signal enable_app_write     :std_logic;
    signal start_lfsr           :std_logic;
    signal start_loopback       :std_logic;
    
    
    signal APP_MUX        : std_logic;
    signal LFSR_LOAD_SEED : std_logic;
    signal APP_ENABLE     : std_logic_vector(0 downto 0);
    signal LFSR_SEED      : std_logic_vector(255 downto 0);
  
begin

    
    fromHostFifo_rd_clk <= clk250;
    toHostFifo_wr_clk   <= clk250;
    
    reset <= reset_hard or reset_soft;
    s_flush_fifo <= flush_fifo or reset;
    toHostFifo_rst <= s_flush_fifo;
    fromHostFifo_rst <= s_flush_fifo;
    
LFSR1 : LFSR
    PORT MAP(
        clk               => clk250,
        load_seed(0)      => LFSR_LOAD_SEED,
        enable            => lfsr_enable,
        rndmdata          => lfsr_data,
        seed              => LFSR_SEED
    );


      
      
    process(APP_MUX, lfsr_valid, lfsr_data, fromHostFifo_dout, loopback_valid )
    begin
        if (APP_MUX = '0') then    --Send data from LFSR module
            toHostFifo_wr_en  <= lfsr_valid;
            toHostFifo_din <= lfsr_data; 
        else                      --Loopback data from FromHost fifo into ToHost fifo
            toHostFifo_din <= fromHostFifo_dout;
            toHostFifo_wr_en <= loopback_valid;
        end if;
    end process;
   

regsync: process(clk250)
    variable APP_MUX_P1, APP_MUX_P2 : std_logic;
    variable LFSR_LOAD_SEED_P1, LFSR_LOAD_SEED_P2 : std_logic;
    variable APP_ENABLE_P1, APP_ENABLE_P2 : std_logic_vector(0 downto 0);
    variable LFSR_SEED_P1, LFSR_SEED_P2 : std_logic_vector(255 downto 0);
     
    begin
        APP_MUX           <= APP_MUX_P2;
        LFSR_LOAD_SEED    <= LFSR_LOAD_SEED_P2;
        APP_ENABLE        <= APP_ENABLE_P2;
        LFSR_SEED         <= LFSR_SEED_P2;
        
        APP_MUX_P2        := APP_MUX_P1;
        LFSR_LOAD_SEED_P2 := LFSR_LOAD_SEED_P1;
        APP_ENABLE_P2     := APP_ENABLE_P1;
        LFSR_SEED_P2      := LFSR_SEED_P1;
        
        APP_MUX_P1        := register_map_control.APP_MUX(0);
        LFSR_LOAD_SEED_P1 := register_map_control.LFSR_LOAD_SEED(64);
        APP_ENABLE_P1     := register_map_control.APP_ENABLE;
        LFSR_SEED_P1      := register_map_control.LFSR_SEED_3 &
                             register_map_control.LFSR_SEED_2 &
                             register_map_control.LFSR_SEED_1 &
                             register_map_control.LFSR_SEED_0;
    end process;
   
    s_fromHostFifo_rd_en <= (APP_MUX and (not fromHostFifo_empty)) and ((not toHostFifo_prog_full) and APP_ENABLE(0));
    fromHostFifo_rd_en <= s_fromHostFifo_rd_en;
    lfsr_enable <= (not APP_MUX) and (not toHostFifo_prog_full) and APP_ENABLE(0);
    
    process(clk250)
    begin
        if rising_edge(clk250) then
            lfsr_valid <= lfsr_enable;
            loopback_valid <= s_fromHostFifo_rd_en;
        end if;
    end process;

    g0: if(NUMBER_OF_INTERRUPTS>4) generate
        interrupt_call(4 downto 4) <= register_map_control.INT_TEST_4;
        g1: if(NUMBER_OF_INTERRUPTS>5) generate
            interrupt_call(5 downto 5) <= register_map_control.INT_TEST_5;
            interrupt_call(NUMBER_OF_INTERRUPTS-1 downto 6) <= (others => '0');
        end generate;
    end generate;
  
  
end architecture rtl ; -- of application

