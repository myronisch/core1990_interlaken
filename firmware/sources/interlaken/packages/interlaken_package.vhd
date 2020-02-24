----------------------------------------------------------------------------------
-- Company: Nikhef
-- Engineer: Leonie Verwoert
-- 
-- Create Date: 07/02/2019 01:50:05 PM
-- Design Name: Wupper-Interlaken 
-- Module Name: interlaken_package - Behavioral
-- Project Name: Wupper-Interlaken  
-- Target Devices: 
-- Tool Versions: 
-- Description: 
--  Package for the commonly used constants and types in the Wupper-Interlaken project.
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

package interlaken_package is

    -- Array declaration for Channel Bonding --
    type slv_64_array is array(natural range <>) of std_logic_vector(63 downto 0);
    type slv_67_array is array(natural range <>) of std_logic_vector(66 downto 0);
    type slv_69_array is array(natural range <>) of std_logic_vector(68 downto 0);
    type slv_16_array is array(natural range <>) of std_logic_vector(15 downto 0);
    type slv_8_array is array(natural range <>) of std_logic_vector(7 downto 0);
    type slv_7_array is array(natural range <>) of std_logic_vector(6 downto 0);
    type slv_3_array is array(natural range <>) of std_logic_vector(2 downto 0);
    type slv_1_array is array(natural range <>) of std_logic_vector(0 downto 0);

    type uns_9_array is array(natural range <>) of unsigned(8 downto 0);

    -- Constants --
    constant SYNCHRONIZATION : std_logic_vector(63 downto 0) := X"78f6_78f6_78f6_78f6";  -- synchronization, framing layer control word
    constant SCRAM_STATE_INIT_VALUE : std_logic_vector(63 downto 0) := X"2800_0000_0000_0000"; -- Starting value of scrambler 
    constant SKIP_WORD : std_logic_vector(63 downto 0) := X"1e1e_1e1e_1e1e_1e1e"; -- skip word, framing layer control word
    -- Meta frame block types --
    constant META_TYPE_SYNCHRONIZATION: std_logic_vector(4 downto 0) := "11110";
    constant META_TYPE_SCRAM_STATE: std_logic_vector(4 downto 0) := "01010";
    constant META_TYPE_SKIP_WORD: std_logic_vector(4 downto 0) := "01010";
    constant META_TYPE_DIAGNOSTIC: std_logic_vector(4 downto 0) := "11001";
    constant DIAGNOSTIC : std_logic_vector(63 downto 34) := "011001"&X"000000";     -- Diagnostic block type for CRC32 calculation
    constant META_TYPE_SYNCHRONIZATION_P: std_logic_vector(4 downto 0) := "11110";  -- Synchronization block type with positive dispairity
    constant META_TYPE_SCRAM_STATE_P: std_logic_vector(4 downto 0) := "01010";      -- Scrambler state block type with positive dispairity
    constant META_TYPE_SYNCHRONIZATION_N: std_logic_vector(4 downto 0) := "00001";
    constant META_TYPE_SCRAM_STATE_N: std_logic_vector(4 downto 0) := "10101";
    
    
    function f_log2 (x : positive) return natural; 
    
    
end interlaken_package;

package body interlaken_package is

    function f_log2 (x : positive) return natural is
        variable i : natural;
    begin
        i := 0;
        while (2**i < x) and i < 31 loop
            i := i + 1;
        end loop;
        return i;
    end function;

end package body;
