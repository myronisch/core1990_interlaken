library ieee;
use ieee.std_logic_1164.all;
use work.interlaken_package.all;

entity Scrambler is
    port (
        Clk				: in std_logic;			              -- System clock
        Scram_Rst		: in std_logic;			              -- Scrambler reset, use for initialization

        Data_In 		: in std_logic_vector (66 downto 0);  -- Data input
        Data_Out 		: out std_logic_vector (66 downto 0); -- Data output

        LaneNumber		: in std_logic_vector (3 downto 0);   -- Each lane number starts with different scrambler word  
        Scrambler_En	: in std_logic; 					  -- Input valid
        --Data_Control_In : in std_logic;                       -- Indicates a control word
        --Data_Control_Out: out std_logic;                      -- Output control word indication

        Gearboxready    : in std_logic
    );
end Scrambler;

architecture Scrambling of Scrambler is
    signal Poly : std_logic_vector (57 downto 0);
    signal Shiftreg : std_logic_vector (63 downto 0);	
	

begin
    Shiftreg(63) <= Poly(57) xor Poly(38);
    Shiftreg(62) <= Poly(56) xor Poly(37);
    Shiftreg(61) <= Poly(55) xor Poly(36);
    Shiftreg(60) <= Poly(54) xor Poly(35);
    Shiftreg(59) <= Poly(53) xor Poly(34);
    Shiftreg(58) <= Poly(52) xor Poly(33);
    Shiftreg(57) <= Poly(51) xor Poly(32);
    Shiftreg(56) <= Poly(50) xor Poly(31);
    Shiftreg(55) <= Poly(49) xor Poly(30);
    Shiftreg(54) <= Poly(48) xor Poly(29);
    Shiftreg(53) <= Poly(47) xor Poly(28);
    Shiftreg(52) <= Poly(46) xor Poly(27);
    Shiftreg(51) <= Poly(45) xor Poly(26);
    Shiftreg(50) <= Poly(44) xor Poly(25);
    Shiftreg(49) <= Poly(43) xor Poly(24);
    Shiftreg(48) <= Poly(42) xor Poly(23);
    Shiftreg(47) <= Poly(41) xor Poly(22);
    Shiftreg(46) <= Poly(40) xor Poly(21);
    Shiftreg(45) <= Poly(39) xor Poly(20);
    Shiftreg(44) <= Poly(38) xor Poly(19);
    Shiftreg(43) <= Poly(37) xor Poly(18);
    Shiftreg(42) <= Poly(36) xor Poly(17);
    Shiftreg(41) <= Poly(35) xor Poly(16);
    Shiftreg(40) <= Poly(34) xor Poly(15);
    Shiftreg(39) <= Poly(33) xor Poly(14);
    Shiftreg(38) <= Poly(32) xor Poly(13);
    Shiftreg(37) <= Poly(31) xor Poly(12);
    Shiftreg(36) <= Poly(30) xor Poly(11);
    Shiftreg(35) <= Poly(29) xor Poly(10);
    Shiftreg(34) <= Poly(28) xor Poly(9);
    Shiftreg(33) <= Poly(27) xor Poly(8);
    Shiftreg(32) <= Poly(26) xor Poly(7);
    Shiftreg(31) <= Poly(25) xor Poly(6);
    Shiftreg(30) <= Poly(24) xor Poly(5);
    Shiftreg(29) <= Poly(23) xor Poly(4);
    Shiftreg(28) <= Poly(22) xor Poly(3);
    Shiftreg(27) <= Poly(21) xor Poly(2);
    Shiftreg(26) <= Poly(20) xor Poly(1);
    Shiftreg(25) <= Poly(19) xor Poly(0);
    Shiftreg(24) <= Poly(57) xor Poly(38) xor Poly(18);
    Shiftreg(23) <= Poly(56) xor Poly(37) xor Poly(17);
    Shiftreg(22) <= Poly(55) xor Poly(36) xor Poly(16);
    Shiftreg(21) <= Poly(54) xor Poly(35) xor Poly(15);
    Shiftreg(20) <= Poly(53) xor Poly(34) xor Poly(14);
    Shiftreg(19) <= Poly(52) xor Poly(33) xor Poly(13);
    Shiftreg(18) <= Poly(51) xor Poly(32) xor Poly(12);
    Shiftreg(17) <= Poly(50) xor Poly(31) xor Poly(11);
    Shiftreg(16) <= Poly(49) xor Poly(30) xor Poly(10);
    Shiftreg(15) <= Poly(48) xor Poly(29) xor Poly(9);
    Shiftreg(14) <= Poly(47) xor Poly(28) xor Poly(8);
    Shiftreg(13) <= Poly(46) xor Poly(27) xor Poly(7);
    Shiftreg(12) <= Poly(45) xor Poly(26) xor Poly(6);
    Shiftreg(11) <= Poly(44) xor Poly(25) xor Poly(5);
    Shiftreg(10) <= Poly(43) xor Poly(24) xor Poly(4);
    Shiftreg(9) <= Poly(42) xor Poly(23) xor Poly(3);
    Shiftreg(8) <= Poly(41) xor Poly(22) xor Poly(2);
    Shiftreg(7) <= Poly(40) xor Poly(21) xor Poly(1);
    Shiftreg(6) <= Poly(39) xor Poly(20) xor Poly(0);
    Shiftreg(5) <= Poly(57) xor Poly(19);
    Shiftreg(4) <= Poly(56) xor Poly(18);
    Shiftreg(3) <= Poly(55) xor Poly(17);
    Shiftreg(2) <= Poly(54) xor Poly(16);
    Shiftreg(1) <= Poly(53) xor Poly(15);
    Shiftreg(0) <= Poly(52) xor Poly(14);

    Scramble : process (Clk, Scram_Rst, LaneNumber)
    begin
        if(Scram_Rst = '1') then
            Poly                <= (others => '1');
            Poly(57 downto 54)  <= LaneNumber(3 downto 0);
            Data_Out            <= (others => '0');
            --Data_Control_Out    <= '0';
        elsif (rising_edge(Clk)) then
            --if (Data_Valid_In = '1' and Gearboxready = '1') then
            if (Gearboxready = '1'and Scrambler_En ='1') then
                if (Data_In(65 downto 63) = "100") then                     --Checks if incoming data is control word
                    if(Data_In(62 downto 58)= META_TYPE_SYNCHRONIZATION) then       -- Sync words are not scrambled  
                        Data_Out <= Data_In;
                    elsif (Data_In(62 downto 58) = META_TYPE_SCRAM_STATE) then   -- Scrambler state words are not scrambled
                        Data_Out(63 downto 0) <= Data_In(63 downto 58) & Poly;
                    else
                        Poly <= Shiftreg(57 downto 0);              -- All other control words are scrambled
                        Data_Out(63 downto 0) <= Data_In(63 downto 0) xor (Poly(57 downto 0) & Shiftreg(63 downto 58));
                    end if;
                else
                    Poly <= Shiftreg(57 downto 0);                  -- All data words are scrambled
                    Data_Out(63 downto 0) <= Data_In(63 downto 0) xor (Poly(57 downto 0) & Shiftreg(63 downto 58));  -- correct 

                end if;
                Data_Out(65 downto 64) <= Data_In(65 downto 64);  -- Data word header
            end if;
        end if;
    end process;

end architecture Scrambling;
