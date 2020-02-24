library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.interlaken_package.all;
use work.axi_stream_package.all;

entity Burst_Deframer is
    port(
        Clk              : in std_logic;                     -- Clock input
        Reset		     : in std_logic;					 -- Reset decoder

        Data_In          : in std_logic_vector(66 downto 0); -- Data input
        --Data_Out         : out std_logic_vector(63 downto 0); --Data output

        --SOP              : out std_logic;
        --EOP              : out std_logic;
        --EOP_valid        : out std_logic_vector(2 downto 0);

        Data_Valid_In   : in std_logic;
        --Data_Valid_Out   : out std_logic;                    -- Indicated valid data and enables the fifo write pin

        Channel          : out std_logic_vector(7 downto 0);
        CRC32_Error_meta : in std_logic;
        CRC24_Error      : out std_logic;
        Flowcontrol      : out std_logic_vector(15 downto 0);
        m_axis           : out axis_64_type;
        m_axis_tready    : in  std_logic
    );
end entity Burst_Deframer;

architecture Deframing of Burst_Deframer is
    type state_type is (IDLE, CRC);
    signal pres_state, next_state : state_type;
    signal m_axis_s            : axis_64_type;
    signal Data_P1             : std_logic_vector(66 downto 0);
    signal Data_valid_P1       : std_logic; --Data_valid_P2, Data_valid_P3: std_logic;
    --signal Data_Temp         : std_logic_vector(65 downto 0);
    --signal data_word_reg       : std_logic_vector(65 donwto 0);
    --signal data_word_reg_p1    : std_logic_vector(65 downto 0);
    --signal control_word_reg    : std_logic_vector(1 downto 0);

    ---signal packet_ready        : std_logic;
    ---signal packet_busy         : std_logic;

    signal CRC24_Value_P1      : std_logic_vector(23 downto 0) := (others => '0');
    signal CRC24_Value_P2      : std_logic_vector(23 downto 0) := (others => '0');
    signal CRC24_Value_P3      : std_logic_vector(23 downto 0) := (others => '0'); -- CRC-24 value received
    signal SOP_signal          : std_logic;
    --signal SOP_p1              : std_logic;
    signal EOP_signal          : std_logic;
    signal EOP_signal_p1       : std_logic;
    signal EOP_Valid_signal    : std_logic_vector(2 downto 0);
    signal FlowControl_s        : std_logic_vector(15 downto 0);

    -- CRC-24 relat
    signal CRC24_In            : std_logic_vector(63 downto 0);   -- Data transmitted to CRC-24
    signal CRC24_Out           : std_logic_vector(23 downto 0);   -- Calculated CRC-24 which returns
    signal CRC24_En            : std_logic;                       -- Indicate the CRC-24 the data is valid
    signal CRC24_Rst           : std_logic;                       -- CRC-24 reset
    signal CRC_Check_P1        : std_logic;
    signal CRC_Check_P2        : std_logic;
    signal CRC_Check_P3        : std_logic;
    signal truncation          : std_logic;
    signal FramingError        : std_logic;
    signal CRCError            : std_logic;
    
    
    --signal CRC24_Good          : std_logic; 
