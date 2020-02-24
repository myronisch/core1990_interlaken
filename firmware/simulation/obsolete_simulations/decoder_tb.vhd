library ieee;
use ieee.std_logic_1164.all;

entity testbench_decoder is
end entity testbench_decoder;

architecture tb_decoder of testbench_decoder is

    signal Clk             : std_logic;                     -- Clock input
    signal Reset		    : std_logic;					 -- Reset decoder
    signal Data_In         :  std_logic_vector(66 downto 0); -- Data input
    signal Decoder_En      :  std_logic;                     -- Enables the decoder
    signal Data_Valid_In   :  std_logic;
    signal Data_Valid_Out  :  std_logic;
    signal Data_Out        :  std_logic_vector(63 downto 0);-- Decoded 64-bit output
    signal Data_Control    :  std_logic;                    --	Indicates whether the word is data or control
    
    signal Sync_Locked  :  std_logic;
    signal Sync_Error	:  std_logic;
    signal Bitslip      :  std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin
  uut : entity work.Decoder 
  port map (
    Clk => Clk,
    Reset => Reset,
    Data_In => Data_In,
    Decoder_En => Decoder_En,
    Data_Valid_In => Data_Valid_In,
    Data_Valid_Out => Data_Valid_Out,
    Data_Out => Data_Out,
    Data_Control => Data_Control,
    Sync_Locked => Sync_Locked,
    Sync_Error => Sync_Error,
    Bitslip => Bitslip

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
        Decoder_En <= '1';
        Reset <= '1';
        Data_In <= (others=>'0');
        
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        Reset <= '0';
        Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In  <= "101" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        wait for CLK_PERIOD;
        
        
        Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
                           
        Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        Data_In <= "111" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"3f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"4f21a2a3a4a5a6a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In <= "101" & X"5f5e5a5c5b60f2a0";      
        wait for CLK_PERIOD;
        
        Data_In  <= "001" & X"635e22a3a4a5a7a7";
        wait for CLK_PERIOD;
        
        Data_In  <= "101" & X"70000FFF000000F0";
        wait for CLK_PERIOD*2;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
                          
        Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD*60;
        
        Data_In  <= "110" & X"8050505050050505";
        wait for CLK_PERIOD*3;                          
        
        Data_In  <= "101" & X"9486576758050505";
        wait for CLK_PERIOD; 
        
                    
        Data_In <= "101" & X"60b35d5dc4a582a7";
        wait for CLK_PERIOD;
        
        
        Data_In <= "101" & X"2f5e5d5c5b5a5958";
        wait for CLK_PERIOD*12;
        
        Data_In <= "111" & X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD;
        
        Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD*26;
        
        Data_In <= "111" & X"2c8e5d5c5b5a5958";
        wait for CLK_PERIOD*18;
        
        Data_In <= "101" & X"1f5e5d5c5b5a5958";
        wait for CLK_PERIOD;
        wait;
    end process;
  
end architecture tb_decoder;

