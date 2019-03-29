library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Meta_Deframer is
    port(
        Clk              : in std_logic;                     -- Clock input
        Reset		     : in std_logic;					 -- Reset decoder
        
        Data_In          : in std_logic_vector(66 downto 0); -- Data input
        Data_Out         : out std_logic_vector(66 downto 0);-- Decoded 64-bit output
        
        --Data_Control_In  : in std_logic;                     --	Indicates whether the word is data or control
        --Data_Control_Out : out std_logic;                    --	Indicates whether the word is data or control
        
        CRC32_Error      : out std_logic;
        
        Data_Valid_In    : in std_logic;
        Data_Valid_Out   : out std_logic
    );
end entity Meta_Deframer;

architecture Deframing of Meta_Deframer is
    type state_type is (IDLE, CRC);
    signal pres_state, next_state : state_type;
    
    signal Packet_Counter : integer range 0 to 60;
    signal Data_P1, Data_P2 : std_logic_vector(63 downto 0);
    
    -- Diagnostic word related signals
    signal Diagnostic_Error : std_logic := '0';         -- In case diagnostic word disappeared
    signal CRC32_Value : std_logic_vector(31 downto 0) := (others => '0'); -- CRC-32 value received
    signal HealthLane, HealthInterface : std_logic := '0';     -- Health status bits
    
    -- CRC-32 related
    signal CRC32_In  : std_logic_vector(63 downto 0);   -- Data transmitted to CRC-32
    signal CRC32_Out : std_logic_vector(31 downto 0);   -- Calculated CRC-32 which returns
    --signal CRC32_En  : std_logic;                       -- Indicate the CRC-32 the data is valid
    signal CRC32_Rst : std_logic;                       -- CRC-32 reset
    signal CrcCalc   : std_logic;                       -- Calculate the CRC-32
    signal CRC32_Check1, CRC32_Check2, CRC32_Check3 : std_logic := '0'; -- Pipeline for CRC check 
    signal CRC32_Good : std_logic;                      -- CRC value is checked and valid
    
    -- Constants
    constant SYNCHRONIZATION : std_logic_vector(63 downto 0) := X"78f6_78f6_78f6_78f6";  -- synchronization framing layer control word
    constant DIAGNOSTIC : std_logic_vector(63 downto 34) := "011001"&X"000000";
    constant META_TYPE_SYNCHRONIZATION: std_logic_vector(4 downto 0) := "11110";
    constant META_TYPE_SCRAM_STATE: std_logic_vector(4 downto 0) := "01010";
    constant META_TYPE_SKIP_WORD: std_logic_vector(4 downto 0) := "01010";
    constant META_TYPE_DIAGNOSTIC: std_logic_vector(4 downto 0) := "11001";


    
    component CRC_32 -- Add the CRC-32 component
        generic
        (
            Nbits     : positive := 64;
            CRC_Width : positive := 24; 
            G_Poly    : Std_Logic_Vector := X"1EDC_6F41"; 
            G_InitVal : std_logic_vector :=X"FFFF_FFFF"
        );
        port
        (
            CRC   : out std_logic_vector(CRC_Width-1 downto 0);
            Calc  : in  std_logic;
            Clk   : in  std_logic;
            DIn   : in  std_logic_vector(Nbits-1 downto 0);
            Reset : in  std_logic
        );
    end component CRC_32;
begin
        
    CRC_32_Encoding : CRC_32 -- Define the connections of the CRC-24 component to the Burst component and generics
    generic map
    (
        Nbits       => 64,
        CRC_Width   => 32,
        G_Poly      => X"1EDC_6F41", --Test with CRC-32 (Interlaken-32 : X"1EDC_6F41")
        G_InitVal   => X"FFFF_FFFF"
    )
    port map
    (
        Clk     => Clk,
        DIn     => CRC32_In,
        CRC     => CRC32_Out,
        Calc    => CrcCalc,
        Reset   => CRC32_Rst
    );
    
    CrcCalc <= Data_valid_In;
    
    Meta_Deframing : process (clk, reset) is
    begin
        if reset = '1' then
            Data_Out(63 downto 0) <= (others => '0');
            Data_Out(66 downto 64) <= "010";
            Data_Valid_Out <= '0';
        elsif rising_edge(clk) then
            Data_Valid_Out <= '0';
            if(Data_Valid_in = '1') then
                Data_Valid_Out <= '1';
                Data_Out(66 downto 64) <= Data_In(66 downto 64);
                Data_Out(63 downto 0) <= Data_In(63 downto 0);
                if (Data_In(65 downto 64) = "10" and Data_In(63) = '0')then
                    Data_Out(63 downto 0) <= (others => '0');
                    Data_Valid_Out <= '0';
                end if;
            end if;
        end if;
    end process Meta_Deframing;
    