begin

    CRC_24_Encoding : entity work.CRC_24 -- Define the connections of the CRC-24 component to the Burst component and generics
            --generic map
            --(
            --    Nbits       => 64,
            --    CRC_Width   => 24,
            --    G_Poly      => X"32_8B63", --Test with CRC-32 (Interlaken-32 : X"1EDC_6F41") -- leo: changed 04C1_1DB7 to 328B63
            --    G_InitVal   => X"FF_FFFF"
            --)
        port map
    (
            CRC => CRC24_Out,
            Calc => CRC24_En,
            Clk => Clk,
            DIn => CRC24_In,
            Reset => CRC24_Rst
        );

    Flowcontrol <= FlowControl_s;

    Burst_Deframing : process (Clk, Reset) is
    begin
        if Reset = '1' then
            --Data_Out <= (others => '0');
            m_axis_s.tdata <= (others => '0');
            --Data_Temp <= (others => '0');
            SOP_signal <= '0';
            EOP_signal <= '0';
            EOP_Valid_signal <= (others => '0');
            FlowControl_s <= (others => '0');
            Channel <= (others => '0');
            Data_P1 <= (others => '0');
            --Data_P2 <= (others => '0');
            --Data_P3 <= (others => '0');
            --Data_valid_P3 <= '0';
            --Data_valid_P2 <= '0';
            Data_valid_P1 <= '0';
            truncation <= '0';
            CRCError <= '0';
            FramingError <= '0';
        elsif rising_edge(Clk) then
            Data_valid_P1 <= Data_Valid_In;

            m_axis_s.tdata <= Data_P1(63 downto 0);
            m_axis_s.tvalid <= '0';
            m_axis_s.tuser(3) <= truncation;
            m_axis_s.tuser(2) <= FlowControl_s(0);
            m_axis_s.tuser(1) <= FramingError; --Combined error signal from Meta/Burst deframing if any
            m_axis_s.tuser(0) <= CRCError; --Combined error signal from CRC24 and CRC32
            --EOP <= EOP_signal;
            --EOP_valid <= EOP_valid_signal;
            --Data_Valid_Out <= '0';
            if(CRC32_Error_meta = '1') then
                CRCError <= '1';
            end if;

            if (m_axis_s.tlast='1') then
                truncation <= '0';
                FramingError <= '0';
                CRCError <= '0';
            end if;

            if(Data_Valid_In ='1' and m_axis_tready = '1') then
                Data_P1 <= Data_In;
            end if;
            if(Data_Valid_In ='1' and m_axis_tready = '0') then
                truncation <= '1';
            end if;
            
            
            if(Data_Valid_In = '1' and Data_In(65 downto 64) = "10") then
                Data_valid_P1 <= '0';
                --data_word_reg <= data_in;
                --data_word_reg_p1 <= data_word_reg;
                --SOP_p1 <= SOP;
                ----EOP_signal <= '0';
            end if;

            if (Data_In(65 downto 64) = "10" and Data_Valid_In = '1') then
                --SOP_signal <= Data_In(61);
                FlowControl_s <= Data_In(55 downto 40);
                Channel <= Data_In(39 downto 32);
                if(Data_In(60) = '1') then
                    EOP_signal <= '1';
                    EOP_Valid_signal <= Data_In(59 downto 57);
                end if;

                if (Data_In(61) = '1') then
                    SOP_signal <= '1';
                end if;
            end if;

            if EOP_signal = '1' then
                EOP_signal <= '0';
                m_axis_s.tkeep <= (others=>'0');
                --EOP_Valid <= (others=>'0');
            end if;

            case EOP_Valid_signal is
                when "000" => m_axis_s.tkeep <="11111111";
                when "001" => m_axis_s.tkeep <="00000001";
                when "010" => m_axis_s.tkeep <="00000011";
                when "011" => m_axis_s.tkeep <="00000111";
                when "100" => m_axis_s.tkeep <="00001111";
                when "101" => m_axis_s.tkeep <="00011111";
                when "110" => m_axis_s.tkeep <="00111111";
                when "111" => m_axis_s.tkeep <="01111111";
                when others => m_axis_s.tkeep <="11111111";
            end case;

            EOP_signal_p1 <= EOP_signal;


            if Data_valid_P1 = '1' then
                --SOP <= SOP_signal;
                m_axis_s.tvalid <= SOP_signal;
                SOP_signal <= '0';

            end if;

            --data_valid_out <= data_valid_P1;
            m_axis_s.tvalid <= Data_valid_P1;

        end if;
    end process Burst_Deframing;
    ---------------------------------------------- Control header = "10"                  EOP                  not valid, force end of packet on this output.
    --EOP <= (EOP_signal and not EOP_signal_p1) or ((Data_in(65) and (not Data_in(64))) and Data_in(60)  and not data_valid_P1);
    m_axis_s.tlast <= (EOP_signal and not EOP_signal_p1) or ((Data_In(65) and (not Data_In(64))) and Data_In(60)  and not Data_valid_P1);
    m_axis <= m_axis_s;

    state_register : process (Clk) is
    begin
        if (rising_edge(Clk)) then
            pres_state <= next_state;
        end if;
    end process state_register;

    state_decoder : process (pres_state, Data_In) is
    begin
        case pres_state is
            when IDLE =>
                if ( Data_In(65 downto 60) = "101110") then --SOP set and EOP not set
                    next_state <= CRC;
                else
                    next_state <= IDLE;
                end if;
            when CRC =>
                if(Data_In(65 downto 64) = "10" and Data_In(61) = '0' and Data_In(60) = '1') then -- End of packet (EOP)
                    next_state <= IDLE;
                elsif(Data_In(65 downto 64) = "10" and Data_In(61) = '1') then -- Repeating start condition (SOP) -> Error
                    next_state <= IDLE;
                else
                    next_state <= CRC;
                end if;
                --    when others =>
                --        next_state <= IDLE;
        end case;
    end process state_decoder;

    output : process (Clk) is
    begin
        if rising_edge(Clk) then
            CRC24_En <= '0';
            CRC24_Rst <= '0';
            --CRC24_Good <= '0';
            --CRC24_Error <= '0';
            m_axis_s.tuser(0) <= '0';
            CRC_Check_P1 <= '0'; ---
            CRC_Check_P2 <= CRC_Check_P1;
            CRC_Check_P3 <= CRC_Check_P2;
            CRC24_Value_P2 <= CRC24_Value_P1;
            CRC24_Value_P3 <= CRC24_Value_P2;

            if CRC_Check_P3 = '1' then
                if(CRC24_Out /= CRC24_Value_P3) then
                    CRC24_Error <= '1';
                    CRCError <= '1';
                else
                    --CRC24_Good <= '1';
                end if;
            end if;
            if Data_Valid_In = '1' then
                CRC24_En <= '1';
                --CRC_Check_P1 <= '0'; 
                CRC24_Rst <= CRC_Check_P1;
                
                
                --case pres_state is
                --when IDLE =>
                --    CRC24_In <= (others => '0');
                --    if (Data_In(65 downto 60) = "101110") then --SOP set and EOP not set
                --        CRC24_In <= Data_In(63 downto 0); 
                --    end if;
                --when CRC =>
                CRC24_In <= Data_In(63 downto 0);
                if(Data_In(65 downto 63) = "101"  and Data_In(61 downto 60) = "01") then -- Only start CRC check on EOP
                    CRC_Check_P1 <= '1';
                    CRC24_Value_P1 <= Data_In(23 downto 0); -- Copy received CRC-24 value
                    CRC24_In(63 downto 32) <= Data_In(63 downto 32); --Change to CRC-length
                    CRC24_In(31 downto 0)  <= (others => '0');
                end if;

            --end case;
            else
                CRC_Check_P1 <= CRC_Check_P1;
            end if;
        end if;
    end process output;

end architecture Deframing;
