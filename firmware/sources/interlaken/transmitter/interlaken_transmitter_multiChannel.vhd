library ieee; 
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library work;
use work.interlaken_package.all;
library XPM;
use xpm.vcomponents.all;

entity Interlaken_Transmitter_multiChannel is
    generic(
         BurstMax     : positive;      -- Configurable value of BurstMax
         BurstShort   : positive;      -- Configurable value of BurstShort
         PacketLength : positive;      -- Configurable value of PacketLength
         Lanes        : positive    -- Configurable value of Transmission channels/Lanes
    );
	port (
	    write_clk         : in std_logic;
		clk               : in std_logic;
		reset             : in std_logic;
		
		TX_Data_In 	    : in slv_64_array(0 to Lanes-1);
		TX_Data_Out     : out  slv_67_array(0 to Lanes-1);                -- Data ready to transmit
		
		TX_SOP        	: in std_logic;     -- Start of Packet
		TX_EOP_Valid_Total 	: in std_logic_vector(f_log2(Lanes)+2 downto 0);      -- Valid bytes packet contains
		TX_EOP        	: in std_logic;      -- End of Packet

		TX_Gearboxready : in std_logic_vector(Lanes-1 downto 0);
		TX_Startseq     : in std_logic_vector(Lanes-1 downto 0);
		
		TX_FlowControl	: in std_logic_vector(15 downto 0); --slv_16_array(0 to Lanes-1);                  -- Flow control data (yet unutilized)
		RX_prog_full    : in slv_16_array(0 to Lanes-1);
		
		TX_FIFO_Write_Data : in std_logic;
		TX_FIFO_prog_full  : out std_logic;
		TX_FIFO_Full       : out std_logic;
		TX_FIFO_Empty      : out std_logic;

		Link_up         : in std_logic_vector(Lanes-1 downto 0);                                 -- Checks if Decoder and descrambler are in lock (currently only 1 channel)
		FIFO_Valid      : out std_logic;
		FIFO_Read_Burst : out slv_1_array(0 to Lanes-1);
		TX_valid_out    : out slv_1_array(0 to Lanes-1)
		
		
	);
end entity Interlaken_Transmitter_multiChannel;

architecture Transmitter of Interlaken_Transmitter_multiChannel is

    signal TX_FIFO_Read_Data : std_logic;
    signal TX_FIFO_Read_Data_Lane : std_logic_vector(Lanes-1 downto 0);
    signal TX_FIFO_Read_Count, TX_FIFO_Write_Count : std_logic_vector(4 downto 0);
    signal TX_FIFO_prog_empty : std_logic;
    signal Data_FIFO_In : std_logic_vector(TX_Data_In(0)'length+TX_EOP_Valid_Total'length+1 downto 0);
    signal Data_FIFO_Out : std_logic_vector(TX_Data_In(0)'length+TX_EOP_Valid_Total'length+1 downto 0);
    signal Data_Burst_In_s : slv_69_array(0 to Lanes-1);
    
    signal TX_Lane_Data_Out : slv_67_array(0 to Lanes-1);
  --  signal Tx_Data_Out_s : slv_64_array(0 to Lanes-1);
    signal TX_FIFO_Empty_s : std_logic;
   
    signal FIFO_Read_Burst_s : slv_1_array(0 to Lanes-1);
	
	signal TX_Enable : std_logic;
	signal TX_FIFO_dout_valid : std_logic;
    signal TX_Lane0_Data, TX_Lane1_Data, TX_Lane2_Data, TX_Lane3_Data  : std_logic_vector(66 downto 0);
    
    signal TX_EOP_Valid_Lanes : slv_3_array(0 to Lanes-1);
    signal Channel_EOP, Channel_SOP, Channel_send_idle  : std_logic_vector((Lanes-1) downto 0);
    --signal Data_Burst_in_0, Data_Burst_in_1, Data_Burst_in_2, Data_Burst_in_3 : std_logic_vector(69 downto 0);
    
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



	
--	TX_Data_Out(275 downto 207) <= TX_Lane_Data_out(3)(66 downto 0);
--	TX_Data_Out(206 downto 138)
--	TX_Data_Out(137 downto 69)
--	TX_Data_Out(68 downto 0)
        
--    TX_Enable <= '1';
    
