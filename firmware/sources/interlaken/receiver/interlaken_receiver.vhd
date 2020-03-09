library ieee;
use ieee.std_logic_1164.all;
use work.interlaken_package.all;
use work.axi_stream_package.ALL;

entity Interlaken_Receiver is
    generic (
        PacketLength  : positive;
        LaneNumber    : integer       -- Current Lane -- @suppress "Unused generic: LaneNumber is not used in work.Interlaken_Receiver(Receiver)"
    );
    port (
        clk   		    : in std_logic;
        reset 		    : in std_logic;
		RX_Data_In 	: in std_logic_vector(66 downto 0);
        RX_Datavalid : in std_logic;
        m_axis      : out axis_64_type;
        m_axis_tready : in std_logic;
		Flowcontrol     : out std_logic_vector(15 downto 0);
        Descrambler_lock : out std_logic;
        Decoder_Lock : out std_logic;
        Channel : out  std_logic_vector(7 downto 0);
        Bitslip         : out std_logic;
        HealthLane : out std_logic;
        HealthInterface: out std_logic
	);
end entity Interlaken_Receiver;

architecture Receiver of Interlaken_Receiver is
    
    signal Data_Meta_Out : std_logic_vector(66 downto 0);
    signal Data_Descrambler_Out : std_logic_vector(66 downto 0);
    signal Data_valid_Meta_out : std_logic;
    signal Data_Decoder_Out : std_logic_vector(66 downto 0);
    signal Data_valid_decoder_out : std_logic;
    signal Data_valid_Descrambler_out : std_logic;
    signal Error_BadSync : std_logic;           --todo add to axi stream chunk error -- @suppress "signal Error_BadSync is never read"
    signal Error_StateMismatch : std_logic;     --todo add to axi stream chunk error -- @suppress "signal Error_StateMismatch is never read"
    signal Error_NoSync : std_logic;            --todo add to axi stream chunk error -- @suppress "signal Error_NoSync is never read"
    signal Error_Decoder_Sync : std_logic;      --todo add to axi stream chunk error -- @suppress "signal Error_Decoder_Sync is never read"
    signal CRC32_Error_meta : std_logic;
    
begin
    
    Deframing_Burst : entity work.Burst_Deframer
        port map (
            Clk => clk,
            Reset => reset,
            Data_In => Data_Meta_Out,
            Data_Valid_In => Data_valid_Meta_out,
            Channel => Channel,
            CRC32_Error_meta => CRC32_Error_meta,
            CRC24_Error => open,
            Flowcontrol => Flowcontrol,
            m_axis => m_axis,
            m_axis_tready => m_axis_tready
        
    );

    Deframing_Meta : entity work.Meta_Deframer
        port map (
            Clk => clk,
            Reset => reset,
            Data_In => Data_Descrambler_Out,
            Data_Out => Data_Meta_Out,
            CRC32_Error => CRC32_Error_meta,
            Data_Valid_In => Data_valid_Descrambler_out,
            Data_Valid_Out => Data_valid_Meta_out,
            HealthLane => HealthLane,
            HealthInterface => HealthInterface
        );

    Descrambler : entity work.Descrambler
        generic map (
            PacketLength => PacketLength
        )
        port map (
            Clk => clk,
            Reset => reset,
            Data_In => Data_Decoder_Out,
            Data_Out => Data_Descrambler_Out,
            Lane_Number => "0001",
            Data_Valid_In => Data_valid_decoder_out,
            Data_Valid_Out => Data_valid_Descrambler_out,
            Lock => Descrambler_lock,
            Error_BadSync => Error_BadSync,
            Error_StateMismatch => Error_StateMismatch,
            Error_NoSync => Error_NoSync
        );
        
    Decoder : entity work.Decoder
        port map (
            Clk => clk,
            Reset => reset,
            Data_In => RX_Data_In,
            Decoder_En => '1',
            Data_Valid_In => RX_Datavalid,
            Data_Valid_Out => Data_valid_decoder_out,
            Data_Out => Data_Decoder_Out,
            Decoder_Lock => Decoder_Lock,
            Sync_Error => Error_Decoder_Sync,
            Bitslip => Bitslip
        );

end architecture Receiver;
