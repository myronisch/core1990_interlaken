----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2015 11:21:34 AM
-- Design Name: 
-- Module Name: LFSR - Behavioral
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

entity LFSR is
    Port (
          clk           : in  STD_LOGIC;
          load_seed     : in  STD_LOGIC_VECTOR (0 downto 0);
          enable        : in  STD_LOGIC;
          rndmdata      : out STD_LOGIC_VECTOR (255 downto 0);
          seed          : in  STD_LOGIC_VECTOR (255 downto 0)
 );
end LFSR;

architecture Behavioral of LFSR is

    signal vector       :STD_LOGIC_VECTOR (255 downto 0);

begin

    -- Linear feedback shift registers
    LFSR: process(clk) is
    begin
        if rising_edge(clk) then
            if (load_seed = "1") then
                   vector(255 downto 0)<= seed;
            else    
               if(enable = '1') then 
                   vector <= vector(0)& vector(255 downto 1) ;
                   vector(253) <= vector(254) xor vector(0);
                   vector(250) <= vector(251) xor vector(0);
                   vector(245) <= vector(246) xor vector(0);
               else
                    vector <= vector;
               end if;
           end if;       
        end if;
    end process LFSR;
    
    rndmdata <= vector; 

end Behavioral;