--    FIFO_Transmitter : TX_FIFO
--    port map (
--        rst             => Reset,
--        wr_clk          => write_clk,
--        rd_clk          => clk,
--        din             => Data_FIFO_In,
--        wr_en           => TX_FIFO_Write_Data,
--        rd_en           => TX_FIFO_Read_Data,
--        dout            => Data_Burst_In,
--        full            => TX_FIFO_Full,
--        empty           => TX_FIFO_Empty,
--        rd_data_count   => TX_FIFO_Read_Count,
--        wr_data_count   => TX_FIFO_Write_Count,
--        prog_full       => TX_FIFO_prog_full,
--        prog_empty      => TX_FIFO_prog_empty,
--        valid           => TX_FIFO_dout_valid
--    );
 

  ------ Xpm FIFO asynchronious ------
xpm_fifo_async_inst : xpm_fifo_async
  generic map (
    
    FIFO_MEMORY_TYPE    => "block",    -- auto, block, distributed, ultra
    ECC_MODE            => "no_ecc",   -- error correction encoding
    RELATED_CLOCKS      => 0,          -- Specifies if wr and rd clocks have the same source (despite different frequencies)
    FIFO_WRITE_DEPTH    => 1024,   --69,
    WRITE_DATA_WIDTH    => TX_Data_In(0)'length+TX_EOP_Valid_Total'length+2,   --32,
    WR_DATA_COUNT_WIDTH => 5,   --4
    PROG_FULL_THRESH    => 28*Lanes,   --28,
    FULL_RESET_VALUE    => 1,          -- controls enablement of ecc on all ports of memory primitive
    READ_MODE           => "std",
    FIFO_READ_LATENCY   => 1,          -- Number of output register stages in the read data path
    READ_DATA_WIDTH     => TX_Data_In(0)'length+TX_EOP_Valid_Total'length+2,   --32,
    RD_DATA_COUNT_WIDTH => 5,   --12,
    PROG_EMPTY_THRESH   => 4,    --4,
    DOUT_RESET_VALUE    => "0",
    CDC_SYNC_STAGES     => 2,
    WAKEUP_TIME         => 0           -- Disable sleep
  )
  
  port map (
  
    sleep           => '0',
    rst             => Reset,
    wr_clk          => write_clk,
    wr_en           => TX_FIFO_Write_Data,
    din             => Data_FIFO_In,
    full            => TX_FIFO_Full,
    rd_clk          => clk,
    rd_en           => TX_FIFO_Read_Data,
    dout            => Data_FIFO_Out,
    empty           => TX_FIFO_Empty_s,
    prog_full       => TX_FIFO_prog_full, 
    wr_data_count   => TX_FIFO_Write_Count,
    prog_empty      => TX_FIFO_prog_empty,
    rd_data_count   => TX_FIFO_Read_Count,
    injectsbiterr   => '0',
    injectdbiterr   => '0',
    overflow        => open,
    wr_rst_busy     => open,
    underflow       => open,
    rd_rst_busy     => open,
    sbiterr         => open,
    dbiterr         => open
  );


TX_FIFO_Read_Data <= TX_FIFO_Read_Data_Lane(0); -- or TX_FIFO_Read_Data_Lane(1) or TX_FIFO_Read_Data_Lane(2) or TX_FIFO_Read_Data_Lane(3);

----- Instantiation of different transmission Lanes. -----   
    g_lanes: for i in 0 to Lanes-1 generate      -- Generate TX Lanes (Transmission Channels)
        signal Data_Valid_Burst_Out : std_logic;
