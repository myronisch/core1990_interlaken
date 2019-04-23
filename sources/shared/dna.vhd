library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity dna is
generic(
    CARD_TYPE : integer
    );
port(
    clk40 : in std_logic;
    reset : in std_logic;
    dna_out  : out std_logic_vector(63 downto 0)
    );
end dna;

architecture rtl of dna is
    signal dna_read: std_logic;
    signal dna_shift: std_logic;
    signal dna_read_q: std_logic;
    signal dna_shift_cnt: std_logic_vector(5 downto 0);
    signal dna_value: std_logic_vector(63 downto 0);
    signal dna_ready: std_logic;
    signal dna_dout_s: std_logic;
begin

--******************************************
--* Device DNA Data Access Port
--* Read unique device ID
--******************************************

-- DNA_PORT: Device DNA Access Port
g0: if (CARD_TYPE = 709 or CARD_TYPE = 710) generate
    DNA_PORT_inst : DNA_PORT
        generic map (
            SIM_DNA_VALUE => X"123456789012345" -- Specifies a sample 57-bit DNA value for simulation
        )
        port map (
            DOUT => dna_dout_s,    -- 1-bit output: DNA output data.
            CLK => clk40,      -- 1-bit input: Clock input.
            DIN => '0',      -- 1-bit input: User data input pin.
            READ => dna_read,    -- 1-bit input: Active high load DNA, active low read input.
            SHIFT => dna_shift -- 1-bit input: Active high shift enable input.
        );


    process(clk40, reset)
    begin
        
        if(rising_edge(clk40)) then
            if(reset = '1') then
                dna_read      <= '0';
                dna_shift     <= '0';
                dna_read_q    <= '0';
                dna_shift_cnt <= "111001"; --57 decimal
                dna_shift     <= '0';
                dna_value     <= x"0000_0000_0000_0000";
                dna_ready     <= '0';
            else
                dna_read_q    <= '1';
                dna_read      <= '1' and (not dna_read_q);
                if(dna_read_q = '1' and dna_shift_cnt( 5 downto 1) /= "00000") then
                    dna_shift <= '1';
                else
                    dna_shift <= '0';
                end if;
                if (dna_shift = '1' and dna_shift_cnt/=x"000000") then
                    dna_value <= dna_value(62 downto 0) & dna_dout_s;
                    dna_shift_cnt <= dna_shift_cnt - "000001";
                end if;
                if(dna_shift_cnt = "000000") then
                    dna_ready <= '1';
                    dna_out <= dna_value;
                else
                    dna_out <= (others => '0');
                    dna_ready <= '0';
                end if;
            end if;
        end if;
    end process;
end generate;

g1: if (CARD_TYPE /= 709 and CARD_TYPE /= 710) generate
    dna_out <= x"0123_4567_89AB_CDEF";
end generate;


end architecture rtl;
