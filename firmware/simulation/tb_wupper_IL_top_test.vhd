----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2019 01:17:25 PM
-- Design Name: 
-- Module Name: tb_wupper_IL_top_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_wupper_IL_top_test is
--  Port ( );
end tb_wupper_IL_top_test;

architecture Behavioral of tb_wupper_IL_top_test is
signal SYSCLK_P       : std_logic;
signal SYSCLK_N       : std_logic;
signal GTREFCLK_IN_P  : std_logic;
signal GTREFCLK_IN_N  : std_logic;
signal USER_CLK_IN_P  : std_logic;
signal USER_CLK_IN_N  : std_logic;
signal emcclk         : std_logic;
signal emcclk_out     : std_logic;
signal SCL            : std_logic;
signal SDA            : std_logic;
signal i2cmux_rst     : std_logic;
signal leds           : std_logic;
signal pcie_rxn       : std_logic;
signal pcie_rxp       : std_logic;
signal pcie_txn       : std_logic;
signal pcie_txp       : std_logic;
signal sys_clk_n      : std_logic;
signal sys_clk_p      : std_logic;
signal sys_reset_n    : std_logic;
signal si5324_reset_n : std_logic;
signal TX_Out_P       : std_logic;
signal TX_Out_N       : std_logic;
signal RX_In_P        : std_logic;
signal RX_In_N        : std_logic;

constant   SYSCLK_PERIOD           :   time :=  5.0 ns;    
constant   TX_REFCLK_PERIOD        :   time :=  6.4 ns;
constant   sys_clk_period          :   time :=  1.0 ns;









begin

IL_TOP_0 : entity work.wupper_interlaken_top 

  port map (
    SYSCLK_P       => SYSCLK_P       , --: in     std_logic;--200 MHz clock at H19/G18
    SYSCLK_N       => SYSCLK_N       , --: in     std_logic;
    GTREFCLK_IN_P  => GTREFCLK_IN_P  , --: in     std_logic; -- 156.25 MHz Transceiver clock
    GTREFCLK_IN_N  => GTREFCLK_IN_N  , --: in     std_logic;
    USER_CLK_IN_P  => USER_CLK_IN_P  ,  --  in     std_logic; -- 156.25 MHZ cristal output 
    USER_CLK_IN_N  => USER_CLK_IN_N,
    emcclk         => '0'         , --: in     std_logic; --! emcclk is part of the JTAG high speed programming.
    emcclk_out     => open     , --: out    std_logic; --! use emcclk_out in order to not optimize emcclk away
    SCL            => open            , --: inout  std_logic; --! I2C port
    SDA            => open            , --: inout  std_logic; --! I2C port
    i2cmux_rst     => open     , --: out    std_logic; --! I2C port
    leds           => open           , --: out    std_logic_vector(7 downto 0); --! 8 status leds
    pcie_rxn       => X"00"       , --: in     std_logic_vector(7 downto 0);
    pcie_rxp       => X"00"       , --: in     std_logic_vector(7 downto 0);
    pcie_txn       => open       , --: out    std_logic_vector(7 downto 0);
    pcie_txp       => open       , --: out    std_logic_vector(7 downto 0); --! PCIe link lanes
    sys_clk_n      => sys_clk_n      , --: in     std_logic;
    sys_clk_p      => sys_clk_p      , --: in     std_logic; --! 100MHz PCIe reference clock
    sys_reset_n    => sys_reset_n    , --: in     std_logic;
    si5324_reset_n => open , --: out    std_logic; --! Active-low system reset from PCIe interface
    TX_Out_P       => TX_Out_P       , --: out    std_logic;
    TX_Out_N       => TX_Out_N       , --: out    std_logic;
    RX_In_P        => RX_In_P        , --: in     std_logic;
    RX_In_N        => RX_In_N      ,   --: in     std_logic);
    SFP_TX_DISABLE => open,      --: out    std_logic_vector(3 downto 0);
    SFP_RX_LOS     => "0000"                 --: in     std_logic_vector(3 downto 0) 
    
    );


RX_In_P <= TX_Out_P;
RX_In_N <= TX_Out_N;

-- reset process
    process 
    begin
     sys_reset_n <= '0';
     wait for (SYSCLK_PERIOD*10);
        sys_reset_n <= '1';
     wait;
    end process;
  
-- TX_REFCLK  156.25 MHz     
    process
    begin
        GTREFCLK_IN_N  <=  '1';
        wait for TX_REFCLK_PERIOD/2;
        GTREFCLK_IN_N  <=  '0';
        wait for TX_REFCLK_PERIOD/2;
    end process;
    
    GTREFCLK_IN_P <= not GTREFCLK_IN_N;
    
    

-- System clock 200 MHz 
    process
    begin
        SYSCLK_N  <=  '1';
        wait for SYSCLK_PERIOD/2;
        SYSCLK_N  <=  '0';
        wait for SYSCLK_PERIOD/2;
    end process;
    
    SYSCLK_P <= not SYSCLK_N;
    
-- sys clock PCIe 100 MHz
    process
    begin
        sys_clk_n  <=  '1';
    wait for sys_clk_period/2;
        sys_clk_n  <=  '0';
    wait for sys_clk_period/2;
    end process; 
    
    sys_clk_p <= not sys_clk_n;

end Behavioral;