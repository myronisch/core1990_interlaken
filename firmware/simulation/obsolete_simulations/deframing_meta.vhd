library ieee;
use ieee.std_logic_1164.all;

entity testbench_deframer is
end entity testbench_deframer;

architecture tb_deframer of testbench_deframer is

    signal Clk          : std_logic;                     -- Clock input
	signal Reset		: std_logic;					 -- Reset decoder
	signal Data_In      : std_logic_vector(63 downto 0); -- Data input
	signal Deframer_En   : std_logic;                     -- Enables the decoder
	signal Data_Out     : std_logic_vector(63 downto 0); -- Decoded 64-bit output
	
    signal Data_Control_In  : std_logic;                     --	Indicates whether the word is data or control
    signal Data_Control_Out : std_logic;                    --    Indicates whether the word is data or control
           
    signal Data_Valid_Out   : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin
  uut : entity work.Meta_Deframer
  port map (
    clk => clk,
    reset => reset,
    Deframer_En => Deframer_En,
    
    Data_in => Data_in,
    Data_out => Data_out,
    Data_control_in => Data_control_in,
    Data_control_out => Data_control_out,
    Data_valid_out => Data_valid_out
  );

   Clk_process :process
     begin
          clk <= '1';
          wait for CLK_PERIOD/2;  --for half of clock period clk stays at '0'.
          clk <= '0';
          wait for CLK_PERIOD/2;  --for next half of clock period clk stays at '1'.
     end process;
     
    simulation : process
    begin
        wait for 1 ps;
        Data_control_in <= '0';
        deframer_en <= '1';
        reset <= '1';
        data_in <= (others=>'0');
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        reset <= '0';
        Data_control_in <= '1';
        Data_in <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_in <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        data_in <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_control_in <= '0';
        Data_in <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        data_in <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        data_in  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        data_in  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_in  <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        data_in  <= X"E000_0001_0000_0000";
        wait for CLK_PERIOD*3;                          
        Data_Control_In <= '0';
        data_in  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
                           
        data_in <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*5;
        
        Data_in <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*3;
        
        Data_Control_In <= '1';
        Data_in <= X"6400_0000_6222_431a";
        wait for clk_period;
        
        Data_control_in <= '1';
        Data_in <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_in <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        data_in <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_control_in <= '0';
        Data_in <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        data_in <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;

        data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_in <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_in <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_in <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        
        data_in <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        data_in <= X"645e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_in <= X"78f6_78f6_78f6_78f6";
        wait for CLK_PERIOD;
        
        
        Data_in <= X"2800_0000_0000_0000";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        data_in <= X"1e1e_1e1e_1e1e_1e1e";
        wait for CLK_PERIOD;
                
        Data_in <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        data_in <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        data_in  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        data_in <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        data_in  <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        data_in  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        data_in  <= X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        data_in  <= X"9486576758050505";
        wait for CLK_PERIOD; 
                          
        data_in <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD*60;
        
        data_in  <= X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        data_in  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
                    
        data_in <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        data_in <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        data_in <= X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_in <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*26;
        
        data_in <= X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD*18;
        
        data_in <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        wait;
    end process;
  
end architecture tb_deframer;

