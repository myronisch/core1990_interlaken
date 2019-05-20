
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
    CARD_TYPE            : integer := 709;
    BurstMax             : integer := 256);
  port (
    SYSCLK_P             : in     std_logic;--200 MHz clock at H19/G18
    SYSCLK_N             : in     std_logic;
    GTREFCLK_IN_P        : in     std_logic; -- Transceiver SFP clock
    GTREFCLK_IN_N        : in     std_logic;
    appreg_clk           : in     std_logic;
    clk250               : in     std_logic;
    flush_fifo           : in     std_logic;
    fromHostFifo_dout    : in     std_logic_vector(63 downto 0);
    fromHostFifo_empty   : in     std_logic;
    fromHostFifo_rd_clk  : out    std_logic;
    fromHostFifo_rd_en   : out    std_logic;
    fromHostFifo_rst     : out    std_logic;
    interrupt_call       : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    register_map_control : in     register_map_control_type; --! contains all read/write registers that control the application. The record members are described in pcie_package.vhd
    interlaken_monitor   : out    interlaken_monitor_type;
    reset_hard           : in     std_logic;
    reset_soft           : in     std_logic;
    toHostFifo_din       : out    std_logic_vector(63 downto 0);
    toHostFifo_prog_full : in     std_logic;
    toHostFifo_rst       : out    std_logic;
    toHostFifo_wr_clk    : out    std_logic;
    toHostFifo_wr_en     : out    std_logic;
    TX_Out_P             : out    std_logic;
    TX_Out_N             : out    std_logic;
    RX_In_P              : in     std_logic;
    RX_In_N              : in     std_logic;
    SFP_RX_LOS           : in     std_logic_vector(3 downto 0)

 
    
    );
end entity application;

architecture rtl of application is


  
    signal s_fromHostFifo_rd_en     : std_logic;
    signal reset                    : std_logic;
    signal s_flush_fifo             : std_logic;
    signal loopback_valid           : std_logic;
    
    --! These signals belong to the LFSR
    signal lfsr_enable, lfsr_valid  :std_logic;
    signal lfsr_data                :std_logic_vector(255 downto 0);
    
    --! This signal start the write process
    signal start_write              :std_logic;
    
    --! Enable application enable 
    signal enable_app_write         : std_logic;
    signal start_lfsr               : std_logic;
    signal start_loopback           : std_logic;  
    signal APP_MUX                  : std_logic;
    signal LFSR_LOAD_SEED           : std_logic;
    signal APP_ENABLE               : std_logic_vector(0 downto 0);
    signal LFSR_SEED                : std_logic_vector(255 downto 0);
    
  
    signal fromHostFifo_empty_s  :  std_logic; 
    
    ---- Interlaken instance signals
    signal  RX_FlowControl_s     : std_logic_vector(15 downto 0); 
    signal  RX_Channel_s         : std_logic_vector(7 downto 0) := "00000001";  
    
    signal  TX_FIFO_progfull_s   : std_logic;

    signal  TX_FIFO_Full_s       : std_logic;
    signal  TX_FIFO_Write_s      : std_logic;
    signal  TX_SOP_s             : std_logic;
    signal  TX_SOP_s_p1          : std_logic;
    signal  TX_EOP_s             : std_logic;
    signal  TX_EOP_Valid_s       : std_logic_vector(2 downto 0); 
    signal  fromHostFifo_rd_en_s_p1 : std_logic;
    signal  fromHostFifo_rd_en_s : std_logic;
    signal  toHostFifo_wr_en_s   : std_logic;
    --signal  TX_FIFO_Valid        : std_logic;
    
    signal  RX_FIFO_Read_s       : std_logic;
    signal  RX_FIFO_Empty_s      : std_logic;
    signal  RX_FIFO_FULL_s       : std_logic;
    signal  RX_SOP_s             : std_logic;
    signal  RX_EOP_s             : std_logic;
    signal  RX_EOP_Valid_s       : std_logic_vector(2 downto 0);
    signal  RX_FIFO_Valid        : std_logic;  
    signal  RX_FIFO_Valid_p1     : std_logic;
    signal  RX_FIFO_Read_s_p1    : std_logic;

    signal  ToWupperState        : std_logic;  
    signal  FromWupperState      : std_logic;  
    signal  RX_TO_WU             : std_logic_vector(63 downto 0) := X"0000_0000_0000_0000";
    signal  WU_TO_TX             : std_logic_vector(63 downto 0) := X"0000_0000_0000_0000";
    signal  ToWupperCounter      : std_logic_vector(15 downto 0) := X"0000";  -- counts the passed (64 bit) data bursts
    signal  FromWuppercounter    : std_logic_vector(15 downto 0) := X"0000";  -- counts thw data packets read from the wupper fifo
    signal  CRC24_Error_s        : std_logic := '0';
    signal  CRC24_occured        : std_logic := '0';
    signal  CRC32_Error_s        : std_logic := '0';
    signal  CRC32_occured        : std_logic := '0';
    signal  send_sync_word       : std_logic;
    signal  send_sync_word_p1    : std_logic;
    signal  send_sync_word_p2    : std_logic;
    signal  RX_EOP_s_p1          : std_logic;
    
    signal  Decoder_lock_s       : std_logic; --interlaken_monitor_type;
    signal  Descrambler_lock_s   : std_logic;
    signal  PacketLength         : std_logic_vector(15 downto 0) := X"0010";
    
    signal  toHostFifo_din_s     : std_logic_vector(63 downto 0) ;
    signal  clk40: std_logic;
    signal  clk150: std_logic;
    signal  locked: std_logic;
    signal  reset_hard_soft: std_logic; --hard and soft reset coming from wupper, input to clk_40MHz reset. locked output is used to reset the application.
    
    
       -------------------------- Generate System Clock ---------------------------
     component clk_40MHz
     port (
         --Clock in- and output signals
         clk_in1_p         : in     std_logic;
         clk_in1_n         : in     std_logic;
         clk_out1          : out    std_logic;
         clk_out2          : out    std_logic;
         
         -- Status and control signals
         locked            : out    std_logic;
         reset             : in     std_logic );
     end component;
