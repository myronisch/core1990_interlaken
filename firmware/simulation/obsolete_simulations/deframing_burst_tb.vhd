library ieee;
use ieee.std_logic_1164.all;
use work.axi_stream_package.all;

entity testbench_deburster is
end entity testbench_deburster;

architecture tb_deburster of testbench_deburster is

    signal Clk          : std_logic;                     -- Clock input
	signal Reset		: std_logic;					 -- Reset decoder
	signal Data_In      : std_logic_vector(66 downto 0); -- Data input
	signal Deburst_En   : std_logic;                     -- Enables the decoder
	signal Data_Out     : std_logic_vector(65 downto 0); -- Decoded 64-bit output
	
    signal Data_Control_In  : std_logic;                     --	Indicates whether the word is data or control
    signal Data_Control_Out : std_logic;                    --    Indicates whether the word is data or control
    
    signal CRC24_Error      : std_logic;
           
    signal Data_Valid_In    : std_logic;
    signal Data_Valid_Out   : std_logic;
    signal FIFO_Full        : std_logic;
    signal FIFO_Data        : std_logic_vector(4 downto 0);
    signal FIFO_Write       : std_logic;

    constant CLK_PERIOD : time := 10 ns;
    signal m_axis_tready : std_logic;
    signal Flowcontrol : std_logic_vector(15 downto 0);
    signal m_axis : axis_64_type;


begin
  uut : entity work.Burst_Deframer
  port map (
    Clk => Clk,
    Reset => Reset,
    Data_In => Data_In,
    Data_Valid_In => Data_Valid_In,
    Flowcontrol => Flowcontrol,
    m_axis => m_axis,
    m_axis_tready => m_axis_tready

    --Data_valid_out => Data_Valid_Out
  );

   Clk_process :process
     begin
          Clk <= '1';
          wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
          Clk <= '0';
          wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
     end process;
     
    simulation : process
    begin
        wait for 1 ps;
        Data_Control_In <= '0';
        Deburst_En <= '1';
        Reset <= '1';
        Data_In <= (others=>'0');
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        Reset <= '0';
        Data_Control_In <= '1';
        Data_In <= X"E000_0001_0000_0000";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In  <= X"9000_0001_dd52_35a7";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_In  <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In  <= X"E000_0001_0000_0000";
        wait for CLK_PERIOD*3;                          
        Data_Control_In <= '0';
        Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
                           
        Data_In <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In  <= X"9000_0001_dd52_35a7";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*5;
        
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*3;
        
        Data_Control_In <= '1';
        Data_In <= X"6400_0000_6222_431a";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In <= X"E000_0001_0000_0000";
        wait for CLK_PERIOD;
        Data_Control_In <= '0';
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;

        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In <= X"C000_0001_0000_0000";
        wait for CLK_PERIOD;
        Data_Control_In <= '0';
        
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In  <= X"9000_0001_dd52_35a7";
        wait for CLK_PERIOD;
        Data_Control_In <= '0';
        
        Data_In <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In <= X"645e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
                
        Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In  <= X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD; 
                          
        Data_In <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD*60;
        
        Data_In  <= X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
                    
        Data_In <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        Data_In <= X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*26;
        
        Data_In <= X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD*18;
        
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        wait;
    end process;
  
end architecture tb_deburster;

