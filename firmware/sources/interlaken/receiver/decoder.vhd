library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.interlaken_package.all;

entity Decoder is
    port(
        Clk             : in std_logic;                     -- Clock input
        Reset		    : in std_logic;					 -- Reset decoder
        Data_In         : in std_logic_vector(66 downto 0); -- Data input
        Decoder_En      : in std_logic;                     -- Enables the decoder
        Data_Valid_In   : in std_logic;
        Data_Valid_Out  : out std_logic;
        Data_Out        : out std_logic_vector(66 downto 0);-- Decoded 64-bit output
        Decoder_Lock  : out std_logic;
        Sync_Error	 : out std_logic;
        Bitslip      : out std_logic
    );
end entity Decoder;

architecture Decoding of Decoder is
    type state_type is (IDLE, SYNC, LOCKED);
    signal pres_state, next_state : state_type;

    signal Data_T1, Data_T2, Data_T3 : std_logic_vector(66 downto 0);
    --shared variable Sync_ChangeCounter : integer range 0 to 65; -- Counts common bit changes

    signal Data_Valid_P1, Data_Valid_P2, Data_Valid_P3 : std_logic;
    signal Data_P1, Data_P2, Data_P3 : std_logic_vector(66 downto 0);
    signal Sync_Transition_Location : integer := 0;
    signal Sync_Search : std_logic;
    signal Sync_Counter, Word_Counter : integer range 0 to 65;
    signal Sync_Error_Counter : integer range 0 to 17;
    signal Trans_result : integer range 0 to 67;
