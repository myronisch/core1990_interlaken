--******************************************************************************
--*                                                                            *
--*           Calculates a CRC-24 over the data at Din, data may               *
--*           already arrive when Reset is high                                *
--*           The process from Din to CRC takes 2 Clk cycles                   *
--*           Frans Schreuder (Nikhef) franss@nikhef.nl                        *
--*                                                                            *
--******************************************************************************
library ieee;
use ieee.std_logic_1164.all;
library work;

entity CRC_24 is
  --generic(
  --  Nbits :  positive 	:= 64;
  --  CRC_Width		  :  positive 	:= 24;
  --  G_Poly: Std_Logic_Vector :=x"32_8B63"; --c1acf --32_8B63
  --  G_InitVal: std_logic_vector:=x"11_1111"
  --  );
   port(
     CRC   : out    std_logic_vector(23 downto 0);
     Calc  : in     std_logic;
     Clk   : in     std_logic;
     DIn   : in     std_logic_vector(63 downto 0);
     Reset : in     std_logic);
end CRC_24;


architecture rtl of CRC_24 is

--    function ToIndirectInitVal(Direct:std_logic_vector; CRC_Width: positive; Poly: std_logic_vector) return std_logic_vector is 
--        variable InDirect: std_logic_vector(Direct'high downto Direct'low);
--    begin
--        for k in 0 to CRC_Width loop
--            if(k = 0) then
--                InDirect := Direct;
--            else
--                if(InDirect(0)='1') then
--                    InDirect := (('0'&InDirect(CRC_Width-1 downto 1)) xor ('1'&Poly(CRC_Width-1 downto 1)));
--                else
--                    InDirect := '0'&InDirect(CRC_Width-1 downto 1);
--                end if;
--            end if;
--        end loop;
--        return InDirect; 
--    end function ToIndirectInitVal;
--    
--    constant Poly: Std_Logic_Vector(CRC_Width-1 downto 0) := G_Poly;
--    constant InitVal: Std_Logic_Vector(CRC_Width-1 downto 0) := G_InitVal;
--    
--    constant InDirectInitVal: std_logic_vector(CRC_Width-1 downto 0):=ToIndirectInitVal(InitVal, CRC_Width, Poly);
--    signal Reg_s : std_logic_vector(CRC_Width-1 downto 0);  
--begin
--   
--  
--    process (Clk)
--        variable Reg, Reg2: Std_Logic_Vector (CRC_Width-1 downto 0);
--        variable ApplyPoly: std_logic;
--    begin
--
--        if rising_Edge(Clk) then
--            if Reset = '1' then
--                if(Calc = '1') then
--                    for k In 0 to Nbits loop
--                        if(k = 0) then
--                            Reg := (InDirectInitVal);--(CRC_Width-1 downto 0)&dinP(k))xor ('0'&Poly);
--                        else
--                            if Reg(CRC_Width-1) = '1' then
--                                Reg := (Reg(CRC_Width-2 downto 0)&din(Nbits - k))xor (Poly);
--                            else
--                                Reg := Reg(CRC_Width-2 downto 0)&din(Nbits - k);
--                            end if;
--                        end if;
--                    end loop;
--                else
--                    Reg := InDirectInitVal;
--                end if;
--            else
--                if Calc = '1' then
--                    for k In 1 to Nbits loop
--                        if Reg(CRC_Width-1) = '1' then
--                            Reg := (Reg(CRC_Width-2 downto 0)&din(Nbits - k))xor (Poly);
--                        else
--                            Reg := Reg(CRC_Width-2 downto 0)&din(Nbits - k);
--                        end if;
--                    end loop;
--                else
--                    Reg := Reg;
--                end if;
--            end if;
--            
--            Reg_s <= Reg;
--            Reg2 := Reg_s;
--            --we need one more loop to output the CRC register to the output.
--            for k In 1 to CRC_Width loop
--                if Reg2(CRC_Width-1) = '1' then
--                    Reg2 := (Reg2(CRC_Width-2 downto 0)&'0')xor (Poly);
--                else
--                    Reg2:= Reg2(CRC_Width-2 downto 0)&'0';
--                end if;
--            end loop;
--            CRC <= Reg2;--(CRC_width-1 downto 0);
--        end if;
--    end process;
signal c: std_logic_vector(23 downto 0);
signal d: std_logic_vector(63 downto 0);
signal crc_out: std_logic_vector(23 downto 0);
begin

