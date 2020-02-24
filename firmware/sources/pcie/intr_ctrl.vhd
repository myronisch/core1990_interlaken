
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class intr_ctrl
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)
--!
--!
--! @date        07/01/2015    created
--!
--! @version     1.2
--!
--! @brief 
--! This unit implements the creation of MSIx interrupts. It may be triggered by
--! either of the input bits in interrupt_call or dma_interrupt_call.
--! @detail
--!
--! 11/19/2015 B. Kuschak <brian@skybox.com> 
--!          Modifications for KCU105.
--!
--! 16/06/2016 F. Schreuder 
--!          Modifications to latch pending interrupts (fixes two simultaneous
--!          interrupts)
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
use ieee.std_logic_unsigned.all;-- @suppress "Deprecated package";
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity intr_ctrl is
  generic(
    NUMBER_OF_INTERRUPTS : integer := 8);
  port (
    cfg_interrupt_msix_address : out    std_logic_vector(63 downto 0);
    cfg_interrupt_msix_data    : out    std_logic_vector(31 downto 0);
    cfg_interrupt_msix_enable  : in     std_logic_vector(3 downto 0);
    cfg_interrupt_msix_fail    : in     std_logic;
    cfg_interrupt_msix_int     : out    std_logic;
    cfg_interrupt_msix_sent    : in     std_logic;
    clk                        : in     std_logic;
    regmap_clk                 : in     std_logic;
    dma_interrupt_call         : in     std_logic_vector(3 downto 0);
    interrupt_call             : in     std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    interrupt_table_en         : in     std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
    interrupt_vector           : in     interrupt_vectors_type(0 to (NUMBER_OF_INTERRUPTS-1));
    reset                      : in     std_logic;
    s_axis_cc                  : in     axis_type;
    s_axis_cq                  : in     axis_type;
    s_axis_rc                  : in     axis_type;
    s_axis_rq                  : in     axis_type;
    int_test                   : in     bitfield_int_test_t_type);
end entity intr_ctrl;



architecture rtl of intr_ctrl is
  
  
  signal interrupt_vector_s                  :  interrupt_vectors_type(7 downto 0);

  signal s_cfg_interrupt_msix_int            :  std_logic;
  signal s_cfg_interrupt_msix_data           :  std_logic_vector(31 downto 0);
  signal s_cfg_interrupt_msix_address        :  std_logic_vector(63 downto 0);
  
  signal monitor_cfg_interrupt_msix_data     :  std_logic_vector(31 downto 0);
  signal monitor_cfg_interrupt_msix_address  :  std_logic_vector(63 downto 0);  

  signal s_interrupt_call                    :  std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
  signal s_interrupt_latch                   :  std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);
  signal clear_interrupt_pending_s           :  std_logic;
  attribute dont_touch : string;
  attribute dont_touch of monitor_cfg_interrupt_msix_data    : signal is "true";
  attribute dont_touch of monitor_cfg_interrupt_msix_address : signal is "true";
  
  signal axi_busy                             : std_logic;
  signal s_interrupt_pending : std_logic := '0';
  signal s_test_interrupt_call: std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 0);