begin

    input : process (Clk, Reset) is --Input registers/pipelining
    begin
        if (Reset = '1') then
            Data_P1 <= (others => '1');
            Data_P2 <= (others => '1');
            Data_P3 <= (others => '1');
        elsif (rising_edge(Clk)) then
            Data_P3 <= Data_P2;
            Data_P2 <= Data_P1;

            Data_Valid_P3 <= Data_Valid_P2;
            Data_Valid_P2 <= Data_Valid_P1;

            if (Data_Valid_In = '1') then
                Data_P1(66 downto 64) <= Data_In(66 downto 64);
                Data_P1(63 downto 0) <= Data_In(63 downto 0);
                Data_Valid_P1 <= '1';
            else
                Data_P1 <= Data_P1;
                Data_Valid_P1 <= '0';
            end if;
        end if;
    end process input;

    transitions : process (Clk, Reset) is -- Detect transitions to locate the preamble
    begin
        if (Reset = '1') then
            Data_T1 <= (others => '1');
            Data_T2 <= (others => '1');
        elsif (rising_edge(Clk)) then

            for i in 66 downto 1  loop      -- Indicates bit transitions of incoming data
                Data_T1(i) <= (Data_P1(i) xor Data_P1(i-1));
            end loop;
            Data_T1(0) <= '0';              -- Last bit must be zero

            Data_T2 <= Data_T1 and Data_T2; -- Loop and compare to new data, only the transitions always occuring will be left

            if Data_T1 = (Data_T1'range => '0') or Data_T2 = (Data_T2'range => '0') then
                Data_T2 <= (others => '1');
            end if;

        end if;
    end process transitions;

    synchronize : process (Clk, Reset) is --Locate the preamble according to the detected transitions
        variable Sync_TransitionCounter: integer range 0 to 67 := 0; -- Counts common bit transitions
    begin
        if (Reset = '1') then
            Sync_TransitionCounter := 0;
        elsif (rising_edge(Clk)) then
            Sync_TransitionCounter := 0;
            if (Sync_Search = '1') then
                Sync_TransitionCounter := 0;

                for j in 66 downto 0  loop  -- Count transitions that occur
                    if(Data_T2(j) = '1') then
                        Sync_TransitionCounter := Sync_TransitionCounter + 1;
                        Sync_Transition_Location <= j;
                    else
                        Sync_TransitionCounter := Sync_TransitionCounter;
                    end if;
                end loop;

            end if;
            Trans_result <= Sync_TransitionCounter;

        end if;
    end process synchronize;

    state_register : process (Clk) is
    begin
        if (rising_edge(Clk)) then
            pres_state <= next_state;
        end if;
    end process state_register;

    state_decoder : process (pres_state, Decoder_En, Sync_Counter, Sync_Error_Counter, Trans_result, Sync_Transition_Location) is
    begin
        case pres_state is
            when IDLE =>
                if (Decoder_En = '1' and Trans_result < 67) then
                    next_state <= SYNC;
                else
                    next_state <= IDLE;
                end if;
            when SYNC =>
                if(Sync_Counter >= 63 and Trans_result = 1 and Sync_Transition_Location = 65) then
                    next_state <= LOCKED;
                elsif (Trans_result = 0) then
                    next_state <= IDLE;
                else
                    next_state <= SYNC;
                end if;
            when LOCKED =>
                if (Sync_Error_Counter > 14) then
                    next_state <= IDLE;
                else
                    next_state <= LOCKED;
                end if;
                    when others => -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                        next_state <= IDLE;
        end case;
    end process state_decoder;

    output : process  (Clk) is
        variable Data_Temp : std_logic_vector(63 downto 0);
        variable Data_Lock : std_logic_vector(66 downto 0);
        variable Data_Header : std_logic_vector(2 downto 0);
        variable shift_timeout : integer range 0 to 63;
    begin
        if rising_edge(Clk) then

            Bitslip <= '0';
            case pres_state is
                when IDLE =>
                    Sync_Error <= '0';
                    Decoder_Lock <= '0';
                    Sync_Search <= '1';
                    Sync_Counter <= 0;
                    Data_T3 <= (others => '0');
                    Data_Lock := (others => '0');
                    Data_Out <= (others => '0');

                --                if (Decoder_En = '1' and Sync_TransitionCounter < 67) then
                --                   Sync_Counter <= 1;
                --                end if;

                when SYNC =>
                    if (Data_Valid_In = '1') then
                        Sync_Counter <= Sync_Counter + 1; --Count sync words passed
                        if(Sync_Counter >= 63 and Trans_result = 1 and Sync_Transition_Location = 65) then
                            Data_Lock := Data_T2;   -- If decoder goes in lock, data including bit position will be saved
                            Sync_Counter <= 0 ;     -- Reset counter after changing state
                            Decoder_Lock <= '1';
                            Sync_Search <= '0';
                            Data_T3 <= Data_Lock and Data_T1;
                        elsif (Trans_result = 0) then
                            Sync_Error <= '1';
                        end if;

                        if (Sync_Transition_Location /= 65) then
                            if(shift_timeout = 0) then
                                Bitslip <= '1';
                                shift_timeout := 63;
                            else
                                shift_timeout := shift_timeout - 1;
                                Bitslip <= '0';
                            end if;
                        else
                            Bitslip <= '0';
                        end if;
                        if (Sync_Counter = 64) then
                            Sync_Counter <= 0;
                        end if;
                    end if;
                when LOCKED =>
                    Decoder_Lock <= '1';
                    Sync_Error <= '0';
                    Word_Counter <= Word_Counter + 1; -- Count data words passed

                    Data_T3 <= Data_Lock and Data_T1;

                    if(Data_T3(Sync_Transition_Location) = '0') then
                        Sync_Error_Counter <= Sync_Error_Counter + 1;
                        Sync_Error <= '1';
                        Data_Out <= (others => '0');
                        Data_Header := "010";
                    else
                        --Change to P2!!!
                        Data_Temp := Data_P3(63 downto 0);
                        Data_Header := Data_P3(66 downto 64);
                    end if;

                    Data_Valid_Out <= Data_Valid_P3;

                    if (Data_Header(2) = '1') then -- Read inversion bit
                        Data_Out(63 downto 0) <= not(Data_Temp(63 downto 0));
                    else
                        Data_Out(63 downto 0) <= Data_Temp(63 downto 0);
                    end if;
                    Data_Out(66 downto 64) <= Data_Header;

                    if (Sync_Error_Counter > 14) then -- Rest error counter after 16 errors
                        Decoder_Lock <= '0';
                        Sync_Error_Counter <= 0;
                    end if;

                    if (Word_Counter > 63) then -- Reset word and error counters after 64 passed words
                        Word_Counter <= 1;
                        Sync_Error_Counter <= 0;
                    end if;
            end case;
        end if;
    end process output;

end architecture Decoding;
