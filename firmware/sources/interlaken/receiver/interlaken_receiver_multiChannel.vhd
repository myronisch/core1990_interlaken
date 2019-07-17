library ieee; 
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library XPM;
use xpm.vcomponents.all;
use work.interlaken_package.all;
library work;

entity Interlaken_Receiver_multiChannel is
    generic (
        PacketLength     : positive;
        Lanes            : positive       -- Configurable value of Transmission channels/Lanes
    );
	port (
	    fifo_read_clk	 : in std_logic;
		clk   		     : in std_logic;
		reset 		     : in std_logic;
		
		RX_Data_In 	     : in std_logic_vector((67*Lanes)-1 downto 0); 
		RX_Data_Out      : out std_logic_vector((64*Lanes)-1 downto 0);       -- Data ready to transmit
		
		RX_SOP        	 : out std_logic; --std_logic_vector(Lanes-1 downto 0);            -- Start of Packet
		RX_EOP_Valid 	 : out std_logic_vector(2 downto 0); --std_logic_vector(f_log2(Lanes)+2 downto 0);         -- Valid bytes packet contains
		RX_EOP        	 : out std_logic; --std_logic_vector(Lanes-1 downto 0);                       -- End of Packet
		
		RX_FlowControl	 : out std_logic_vector(15 downto 0);   -- Flow control data (yet unutilized)
		RX_prog_full     : out std_logic_vector(15 downto 0);   -- Indication FIFO of this channel is full
		
		RX_Datavalid     : in std_logic; -- From GTH Transceiver
		
		CRC24_Error       : out std_logic_vector(Lanes-1 downto 0);
		CRC32_Error       : out std_logic_vector(Lanes-1 downto 0);
		
		Decoder_lock      : out std_logic_vector(Lanes-1 downto 0); 
		Descrambler_lock  : out std_logic_vector(Lanes-1 downto 0); 
		
		Data_Descrambler  : out slv_67_array(0 to Lanes-1);
		Data_Decoder      : out slv_67_array(0 to Lanes-1);
		
		RX_FIFO_Valid     : out std_logic;
		RX_FIFO_Full      : out std_logic;
		RX_FIFO_Empty     : out std_logic;
		RX_FIFO_Read      : in std_logic;
		
		RX_Link_Up      : out std_logic_vector(Lanes-1 downto 0);   -- Checks if Decoder and descrambler are in lock 
		Bitslip         : out std_logic_vector(Lanes-1 downto 0)
	);
end entity Interlaken_Receiver_multiChannel;

architecture Receiver of Interlaken_Receiver_multiChannel is

    signal FIFO_Read_Count, FIFO_Write_Count : std_logic_vector(5 downto 0);
    signal FIFO_prog_full, FIFO_prog_empty  : std_logic;
    signal FIFO_Data_Out : std_logic_vector(70 downto 0);
    
    signal RX_FIFO_Data_In : std_logic_vector(RX_Data_Out'length+RX_EOP_Valid'length+1 downto 0);
    signal RX_prog_full_s : std_logic_vector(15 downto 0);

    signal wr_data_count, rd_data_count : std_logic_vector(9 downto 0);
    signal RX_FIFO_Write : std_logic;
    
--    COMPONENT RX_FIFO
--		PORT (
--            rst : IN STD_LOGIC;
--            wr_clk : IN STD_LOGIC;
--            rd_clk : IN STD_LOGIC;
--            din : IN STD_LOGIC_VECTOR(70 DOWNTO 0);
--            wr_en : IN STD_LOGIC;
--            rd_en : IN STD_LOGIC;
--            dout : OUT STD_LOGIC_VECTOR(70 DOWNTO 0);
--            full : OUT STD_LOGIC;
--            empty : OUT STD_LOGIC;
--            prog_full : OUT STD_LOGIC;
--            prog_empty : OUT STD_LOGIC;
--            valid : OUT STD_LOGIC
--		);
--    END COMPONENT;

    -- Lane specific signals --
    signal CRC32_Error_Lane, CRC24_Error_Lane, RX_SOP_Lane, RX_EOP_Lane : std_logic_vector(Lanes-1 downto 0);
    signal RX_EOP_Valid_Lane : std_logic_vector(f_log2(Lanes)+2 downto 0); 
    -- Universal signals (of the total system) --
    signal CRC32_Error_s, CRC24_Error_s, RX_SOP_s, RX_EOP_s: std_logic_vector(Lanes-1 downto 0);
    signal RX_EOP_Valid_s: std_logic_vector(f_log2(Lanes)+2 downto 0); 
    
begin
    
--    RX_prog_full(0) <= not FIFO_prog_full;
--    RX_prog_full(15 downto 1) <= (others => '0');

--    FIFO_Receiver : RX_FIFO
--    port map (
--        rst             => Reset,
--        wr_clk          => clk,
--        rd_clk          => fifo_read_clk,
--        din             => RX_FIFO_Data,
--        wr_en           => RX_FIFO_Write,
--        rd_en           => RX_FIFO_Read,
--        dout            => FIFO_Data_Out,
--        full            => RX_FIFO_Full,
--        empty           => RX_FIFO_Empty,
--        prog_full       => FIFO_prog_full,
--        prog_empty      => FIFO_prog_empty,
--        valid           => RX_FIFO_Valid
--    );
 

    
RX_prog_full_s(0) <= not FIFO_prog_full;
RX_prog_full_s(15 downto 1) <= (others => '0');

  ------ Xpm FIFO asynchronious ------
