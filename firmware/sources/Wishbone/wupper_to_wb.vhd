
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class wuppper_to_wb
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
--! Makes the Wupper output data Wishbone compatible. 
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
use work.pcie_package.all;

entity wupper_to_wb is
port(
    master_i            :   in  t_wishbone_master_in;
    master_o            :   out t_wishbone_master_out;
    control_in          :   in  register_map_control_type;
    monitor_out         :   out wishbone_monitor_type;     
    wishbone_clk_i      :   in  std_logic;
    wupper_clk_i        :   in  std_logic;
    rst_i               :   in  std_logic
    );
end wupper_to_wb;

architecture Behavioral of wupper_to_wb is

COMPONENT wupper_to_wishbone_fifo
  PORT (
    rst     : IN STD_LOGIC;
    wr_clk  : IN STD_LOGIC;
    rd_clk  : IN STD_LOGIC;
    din     : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
    wr_en   : IN STD_LOGIC;
    rd_en   : IN STD_LOGIC;
    dout    : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
    full    : OUT STD_LOGIC;
    empty   : OUT STD_LOGIC
  );
END COMPONENT;

COMPONENT wishbone_to_wupper_fifo
  PORT (
    rst     : IN STD_LOGIC;
    wr_clk  : IN STD_LOGIC;
    rd_clk  : IN STD_LOGIC;
    din     : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en   : IN STD_LOGIC;
    rd_en   : IN STD_LOGIC;
    dout    : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full    : OUT STD_LOGIC;
    empty   : OUT STD_LOGIC
  );
END COMPONENT;

    type state_type is (wb_idle, wb_start);
    signal prs, nxt :       state_type;
    signal wupper2wb_fifo_out   :   std_logic_vector(64 downto 0);    
    signal wupper2wb_empty      :   std_logic;
    signal wupper2wb_rd_en      :   std_logic;
    signal wb2wupper_wr_en      :   std_logic;
    signal wb2wupper_full       :   std_logic;
    signal wupper2wb_wr_en      :   std_logic;  
    signal wupper2wb_wr_en1     :   std_logic;
    signal wb2wupper_rd_en      :   std_logic;
    signal wb2wupper_rd_en1     :   std_logic;  
    signal wupper2wb_data_in    :   std_logic_vector (64 downto 0);
    signal master_i_s           :   t_wishbone_master_in;     
                
begin

    wupper2wb_data_in(64 downto 64) <= control_in.wishbone_control.write_not_read;
    wupper2wb_data_in(63 downto 32) <= control_in.wishbone_control.address;
    wupper2wb_data_in(31 downto 0)  <= control_in.wishbone_write.data;
    

wupper_to_wb : wupper_to_wishbone_fifo
  PORT MAP (
    rst     => RST_I,
    wr_clk  => wupper_clk_i,
    rd_clk  => wishbone_clk_i,
    din     => wupper2wb_data_in,
    wr_en   => wupper2wb_wr_en,
    rd_en   => wupper2wb_rd_en,
    dout    => wupper2wb_fifo_out,
    full    => monitor_out.wishbone_write.full(32),
    empty   => wupper2wb_empty
  ); 
  
wb_to_wupper : wishbone_to_wupper_fifo
  PORT MAP (
    rst     => RST_I,
    wr_clk  => wishbone_clk_i,
    rd_clk  => wupper_clk_i,
    din     => master_i.dat,
    wr_en   => wb2wupper_wr_en,
    rd_en   => wb2wupper_rd_en,
    dout    => monitor_out.wishbone_read.data,
    full    => wb2wupper_full,
    empty   => monitor_out.wishbone_read.empty(32)
    );
    
    
monitor_proc: process(wupper_clk_i)
begin
    if rising_edge(wupper_clk_i) then
        master_i_s <= master_i;
        if master_i_s.err = '1' then
            monitor_out.WISHBONE_STATUS.ERROR <= "1";
        elsif wupper2wb_empty = '0' then
            monitor_out.WISHBONE_STATUS.ERROR <= "0";
        end if;
        
        if master_i_s.ack = '1' then
            monitor_out.WISHBONE_STATUS.ACKNOWLEDGE <= "1";
        elsif wupper2wb_empty = '0' then
            monitor_out.WISHBONE_STATUS.ACKNOWLEDGE <= "0";
        end if;
              
        monitor_out.WISHBONE_STATUS.STALL(2) <= master_i_s.stall;
        monitor_out.WISHBONE_STATUS.RETRY(3) <= master_i_s.rty;
        monitor_out.WISHBONE_STATUS.INT(4) <= master_i_s.int;
        
    end if;
end process;
    
    rd_wr_delay: process (wishbone_clk_i, control_in.wishbone_write, control_in.wishbone_read) is
    begin
        if rising_edge(wishbone_clk_i) then
            wupper2wb_wr_en1   <=  to_sl(control_in.wishbone_write.write_enable);       
            wb2wupper_rd_en1   <=  to_sl(control_in.wishbone_read.read_enable);        
        end if;       
        
    end process rd_wr_delay;
    
    wupper2wb_wr_en <=  to_sl(control_in.wishbone_write.write_enable) and not wupper2wb_wr_en1;
    wb2wupper_rd_en <=  to_sl(control_in.wishbone_read.read_enable)  and not wb2wupper_rd_en1; 
                
    state_register: process (wishbone_clk_i, RST_I) is
    begin
        if RST_I = '1' then
            prs <= wb_idle;
        elsif rising_edge(wishbone_clk_i) then
            prs <= nxt;
        end if;
    end process state_register;   
    
    next_state_decoder: process (prs, wupper2wb_empty, master_i, wupper2wb_fifo_out)
    begin
        wb2wupper_wr_en <= '0';
        case prs is
        when wb_idle =>         -- wb_idle
            if wupper2wb_empty = '0' then
                nxt <= wb_start;
            else 
                nxt <= wb_idle;                
            end if;            
        when wb_start =>        -- wb_start
            if master_i.ack = '1' then
                if  wupper2wb_fifo_out(64) = '0' then
                    wb2wupper_wr_en <= not wb2wupper_full;
                end if;
                nxt <= wb_idle;
            elsif master_i.err = '1' then
                nxt <= wb_idle;
            else
                nxt <= wb_start;
            end if;                                                                                                                                                                                                      
        end case;
    end process next_state_decoder;
    
    output_decoder: process(prs, wupper2wb_empty) is
    begin
        wupper2wb_rd_en <= '0';
        master_o.cyc <= '0';
        master_o.stb <= '0';
        master_o.we  <= '0'; 
        master_o.adr <= wupper2wb_fifo_out(63 downto 32);
        master_o.dat <= wupper2wb_fifo_out(31 downto 0);                                    
        
        case prs is
        when wb_idle =>
            wupper2wb_rd_en <= not wupper2wb_empty;
        when wb_start =>
            master_o.we  <= wupper2wb_fifo_out(64);
            master_o.cyc <= '1';
            master_o.stb <= '1';     
        end case;
    end process output_decoder;                                                                                                                                                                                                                                                                                 
end Behavioral;