--    Burst_Deframing : process (clk, reset) is
--    begin
--        if reset = '1' then
--            Data_Test <= (others => '0');
--            Data_Control_Out <= '0';
--            Data_Valid_Out <= '0';
--        elsif rising_edge(clk) then
--            Data_Valid_Out <= '1';
--            if (Data_Control_In = '1' and Data_In(63) = '0')then
--                Data_Out <= (others => '0');
--                Data_Control_Out <= '1';
--                Data_Valid_Out <= '0';
--            elsif (Data_Control_In = '1' and Data_In(63) = '1') then
--                Data_Out <= Data_In;
--                Data_Control_Out <= '1';
--            else
--                Data_Out <= Data_In;
--                Data_Control_Out <= '0';
--            end if;
--        end if;
--    end process Burst_Deframing;
    


    crc_check : process (pres_state, clk)
    begin
        if (Reset = '1') then
            Data_P1 <= (others => '1');
            Data_P2 <= (others => '1');
            CRC32_Rst <= '0';
            CRC32_Error <= '0';
            CRC32_Good <= '0';
        elsif rising_edge(clk) then
            CRC32_Rst <= '0';
            CRC32_Error <= '0';
            CRC32_Good <= '0';
            CRC32_Check1 <= '0'; --default
            if(Data_valid_in = '0' and CRC32_Check1 = '1') then
                CRC32_Check1 <= '1';
                CRC32_Check2 <= '0';
            else
                CRC32_Check2 <= CRC32_Check1; --pipeline
            end if;
            CRC32_Check3 <= CRC32_Check2; --pipeline
            if (CRC32_Check3 = '1') then
                if(CRC32_Out /= CRC32_Value) then
                    CRC32_Error <= '1';
                else
                    CRC32_Good <= '1';

                end if;
            end if;
        
            if(Data_valid_in = '1') then
                Data_P2 <= Data_P1;
                Data_P1 <= Data_In(63 downto 0);
                

                
                CRC32_In <= Data_In(63 downto 0);    
                Packet_Counter <= Packet_Counter + 1;
                                        
                --if (Data_In(65 downto 58) = "10"&"0"&META_TYPE_SYNCHRONIZATION) then   -- L: previous:  
                if (Data_In(65 downto 0) = "10"&SYNCHRONIZATION)   then 
                    CRC32_Rst <= '1';
                    Packet_Counter <= 1;
                    pres_state <= CRC;
                end if;
                
                
                --if(Packet_Counter = 23) then
                --if(Data_In(65 downto 58) = "10"&"0"&META_TYPE_DIAGNOSTIC ) then  -- L: to test: 
                if(Data_In(65 downto 34) = "10"&DIAGNOSTIC ) then
                    Diagnostic_Error <= '0';
                    CRC32_Value <= Data_In(31 downto 0);
                    CRC32_In(31 downto 0)  <= (others => '0'); -- CRC was generated with field padded with zeros   
                    HealthLane <= Data_In(33); 
                    HealthInterface <= Data_In(32);
                    pres_state <= IDLE; 
                    CRC32_Check1 <= '1';
                --    else
                --        Diagnostic_Error <= '1';
                --        CRC32_Value <= (others => '0');
                --        CRC32_In(63 downto 0) <= (others => '0');
                end if;
                --end if;
            
            end if;
        end if;
    end process;
	
end architecture Deframing;
