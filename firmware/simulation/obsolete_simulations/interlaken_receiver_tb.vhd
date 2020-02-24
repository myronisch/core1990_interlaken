library ieee;
use ieee.std_logic_1164.all;
use work.axi_stream_package.ALL;

entity testbench_interlaken_receiver is
end entity testbench_interlaken_receiver;

architecture tb_interlaken_receiver of testbench_interlaken_receiver is

	signal write_clk   : std_logic;
	signal clk   : std_logic;
	signal reset : std_logic;
	
	signal RX_Data_In 	: std_logic_vector(66 downto 0);
	signal RX_Data_Out : std_logic_vector (63 downto 0); -- later 66 downto 0
	
	signal RX_Enable    	: std_logic;                         -- Enable the TX
	signal RX_SOP        	: std_logic;                         -- Start of Packet
	signal RX_ValidBytes 	: std_logic_vector(2 downto 0);      -- Valid bytes packet contains
	signal RX_EOP        	: std_logic;                         -- End of Packet
	signal RX_FlowControl	: std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
	signal RX_Channel    	: std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
	
	signal RX_Link_Up       : std_logic;
	
	constant CLK_PERIOD : time := 10 ns;
	signal PacketLength : positive;
	signal LaneNumber : integer;
	signal Lanes : positive;
	signal m_axis_tready : std_logic;
	signal RX_Datavalid : std_logic;
	signal m_axis : axis_64_type;
	signal Flowcontrol : std_logic_vector(15 downto 0);
	signal Bitslip : std_logic;

begin
  uut : entity work.Interlaken_Receiver
  	generic map(
  		PacketLength => PacketLength,
  		LaneNumber => LaneNumber,
  		Lanes => Lanes
  	)
  port map (
    clk => clk,
    reset => reset,
    RX_Data_In => RX_Data_In,
    RX_Datavalid => RX_Datavalid,
    m_axis => m_axis,
    m_axis_tready => m_axis_tready,
    RX_Link_Up => RX_Link_Up,
    Flowcontrol => Flowcontrol,
    Bitslip => Bitslip 
  );

   Clk_process :process
     begin
          write_clk <= '1';
          clk <= '1';
          wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
          clk <= '0';
          write_clk <= '0';
          wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
     end process;
    
    simulation : process
    begin
        wait for 1 ps;
        RX_Data_In <= (others=>'0');
        reset <= '1';
        
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        --FIFO_meta <= '1';
        reset <= '0';
        reset <= '0';
        RX_Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "101" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "101" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "101" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        
        RX_Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
                           
        RX_Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        RX_Data_In <= "111" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"5f5e5a5c5b60f2a0";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*21;
        
        RX_Data_In <= "001" & X"78f6_78f6_78f6_78f6"; --Sync & 
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;        
        
        RX_Data_In <= "101" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "101" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        RX_Data_In <= "001" & X"2Bfe_d100_19e0_1dbd";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD*10;
        

        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD; 

        
        RX_Data_In <= "101" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD*20;
        
        
        RX_Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD*10;
        
        RX_Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "101" & X"70000FFF000000F0";
        wait for CLK_PERIOD*6;
        
        RX_Data_In <= "001" & X"8050505050050505";
        wait for CLK_PERIOD*9;          
        
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
        RX_Data_In <= "001" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "010" & X"78f6_78f6_78f6_78f6"; --1
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD*23;
        
        RX_Data_In <= "010" & X"78f6_78f6_78f6_78f6";--2
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD*23;
        
        RX_Data_In <= "010" & X"78f6_78f6_78f6_78f6";--3
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*23;
        
        
        
        RX_Data_In <= "010" & X"78f6_78f6_78f6_78f6";--4 -> lock
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"5f5e5a5c5b60f2a0";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*21;
        
        RX_Data_In <= "010" & X"78f6_78f6_78f6_78f6"; --Sync & 
        wait for CLK_PERIOD;
        
        RX_Data_In <= "010" & X"2Bfe_d100_19e0_1dbd";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "010" & X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        RX_Data_In <= "010" & X"E000_0001_0000_0000";
        wait for CLK_PERIOD*3;
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD; 
                          
        RX_Data_In <= "001" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*5;
        
        RX_Data_In <= "001" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*3;
               
        RX_Data_In <= "010" & X"6400_0000_6222_431a";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD*19; 
        
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
                           
        RX_Data_In <= "001" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "001" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        RX_Data_In <= "001" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "001" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD; 
                          
        RX_Data_In <= "001" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD*60;
        
        RX_Data_In <= "001" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In <= "001" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
                    
        RX_Data_In <= "001" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
                
                          
        RX_Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD*60;
        
        RX_Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        RX_Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
                    
        RX_Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        RX_Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        RX_Data_In <= "111" & X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        RX_Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*26;
        
        RX_Data_In <= "111" & X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD*18;
        
        RX_Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        wait;
        --FIFO_meta <= '0';
        wait for CLK_PERIOD*4;
        --FIFO_meta <= '1';
        wait;
    end process;

end architecture tb_interlaken_receiver;


