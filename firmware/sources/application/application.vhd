
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
--! @author      Frans Schreuder (frans.schreuder@nikhef.nl)<br>
--!              Leonie Verwoert (leonie.verw@gmail.com)<br>
--!
--!
--! @date        01/05/2019    created
--!
--! @version     1.2
--!
--! @brief 
--! This application functions as the connection between Wupper and the Interlaken protocol. 
--! It is used to implement the Interlaken protocol on the FELIX hardware.
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
--! @brief ieee 



library ieee, UNISIM;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package" (used for sigasi to recognize - operator with std_logic vector)
use UNISIM.VCOMPONENTS.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;
use work.interlaken_package.all;
use work.axi_stream_package.ALL;

entity application is
  generic(
    --NUMBER_OF_INTERRUPTS : integer := 8;
    BurstMax             : integer := 256;
    Lanes                : positive := 4;
    DATA_WIDTH           : integer := 256;
    NUMBER_OF_INTERRUPTS : integer;
    CLOCKING_MODE : string := "independent_clock";
	RELATED_CLOCKS : integer range 0 to 1 := 0;
	FIFO_MEMORY_TYPE : string := "auto";
	PACKET_FIFO : string := "false"
    );
  port (
    SYSCLK_P             : in     std_logic;--200 MHz clock at H19/G18
    SYSCLK_N             : in     std_logic;
    GTREFCLK_IN_P        : in     std_logic; -- Transceiver SFP clock
    GTREFCLK_IN_N        : in     std_logic;
    flush_fifo           : in     std_logic;
    fromHostFifo_dout    : in     std_logic_vector(DATA_WIDTH-1 downto 0);
    fromHostFifo_empty   : in     std_logic;
    fromHostFifo_rd_clk  : out    std_logic;
    fromHostFifo_rd_en   : out    std_logic;
    fromHostFifo_rst     : out    std_logic;
    --interrupt_call       : out    std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    register_map_control : in     register_map_control_type; --! contains all read/write registers that control the application. The record members are described in pcie_package.vhd
    interlaken_monitor   : out    interlaken_monitor_type;
    reset_hard           : in     std_logic;
    reset_soft           : in     std_logic;
    toHostFifo_din       : out    std_logic_vector(DATA_WIDTH-1 downto 0);
    toHostFifo_prog_full : in     std_logic;
    toHostFifo_rst       : out    std_logic;
    toHostFifo_wr_clk    : out    std_logic;
    toHostFifo_wr_en     : out    std_logic;
    TX_Out_P             : out    std_logic_vector(Lanes-1 downto 0);
    TX_Out_N             : out    std_logic_vector(Lanes-1 downto 0);
    RX_In_P              : in     std_logic_vector(Lanes-1 downto 0);
    RX_In_N              : in     std_logic_vector(Lanes-1 downto 0);
    SFP_RX_LOS           : in     std_logic_vector(3 downto 0)
    
 
    
    );
end entity application;