--   
    component ila_0

    port (
    	clk : IN STD_LOGIC;
  
        probe0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe22 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe23 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe24 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    end component  ;


begin

    Logic_Analyzer : ila_0
    PORT MAP (
    	clk => clk150,
    	
        probe0(63 downto 0) => RX_TO_WU, 
        probe1(63 downto 0) => WU_TO_TX, 
        probe2(63 downto 0) => (others => '0'), 
        probe3(63 downto 0) => (others => '0'), 
        probe4(63 downto 0) => (others => '0'), 
        probe5(0) => send_sync_word, 
        probe6(0) => send_sync_word_p1, 
        probe7(0) => RX_EOP_s, 
        probe8(0) => RX_SOP_s, 
        probe9(0) => RX_FIFO_Empty_s, 
        probe10(0) => RX_FIFO_Read_s, 
        probe11(0) => RX_FIFO_Valid, 
        probe12(0) => fromHostFifo_empty_s, 
        probe13(0) => fromHostFifo_rd_en_s, 
        probe14(0) => toHostFifo_wr_en_s, 
        probe15(0) => RX_FIFO_Valid_p1, 
        probe16(0) => '0', 
        probe17(0) => TX_FIFO_Full_s, 
        probe18(0) => TX_FIFO_Write_s, 
        probe19(0) => '0', 
        probe20(0) => '0', 
        probe21(0) => '0', 
        probe22(0) => '0', 
        probe23(0) => '0',
        probe24(0) => '0'

    );






    fromHostFifo_rd_clk <= clk150;
    toHostFifo_wr_clk   <= clk150;
    reset <= not locked;
    s_flush_fifo <= flush_fifo or reset;
    toHostFifo_rst <= s_flush_fifo;
    fromHostFifo_rst <= s_flush_fifo;
    
    -- Loss Of Signal register
    interlaken_monitor.SFP_TRANSCEIVER_STATUS.RX_LOS <= SFP_RX_LOS; 
    
    g0: if(NUMBER_OF_INTERRUPTS>4) generate
        interrupt_call(4 downto 4) <= register_map_control.INT_TEST_4;
        g1: if(NUMBER_OF_INTERRUPTS>5) generate
            interrupt_call(5 downto 5) <= register_map_control.INT_TEST_5;
            interrupt_call(NUMBER_OF_INTERRUPTS-1 downto 6) <= (others => '0');
        end generate;
    end generate;
-----------------------------
  
  System_Clock : clk_40MHz
      port map (
          clk_in1_p => SYSCLK_P, --200 MHz clock at H19/G18
          clk_in1_n => SYSCLK_N, 
          clk_out1 => clk40,
          clk_out2 => clk150,
          locked   => locked,            
          reset => reset_hard_soft
  );
 
 reset_hard_soft <= reset_hard or reset_soft;
  
  
  il0: entity work.interlaken_interface 
      generic map(
           BurstMax     => BurstMax,      -- Configurable value of BurstMax
           BurstShort   => 64,       -- Configurable value of BurstShort
           PacketLength => 2024)     -- Configurable value of PacketLength -- 24 packets * 8  = 192 B
      port map(
          ----40 MHz input, from clock generator------------
          clk40  => clk40,                                      --: in std_logic;
          clk150 => clk150,                                     --: in std_logic;
          reset  => reset,                                      --: in std_logic;
          
          ----125 MHz input, to transceiver (SGMII clock)--
          GTREFCLK_IN_P => GTREFCLK_IN_P,                       --: in std_logic;
          GTREFCLK_IN_N => GTREFCLK_IN_N,                       --: in std_logic;
          
          
          ----Data signals---------------------------------
          TX_Data     => WU_TO_TX, --fromHostFifo_dout,         --: in std_logic_vector(63 downto 0);          
          RX_Data     => RX_TO_WU, -- toHostFifo_din,           --: out std_logic_vector (63 downto 0);        
          
          ----Transceiver related transmission-------------
          TX_Out_P  => TX_Out_P,                                --: out std_logic;
          TX_Out_N  => TX_Out_N,                                --: out std_logic;
          RX_In_P   => RX_In_P,                                 --: in std_logic;
          RX_In_N   => RX_In_N,                                 --: in std_logic;
          
          ----Transmitter input/ready signals--------------
          TX_SOP            => TX_SOP_s,                        --: in std_logic;
          TX_EOP            => TX_EOP_s,                        --: in std_logic;
          TX_EOP_Valid      => TX_EOP_Valid_s,                  --: in std_logic_vector(2 downto 0);
          TX_FlowControl    => RX_FlowControl_s,                --: in std_logic_vector(15 downto 0);
          TX_Channel        => RX_Channel_s,                    --: in std_logic_vector(7 downto 0);
      
     
          ----Receiver output signals-------------    
          RX_SOP            => RX_SOP_s,                        --: out std_logic;                         
          RX_EOP            => RX_EOP_s,                        --: out std_logic;                         
          RX_EOP_Valid      => RX_EOP_Valid_s,                  --: out std_logic_vector(2 downto 0);      
          RX_FlowControl    => RX_FlowControl_s,                --: out std_logic_vector(15 downto 0);     
          RX_Channel        => RX_Channel_s,                    --: out std_logic_vector(7 downto 0);      
          RX_FIFO_Valid      => RX_FIFO_Valid,                  --: out std_logic;
          RX_FIFO_Read      => RX_FIFO_Read_s,                  --: in std_logic;

          ----Transmitter status signals----------   
          TX_FIFO_Full      => TX_FIFO_Full_s,                  --: out std_logic;
          TX_FIFO_Write     => TX_FIFO_Write_s,                 --: in std_logic;
          TX_FIFO_progfull  => TX_FIFO_progfull_s,              --: out std_logic;
      
                
          ----Receiver status signals-------------
          RX_FIFO_Full      => RX_FIFO_FULL_s,                  --: out std_logic;
          RX_FIFO_Empty     => RX_FIFO_Empty_s,                 --: out std_logic;
          Decoder_lock      => Decoder_lock_s ,                 
          Descrambler_lock  => Descrambler_lock_s ,--interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DESCRAMBLER_LOCK(0),              
          CRC24_Error       => CRC24_Error_s,                   --: out std_logic;
          CRC32_Error       => CRC32_Error_s                    --: out std_logic
          
      );

      PacketLength <= register_map_control.INTERLAKEN_PACKET_LENGTH;
      interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DECODER_LOCK(1)  <= Decoder_lock_s ;
      interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DESCRAMBLER_LOCK(0) <= Descrambler_lock_s;
      RX_FIFO_Read_s <= not RX_FIFO_Empty_s and not send_sync_word and not toHostFifo_prog_full; -- Read data when not empty and no sync_word is beiging sent
      toHostFifo_wr_en <= toHostFifo_wr_en_s; -- Write data in wupper fifo, or write sync word in fifo
      send_sync_word <= RX_EOP_s AND (NOT send_sync_word_p1) and RX_FIFO_valid;      
      
      --Interlaken to Wupper
      process(clk150)
        variable  SYNC_INFO_WORD       : std_logic_vector(63 downto 0) := X"0000_0000_0000_ABCD";
          
      begin
        
        if rising_edge(clk150) then
            if reset = '1' then
                ToWupperstate <= '0';
                RX_FIFO_Valid_p1 <= '0';
                send_sync_word_p1 <= '0';
                RX_EOP_s_p1 <= '0';
                ToWupperCounter <= X"0000";
                toHostFifo_din <= SYNC_INFO_WORD;
                CRC24_occured <= '0';
                CRC32_occured <= '0';
            else
               -- if RX_FIFO_Read_s = '1' then
                    RX_EOP_s_p1 <= RX_EOP_s;
                    send_sync_word_p1 <= send_sync_word;
                    RX_FIFO_Valid_p1 <= RX_FIFO_Valid;
                    toHostFifo_wr_en_s <= '0';
                    -- Check CRC error signals
                    if CRC24_Error_s = '1' then
                        CRC24_occured <= '1';
                    end if;
                    
                    if CRC32_Error_s = '1' then
                        CRC32_occured <= '1';
                    end if;
                    
                    
                    if ToWupperState = '1' then  -- Send data to fifo
                        if send_sync_word = '1' then                      -- EOP signal received, next clock cycle: send sync word
                            
                            SYNC_INFO_WORD(36 downto 34) := RX_EOP_Valid_s; -- Nuumber of bytes that are valid from the previous 8-byte data word
                            ToWupperstate <= '0';
                        end if;

                        if RX_FIFO_Valid = '1'  then
                             ToWupperCounter <= ToWupperCounter + 1;
                             toHostFifo_wr_en_s <= '1';
                             toHostFifo_din <= RX_TO_WU(63 downto 0);       -- Write the data to the ToHost FIFO of Wupper
                        else
                             toHostFifo_wr_en_s <= '0';  --No valid data to write
                             toHostFifo_din <= RX_TO_WU(63 downto 0);       -- Fifo data ports will be connected but not written
                        end if;
                        
                        
                    elsif ToWupperState  = '0' then                         -- Send synchronization word.
                        SYNC_INFO_WORD(15 downto 0) := X"ABCD";             -- Default recognisable value
                        SYNC_INFO_WORD(31 downto 16) := ToWupperCounter;    -- Number of packets sent
                        SYNC_INFO_WORD(38) := CRC32_occured;                -- Signal that CRC32 error has been raised
                        SYNC_INFO_WORD(39) := CRC24_occured; 
                        CRC24_occured <= '0';
                        CRC32_occured <= '0';
                        toHostFifo_din <= SYNC_INFO_WORD;                   -- Write the SYNC_INFO_WORD to the FIFO
                        toHostFifo_wr_en_s <= '1';
                        ToWupperCounter <= (others => '0');
                        ToWupperstate <= '1';
                    end if;
                --end if;
            end if;        
            
        end if;
      end process;
      
--      Wupper to Interlaken
    fromHostFifo_empty_s <= fromHostFifo_empty;
    fromHostFifo_rd_en <= fromHostFifo_rd_en_s;
    TX_FIFO_Write_s <= fromHostFifo_rd_en_s_p1; 
    
    fromHostFifo_rd_en_s <= not fromHostFifo_empty_s and (not TX_FIFO_progfull_s)  and Descrambler_lock_s; 
    Wu_TO_TX <= fromHostFifo_dout;
                          
      process(clk150)
      begin
        if(rising_edge(clk150)) then
            if reset = '1' then
                FromWupperCounter <= (others => '0');
                TX_EOP_s <= '0';
                TX_SOP_s <= '0';
                TX_EOP_Valid_s <= (others => '0');
            else
               fromHostFifo_rd_en_s_p1 <= fromHostFifo_rd_en_s;
               if fromHostFifo_rd_en_s = '1' then  -- Wait with sending data to the Interlaken TX, untill the RX IL is initialised
                      FromWupperCounter <= FromWupperCounter + 1;
                      TX_EOP_Valid_s <= "000";
                      if FromWupperCounter = X"0000" then     -- Transmit a SOP (Start Of Packet)
                          TX_SOP_s <= '1';
                          TX_EOP_S <= '0';
                      elsif FromWupperCounter = X"0001" then  -- Reset TX SOP after one clock period
                          TX_SOP_s <= '0';
                      elsif FromWupperCounter = PacketLength-1 then  -- When the set packet length is reached
                          TX_EOP_s <= '1';                  -- Transmit the EOP (End Of Packet)
                          TX_EOP_Valid_s <= "111";          -- Signal that the previous Data is valid
                          FromWupperCounter <= (others => '0');
                      end if;   
                                     
                end if;
            end if;
        end if;        
      end process;
      
  
end architecture rtl ; -- of application

