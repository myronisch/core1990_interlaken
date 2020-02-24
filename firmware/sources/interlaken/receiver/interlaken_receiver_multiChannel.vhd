library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library XPM;
use xpm.vcomponents.all;
use work.interlaken_package.all;
use work.axi_stream_package.ALL;

entity Interlaken_Receiver_multiChannel is
    generic (
        PacketLength     : positive := 2024;
        Lanes            : positive := 4 ;     -- Configurable value of Transmission channels/Lanes
        CLOCKING_MODE : string;
        RELATED_CLOCKS : integer range 0 to 1;
        FIFO_MEMORY_TYPE : string;
        PACKET_FIFO : string
    );
    port (
        clk   		     : in std_logic;
        reset 		     : in std_logic;
		
		RX_Data_In 	     : in slv_67_array(0 to Lanes-1);
        --RX_FlowControl	 : out std_logic_vector(15 downto 0);   -- Flow control data (yet unutilized)
        RX_Datavalid     : in std_logic_vector(Lanes-1 downto 0); -- From GTH Transceiver
        Bitslip         : out std_logic_vector(Lanes-1 downto 0);
        m_axis_aclk       : in std_logic;
        m_axis            : out axis_64_array_type(0 to Lanes-1);
        m_axis_tready     : in axis_tready_array_type(0 to Lanes-1);
        m_axis_prog_empty : out axis_tready_array_type(0 to Lanes-1);
        Descrambler_lock : out std_logic_vector(Lanes-1 downto 0);
        Decoder_Lock : out std_logic_vector(Lanes-1 downto 0);
        HealthLane : out std_logic_vector(Lanes-1 downto 0);
        HealthInterface: out std_logic;
        Channel : out std_logic_vector(7 downto 0)
    );
end entity Interlaken_Receiver_multiChannel;

architecture Receiver of Interlaken_Receiver_multiChannel is
    --signal FIFO_prog_full  : std_logic;
    --signal RX_FIFO_Data_In : std_logic_vector(RX_Data_Out(0)'length+RX_EOP_Valid_Total'length+ 1 downto 0);
    --signal RX_prog_full_s : std_logic_vector(15 downto 0);

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
    --signal RX_SOP_Lane, RX_EOP_Lane : std_logic_vector(Lanes-1 downto 0);
    --signal RX_EOP_Valid_Lanes : slv_3_array(0 to Lanes-1);
    -- Universal signals (of the total system) --

    --signal RX_EOP_Valid_out : std_logic_vector(f_log2(Lanes)+2 downto 0);
    signal Flowcontrol : std_logic_vector(15 downto 0); --ToDo add to port -- @suppress "signal Flowcontrol is never read"
    signal HealthInterface_s : std_logic_vector(Lanes-1 downto 0);
   
    
    
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

    HealthInterface_procc : process(HealthInterface_s)
    begin
        HealthInterface <= '1';
        for i in 0 to Lanes - 1 loop
            if (HealthInterface_s(i) = '0') then
                HealthInterface <= '0';
            end if;
        end loop;

    end process;

    --RX_prog_full_s(0) <= not FIFO_prog_full;
    --RX_prog_full_s(15 downto 1) <= (others => '0');

    ------ Xpm FIFO asynchronious ------
    --xpm_fifo_async_inst : xpm_fifo_async
    --  generic map (

    --    FIFO_MEMORY_TYPE    => "block",    -- auto, block, distributed, ultra
    --    ECC_MODE            => "no_ecc",   -- error correction encoding
    --    RELATED_CLOCKS      => 0,          -- Specifies if wr and rd clocks have the same source (despite different frequencies)
    --    FIFO_WRITE_DEPTH    => 1024,   --69,
    --    WRITE_DATA_WIDTH    => RX_FIFO_Data_In'length, 
    --    WR_DATA_COUNT_WIDTH => 10,   --4
    --    PROG_FULL_THRESH    => 28*Lanes,   --28,
    --    FULL_RESET_VALUE    => 1,          -- controls enablement of ecc on all ports of memory primitive
    --    READ_MODE           => "std",
    --    FIFO_READ_LATENCY   => 1,          -- Number of output register stages in the read data path
    --    READ_DATA_WIDTH     => RX_FIFO_Data_In'length,   
    --    RD_DATA_COUNT_WIDTH => 10,   --12,
    --    PROG_EMPTY_THRESH   => 4,    --4,
    --    DOUT_RESET_VALUE    => "0",
    --    CDC_SYNC_STAGES     => 2,
    --    WAKEUP_TIME         => 0           -- Disable sleep
    --  )

    --  port map (

    --    sleep           => '0',
    --    rst             => Reset,
    --    wr_clk          => clk,
    --    wr_en           => RX_FIFO_Write,
    --    din             => RX_FIFO_Data_In,
    --    full            => RX_FIFO_Full,
    --    rd_clk          => fifo_read_clk,
    --    rd_en           => RX_FIFO_Read,
    --    dout            => FIFO_Data_Out,
    --    empty           => RX_FIFO_Empty,
    --    prog_full       => FIFO_prog_full, 
    --    wr_data_count   => wr_data_count,
    --    prog_empty      => FIFO_prog_empty,
    --    rd_data_count   => rd_data_count,
    --    injectsbiterr   => '0',
    --    injectdbiterr   => '0',
    --    overflow        => open,
    --    wr_rst_busy     => open,
    --    underflow       => open,
    --    rd_rst_busy     => open,
    --    sbiterr         => open,
    --    dbiterr         => open
    --  );




