library ieee; 
use ieee.std_logic_1164.all;
use work.interlaken_package.all;
library work;

 

entity Interlaken_Transmitter is
    generic(
         BurstMax      : positive;      -- Configurable value of BurstMax
         BurstShort    : positive;      -- Configurable value of BurstShort
         PacketLength  : positive;      -- Configurable value of PacketLength
         Lanes         : positive;      -- Number of Lanes
         LaneNumber    : integer       -- Current Lane
    );
	port (
	    write_clk : in std_logic;
		clk   : in std_logic;
		reset : in std_logic;
		
		Data_Burst_in 	: in std_logic_vector(63 downto 0);
		TX_Lane_Data_Out : out std_logic_vector (66 downto 0);       -- Data ready to transmit
		--TX_Data_Out     : out std_logic_vector(((Lanes*69)-1) downto 0);
		
		TX_SOP        	: in std_logic;                         -- Start of Packet
		TX_EOP_Valid 	: in std_logic_vector(2 downto 0);      -- Valid bytes packet contains
		TX_EOP        	: in std_logic;                         -- End of Packet
		Channel_send_idle : in std_logic;
		TX_Channel    	: in std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
		TX_Gearboxready : in std_logic;
		TX_Startseq     : in std_logic;
		
		
		TX_FlowControl	: in std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
		RX_prog_full    : in std_logic_vector(15 downto 0);
		
		FIFO_Write_Data : in std_logic;
		FIFO_prog_full  : out std_logic;
		FIFO_Full       : out std_logic;
		Link_up         : in std_logic_vector(Lanes-1 downto 0);
		TX_valid_out    : out std_logic;
		
		FIFO_Valid       : in std_logic; --
		FIFO_Read_Burst  : out std_logic;
		FIFO_Empty       : in std_logic;	  
        FIFO_Write_Count : in std_logic_vector(4 downto 0);    -- Depending on TX FIFO's write count data width (default 10)
        FIFO_Read_Count  : in std_logic_vector(4 downto 0)
		
	);
end entity Interlaken_Transmitter;

architecture Transmitter of Interlaken_Transmitter is
    signal FIFO_Read_Data: std_logic;
    --signal FIFO_Read_Count, FIFO_Write_Count : std_logic_vector(4 downto 0);
    --signal FIFO_prog_empty : std_logic;
    
    --signal Data_Input : std_logic_vector (68 downto 0);
    --signal Data_FIFO_In : std_logic_vector (68 downto 0);
    
    --signal Data_Burst_In : std_logic_vector(68 downto 0);
	signal Data_Burst_Out : std_logic_vector(66 downto 0);
	signal Data_Valid_Burst_Out : std_logic;
	signal Data_Control_Burst_Out : std_logic;
	
	signal Data_Control_Meta_Out : std_logic;
	signal Data_Valid_Meta_Out : std_logic;
	signal Data_Meta_Out : std_logic_vector(66 downto 0);
	signal HealthStatus : std_logic_vector(1 downto 0) := "11";  -- TODO: derive this from the actual transceiver (Status bits in the diagnostic word)
	signal FIFO_Read_Meta : std_logic;
	
	signal Data_Control_Scrambler_Out : std_logic;
    signal Data_Valid_Scrambler_Out : std_logic;
	signal Data_Scrambler_Out : std_logic_vector(66 downto 0);
	
	signal Gearbox_Count : integer range 0 to 67;
	signal Gearbox_Pause : std_logic;
	signal GearboxSignal : std_logic;
	--signal FIFO_Empty : std_logic;
	signal TX_Enable : std_logic;
	--signal FIFO_dout_valid : std_logic;
	
	
--    COMPONENT TX_FIFO
--        PORT (
--            rst : IN STD_LOGIC;
--            wr_clk : IN STD_LOGIC;
--            rd_clk : IN STD_LOGIC;
--            din : IN STD_LOGIC_VECTOR(68 DOWNTO 0);
--            wr_en : IN STD_LOGIC;
--            rd_en : IN STD_LOGIC;
--            dout : OUT STD_LOGIC_VECTOR(68 DOWNTO 0);
--            full : OUT STD_LOGIC;
--            empty : OUT STD_LOGIC;
--            rd_data_count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
--            wr_data_count : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
--            prog_full : OUT STD_LOGIC;
--            prog_empty : OUT STD_LOGIC;
--            valid : OUT STD_LOGIC
--        );
--    END COMPONENT;

