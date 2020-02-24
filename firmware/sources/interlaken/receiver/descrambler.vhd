library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;
use work.interlaken_package.all;

entity Descrambler is
    generic (
        PacketLength : positive
    );
    port (
        Clk				: in std_logic;			              -- System clock
        Reset			: in std_logic;			              -- Descrambler reset, use for initialization

        Data_In 		: in std_logic_vector (66 downto 0);  -- Data input
        Data_Out 		: out std_logic_vector (66 downto 0); -- Data output

        Lane_Number		: in std_logic_vector (3 downto 0);   -- Each lane number starts with different scrambler word
        Data_Valid_In   : in std_logic;                       -- 
        Data_Valid_Out  : out std_logic;                      -- Output data is valid for the next component/in lock
        Lock            : out std_logic;
        
        Error_BadSync 		: out std_logic; 	-- Bad sync words after being in lock
        Error_StateMismatch : out std_logic; 	-- Scrambler state mismatches occured more than three times
        Error_NoSync 		: out std_logic 	-- Bad sync and not been in lock

    );
end Descrambler;

architecture behavior of Descrambler is
    type state_type is (IDLE, SYNC, LOCKED);
    signal pres_state : state_type;

    signal MetaCounter : integer range 0 to PacketLength;
    signal Sync_Word_Detected : std_logic;
    signal Sync_Words : integer range 0 to 3;
    signal ScramblerSyncMismatch : std_logic; --Todo use as status bit -- @suppress "signal ScramblerSyncMismatch is never read"

    signal Data_Valid_P1, Data_Valid : std_logic;
    signal Data_P1, Data_Descrambled : std_logic_vector(63 downto 0);

    signal scram_state_word_detected : std_logic; ---Todo use as status bit --@suppress "signal scram_state_word_detected is never read"

    signal Scrambler_State_Mismatch : integer range 0 to 3;
    signal Sync_Word_Mismatch : integer range 0 to 4;

    signal Poly : std_logic_vector (57 downto 0);
    signal Shiftreg : std_logic_vector (63 downto 0);
    signal Data_HDR_P1, Data_HDR : std_logic_vector(2 downto 0);
   

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

    detection : process (Clk, Reset) is
    begin
        if(Reset = '1') then
            Sync_Word_Detected <= '0';
        elsif (rising_edge(Clk)) then
            if (Data_In(65 downto 64) = "10") and (Data_In(63 downto 0) = SYNCHRONIZATION) then
                Sync_Word_Detected <= '1';
            else
                Sync_Word_Detected <= '0';
            end if;
        end if;
    end process detection;

    data : process (Clk, Reset) is
    begin
        if (Reset = '1') then
            Data_Out <= (others => '0');
        elsif (rising_edge(Clk)) then
            Data_Out  <= Data_HDR_P1 & Data_P1;
            Data_Valid_Out <= Data_Valid_P1;
            Data_Valid_P1<= Data_Valid;
        end if;
    end process data;

    --	state_register : process (clk) is
    --    begin
    --        if (rising_edge(clk)) then
    --            pres_state <= next_state;
    --        end if;
    --    end process state_register;

    --    state_decoder : process (pres_state, Sync_Word_Detected, MetaCounter, Sync_words, ScramblerSyncMismatch) is
    --    begin
    --        case pres_state is
    --        when IDLE =>
    --			if(Sync_Word_Detected = '1') then
    --				next_state <= SYNC;
    --			else
    --				next_state <= IDLE;
    --			end if;
    --		when SYNC =>
    --			if(Sync_Words = 3 and Sync_Word_Detected = '1') then
    --				next_state <= LOCKED;
    --			elsif(Sync_Words = 0) then
    --				next_state <= IDLE;
    --			else 
    --			    next_state <= SYNC;
    --			end if;
    --		when LOCKED =>
    --			if(ScramblerSyncMismatch = '1') then
    --				next_state <= IDLE;
    --			else
    --				next_state <= LOCKED;
    --			end if;
    --        when others =>
    --            next_state <= IDLE;
    --        end case;
    --    end process state_decoder;

    output : process (Clk) is
    begin
        if rising_edge(Clk) then
            Lock <= '0';
            case pres_state is
                when IDLE =>
                    Data_P1 <= (others => '0'); -- Reset data registers and polynomial
                    Data_Descrambled <= (others => '0');
                    Poly <= (others => '1');
                    Poly(57 downto 54) <= Lane_Number(3 downto 0);

                    Error_StateMismatch <= '0'; -- Reset error conditions
                    Error_NoSync <= '0';
                    Error_BadSync <= '0';

                    MetaCounter <= 0;           -- Reset other values
                    Data_HDR <= Data_In(66)&"10";
                    Data_HDR_P1 <= Data_In(66)&"10";

                    ScramblerSyncMismatch <= '0';
                    Scrambler_State_Mismatch <= 0;
                    Sync_Word_Mismatch <= 0;
                    Data_Valid <= '0';

                    if(Sync_Word_Detected = '1') then
                        MetaCounter <= 1;
                        Sync_Words <= Sync_Words + 1;
                        pres_state <= SYNC;
                    end if;

                when SYNC =>
                    if (Data_Valid_In = '1') then

                        MetaCounter <= MetaCounter + 1;
                        if(MetaCounter = 0) then
                            --if Data_In(63 downto 0) = SYNCHRONIZATION then
                            if(Sync_Word_Detected = '1') then --First position in metaframe should contain sync
                                Sync_Words <= Sync_Words + 1;
                                if(Sync_Words = 2) then
                                    Sync_Words <= 0;
                                    Data_Descrambled <= SCRAM_STATE_INIT_VALUE;--X"2800_0000_0000_0000"; 
                                    Data_P1 <= SYNCHRONIZATION;
                                    Data_HDR <= Data_In(66)&"10";
                                    Data_HDR_P1 <= Data_In(66)&"10";
                                    Poly <= Data_In(57 downto 0);  -- Scrambler state in poly
                                    pres_state <= LOCKED;
                                end if;
                            else
                                Error_NoSync <= '1';
                                pres_state <= IDLE;
                            end if;
                        end if;

                        if(MetaCounter = (PacketLength-1)) then
                            MetaCounter <= 0;
                        end if;
                    end if;
                    if Sync_Words = 0 then
                        pres_state <= IDLE;
                    end if;

                when LOCKED =>
                    Lock <= '1';
                    Data_Valid <= '0';
                    Data_P1  <= Data_Descrambled;
                    Data_HDR_P1  <= Data_HDR;

                    scram_state_word_detected <= '0';

                    if (Data_Valid_In = '1') then
                        Data_Valid <= '1';
                        MetaCounter <= MetaCounter + 1;
                        Data_HDR <= Data_In(66 downto 64);
                        --Data_In_P1 <= Data_In; ---
                        if (Data_In(65 downto 64) = "10" and Data_In(63) = '0' and 
                        MetaCounter = 0 and
                        ((Data_In(62 downto 58) = META_TYPE_SCRAM_STATE_P ) or 
                        (Data_In(62 downto 58) = META_TYPE_SCRAM_STATE_N ))
                        ) then
                            scram_state_word_detected <= '1';
                            Poly <= Data_In(57 downto 0);
                            Data_Descrambled <= Data_In(63 downto 0);
                            if(Data_In(57 downto 0) /= Poly) then
                                --if(Data_In_P1(57 downto 0) /= Poly) then ---
                                Scrambler_State_Mismatch <= Scrambler_State_Mismatch + 1;
                                if(Scrambler_State_Mismatch = 2) then
                                    ScramblerSyncMismatch <= '1';
                                    Error_StateMismatch <= '1';
                                    Scrambler_State_Mismatch <= 0;
                                    Sync_Words <= 0;
                                    pres_state <= IDLE;
                                end if;
                            end if;
                        elsif (Data_In(65 downto 64) = "10" and Data_In(63) = '0' and 
                        Data_In(63 downto 0) = SYNCHRONIZATION ) then
                            --((Data_In(62 downto 58) = META_TYPE_SYNCHRONIZATION_P and Data_In(66) = '0') or 
                            --(Data_In(62 downto 58) = META_TYPE_SYNCHRONIZATION_N and Data_In(66) = '1'))
                            --) then
                            MetaCounter <= 0;

                            if(MetaCounter /= (PacketLength-1)) then
                                Sync_Word_Mismatch <= Sync_Word_Mismatch + 1;
                                if(Sync_Word_Mismatch = 3) then
                                    Error_BadSync <= '1';
                                    Sync_Word_Mismatch <= 0;
                                    ScramblerSyncMismatch <= '1';
                                    pres_state <= IDLE;
                                end if;
                            end if;
                            Data_Descrambled <= Data_In(63 downto 0);
                        else  -- No Synchronization or scrambler state detected, apply descrambler to data and update Poly
                            Poly <= Shiftreg(57 downto 0);
                            Data_Descrambled <= Data_In(63 downto 0) xor (Poly(57 downto 0) & Shiftreg(63 downto 58));
                        end if;
                    


                end if;
                when others => -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                    pres_state <= IDLE;
            end case;
        end if;
    end process output;

end architecture behavior;