xpm_fifo_async_inst : xpm_fifo_async
  generic map (
    
    FIFO_MEMORY_TYPE    => "block",    -- auto, block, distributed, ultra
    ECC_MODE            => "no_ecc",   -- error correction encoding
    RELATED_CLOCKS      => 0,          -- Specifies if wr and rd clocks have the same source (despite different frequencies)
    FIFO_WRITE_DEPTH    => 1024,   --69,
    WRITE_DATA_WIDTH    => RX_Data_In'length + RX_EOP_Valid'length + 2,   --32,
    WR_DATA_COUNT_WIDTH => 10,   --4
    PROG_FULL_THRESH    => 28*Lanes,   --28,
    FULL_RESET_VALUE    => 1,          -- controls enablement of ecc on all ports of memory primitive
    READ_MODE           => "std",
    FIFO_READ_LATENCY   => 1,          -- Number of output register stages in the read data path
    READ_DATA_WIDTH     => RX_Data_In'length + RX_EOP_Valid'length + 2,   --32,
    RD_DATA_COUNT_WIDTH => 10,   --12,
    PROG_EMPTY_THRESH   => 4,    --4,
    DOUT_RESET_VALUE    => (others => '0'),
    CDC_SYNC_STAGES     => 2,
    WAKEUP_TIME         => 0           -- Disable sleep
  )
  
  port map (
  
    sleep           => '0',
    rst             => Reset,
    wr_clk          => clk,
    wr_en           => RX_FIFO_Write,
    din             => RX_FIFO_Data_In,
    full            => RX_FIFO_Full,
    rd_clk          => fifo_read_clk,
    rd_en           => RX_FIFO_Read,
    dout            => FIFO_Data_Out,
    empty           => RX_FIFO_Empty,
    prog_full       => FIFO_prog_full, 
    wr_data_count   => wr_data_count,
    prog_empty      => FIFO_prog_empty,
    rd_data_count   => rd_data_count,
    injectsbiterr   => '0',
    injectdbiterr   => '0',
    overflow        => open,
    wr_rst_busy     => open,
    underflow       => open,
    rd_rst_busy     => open,
    sbiterr         => open,
    dbiterr         => open
  );


----- Instantiation of different Receiver Lanes. -----   
    g_lanes: for i in 0 to Lanes-1 generate      -- Generate RX Lanes (Channels)
      signal RX_Channel: std_logic_vector(7 downto 0);

    begin
    RX_Channel <= std_logic_vector(to_unsigned(i, 8));   
   
--    CRC32_Error_Lane(i) <= FIFO_Data_Out(70*(i+1));    
--    CRC24_Error_Lane(i) <= FIFO_Data_Out(69*(i+1));    
--    RX_SOP_Lane(i) <= FIFO_Data_Out(68*(i+1));
--    RX_EOP_Lane(i) <= FIFO_Data_Out(67*(i+1));
--    RX_Data_Out <= FIFO_Data_Out(((64*(i+1))-1) downto (64*i));
    
--    RX_EOP_Valid_Lane((((i+1)*3)-1) downto i*3) <= FIFO_Data_Out(((67*(i+1))-1)  downto (64*(i+1)));

    
    lane_rx: entity work.interlaken_receiver
      generic map ( 
          PacketLength      => PacketLength,
          LaneNumber        => i                  -- Current Lane (RX channel)
      )                     
      port map(                
          fifo_read_clk     =>  fifo_read_clk,
          clk               =>  clk,
          reset             =>  reset,
                            
          RX_Data_In        => RX_Data_In(((i*67)-1) downto (i*67)-(i*67)),
          RX_Data_Out       => RX_Data_Out(((i*64)-1) downto (i*64)-(i*64)), 
                            
          RX_FIFO_Valid     => RX_FIFO_Valid,
                            
          RX_SOP            => RX_SOP_Lane(i),       
          RX_EOP_Valid      => RX_EOP_Valid_Lane((((i+1)*3)-1) downto i*3),
          RX_EOP            => RX_EOP_Lane(i),
          RX_FlowControl    => RX_FlowControl,
          RX_prog_full      => RX_prog_full_s,
          RX_Channel        => RX_Channel,
          RX_Datavalid      => RX_Datavalid, -- ToDo: array or one signal?
                           
          CRC24_Error       => CRC24_Error(i),
          CRC32_Error       => CRC32_Error(i),
          Decoder_lock      => Decoder_lock(i),
          Descrambler_lock  => Descrambler_lock(i),
                           
          Data_Descrambler  => Data_Descrambler(i)(66 downto 0),
          Data_Decoder      => Data_Decoder(i)(66 downto 0),
                            
          RX_FIFO_Full      => RX_FIFO_Full,
          RX_FIFO_Empty     => RX_FIFO_Empty,
          RX_FIFO_Read      => RX_FIFO_Read,
                            
          RX_Link_Up        => RX_Link_Up(i),
                            
          Bitslip           => Bitslip(i)
      );
    end generate;

--process(RX_EOP_Lane, RX_SOP_Lane, RX_EOP_Valid_Lane)
--begin 
--    for i in 0 to Lanes-1 loop

--end process;
    
end architecture Receiver;
