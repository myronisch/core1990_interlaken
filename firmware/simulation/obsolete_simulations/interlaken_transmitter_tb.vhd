library ieee;
use ieee.std_logic_1164.all;
use work.axi_stream_package.ALL;

entity testbench_interlaken_transmitter is
end entity testbench_interlaken_transmitter;

architecture tb_interlaken_transmitter of testbench_interlaken_transmitter is

	signal write_clk   : std_logic;
	signal clk   : std_logic;
	signal reset : std_logic;
	
	signal TX_Data_In 	: std_logic_vector(63 downto 0);
	signal TX_Data_Out : std_logic_vector (66 downto 0); -- later 66 downto 0
	
	signal TX_Enable    	: std_logic;                         -- Enable the TX
	signal TX_SOP        	: std_logic;                         -- Start of Packet
	signal TX_ValidBytes 	: std_logic_vector(2 downto 0);      -- Valid bytes packet contains
	signal TX_EOP        	: std_logic;                         -- End of Packet
	signal TX_FlowControl	: std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
	signal TX_Channel    	: std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
	
	signal TX_Link_Up       : std_logic;
	
	signal TX_Valid_Out 	: std_logic;
	signal TX_Control_Out 	: std_logic;	
	
constant CLK_PERIOD : time := 10 ns;
signal Data_Burst_in : std_logic_vector(63 downto 0);
signal TX_EOP_Valid : std_logic_vector(2 downto 0);
signal Channel_send_idle : std_logic;
signal TX_Gearboxready : std_logic;
signal TX_Startseq : std_logic;
signal RX_prog_full : std_logic_vector(15 downto 0);
signal s_axis : axis_64_type;
signal Link_up : std_logic_vector(Lanes-1 downto 0);
signal FIFO_Valid : std_logic;
signal FIFO_Empty : std_logic;
signal FIFO_Write_Count : std_logic_vector(4 downto 0);
signal FIFO_Read_Count : std_logic_vector(4 downto 0);



begin
  uut : entity work.Interlaken_Transmitter 
  	generic map(
  		BurstMax => BurstMax,
  		BurstShort => BurstShort,
  		PacketLength => PacketLength,
  		Lanes => Lanes,
  		LaneNumber => LaneNumber
  	)
  port map (
    Data_Burst_in => Data_Burst_in,
    TX_EOP_Valid => TX_EOP_Valid,
    Channel_send_idle => Channel_send_idle,
    TX_Gearboxready => TX_Gearboxready,
    TX_Startseq => TX_Startseq,
    RX_prog_full => RX_prog_full,
    s_axis => s_axis,
    Link_up => Link_up,
    FIFO_Valid => FIFO_Valid,
    FIFO_Empty => FIFO_Empty,
    FIFO_Write_Count => FIFO_Write_Count,
    FIFO_Read_Count => FIFO_Read_Count,

    write_clk => write_clk,
    clk => clk,
    reset => reset,
    --TX_Data_In => TX_Data_In,
    --TX_Data_Out => TX_Data_Out,
    --TX_Enable => TX_Enable,
    TX_SOP => TX_SOP,
	--TX_ValidBytes => TX_ValidBytes,
	TX_EOP => TX_EOP,
	TX_FlowControl => TX_FlowControl,
	TX_Channel => TX_Channel,
	
	--TX_Link_Up => TX_Link_Up,
	TX_valid_out => TX_Valid_Out,
	--TX_Control_Out => TX_Control_Out    
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
        TX_Enable <= '0';
        TX_EOP <= '0';
        TX_SOP <= '0';
        TX_Channel <= X"01";
        TX_ValidBytes <= "111";
        TX_Data_In <= (others=>'0');
        reset <= '1';
        TX_FlowControl <= (others => '0');
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        --FIFO_meta <= '1';
        reset <= '0';
        TX_Enable <= '1';
        TX_Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        wait for CLK_PERIOD*10;
        TX_SOP <= '1';
        TX_EOP <= '1';
        TX_Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        TX_EOP <= '0';
        TX_Data_In <= X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
         
               TX_SOP <= '0';
               TX_EOP <= '0';
        TX_EOP <= '0';
        --reset <= '1';
        TX_Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        TX_FlowControl(0) <= '1';
        TX_SOP <= '1';
        TX_Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        TX_SOP <= '0';
        TX_EOP <= '1';
        TX_Data_In  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        TX_EOP <= '0';
        --TX_SOP <= '1';
        TX_Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        TX_SOP <= '1';
        TX_Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
              
        TX_SOP <= '0';
        TX_EOP <= '1';
        wait for CLK_PERIOD;
        
        TX_EOP <= '0';
        --TX_SOP <= '0';
        TX_Data_In  <= X"8050505050050505";
        --wait for CLK_PERIOD*3;                          
        wait for CLK_PERIOD;
        TX_Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
        TX_EOP <= '1';                          
        TX_Data_In <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD; --Test influencing pause state position
        
        TX_EOP <= '0';
        wait for CLK_PERIOD*16;
        
        TX_SOP <= '1';
        TX_Data_In <= X"4f21a2a3a4a5a6a7";
        --wait for CLK_PERIOD;
        
        TX_Data_In <= X"995e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        TX_Data_In  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        TX_Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        TX_Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        TX_Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        TX_Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        TX_Data_In  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        TX_Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
       
        
        TX_Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        TX_Data_In <= X"4f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        TX_SOP <= '0';
        TX_EOP <= '1';
        wait for CLK_PERIOD;
        
        --FIFO_meta <= '0';
        wait for CLK_PERIOD*4;
        --FIFO_meta <= '1';
        wait;
    end process;

end architecture tb_interlaken_transmitter;


