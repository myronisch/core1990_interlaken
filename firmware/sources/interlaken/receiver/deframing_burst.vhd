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

        CRC32_Error_meta : in std_logic;
        CRC24_Error      : out std_logic;
        Flowcontrol      : out std_logic_vector(15 downto 0);
        m_axis           : out axis_64_type;
        m_axis_tready    : in  std_logic
    );
end entity Burst_Deframer;

architecture Deframing of Burst_Deframer is
    signal m_axis_s            : axis_64_type;
    signal Data_P1             : std_logic_vector(66 downto 0);
    signal Data_valid_P1       : std_logic; --Data_valid_P2, Data_valid_P3: std_logic;
    
    signal CRC24_Value_P1      : std_logic_vector(23 downto 0) := (others => '0');
    --signal CRC24_Value_P3      : std_logic_vector(23 downto 0) := (others => '0'); -- CRC-24 value received
    signal SOP_signal          : std_logic;
    --signal SOP_p1              : std_logic;
    signal EOP_signal          : std_logic;
    signal EOP_signal_p1       : std_logic;
    
    signal FlowControl_s        : std_logic_vector(15 downto 0);

    -- CRC-24 relat
    signal CRC24_In            : std_logic_vector(63 downto 0);   -- Data transmitted to CRC-24
    signal CRC24_Out           : std_logic_vector(23 downto 0);   -- Calculated CRC-24 which returns
    signal CRC24_En            : std_logic;                       -- Indicate the CRC-24 the data is valid
    signal CRC24_Rst           : std_logic;                       -- CRC-24 reset
    signal CRC_Check_P1        : std_logic;
    --signal CRC_Check_P3        : std_logic;
    signal truncation          : std_logic;
    signal FramingError        : std_logic;
    signal CRCError            : std_logic;
    signal CRC24_Error_s       : std_logic;
    
    
    --signal CRC24_Good          : std_logic; 
begin

    CRC_24_Encoding : entity work.CRC_24 -- Define the connections of the CRC-24 component to the Burst component and generics
    port map
    (
            CRC => CRC24_Out,
            Calc => CRC24_En,
            Clk => Clk,
            DIn => CRC24_In,
            Reset => CRC_Check_P1
    );
        
    CRC24_Rst <= '1' when Data_In(65 downto 63) = "101" else '0';
    CRC24_In <= Data_In(63 downto 0) when CRC24_Rst = '0' else Data_In(63 downto 24)& x"000000"; --Exclude the CRC field from the control word.
    CRC24_En <= Data_Valid_In; 

    Flowcontrol <= FlowControl_s;

    Burst_Deframing : process (Clk, Reset) is
    	variable EOP_Valid_signal    : std_logic_vector(2 downto 0);
    begin
        if Reset = '1' then
            m_axis_s.tdata <= (others => '0');
            SOP_signal <= '0';
            EOP_signal <= '0';
            EOP_Valid_signal := (others => '0');
            FlowControl_s <= (others => '0');
            m_axis_s.tid <= (others => '0');
            Data_P1 <= (others => '0');
            Data_valid_P1 <= '0';
            truncation <= '0';
            CRCError <= '0';
            FramingError <= '0';
        elsif rising_edge(Clk) then
            if(CRC32_Error_meta = '1' or CRC24_Error_s = '1') then
                CRCError <= '1';
            end if;

            if (m_axis_s.tlast='1') then
                truncation <= '0';
                FramingError <= '0';
                CRCError <= '0';
            end if;

            if(Data_Valid_In ='1' and m_axis_tready = '1') then
            	Data_valid_P1 <= Data_Valid_In;
            	m_axis_s.tdata <= Data_P1(63 downto 0);
            	m_axis_s.tvalid <= '0';
            	m_axis_s.tuser(3) <= truncation;
            	m_axis_s.tuser(2) <= FlowControl_s(0);
            	m_axis_s.tuser(1) <= FramingError; --Combined error signal from Meta/Burst deframing if any
            	m_axis_s.tuser(0) <= CRCError; --Combined error signal from CRC24 and CRC32
                Data_P1 <= Data_In;
            end if;
            if(Data_Valid_In ='1' and m_axis_tready = '0') then
                truncation <= '1';
            end if;
            
            
            if(Data_Valid_In = '1' and Data_In(65 downto 64) = "10") then
                Data_valid_P1 <= '0';
            end if;
            EOP_Valid_signal := "000";
            if (Data_In(65 downto 64) = "10" and Data_Valid_In = '1') then
                FlowControl_s <= Data_In(55 downto 40);
                m_axis_s.tid <= Data_In(39 downto 32); --Channel
                if(Data_In(60) = '1') then
                    EOP_signal <= '1';
                    EOP_Valid_signal := Data_In(59 downto 57);
                end if;

                if (Data_In(61) = '1') then
                    SOP_signal <= '1';
                end if;
            end if;

            if EOP_signal = '1' and m_axis_tready = '1' then
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
            m_axis_s.tvalid <= Data_valid_P1;

        end if;
    end process Burst_Deframing;
    ---------------------------------------------- Control header = "10"                  EOP                  not valid, force end of packet on this output.
    --EOP <= (EOP_signal and not EOP_signal_p1) or ((Data_in(65) and (not Data_in(64))) and Data_in(60)  and not data_valid_P1);
    m_axis_s.tlast <= (EOP_signal and not EOP_signal_p1) or ((Data_In(65) and (not Data_In(64))) and Data_In(60)  and not Data_valid_P1);
    m_axis <= m_axis_s;

    output : process (Clk, Reset) is
    begin
    	if Reset = '1' then
    		CRC24_Error_s <= '0';
    		CRC_Check_P1 <= '0';
    		CRC24_Value_P1 <= (others => '0');
        elsif rising_edge(Clk) then
            if Data_Valid_In = '1' then
            	if CRC_Check_P1 = '1' then
	                if(CRC24_Out /= CRC24_Value_P1) then
	                    CRC24_Error_s <= '1';
	                else
	        			CRC24_Error_s <= '0';
                    end if;
	            end if;
	            
                CRC_Check_P1 <= CRC24_Rst; ---
                if(Data_In(65 downto 63) = "101") then -- Start CRC check on any burst control word. 
                    CRC24_Value_P1 <= Data_In(23 downto 0); -- Copy received CRC-24 value
                end if;
            end if;
        end if;
    end process output;
    
    CRC24_Error <= CRC24_Error_s;

end architecture Deframing;