architecture rtl of application is

    
    signal reset                    : std_logic;
    signal s_flush_fifo             : std_logic;
    
    signal fromHostFifo_empty_s  :  std_logic; 
    
    ---- Interlaken instance signals
    signal  TX_FlowControl_s     : slv_16_array(0 to Lanes-1);
    --signal  RX_Channel_s         : std_logic_vector(7 downto 0);
 
    --signal  TX_FIFO_progfull_s   : std_logic;
    --signal  TX_FIFO_Full_s       : std_logic;
    --signal  TX_FIFO_Write_s      : std_logic;
    --signal  TX_SOP_s             : std_logic;
    --signal  TX_SOP_s_p1          : std_logic;
    --signal  TX_EOP_s             : std_logic;
    --signal  fromHostFifo_rd_en_s_p1 : std_logic;
    --signal  fromHostFifo_rd_en_s : std_logic;
    --signal  toHostFifo_wr_en_s   : std_logic;
    --signal  TX_FIFO_Valid        : std_logic;
    
    signal m_axis : axis_64_array_type(0 to Lanes-1);
    signal m_axis_prog_empty : axis_tready_array_type(0 to Lanes-1);
    signal m_axis_aclk : std_logic;
    signal m_axis_tready : axis_tready_array_type(0 to Lanes-1);
     
    signal s_axis : axis_64_array_type(0 to Lanes-1);
    signal s_axis_prog_empty : axis_tready_array_type(0 to Lanes-1);
    signal s_axis_aclk : std_logic;
    signal s_axis_tready : axis_tready_array_type(0 to Lanes-1);
    
    --signal  RX_FIFO_Read_s       : std_logic;
    --signal  RX_FIFO_Empty_s      : std_logic;
    --signal  RX_EOP_s             : std_logic;
    --signal  RX_EOP_Valid_s       : std_logic_vector(f_log2(Lanes)+2 downto 0);
    --signal  RX_FIFO_Valid        : std_logic;  
    --signal  RX_FIFO_Valid_p1     : std_logic;

    signal  ToWupperState        : std_logic;  
      
    --signal  RX_TO_WU             : std_logic_vector(63 downto 0) := X"0000_0000_0000_0000";   -- IL channel 0
    --signal  WU_TO_TX             : std_logic_vector(63 downto 0) := X"0000_0000_0000_0000";   -- IL channel 0
    signal  ToWupperCounter      : std_logic_vector(15 downto 0) := X"0000";  -- counts the passed (64 bit) data bursts
    signal  FromWuppercounter    : std_logic_vector(15 downto 0) := X"0000";  -- counts thw data packets read from the wupper fifo
    signal  CRC24_Error_s        : std_logic_vector(Lanes-1 downto 0);--std_logic := '0';
    signal  CRC24_occured        : std_logic := '0';
    signal  CRC32_Error_s        : std_logic_vector(Lanes-1 downto 0);--std_logic := '0';
    signal  CRC32_occured        : std_logic := '0';
    signal  send_sync_word       : std_logic;
    signal  send_sync_word_p1    : std_logic;
    
    --signal  RX_EOP_s_p1          : std_logic;
    
    signal  Decoder_lock_s       : std_logic_vector(Lanes-1 downto 0);--std_logic; --interlaken_monitor_type;
    signal  Descrambler_lock_s   : std_logic_vector(Lanes-1 downto 0);--std_logic;
    signal  PacketLength         : std_logic_vector(15 downto 0) := X"0010";
    
    signal  toHostFifo_din_s     : std_logic_vector(DATA_WIDTH-1 downto 0) ;
    
    signal  clk40                : std_logic;
    signal  clk150               : std_logic;
    signal  locked               : std_logic;
    signal  reset_hard_soft      : std_logic; --hard and soft reset coming from wupper, input to clk_40MHz reset. locked output is used to reset the application.
    signal  loopback_in          : std_logic_vector(2 downto 0);
    
    -- Output signal to use with Channel Bonding -- 
    --signal  Interlaken_Channels_Output   : slv_64_array(0 to Lanes-1);   -- Channel 0 is currently mapped to  RX_TO_WU.
    --signal  Interlaken_Channels_Input    : slv_64_array(0 to Lanes-1);   -- Channel 0 is currently mapped to  WU_TO_TX.
       -------------------------- Generate System Clock ---------------------------
     component clk_40MHz -- @suppress "Component declaration "clk_40MHz" has none or multiple matching entity declarations"
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
     
     --signal TX_SOP : std_logic;
     --signal TX_EOP : std_logic;
     --signal TX_EOP_Valid_Total : std_logic_vector(f_log2(Lanes)+2 downto 0);
     
     
--   
--    component ila_0

--    port (
--    	clk : IN STD_LOGIC;
  
--        probe0 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
--        probe1 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
--        probe2 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
--        probe3 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
--        probe4 : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
--        probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe14 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe15 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe16 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe17 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe18 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe19 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe20 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe21 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe22 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
--        probe23 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe24 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--    );
--    end component  ;


begin