process(clk)
begin
    if rising_edge(clk) then
        if Reset = '1' then
            c <= (others => '1');
            d <= Din;
        else
            if Calc = '1' then
                d <= Din;
                c <= crc_out;
            end if;
        end if;
        CRC <= not crc_out;
    end if;
end process;

 crc_out(0) <=
    c(1) xor c(6) xor c(8) xor c(9) xor c(12) xor c(13) xor 
    c(16) xor c(18) xor c(19) xor c(20) xor c(22) xor c(23) xor d(63) xor 
    d(62) xor d(60) xor d(59) xor d(58) xor d(56) xor d(53) xor d(52) xor 
    d(49) xor d(48) xor d(46) xor d(41) xor d(39) xor d(38) xor d(37) xor 
    d(36) xor d(34) xor d(32) xor d(31) xor d(30) xor d(29) xor d(23) xor 
    d(16) xor d(14) xor d(11) xor d(10) xor d(8) xor d(7) xor d(6) xor 
    d(4) xor d(3) xor d(0);

 crc_out(1) <=
    c(0) xor c(1) xor c(2) xor c(6) xor c(7) xor c(8) xor 
    c(10) xor c(12) xor c(14) xor c(16) xor c(17) xor c(18) xor c(21) xor 
    c(22) xor d(62) xor d(61) xor d(58) xor d(57) xor d(56) xor d(54) xor 
    d(52) xor d(50) xor d(48) xor d(47) xor d(46) xor d(42) xor d(41) xor 
    d(40) xor d(36) xor d(35) xor d(34) xor d(33) xor d(29) xor d(24) xor 
    d(23) xor d(17) xor d(16) xor d(15) xor d(14) xor d(12) xor d(10) xor 
    d(9) xor d(6) xor d(5) xor d(3) xor d(1) xor d(0);

 crc_out(2) <=
    c(1) xor c(2) xor c(3) xor c(7) xor c(8) xor c(9) xor 
    c(11) xor c(13) xor c(15) xor c(17) xor c(18) xor c(19) xor c(22) xor 
    c(23) xor d(63) xor d(62) xor d(59) xor d(58) xor d(57) xor d(55) xor 
    d(53) xor d(51) xor d(49) xor d(48) xor d(47) xor d(43) xor d(42) xor 
    d(41) xor d(37) xor d(36) xor d(35) xor d(34) xor d(30) xor d(25) xor 
    d(24) xor d(18) xor d(17) xor d(16) xor d(15) xor d(13) xor d(11) xor 
    d(10) xor d(7) xor d(6) xor d(4) xor d(2) xor d(1);

 crc_out(3) <=
    c(2) xor c(3) xor c(4) xor c(8) xor c(9) xor c(10) xor 
    c(12) xor c(14) xor c(16) xor c(18) xor c(19) xor c(20) xor c(23) xor 
    d(63) xor d(60) xor d(59) xor d(58) xor d(56) xor d(54) xor d(52) xor 
    d(50) xor d(49) xor d(48) xor d(44) xor d(43) xor d(42) xor d(38) xor 
    d(37) xor d(36) xor d(35) xor d(31) xor d(26) xor d(25) xor d(19) xor 
    d(18) xor d(17) xor d(16) xor d(14) xor d(12) xor d(11) xor d(8) xor 
    d(7) xor d(5) xor d(3) xor d(2);

 crc_out(4) <=
    c(3) xor c(4) xor c(5) xor c(9) xor c(10) xor c(11) xor 
    c(13) xor c(15) xor c(17) xor c(19) xor c(20) xor c(21) xor d(61) xor 
    d(60) xor d(59) xor d(57) xor d(55) xor d(53) xor d(51) xor d(50) xor 
    d(49) xor d(45) xor d(44) xor d(43) xor d(39) xor d(38) xor d(37) xor 
    d(36) xor d(32) xor d(27) xor d(26) xor d(20) xor d(19) xor d(18) xor 
    d(17) xor d(15) xor d(13) xor d(12) xor d(9) xor d(8) xor d(6) xor 
    d(4) xor d(3);

 crc_out(5) <=
    c(0) xor c(1) xor c(4) xor c(5) xor c(8) xor c(9) xor 
    c(10) xor c(11) xor c(13) xor c(14) xor c(19) xor c(21) xor c(23) xor 
    d(63) xor d(61) xor d(59) xor d(54) xor d(53) xor d(51) xor d(50) xor 
    d(49) xor d(48) xor d(45) xor d(44) xor d(41) xor d(40) xor d(36) xor 
    d(34) xor d(33) xor d(32) xor d(31) xor d(30) xor d(29) xor d(28) xor 
    d(27) xor d(23) xor d(21) xor d(20) xor d(19) xor d(18) xor d(13) xor 
    d(11) xor d(9) xor d(8) xor d(6) xor d(5) xor d(3) xor d(0);

 crc_out(6) <=
    c(2) xor c(5) xor c(8) xor c(10) xor c(11) xor c(13) xor 
    c(14) xor c(15) xor c(16) xor c(18) xor c(19) xor c(23) xor d(63) xor 
    d(59) xor d(58) xor d(56) xor d(55) xor d(54) xor d(53) xor d(51) xor 
    d(50) xor d(48) xor d(45) xor d(42) xor d(39) xor d(38) xor d(36) xor 
    d(35) xor d(33) xor d(28) xor d(24) xor d(23) xor d(22) xor d(21) xor 
    d(20) xor d(19) xor d(16) xor d(12) xor d(11) xor d(9) xor d(8) xor 
    d(3) xor d(1) xor d(0);

 crc_out(7) <=
    c(0) xor c(3) xor c(6) xor c(9) xor c(11) xor c(12) xor 
    c(14) xor c(15) xor c(16) xor c(17) xor c(19) xor c(20) xor d(60) xor 
    d(59) xor d(57) xor d(56) xor d(55) xor d(54) xor d(52) xor d(51) xor 
    d(49) xor d(46) xor d(43) xor d(40) xor d(39) xor d(37) xor d(36) xor 
    d(34) xor d(29) xor d(25) xor d(24) xor d(23) xor d(22) xor d(21) xor 
    d(20) xor d(17) xor d(13) xor d(12) xor d(10) xor d(9) xor d(4) xor 
    d(2) xor d(1);

 crc_out(8) <=
    c(0) xor c(4) xor c(6) xor c(7) xor c(8) xor c(9) xor 
    c(10) xor c(15) xor c(17) xor c(19) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(59) xor d(57) xor d(55) xor d(50) xor 
    d(49) xor d(48) xor d(47) xor d(46) xor d(44) xor d(40) xor d(39) xor 
    d(36) xor d(35) xor d(34) xor d(32) xor d(31) xor d(29) xor d(26) xor 
    d(25) xor d(24) xor d(22) xor d(21) xor d(18) xor d(16) xor d(13) xor 
    d(8) xor d(7) xor d(6) xor d(5) xor d(4) xor d(2) xor d(0);

 crc_out(9) <=
    c(0) xor c(5) xor c(6) xor c(7) xor c(10) xor c(11) xor 
    c(12) xor c(13) xor c(19) xor d(59) xor d(53) xor d(52) xor d(51) xor 
    d(50) xor d(47) xor d(46) xor d(45) xor d(40) xor d(39) xor d(38) xor 
    d(35) xor d(34) xor d(33) xor d(31) xor d(29) xor d(27) xor d(26) xor 
    d(25) xor d(22) xor d(19) xor d(17) xor d(16) xor d(11) xor d(10) xor 
    d(9) xor d(5) xor d(4) xor d(1) xor d(0);

 crc_out(10) <=
    c(0) xor c(1) xor c(6) xor c(7) xor c(8) xor c(11) xor 
    c(12) xor c(13) xor c(14) xor c(20) xor d(60) xor d(54) xor d(53) xor 
    d(52) xor d(51) xor d(48) xor d(47) xor d(46) xor d(41) xor d(40) xor 
    d(39) xor d(36) xor d(35) xor d(34) xor d(32) xor d(30) xor d(28) xor 
    d(27) xor d(26) xor d(23) xor d(20) xor d(18) xor d(17) xor d(12) xor 
    d(11) xor d(10) xor d(6) xor d(5) xor d(2) xor d(1);

 crc_out(11) <=
    c(0) xor c(2) xor c(6) xor c(7) xor c(14) xor c(15) xor 
    c(16) xor c(18) xor c(19) xor c(20) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(60) xor d(59) xor d(58) xor d(56) xor 
    d(55) xor d(54) xor d(47) xor d(46) xor d(42) xor d(40) xor d(39) xor 
    d(38) xor d(35) xor d(34) xor d(33) xor d(32) xor d(30) xor d(28) xor 
    d(27) xor d(24) xor d(23) xor d(21) xor d(19) xor d(18) xor d(16) xor 
    d(14) xor d(13) xor d(12) xor d(10) xor d(8) xor d(4) xor d(2) xor 
    d(0);

 crc_out(12) <=
    c(0) xor c(1) xor c(3) xor c(7) xor c(8) xor c(15) xor 
    c(16) xor c(17) xor c(19) xor c(20) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(60) xor d(59) xor d(57) xor d(56) xor 
    d(55) xor d(48) xor d(47) xor d(43) xor d(41) xor d(40) xor d(39) xor 
    d(36) xor d(35) xor d(34) xor d(33) xor d(31) xor d(29) xor d(28) xor 
    d(25) xor d(24) xor d(22) xor d(20) xor d(19) xor d(17) xor d(15) xor 
    d(14) xor d(13) xor d(11) xor d(9) xor d(5) xor d(3) xor d(1);

 crc_out(13) <=
    c(0) xor c(1) xor c(2) xor c(4) xor c(8) xor c(9) xor 
    c(16) xor c(17) xor c(18) xor c(20) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(60) xor d(58) xor d(57) xor d(56) xor 
    d(49) xor d(48) xor d(44) xor d(42) xor d(41) xor d(40) xor d(37) xor 
    d(36) xor d(35) xor d(34) xor d(32) xor d(30) xor d(29) xor d(26) xor 
    d(25) xor d(23) xor d(21) xor d(20) xor d(18) xor d(16) xor d(15) xor 
    d(14) xor d(12) xor d(10) xor d(6) xor d(4) xor d(2);

 crc_out(14) <=
    c(1) xor c(2) xor c(3) xor c(5) xor c(9) xor c(10) xor 
    c(17) xor c(18) xor c(19) xor c(21) xor c(22) xor c(23) xor d(63) xor 
    d(62) xor d(61) xor d(59) xor d(58) xor d(57) xor d(50) xor d(49) xor 
    d(45) xor d(43) xor d(42) xor d(41) xor d(38) xor d(37) xor d(36) xor 
    d(35) xor d(33) xor d(31) xor d(30) xor d(27) xor d(26) xor d(24) xor 
    d(22) xor d(21) xor d(19) xor d(17) xor d(16) xor d(15) xor d(13) xor 
    d(11) xor d(7) xor d(5) xor d(3);

 crc_out(15) <=
    c(1) xor c(2) xor c(3) xor c(4) xor c(8) xor c(9) xor 
    c(10) xor c(11) xor c(12) xor c(13) xor c(16) xor d(56) xor d(53) xor 
    d(52) xor d(51) xor d(50) xor d(49) xor d(48) xor d(44) xor d(43) xor 
    d(42) xor d(41) xor d(30) xor d(29) xor d(28) xor d(27) xor d(25) xor 
    d(22) xor d(20) xor d(18) xor d(17) xor d(12) xor d(11) xor d(10) xor 
    d(7) xor d(3) xor d(0);

 crc_out(16) <=
    c(2) xor c(3) xor c(4) xor c(5) xor c(9) xor c(10) xor 
    c(11) xor c(12) xor c(13) xor c(14) xor c(17) xor d(57) xor d(54) xor 
    d(53) xor d(52) xor d(51) xor d(50) xor d(49) xor d(45) xor d(44) xor 
    d(43) xor d(42) xor d(31) xor d(30) xor d(29) xor d(28) xor d(26) xor 
    d(23) xor d(21) xor d(19) xor d(18) xor d(13) xor d(12) xor d(11) xor 
    d(8) xor d(4) xor d(1);

 crc_out(17) <=
    c(1) xor c(3) xor c(4) xor c(5) xor c(8) xor c(9) xor 
    c(10) xor c(11) xor c(14) xor c(15) xor c(16) xor c(19) xor c(20) xor 
    c(22) xor c(23) xor d(63) xor d(62) xor d(60) xor d(59) xor d(56) xor 
    d(55) xor d(54) xor d(51) xor d(50) xor d(49) xor d(48) xor d(45) xor 
    d(44) xor d(43) xor d(41) xor d(39) xor d(38) xor d(37) xor d(36) xor 
    d(34) xor d(27) xor d(24) xor d(23) xor d(22) xor d(20) xor d(19) xor 
    d(16) xor d(13) xor d(12) xor d(11) xor d(10) xor d(9) xor d(8) xor 
    d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(2) xor d(0);

 crc_out(18) <=
    c(0) xor c(2) xor c(4) xor c(5) xor c(6) xor c(9) xor 
    c(10) xor c(11) xor c(12) xor c(15) xor c(16) xor c(17) xor c(20) xor 
    c(21) xor c(23) xor d(63) xor d(61) xor d(60) xor d(57) xor d(56) xor 
    d(55) xor d(52) xor d(51) xor d(50) xor d(49) xor d(46) xor d(45) xor 
    d(44) xor d(42) xor d(40) xor d(39) xor d(38) xor d(37) xor d(35) xor 
    d(28) xor d(25) xor d(24) xor d(23) xor d(21) xor d(20) xor d(17) xor 
    d(14) xor d(13) xor d(12) xor d(11) xor d(10) xor d(9) xor d(8) xor 
    d(7) xor d(6) xor d(5) xor d(4) xor d(3) xor d(1);

 crc_out(19) <=
    c(0) xor c(1) xor c(3) xor c(5) xor c(6) xor c(7) xor 
    c(10) xor c(11) xor c(12) xor c(13) xor c(16) xor c(17) xor c(18) xor 
    c(21) xor c(22) xor d(62) xor d(61) xor d(58) xor d(57) xor d(56) xor 
    d(53) xor d(52) xor d(51) xor d(50) xor d(47) xor d(46) xor d(45) xor 
    d(43) xor d(41) xor d(40) xor d(39) xor d(38) xor d(36) xor d(29) xor 
    d(26) xor d(25) xor d(24) xor d(22) xor d(21) xor d(18) xor d(15) xor 
    d(14) xor d(13) xor d(12) xor d(11) xor d(10) xor d(9) xor d(8) xor 
    d(7) xor d(6) xor d(5) xor d(4) xor d(2);

 crc_out(20) <=
    c(0) xor c(2) xor c(4) xor c(7) xor c(9) xor c(11) xor 
    c(14) xor c(16) xor c(17) xor c(20) xor d(60) xor d(57) xor d(56) xor 
    d(54) xor d(51) xor d(49) xor d(47) xor d(44) xor d(42) xor d(40) xor 
    d(38) xor d(36) xor d(34) xor d(32) xor d(31) xor d(29) xor d(27) xor 
    d(26) xor d(25) xor d(22) xor d(19) xor d(15) xor d(13) xor d(12) xor 
    d(9) xor d(5) xor d(4) xor d(0);

 crc_out(21) <=
    c(3) xor c(5) xor c(6) xor c(9) xor c(10) xor c(13) xor 
    c(15) xor c(16) xor c(17) xor c(19) xor c(20) xor c(21) xor c(22) xor 
    c(23) xor d(63) xor d(62) xor d(61) xor d(60) xor d(59) xor d(57) xor 
    d(56) xor d(55) xor d(53) xor d(50) xor d(49) xor d(46) xor d(45) xor 
    d(43) xor d(38) xor d(36) xor d(35) xor d(34) xor d(33) xor d(31) xor 
    d(29) xor d(28) xor d(27) xor d(26) xor d(20) xor d(13) xor d(11) xor 
    d(8) xor d(7) xor d(5) xor d(4) xor d(3) xor d(1) xor d(0);

 crc_out(22) <=
    c(4) xor c(6) xor c(7) xor c(10) xor c(11) xor c(14) xor 
    c(16) xor c(17) xor c(18) xor c(20) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(60) xor d(58) xor d(57) xor d(56) xor 
    d(54) xor d(51) xor d(50) xor d(47) xor d(46) xor d(44) xor d(39) xor 
    d(37) xor d(36) xor d(35) xor d(34) xor d(32) xor d(30) xor d(29) xor 
    d(28) xor d(27) xor d(21) xor d(14) xor d(12) xor d(9) xor d(8) xor 
    d(6) xor d(5) xor d(4) xor d(2) xor d(1);

 crc_out(23) <=
    c(0) xor c(5) xor c(7) xor c(8) xor c(11) xor c(12) xor 
    c(15) xor c(17) xor c(18) xor c(19) xor c(21) xor c(22) xor c(23) xor 
    d(63) xor d(62) xor d(61) xor d(59) xor d(58) xor d(57) xor d(55) xor 
    d(52) xor d(51) xor d(48) xor d(47) xor d(45) xor d(40) xor d(38) xor 
    d(37) xor d(36) xor d(35) xor d(33) xor d(31) xor d(30) xor d(29) xor 
    d(28) xor d(22) xor d(15) xor d(13) xor d(10) xor d(9) xor d(7) xor 
    d(6) xor d(5) xor d(3) xor d(2);

    
end architecture rtl ; -- of CRC