begin

  -- Interrupt vector assignments
  interrupt_assign : process (regmap_clk, interrupt_vector)
  begin
    if rising_edge (regmap_clk) then
      for i in 0 to (NUMBER_OF_INTERRUPTS-1) loop
        interrupt_vector_s(i).int_vec_add   <= interrupt_vector(i).int_vec_add;
        interrupt_vector_s(i).int_vec_data  <= interrupt_vector(i).int_vec_data;
      end loop;
      -- Interrupt vector tie-offs
      if NUMBER_OF_INTERRUPTS <= 7 then
        for i in 7 downto (NUMBER_OF_INTERRUPTS) loop
          interrupt_vector_s(i).int_vec_add   <= (others => '0');
          interrupt_vector_s(i).int_vec_data  <= (others => '0');
        end loop;
      end if;
    end if;
  end process;
  
  test_interrupt: process(regmap_clk)
    variable trigger_p1: std_logic;
  begin
    if rising_edge(regmap_clk) then
      s_test_interrupt_call <= (others => '0');
      if int_test.TRIGGER = "1" and trigger_p1 = '0' then
        s_test_interrupt_call(to_integer(unsigned(int_test.IRQ))) <= '1';
      end if;
      trigger_p1 := int_test.TRIGGER(64);
    end if;
  end process;

  --
  -- Monitor Signals
  -- 
  monitor_cfg_interrupt_msix_data    <= s_cfg_interrupt_msix_data;
  monitor_cfg_interrupt_msix_address <= s_cfg_interrupt_msix_address;  

  s_interrupt_call <= interrupt_call & dma_interrupt_call;
  --
  -- interrupt controller 
  intr: process (regmap_clk, reset)
    variable v_cfg_interrupt_msix_int : std_logic := '0';
    variable v_interrupt_timeout : integer range 0 to 15;
    
  begin
    if(reset = '1') then
        s_cfg_interrupt_msix_int      <= '0';
        v_cfg_interrupt_msix_int      := '0';
        s_cfg_interrupt_msix_address  <= (others => '0');
        s_cfg_interrupt_msix_data     <= (others => '0');
        s_interrupt_pending           <= '0';
        s_interrupt_latch <= (others => '0');
        v_interrupt_timeout := 0;
    elsif(rising_edge(regmap_clk)) then
      --default:
      s_cfg_interrupt_msix_int        <= v_cfg_interrupt_msix_int;
      v_cfg_interrupt_msix_int        := '0';
      s_cfg_interrupt_msix_address    <= s_cfg_interrupt_msix_address;
      s_cfg_interrupt_msix_data       <= s_cfg_interrupt_msix_data;
      s_interrupt_pending             <= s_interrupt_pending;
      if(s_interrupt_pending = '1' and (clear_interrupt_pending_s = '1' or v_interrupt_timeout = 0)) then
        s_interrupt_pending <= '0';
      end if;
      
      if (cfg_interrupt_msix_enable = "0001") then
        for i in 0 to NUMBER_OF_INTERRUPTS - 1 loop
          if(s_interrupt_call(i)='1' or s_test_interrupt_call(i) = '1') and (interrupt_table_en(i) = '1') then
            s_interrupt_latch(i) <= '1';
          end if;
        end loop;
        for i in 0 to NUMBER_OF_INTERRUPTS - 1 loop
          if(   (s_interrupt_latch(i)='1') and 
                (v_cfg_interrupt_msix_int = '0') and 
                (s_cfg_interrupt_msix_int = '0') and 
                (s_interrupt_pending = '0')) then
            s_interrupt_pending <= '1';
            v_interrupt_timeout := 15;
            s_interrupt_latch(i) <= '0';
            v_cfg_interrupt_msix_int      := '1'; --fire interrupt after one pipeline
            s_cfg_interrupt_msix_address  <= interrupt_vector_s(i).int_vec_add;
            s_cfg_interrupt_msix_data     <= interrupt_vector_s(i).int_vec_data;
            exit;
          end if;
        end loop;
      end if;
      
      if v_interrupt_timeout > 0 then
        v_interrupt_timeout := v_interrupt_timeout - 1;
      end if;
      
    end if; --reset
  end process;

  cfg_interrupt_msix_data    <= s_cfg_interrupt_msix_data;
  cfg_interrupt_msix_address <= s_cfg_interrupt_msix_address;
  
  axi_busy <= (s_axis_cc.tvalid or s_axis_cq.tvalid) or (s_axis_rc.tvalid or s_axis_rq.tvalid);
  
  regSync250: process(clk)
    variable cfg_interrupt_msix_int_v : std_logic;
    variable axi_busy_p1 : std_logic;
    variable request_int: std_logic;
  begin
    if(rising_edge(clk)) then
      clear_interrupt_pending_s <= clear_interrupt_pending_s;
      if(s_interrupt_pending = '0') then
        clear_interrupt_pending_s <= '0';
      end if;
      if(request_int = '1' and (axi_busy = '0' and axi_busy_p1 = '0')) then --two axi idle clockcycles, don't send in between two DMA TLP's
        request_int := '0';
        clear_interrupt_pending_s <= '1';
        cfg_interrupt_msix_int  <= '1';
      else
        request_int := request_int; 
        cfg_interrupt_msix_int  <= '0';
      end if;
      if(cfg_interrupt_msix_int_v = '0' and s_cfg_interrupt_msix_int = '1')  then --detect rising edge
        request_int := '1';
      end if;
      cfg_interrupt_msix_int_v := s_cfg_interrupt_msix_int;  -- pipeline
      axi_busy_p1 := axi_busy;
      
    end if;
  end process;
  
end architecture rtl ; -- of intr_ctrl

