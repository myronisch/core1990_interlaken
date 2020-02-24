library ieee;
use ieee.std_logic_1164.all;

entity testbench_descrambler is
end entity testbench_descrambler;

architecture tb_descrambler of testbench_descrambler is

    signal Clk          : std_logic;                     -- Clock input
	signal Reset		: std_logic;					 -- Reset decoder
	signal Data_In      : std_logic_vector(63 downto 0); -- Data input
	signal Data_Out     : std_logic_vector(63 downto 0); -- Decoded 64-bit output
	signal Data_Control_In : std_logic;                    --	Indicates whether the word is data or control
	signal Data_Control_Out : std_logic;                    --	Indicates whether the word is data or control
	signal Lane_Number     : std_logic_vector (3 downto 0); 
	signal Error_BadSync  		: std_logic;
	signal Error_StateMismatch	: std_logic;
	signal Error_NoSync			: std_logic;
	signal Data_Valid_Out  : std_logic;


 constant CLK_PERIOD : time := 10 ns;
 signal PacketLength : positive;
 signal Data_Valid_In : std_logic;

begin
  uut : entity work.Descrambler 
  	generic map(
  		PacketLength => PacketLength
  	)
  port map (
    Data_Valid_In => Data_Valid_In,
    Clk => Clk,
    Reset => Reset,
    
    Data_In => Data_In,
    Data_Out => Data_Out,
    --Data_control_In => Data_Control_In,
    --Data_control_Out => Data_Control_Out,
    Data_Valid_Out => Data_Valid_Out,
    
    Lane_Number => Lane_Number,
    
    Error_BadSync => Error_BadSync,
    Error_StateMismatch => Error_StateMismatch,
	Error_NoSync => Error_NoSync
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
        Reset <= '1';
        Lane_Number <= "0001";
        Data_In <= (others=>'0');
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        Reset <= '0';
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '1';
        Data_In <= X"78f6_78f6_78f6_78f6"; --1
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD*23;
        
        Data_Control_In <= '1';
        Data_In <= X"78f6_78f6_78f6_78f6";--2
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD*23;
        
        Data_Control_In <= '1';
        Data_In  <= X"78f6_78f6_78f6_78f6";--3
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*23;
        
        Data_Control_In <= '1';
        Data_In  <= X"78f6_78f6_78f6_78f6";--4 -> lock
        wait for CLK_PERIOD;
        
        Data_In  <= X"5f5e5a5c5b60f2a0";
        wait for CLK_PERIOD;
        
        Data_In  <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*21;
        
        Data_Control_In <= '1';
        Data_In  <= X"78f6_78f6_78f6_78f6"; --Sync & 
        wait for CLK_PERIOD;
        
        Data_In  <= X"2Bfe_d100_19e0_1dbd";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In  <= X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        Data_Control_In <= '1';
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_Control_In <= '0';
        Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD*19; 
        
        wait for CLK_PERIOD;
        
        
        Data_In  <= X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= X"9486576758050505";
        wait for CLK_PERIOD; 
        
                           
        Data_In <= X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In <= X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In <= X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In <= X"70000FFF000000F0";
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
  
end architecture tb_descrambler;