--    Logic_Analyzer : ila_0
--    PORT MAP (
--    	clk => clk150,
    	
--        probe0(63 downto 0) => RX_TO_WU, 
--        probe1(63 downto 0) => WU_TO_TX, 
--        probe2(63 downto 0) => toHostFifo_din_s, 
--        probe3(63 downto 0) => fromHostFifo_dout, 
--        probe4(63 downto 0) => (others => '0'), 
--        probe5(0) => send_sync_word, 
--        probe6(0) => send_sync_word_p1, 
--        probe7(0) => RX_EOP_s, 
--        probe8(0) => RX_SOP_s, 
--        probe9(0) => RX_FIFO_Empty_s, 
--        probe10(0) => RX_FIFO_Read_s, 
--        probe11(0) => RX_FIFO_Valid, 
--        probe12(0) => fromHostFifo_empty_s, 
--        probe13(0) => fromHostFifo_rd_en_s, 
--        probe14(0) => toHostFifo_wr_en_s, 
--        probe15(0) => RX_FIFO_Valid_p1, 
--        probe16(0) => '0', 
--        probe17(0) => TX_FIFO_Full_s, 
--        probe18(0) => TX_FIFO_Write_s, 
--        probe19(0) => '0', 
--        probe20(0) => '0', 
--        probe21(0) => '0', 
--        probe22(0) => '0', 
--        probe23(0) => '0',
--        probe24(0) => '0'

--    );

    fromHostFifo_rd_clk <= clk150;
    toHostFifo_wr_clk   <= clk150;
    reset <= not locked;
    s_flush_fifo <= flush_fifo or reset;
    toHostFifo_rst <= s_flush_fifo;
    fromHostFifo_rst <= s_flush_fifo;
    
    -- Loss Of Signal register
    interlaken_monitor.TRANSCEIVER.RX_LOS <= SFP_RX_LOS; 
    
    TX_FlowControl_s <= (others => (others => '0')); --TODO: implement TX flowcontrol
    
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
 
 loopback_in <= '0' & register_map_control.TRANSCEIVER.LOOPBACK & '0' ;  -- Assign register loopback value.
  
  il0: entity work.interlaken_interface 
      generic map(
           BurstMax => BurstMax, -- Configurable value of BurstMax
           BurstShort => 64, -- Configurable value of BurstShort
           PacketLength => 2024, -- Configurable value of PacketLength -- 24 packets * 8  = 192 B
           Lanes => Lanes, -- Number of Lanes (Transmission channels) Default: 4
           CLOCKING_MODE => CLOCKING_MODE,
           RELATED_CLOCKS => RELATED_CLOCKS,
           FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
           PACKET_FIFO => PACKET_FIFO      )
      port map(
          ----40 MHz input, from clock generator------------
          clk40 => clk40, --: in std_logic;
          --clk150 => clk150,                                     --: in std_logic;
          reset => reset, --: in std_logic;
          ----125 MHz input, to transceiver (SGMII clock)--
          GTREFCLK_IN_P => GTREFCLK_IN_P, --: in std_logic;
          GTREFCLK_IN_N => GTREFCLK_IN_N, --: in std_logic;
          ----Transceiver related transmission-------------
          TX_Out_P => TX_Out_P, --: out std_logic_vector(Lanes-1 downto 0);
          TX_Out_N => TX_Out_N, --: out std_logic_vector(Lanes-1 downto 0);
          RX_In_P => RX_In_P, --: in std_logic_vector(Lanes-1 downto 0);
          RX_In_N => RX_In_N, --: in std_logic_vector(Lanes-1 downto 0);
          --TX_SOP => TX_SOP,
          --TX_EOP => TX_EOP,
          --TX_EOP_Valid_Total => TX_EOP_Valid_Total,
          TX_FlowControl => TX_FlowControl_s, --: in std_logic_vector(15 downto 0);
          s_axis => s_axis,
          s_axis_aclk => s_axis_aclk,
          s_axis_tready => s_axis_tready,
          m_axis_aclk => m_axis_aclk,
          ----Receiver output signals-------------    
          --RX_FlowControl    => RX_FlowControl_s,                --: out std_logic_vector(15 downto 0);     
          --RX_Channel        => RX_Channel_s,                    --: out std_logic_vector(7 downto 0);      
          m_axis => m_axis,
          m_axis_tready => m_axis_tready,
          m_axis_prog_empty => m_axis_prog_empty,
          ----Receiver status signals-------------
          --Decoder_lock      => Decoder_lock_s ,                 
          --Descrambler_lock  => Descrambler_lock_s ,--interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DESCRAMBLER_LOCK(0),              
          --CRC24_Error       => CRC24_Error_s,                   --: out std_logic;
          --CRC32_Error       => CRC32_Error_s,                   --: out std_logic
          loopback_in => loopback_in
          
      );
      -- Register variables
      PacketLength <= register_map_control.INTERLAKEN_PACKET_LENGTH;
      interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DECODER_LOCK(1)  <= Decoder_lock_s(0) ;
      interlaken_monitor.INTERLAKEN_CONTROL_STATUS.DESCRAMBLER_LOCK(0) <= Descrambler_lock_s(0);
      --
      --RX_FIFO_Read_s <= not RX_FIFO_Empty_s and not send_sync_word and not toHostFifo_prog_full; -- Read data when not empty and no sync_word is beiging sent
      --toHostFifo_wr_en <= toHostFifo_wr_en_s; -- Write data in wupper fifo, or write sync word in fifo
      --send_sync_word <= RX_EOP_s AND (NOT send_sync_word_p1) and RX_FIFO_Valid;      
      
      toHostFifo_din <= toHostFifo_din_s;
      
      --Interlaken to Wupper
      process(clk150)
        variable  SYNC_INFO_WORD       : std_logic_vector(63 downto 0) := X"0000_0000_0000_ABCD";
          
      begin
        
        if rising_edge(clk150) then
            if reset = '1' then
                ToWupperState <= '0';
                --RX_FIFO_Valid_p1 <= '0';
                send_sync_word_p1 <= '0';
                --RX_EOP_s_p1 <= '0';
                ToWupperCounter <= X"0000";
                --toHostFifo_din_s <= SYNC_INFO_WORD;
                CRC24_occured <= '0';
                CRC32_occured <= '0';
            else
               -- if RX_FIFO_Read_s = '1' then
                    --RX_EOP_s_p1 <= RX_EOP_s;
                    send_sync_word_p1 <= send_sync_word;
                    --RX_FIFO_Valid_p1 <= RX_FIFO_Valid;
                    --toHostFifo_wr_en_s <= '0';
                    -- Check CRC error signals
                    if CRC24_Error_s(0) = '1' then
                        CRC24_occured <= '1';
                    end if;
                    
                    if CRC32_Error_s(0) = '1' then
                        CRC32_occured <= '1';
                    end if;
                    
                    
                    if ToWupperState = '1' then  -- Send data to fifo
                        if send_sync_word = '1' then                      -- EOP signal received, next clock cycle: send sync word
                            
                            --SYNC_INFO_WORD(37 downto 33) := RX_EOP_Valid_s; -- Nuumber of bytes that are valid from the previous 8-byte data word
                            ToWupperState <= '0';
                        end if;

                      --  if RX_FIFO_Valid = '1'  then
                      --       ToWupperCounter <= ToWupperCounter + 1;
                      --       toHostFifo_wr_en_s <= '1';
                      --       --//toHostFifo_din_s <= RX_TO_WU(63 downto 0);       -- Write the data to the ToHost FIFO of Wupper
                      --  else
                      --       toHostFifo_wr_en_s <= '0';  --No valid data to write
                      --       --toHostFifo_din_s <= RX_TO_WU(63 downto 0);       -- Fifo data ports will be connected but not written
                      --  end if;
                        
                        
                    elsif ToWupperState  = '0' then                         -- Send synchronization word.
                        SYNC_INFO_WORD(15 downto 0) := X"ABCD";             -- Default recognisable value
                        SYNC_INFO_WORD(31 downto 16) := ToWupperCounter;    -- Number of packets sent
                        SYNC_INFO_WORD(38) := CRC32_occured;                -- Signal that CRC32 error has been raised
                        SYNC_INFO_WORD(39) := CRC24_occured; 
                        CRC24_occured <= '0';
                        CRC32_occured <= '0';
                        --toHostFifo_din_s <= SYNC_INFO_WORD;                   -- Write the SYNC_INFO_WORD to the FIFO
                        --toHostFifo_wr_en_s <= '1';
                        ToWupperCounter <= (others => '0');
                        ToWupperState <= '1';
                    end if;
                --end if;
            end if;        
            
        end if;
      end process;
      