begin

--    TX_Enable <= '1';
        
--    FIFO_Transmitter : TX_FIFO
--    port map (
--        rst             => Reset,
--        wr_clk          => write_clk,
--        rd_clk          => clk,
--        din             => Data_FIFO_In,
--        wr_en           => FIFO_Write_Data,
--        rd_en           => FIFO_Read_Data,
--        dout            => Data_Burst_In,
--        full            => FIFO_Full,
--        empty           => FIFO_Empty,
--        rd_data_count   => FIFO_Read_Count,
--        wr_data_count   => FIFO_Write_Count,
--        prog_full       => FIFO_prog_full,
--        prog_empty      => FIFO_prog_empty,
--        valid           => FIFO_dout_valid
--    );
    
   -- FIFO_Read_Data <= FIFO_Read_Burst and link_up;
  --  Data_FIFO_In <= TX_SOP & TX_EOP & TX_EOP_Valid & TX_Data_In;
    
    
	Framing_Burst : entity work.Burst_Framer  -- Define the connections of the Burst component
	generic map (
		BurstMax      => BurstMax,
		BurstShort    => BurstShort
	)
	port map (
		Clk           => clk,
		Reset         => Reset,
		TX_Enable     => TX_Enable,
		TX_SOP        => TX_SOP,
		TX_EOP        => TX_EOP,
		Channel_send_idle => Channel_send_idle,
		
		TX_ValidBytes => TX_EOP_Valid,
		TX_FlowControl=> TX_FlowControl,
		RX_prog_full  => RX_prog_full,
		TX_Channel    => TX_Channel,
		
		Data_in           => Data_Burst_In,
		Data_in_valid     => FIFO_Valid,
		Data_out          => Data_Burst_Out,
		Data_valid_out    => Data_Valid_Burst_Out,
		Gearboxready      => Gearbox_Pause,
		
		FIFO_Empty => FIFO_Empty,	
		FIFO_meta => FIFO_Read_Meta,
		FIFO_data => FIFO_Write_Count,
		FIFO_read => FIFO_Read_Burst
	);
	
	Framing_Meta : entity work.Meta_Framer -- Define the connections of the Metaframing component
	generic map (
		PacketLength => PacketLength
	)
	port map (
		Clk               => Clk,
		reset             => Reset,
		TX_Enable         => TX_Enable,
		HealthLane        => HealthStatus(0),
		HealthInterface   => HealthStatus(1),
		
		Data_In           => Data_Burst_Out,
		Data_Out          => Data_Meta_Out,--TX_Data_Out,
		Data_Valid_In     => Data_Valid_Burst_Out,
		Data_Valid_Out    => Data_Valid_Meta_Out,
		Gearboxready      => Gearbox_Pause,
		FIFO_Read         => FIFO_Read_Meta
	);
	
	Scrambling : entity work.Scrambler
	port map (
        Clk               => Clk,
        Scram_Rst         => Reset,
        Data_In           => Data_Meta_Out,
        Data_Out          => Data_Scrambler_Out,
        Lane_Number       => "0001",
        Scrambler_En      => '1',
        Gearboxready      => Gearbox_Pause,
        Data_Valid_In     => Data_Valid_Meta_Out,
        Data_Valid_Out    => Data_Valid_Scrambler_Out
	);
	
	Encoding : entity work.Encoder
	port map (
        Clk             => Clk,
        Data_In         => Data_Scrambler_Out,
        Data_Out        => TX_Lane_Data_Out,
        Data_valid_in   => Data_valid_scrambler_out,
        Data_valid_out  => TX_valid_out,
        Encoder_En      => '1',
        Encoder_Rst     => Reset,
        Gearboxready    => Gearbox_Pause
	);
	
	Gearbox_Pause <= TX_GearboxReady ;--or GearboxSignal;
	
	Gearbox : process(clk, reset, TX_Gearboxready, Gearbox_Count, TX_Startseq)
	begin    
        if reset = '1' then
        elsif(rising_edge(clk)) then
            GearboxSignal <= TX_GearboxReady;
        end if;
    end process Gearbox;	

end architecture Transmitter;
