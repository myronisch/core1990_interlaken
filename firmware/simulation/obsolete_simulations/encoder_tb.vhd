library ieee;
use ieee.std_logic_1164.all;

entity testbench_encoder is
end entity testbench_encoder;

architecture tb_encoder of testbench_encoder is
  component Encoder
  	port(
  		Clk            : in  std_logic;
  		Data_In        : in  std_logic_vector(66 downto 0);
  		Data_Out       : out std_logic_vector(66 downto 0);
  		Data_valid_in  : in  std_logic;
  		Data_valid_out : out std_logic;
  		Encoder_En     : in  std_logic;
  		Encoder_Rst    : in  std_logic;
  		Gearboxready   : in  std_logic
  	);
  end component Encoder;

  for uut : Encoder use entity work.Encoder(Encoding);

  signal data_in : std_logic_vector(63 downto 0);
  signal encoder_en : std_logic := '0';
  signal Data_Control : std_logic := '0';
  signal clk : std_logic;
  signal rst : std_logic := '0';
  signal encoder_rst : std_logic;
  signal offset : std_logic_vector(7 downto 0);
  signal data_out : std_logic_vector(66 downto 0);

  constant CLK_PERIOD : time := 10 ns;
  signal Data_valid_in : std_logic;
  signal Gearboxready : std_logic;

begin
  uut : Encoder 
  port map (
    Data_valid_in => Data_valid_in,
    Gearboxready => Gearboxready,
    Data_In => data_in,
    Encoder_En => encoder_en,
    --Data_Control => Data_Control,
    Clk => clk,
    --rst => rst,
    Encoder_Rst => encoder_rst,
    --offset => offset,
    Data_Out => data_out
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
     encoder_rst <= '1';
     data_in <= (others=>'0');
 
     wait for CLK_PERIOD;

     wait for CLK_PERIOD;
     
     encoder_rst <= '0';
     encoder_en <= '1';
     data_in <= X"5f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     data_in <= X"2f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     data_in <= X"9f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     
     data_in <= X"bf21a2a3a4a5a6a7";
     encoder_rst <= '1';
     wait for CLK_PERIOD;
     
     encoder_rst <= '0';
     wait for CLK_PERIOD;
     
     data_in <= X"2f5e5a5c5b60f2a0";      
     wait for CLK_PERIOD;
     
     data_in  <= X"635e22a3a4a5a7a7";
     wait for CLK_PERIOD;
     
     data_in  <= X"00000FFF000000F0";
     wait for CLK_PERIOD*3;
     
     
     data_in  <= X"5050505050050505";
     wait for CLK_PERIOD;                          

     data_in  <= X"5486576758050505";
     wait for CLK_PERIOD; 
                               
     Data_Control <= '1';
     data_in <= X"60b35d5dc4a582a7";
     wait for CLK_PERIOD;
     
     data_in <= X"2f5e5d5c5b5a5958";
     wait for CLK_PERIOD;
     
     wait;
  end process;
end architecture tb_encoder;