--      Wupper to Interlaken
    fromHostFifo_empty_s <= fromHostFifo_empty;
    --fromHostFifo_rd_en <= fromHostFifo_rd_en_s;
    --TX_FIFO_Write_s <= fromHostFifo_rd_en_s_p1; 
    
    --fromHostFifo_rd_en_s <= not fromHostFifo_empty_s and (not TX_FIFO_progfull_s)  and Descrambler_lock_s(0); 
    --WU_TO_TX <= fromHostFifo_dout;
                   
      process(clk150)
      begin
        if(rising_edge(clk150)) then
            if reset = '1' then
                FromWuppercounter <= (others => '0');
                --TX_EOP_s <= '0';
                --TX_SOP_s <= '0';
                --TX_EOP_Valid_s <= (others => '0');
            else
               --fromHostFifo_rd_en_s_p1 <= fromHostFifo_rd_en_s;
               --if fromHostFifo_rd_en_s = '1' then  -- Wait with sending data to the Interlaken TX, untill the RX IL is initialised
               --       FromWuppercounter <= FromWuppercounter + 1;
               --       --TX_EOP_Valid_s <= "00000";
               --       if FromWuppercounter = X"0000" then     -- Transmit a SOP (Start Of Packet)
               --           --TX_SOP_s <= '1';
               --           --TX_EOP_s <= '0';
               --       elsif FromWuppercounter = X"0001" then  -- Reset TX SOP after one clock period
               --           --TX_SOP_s <= '0';
               --       elsif FromWuppercounter = PacketLength-1 then  -- When the set packet length is reached
               --           --TX_EOP_s <= '1';                  -- Transmit the EOP (End Of Packet)
               --           --TX_EOP_Valid_s <= "11111";          -- Signal that the previous Data is valid
               --           FromWuppercounter <= (others => '0');
               --       end if;   
               --                      
               -- end if;
            end if;
        end if;        
      end process;
      
  
end architecture rtl ; -- of application