--        signal Gearbox_Count : integer range 0 to 67;
--        signal Gearbox_Pause : std_logic;
--        signal GearboxSignal : std_logic;
    begin
    
    
    TX_FIFO_Read_Data_Lane(i) <= FIFO_Read_Burst_s(i)(0) and Link_up(i);
    Data_FIFO_In <= TX_SOP & TX_EOP & TX_EOP_Valid_Total & TX_Data_In(i)(63 downto 0);
    TX_FIFO_Empty <= TX_FIFO_Empty_s;
    TX_FIFO_dout_valid <=   (not TX_FIFO_Empty_s) and TX_FIFO_Read_Data;
    
    --Data_Burst_in(i) <= ;

    
    lane_tx: entity work.interlaken_transmitter
    generic map (          
        BurstMax        => BurstMax,          -- Configurable value of BurstMax
        BurstShort      => BurstShort,        -- Configurable value of BurstShort
        PacketLength    => PacketLength,      -- Configurable value of PacketLength
        Lanes           => Lanes,              -- Number of Transmission Lanes
        LaneNumber      => i                  -- Current Lane (TX channel)
    )
    port map  (
        write_clk        => write_clk,         
        clk              => clk,          
        reset            => Reset,         

        Data_Burst_In    => Data_Burst_in_s(i)(63 downto 0),         
        TX_Lane_Data_Out => TX_Data_Out(i)(66 downto 0),     
       -- TX_Data_Out(((67*Lanes)-1) downto ((67*i)))      => Tx_Data_Out(i)(66 downto 0),     
        TX_SOP           => Channel_SOP(i),         
        TX_EOP           => Channel_EOP(i), 
        Channel_send_idle => Channel_send_idle(i),         
        TX_EOP_Valid     => TX_EOP_Valid_Lanes(i)(2 downto 0),-- Data_Burst_in(i)(66 downto 64),       
        TX_Channel       => std_logic_vector(to_unsigned(i, 8)), -- Transfer channel number i to binairy number         
        TX_Gearboxready  => TX_Gearboxready(i),  
        TX_Startseq      => TX_Startseq(i),      

        TX_FlowControl   => TX_Flowcontrol ,          -- Flow Control is yet unutilized
        RX_prog_full     => RX_prog_full(i)(15 downto 0),     

        FIFO_Write_Data  => TX_FIFO_Write_Data,    
        FIFO_prog_full   => TX_FIFO_prog_full,
        FIFO_Full        => TX_FIFO_Full,     
        Link_up          => Link_up,          
        TX_valid_out     => TX_valid_out(i)(0),   
        FIFO_Valid       => TX_FIFO_dout_valid,
        FIFO_Read_Burst  => FIFO_Read_Burst(i)(0),
        FIFO_Empty       => TX_FIFO_Empty_s,   
        FIFO_Write_Count => TX_FIFO_Write_Count,
        FIFO_Read_Count  => TX_FIFO_Read_Count
        
    );
    
	end generate;

process(Data_FIFO_Out)
 variable fifo_SOP, fifo_EOP: std_logic;
 variable fifo_EOP_Valid, fifo_EOP_Valid1: std_logic_vector(f_log2(Lanes)+2 downto 0);
 constant ZEROS: std_logic_vector(f_log2(Lanes)+2 downto 0) := (others => '0');
 variable TX_EOP_Valid_Lanes_tmp: std_logic_vector(f_log2(Lanes)+2 downto 0);
begin
  fifo_SOP:= Data_FIFO_Out(Data_FIFO_Out'length-1);
  fifo_EOP:= Data_FIFO_Out(Data_FIFO_Out'length-2);
  fifo_EOP_Valid := Data_FIFO_Out(Data_FIFO_Out'length-3 downto Data_FIFO_Out'length-2-fifo_EOP_Valid'length);
  fifo_EOP_Valid1 := fifo_EOP_Valid - 1; 
  for i in 0 to Lanes-1 loop
    if fifo_EOP_Valid1(fifo_EOP_Valid1'high downto 3) = std_logic_vector(to_unsigned(i, f_log2(Lanes))) then -- Valid in # of bits corresponding to # of channel
     TX_EOP_Valid_Lanes(i) <= fifo_EOP_Valid(2 downto 0);
     Channel_EOP(i) <= fifo_EOP;
     Channel_send_idle(i) <= '0';
    else
     Channel_send_idle(i) <= fifo_EOP;
     Channel_EOP(i) <= '0';
    end if;
    
    if i = 0 then
      Channel_SOP(i) <= fifo_SOP;
    else
      Channel_SOP(i) <= '0';
    end if;
    -----
    --if fifo_EOP_Valid > i*8-1 or fifo_EOP_Valid = ZEROS then
    --  TX_EOP_Valid_Lanes(i) <= "000";
    --  Channel_send_idle(i) <= '0';
    --elsif fifo_EOP_Valid > 0 and fifo_EOP_Valid <= i*8 then
    --  TX_EOP_Valid_Lanes(i) <= "000";
    --  Channel_send_idle(i) <= '1';
    --else 
    --  Channel_send_idle(i) <= '0';
    --  TX_EOP_Valid_Lanes_tmp := (fifo_EOP_Valid-std_logic_vector(to_unsigned(i*8, f_log2(Lanes)+3)));
    --  TX_EOP_Valid_Lanes(i) <= TX_EOP_Valid_Lanes_tmp(2 downto 0);
    --  
    --end if;
  end loop;
end process; 
	
end architecture Transmitter;