----- Instantiation of different Receiver Lanes. -----   
    g_lanes: for i in 0 to Lanes-1 generate      -- Generate RX Lanes (Channels)
    --signal RX_Channel: std_logic_vector(7 downto 0);
        signal axis : axis_64_type;
        signal s_axis_aresetn : std_logic;
        signal axis_tready  : std_logic;
      
     

    begin
        --RX_Channel <= std_logic_vector(to_unsigned(i, 8));   

        --    CRC32_Error_Lane(i) <= FIFO_Data_Out(70*(i+1));    
        --    CRC24_Error_Lane(i) <= FIFO_Data_Out(69*(i+1));    
        --    RX_SOP_Lane(i) <= FIFO_Data_Out(68*(i+1));
        --    RX_EOP_Lane(i) <= FIFO_Data_Out(67*(i+1));
        --    RX_Data_Out <= FIFO_Data_Out(((64*(i+1))-1) downto (64*i));

    
    lane_rx: entity work.Interlaken_Receiver
            generic map (
                PacketLength      => PacketLength,
                LaneNumber        => i                  -- Current Lane (RX channel)
            )
            port map(
                clk => clk,
                reset => reset,
                RX_Data_In => RX_Data_In(i)(66 downto 0),
                RX_Datavalid => RX_Datavalid(i),
                m_axis => axis, --: out axis_64_type;
                m_axis_tready => axis_tready, --: in std_logic;
                --fifo_read_clk     =>  fifo_read_clk,
                Flowcontrol => Flowcontrol,
                Descrambler_lock => Descrambler_lock(i),
                Decoder_Lock => Decoder_Lock(i),
                Channel => Channel,
                Bitslip => Bitslip(i),
                HealthLane => HealthLane(i),
                HealthInterface => HealthInterface_s(i)
            );

        s_axis_aresetn <= not reset;

        fifo0:entity work.Axis64Fifo
            generic map (
              
              DEPTH => 2048,
                CLOCKING_MODE => CLOCKING_MODE,
                RELATED_CLOCKS => RELATED_CLOCKS,
                FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
                PACKET_FIFO => PACKET_FIFO
            )
            port map(
                -- axi stream slave
                s_axis_aresetn    => s_axis_aresetn,--: in std_logic;
                s_axis_aclk       => clk,--: in std_logic;
                s_axis            => axis,--: in axis_64_type;
                s_axis_tready     => axis_tready,--: out std_logic;

                -- axi stream master
                m_axis_aclk       => m_axis_aclk,--: in std_logic;
                m_axis            => m_axis(i),--: out axis_64_type;
                m_axis_tready     => m_axis_tready(i),--: in std_logic;

                --Indication that the FIFO contains a block of data (for MUX).
                m_axis_prog_empty => m_axis_prog_empty(i)--: out std_logic
            );
    end generate;

 

--process(RX_EOP_Valid_Lanes)
    --  variable EOP_Valid_out : std_logic_vector(f_log2(Lanes)+2 downto 0);
    --  variable validNumBytes : integer := 0;
    --begin 
    -- for i in 0 to Lanes-1 loop
    --   validNumBytes := validNumBytes + to_integer(unsigned(RX_EOP_Valid_Lanes(i)));
    -- end loop;
    -- 
    -- if ((validNumBytes+1) / (Lanes*8)) = 1 then
    --     EOP_Valid_out := (others => '0');   
    -- elsif validNumBytes > 0 and validNumBytes < 8 then 
    --     EOP_Valid_out := std_logic_vector(to_unsigned(validNumBytes, f_log2(Lanes)+3)); 
    -- elsif validNumBytes > 8 and validNumBytes < 16 then 
    --     EOP_Valid_out := std_logic_vector(to_unsigned((validNumBytes-8), f_log2(Lanes)+3));
    -- elsif validNumBytes > 16 and validNumBytes < 24 then 
    --     EOP_Valid_out := std_logic_vector(to_unsigned((validNumBytes-16), f_log2(Lanes)+3));
    -- elsif validNumBytes > 24 and validNumBytes < 32 then 
    --     EOP_Valid_out := std_logic_vector(to_unsigned((validNumBytes-24), f_log2(Lanes)+3));        
    -- else
    --     EOP_Valid_out := (others => '0');
    -- end if;
    -- RX_EOP_Valid_out <= EOP_Valid_out;
    --end process;

end architecture Receiver;
