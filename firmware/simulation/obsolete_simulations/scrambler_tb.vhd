--
-- This file is an automatically generated VHDL testbench
-- by MakeTestBench (version 1.702)
-- 
-- Created on     :  01 March 2018
--
-- Tested entity        :  interlaken_scrambler
-- Tested entity from   :  scrambler_interlaken.vhd
--
library ieee;
use ieee.std_logic_1164.all;

entity testbench_scrambler is
end entity testbench_scrambler;

architecture tb_interlaken_scrambler of testbench_scrambler is
  component Scrambler
  	port(
  		Clk            : in  std_logic;
  		Scram_Rst      : in  std_logic;
  		Data_In        : in  std_logic_vector(66 downto 0);
  		Data_Out       : out std_logic_vector(66 downto 0);
  		Lane_Number    : in  std_logic_vector(3 downto 0);
  		Scrambler_En   : in  std_logic;
  		Data_Valid_In  : in  std_logic;
  		Data_Valid_Out : out std_logic;
  		Gearboxready   : in  std_logic
  	);
  end component Scrambler;

  for uut : Scrambler use entity work.Scrambler(behavior);

  signal clk : std_logic := '1';
  signal Scram_Rst : std_logic := '1';
  signal lane_number : std_logic_vector(3 downto 0) := "0001";
  signal Data_Control_In : std_logic;
  signal Data_Control_Out : std_logic;
  signal data_in : std_logic_vector(63 downto 0);
  signal scram_en : std_logic := '0';
  signal data_out : std_logic_vector(63 downto 0);
  signal Data_Valid_Out : std_logic := '0';

constant CLK_PERIOD : time := 10 ns;

begin
  uut : Scrambler port map (
    Clk => clk,
    Scram_Rst => Scram_Rst,
    Lane_Number => lane_number,
    Data_Control_In => Data_Control_In,
    Data_Control_Out => Data_Control_Out,
    Data_In => data_in,
    scram_en => scram_en,
    Data_Out => data_out,
    Data_Valid_Out => Data_Valid_Out
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
     data_in <= (others=>'0');
     wait for CLK_PERIOD;

     wait for CLK_PERIOD;
     
     Scram_Rst <= '0';
     scram_en <= '1';
     data_in <= X"5f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     Data_Control_In <= '1';
     data_in <= X"78f678f678f678f6";
     wait for CLK_PERIOD;
         
     Data_Control_In <= '0';
     data_in <= X"2f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     data_in <= X"9f5e5d5c5b5a5958";
     wait for CLK_PERIOD*2;
     
     data_in <= X"bf21a2a3a4a5a6a7";
     Scram_Rst <= '1';
     wait for CLK_PERIOD;
     
     Scram_Rst <='0';
     wait for CLK_PERIOD;
     
     data_in <= X"2f5e5a5c5b60f2a0";      
     wait for CLK_PERIOD;
     
     data_in  <= X"635e22a3a4a5a7a7";
     wait for CLK_PERIOD;
     
     data_in <= X"60b35d5dc4a582a7";
     wait for CLK_PERIOD;
     
     data_in <= X"2f5e5d5c5b5a5958";
     wait for CLK_PERIOD;

     Data_Control_In <= '1';
     data_in <= X"78f678f678f678f6";
     wait for CLK_PERIOD;
     
     Data_Control_In <= '0';
     wait for CLK_PERIOD;

     wait for CLK_PERIOD;

     wait;
  end process;
  
end architecture tb_interlaken_scrambler;

