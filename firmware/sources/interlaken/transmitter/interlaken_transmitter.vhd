library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.interlaken_package.all;
use work.axi_stream_package.ALL;

entity Interlaken_Transmitter is
    generic(
        BurstMax      : positive;      -- Configurable value of BurstMax
        BurstShort    : positive;      -- Configurable value of BurstShort
        PacketLength  : positive;      -- Configurable value of PacketLength
        Lanes : positive;
        LaneNumber : natural 
    );
    port (
        clk   : in std_logic;
        reset : in std_logic;
        TX_Lane_Data_Out : out std_logic_vector (66 downto 0);       -- Data ready to transmit
        TX_Gearboxready : in std_logic;
		FlowControl	: in std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
        HealthLane : in std_logic;
        HealthInterface : in std_logic;
		s_axis      : in axis_64_type;
        s_axis_tready : out std_logic;
        insert_burst_idle : in std_logic;
        insert_burst_sop  : in std_logic;
        insert_burst_eop  : in std_logic
        );
        
end entity Interlaken_Transmitter;

architecture Transmitter of Interlaken_Transmitter is

    signal Data_Burst_Out : std_logic_vector(66 downto 0);
    signal Data_Meta_Out : std_logic_vector(66 downto 0);
    signal meta_tready : std_logic;
    signal Data_Scrambler_Out : std_logic_vector(66 downto 0);
    signal Gearbox_Pause : std_logic;
    signal TX_Enable : std_logic;
    signal LaneNumber_s : std_logic_vector (3 downto 0);
    
    

begin
	LaneNumber_s <= std_logic_vector(to_unsigned(LaneNumber, 4));
    TX_Enable <= '1';
    
    
	Framing_Burst : entity work.Burst_Framer  -- Define the connections of the Burst component
        generic map (
            BurstMax => BurstMax,
            BurstShort => BurstShort,
            Lanes => Lanes
        )
        port map (
            clk => clk,
            reset => reset,
            Data_out => Data_Burst_Out,
            FlowControl => FlowControl,
            meta_tready => meta_tready,
            Gearboxready => Gearbox_Pause,
            s_axis => s_axis,
            s_axis_tready => s_axis_tready,
            insert_burst_idle => insert_burst_idle,
            insert_burst_sop => insert_burst_sop,
            insert_burst_eop => insert_burst_eop
        );

    Framing_Meta : entity work.Meta_Framer -- Define the connections of the Metaframing component
        generic map (
            PacketLength => PacketLength
        )
        port map (
            clk               => clk,
            reset             => reset,
            TX_Enable         => TX_Enable,
            HealthLane        => HealthLane,
            HealthInterface   => HealthInterface,
		
		Data_In           => Data_Burst_Out,
            Data_Out          => Data_Meta_Out,--TX_Data_Out,
            Gearboxready      => Gearbox_Pause,
            FIFO_read         => meta_tready
        );

    Scrambling : entity work.Scrambler
        port map (
            Clk => clk,
            Scram_Rst => reset,
            Data_In => Data_Meta_Out,
            Data_Out => Data_Scrambler_Out,
            LaneNumber => LaneNumber_s,
            Scrambler_En => '1',
            Gearboxready => Gearbox_Pause
        );

    Encoding : entity work.Encoder
        port map (
            Clk             => clk,
            Data_In         => Data_Scrambler_Out,
            Data_Out        => TX_Lane_Data_Out,
            Encoder_En      => '1',
            Encoder_Rst     => reset,
            Gearboxready    => Gearbox_Pause
        );

    Gearbox_Pause <= TX_Gearboxready ;
    
end architecture Transmitter;
