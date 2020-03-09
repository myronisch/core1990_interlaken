library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;        -- @suppress "Deprecated package" (used for sigasi to recognize - operator with std_logic vector)

use work.interlaken_package.all;

library XPM;
use xpm.vcomponents.all;
use work.axi_stream_package.ALL;

entity Interlaken_Transmitter_multiChannel is
    generic(
        BurstMax         : positive;        -- Configurable value of BurstMax
        BurstShort       : positive;        -- Configurable value of BurstShort
        PacketLength     : positive;        -- Configurable value of PacketLength
        Lanes            : positive :=4;         -- Configurable value of Transmission channels/Lanes
        CLOCKING_MODE    : string := "independent_clock";
        RELATED_CLOCKS   : integer range 0 to 1 := 0;
        FIFO_MEMORY_TYPE : string := "auto";
        PACKET_FIFO      : string := "false"

    );
    port(
        --write_clk         : in std_logic;
        clk             : in  std_logic;
        reset           : in  std_logic;
        --TX_Data_In 	    : in slv_64_array(0 to Lanes-1);
        TX_Data_Out     : out slv_67_array(0 to Lanes - 1); -- Data ready to transmit

        --TX_SOP        	: in std_logic;     -- Start of Packet
        --TX_EOP_Valid_Total 	: in std_logic_vector(f_log2(Lanes)+2 downto 0);      -- Valid bytes packet contains
        --TX_EOP        	: in std_logic;      -- End of Packet

        TX_Gearboxready : in  std_logic_vector(Lanes - 1 downto 0);
        --TX_Startseq     : in  std_logic_vector(Lanes - 1 downto 0);
        FlowControl     : in  slv_16_array(0 to Lanes-1);                  -- Flow control data (yet unutilized)
        --RX_prog_full    : in slv_16_array(0 to Lanes-1);

        --TX_FIFO_Write_Data : in std_logic;
        --TX_FIFO_prog_full  : out std_logic;
        --TX_FIFO_Full       : out std_logic;
        --TX_FIFO_Empty      : out std_logic;

        --Link_up         : in std_logic_vector(Lanes-1 downto 0);                                 -- Checks if Decoder and descrambler are in lock (currently only 1 channel)
        --FIFO_Valid      : out std_logic;
        --FIFO_Read_Burst : out slv_1_array(0 to Lanes-1);
        --TX_valid_out    : out slv_1_array(0 to Lanes-1);

        HealthLane      : in  std_logic_vector(Lanes - 1 downto 0);
        s_axis_aclk     : in  std_logic;
        s_axis          : in  axis_64_array_type(0 to Lanes - 1);
        s_axis_tready   : out axis_tready_array_type(0 to Lanes - 1)
        --s_axis_prog_empty : out axis_tready_array_type(0 to Lanes-1)

    );
end entity Interlaken_Transmitter_multiChannel;

architecture Transmitter of Interlaken_Transmitter_multiChannel is
    signal HealthInterface_s : std_logic;

    --signal TX_FIFO_Read_Data : std_logic;
    --signal TX_FIFO_Read_Data_Lane : std_logic_vector(Lanes-1 downto 0);
    --signal TX_FIFO_Read_Count, TX_FIFO_Write_Count : std_logic_vector(4 downto 0);
    --signal TX_FIFO_prog_empty : std_logic;
    --signal Data_FIFO_In : std_logic_vector(TX_Data_In(0)'length+TX_EOP_Valid_Total'length+1 downto 0);
    --signal Data_FIFO_Out : std_logic_vector(TX_Data_In(0)'length+TX_EOP_Valid_Total'length+1 downto 0);
    --signal Data_Burst_In_s : slv_69_array(0 to Lanes-1);

    --  signal Tx_Data_Out_s : slv_64_array(0 to Lanes-1);
    --signal TX_FIFO_Empty_s : std_logic;
    --signal FIFO_Read_Burst_s : slv_1_array(0 to Lanes-1);
    --signal TX_FIFO_dout_valid : std_logic;
    --signal TX_EOP_Valid_Lanes : slv_3_array(0 to Lanes-1);
    --signal Channel_EOP, Channel_SOP, Channel_send_idle  : std_logic_vector((Lanes-1) downto 0);
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

    HealthInterface_procc : process(HealthLane)
    begin
        HealthInterface_s <= '1';
        for i in 0 to Lanes - 1 loop
            if (HealthLane(i) = '0') then
                HealthInterface_s <= '0';
            end if;
        end loop;

    end process;

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
    --xpm_fifo_async_inst : xpm_fifo_async
    --  generic map (
    --    
    --    FIFO_MEMORY_TYPE => "block", -- auto, block, distributed, ultra
    --    FIFO_WRITE_DEPTH => 1024, --69,
    --    RELATED_CLOCKS => 0, -- Specifies if wr and rd clocks have the same source (despite different frequencies)
    --    WRITE_DATA_WIDTH => TX_Data_In(0)'length+TX_EOP_Valid_Total'length+2, --32,
    --    READ_MODE => "std",
    --    FIFO_READ_LATENCY => 1, -- Number of output register stages in the read data path
    --    FULL_RESET_VALUE => 1, -- controls enablement of ecc on all ports of memory primitive
    --    --USE_ADV_FEATURES => USE_ADV_FEATURES,
    --    READ_DATA_WIDTH => TX_Data_In(0)'length+TX_EOP_Valid_Total'length+2, --32,
    --    CDC_SYNC_STAGES => 2,
    --    WR_DATA_COUNT_WIDTH => 5, --4
    --    PROG_FULL_THRESH => 28*Lanes, --28,
    --    RD_DATA_COUNT_WIDTH => 5, --12,
    --    PROG_EMPTY_THRESH => 4, --4,
    --    DOUT_RESET_VALUE => "0",
    --    ECC_MODE => "no_ecc", -- error correction encoding
    --    WAKEUP_TIME => 0 -- Disable sleep
    --  )
    --  
    --  port map (
    --  
    --    sleep => '0',
    --    rst => reset,
    --    wr_clk => write_clk,
    --    wr_en => TX_FIFO_Write_Data,
    --    din => Data_FIFO_In,
    --    full => TX_FIFO_Full,
    --    prog_full => TX_FIFO_prog_full,
    --    wr_data_count => TX_FIFO_Write_Count,
    --    overflow => open,
    --    wr_rst_busy => open,
    --    --almost_full => almost_full,
    --    --wr_ack => wr_ack,
    --    rd_clk => clk,
    --    rd_en => TX_FIFO_Read_Data,
    --    dout => Data_FIFO_Out,
    --    empty => TX_FIFO_Empty_s,
    --    prog_empty => TX_FIFO_prog_empty,
    --    rd_data_count => TX_FIFO_Read_Count,
    --    underflow => open,
    --    rd_rst_busy => open,
    --    --almost_empty => almost_empty,
    --    --data_valid => data_valid,
    --    injectsbiterr => '0',
    --    injectdbiterr => '0',
    --    sbiterr => open,
    --    dbiterr => open
    --  );

    --TX_FIFO_Read_Data <= TX_FIFO_Read_Data_Lane(0); -- or TX_FIFO_Read_Data_Lane(1) or TX_FIFO_Read_Data_Lane(2) or TX_FIFO_Read_Data_Lane(3);

    ----- Instantiation of different transmission Lanes. -----   
    g_lanes : for i in 0 to Lanes - 1 generate -- Generate TX Lanes (Transmission Channels)
    --        signal Gearbox_Count : integer range 0 to 67;
    --        signal Gearbox_Pause : std_logic;
    --        signal GearboxSignal : std_logic;
        signal axis           : axis_64_type;
        signal m_axis_aresetn : std_logic;
        signal axis_tready    : std_logic;
        

    begin

        --    TX_FIFO_Read_Data_Lane(i) <= FIFO_Read_Burst_s(i)(0) and Link_up(i);
        --    Data_FIFO_In <= TX_SOP & TX_EOP & TX_EOP_Valid_Total & TX_Data_In(i)(63 downto 0);
        --    TX_FIFO_Empty <= TX_FIFO_Empty_s;
        --    TX_FIFO_dout_valid <=   (not TX_FIFO_Empty_s) and TX_FIFO_Read_Data;

        --Data_Burst_in(i) <= ;

        lane_tx : entity work.Interlaken_Transmitter
            generic map(
                BurstMax => BurstMax, -- Configurable value of BurstMax
                BurstShort => BurstShort, -- Configurable value of BurstShort
                PacketLength => PacketLength, -- Configurable value of PacketLength
                LaneNumber => i -- Current Lane (TX channel)
           )
            port map(
                --write_clk => write_clk,
                clk => clk,
                reset => reset,
                TX_Lane_Data_Out => TX_Data_Out(i)(66 downto 0),
                --TX_EOP_Valid     => TX_EOP_Valid_Lanes(i)(2 downto 0),-- Data_Burst_in(i)(66 downto 64),       
                --TX_Channel => std_logic_vector(to_unsigned(i, 8)), -- Transfer channel number i to binairy number         
                TX_Gearboxready => TX_Gearboxready(i),
                --TX_Startseq => TX_Startseq(i),
                FlowControl => FlowControl(i), -- Flow Control is yet unutilized
                HealthLane => HealthLane(i),
                HealthInterface => HealthInterface_s,
                --RX_prog_full => RX_prog_full(i)(15 downto 0),
                --Data_Burst_in => Data_Burst_in,
                --Channel_send_idle => Channel_send_idle,
                s_axis => axis, --: out axis_64_type;
                s_axis_tready => axis_tready --: in std_logic;

                --FIFO_Write_Data  => TX_FIFO_Write_Data,    
                --FIFO_prog_full   => TX_FIFO_prog_full,
                --FIFO_Full        => TX_FIFO_Full,     
                --Link_up => Link_up,
                --TX_valid_out => TX_valid_out(i)(0)

                --FIFO_Valid       => TX_FIFO_dout_valid,
                --FIFO_Read_Burst  => FIFO_Read_Burst(i)(0),
                --FIFO_Empty       => TX_FIFO_Empty_s,   
                --FIFO_Write_Count => TX_FIFO_Write_Count,
                --FIFO_Read_Count  => TX_FIFO_Read_Count

            );

        m_axis_aresetn <= not reset;

        fifo0 : entity work.Axis64Fifo
            generic map(
                DEPTH => 2048,
                CLOCKING_MODE => CLOCKING_MODE,
                RELATED_CLOCKS => RELATED_CLOCKS,
                FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
                PACKET_FIFO => PACKET_FIFO
               
            )
            port map(
                s_axis_aresetn    => m_axis_aresetn,
                s_axis_aclk       => s_axis_aclk,
                s_axis            => s_axis(i),
                s_axis_tready     => s_axis_tready(i),
                m_axis_aclk       => clk,
                m_axis            => axis,
                m_axis_tready     => axis_tready,
                m_axis_prog_empty => open
            );
    end generate;

    --process(Data_FIFO_Out)
    -- variable fifo_SOP, fifo_EOP: std_logic;
    -- variable fifo_EOP_Valid, fifo_EOP_Valid1: std_logic_vector(f_log2(Lanes)+2 downto 0);
    --begin
    --  fifo_SOP:= Data_FIFO_Out(Data_FIFO_Out'length-1);
    --  fifo_EOP:= Data_FIFO_Out(Data_FIFO_Out'length-2);
    --  fifo_EOP_Valid := Data_FIFO_Out(Data_FIFO_Out'length-3 downto Data_FIFO_Out'length-2-fifo_EOP_Valid'length);
    --  fifo_EOP_Valid1 := fifo_EOP_Valid - 1; 
    --  for i in 0 to Lanes-1 loop
    --    if fifo_EOP_Valid1(fifo_EOP_Valid1'high downto 3) = std_logic_vector(to_unsigned(i, f_log2(Lanes))) then -- Valid in # of bits corresponding to # of channel
    --     TX_EOP_Valid_Lanes(i) <= fifo_EOP_Valid(2 downto 0);
    --     Channel_EOP(i) <= fifo_EOP;
    --     Channel_send_idle(i) <= '0';
    --    else
    --     Channel_send_idle(i) <= fifo_EOP;
    --     Channel_EOP(i) <= '0';
    --    end if;
    --    
    --    if i = 0 then
    --      Channel_SOP(i) <= fifo_SOP;
    --    else
    --      Channel_SOP(i) <= '0';
    --    end if;
    --    -----
    --    --if fifo_EOP_Valid > i*8-1 or fifo_EOP_Valid = ZEROS then
    --    --  TX_EOP_Valid_Lanes(i) <= "000";
    --    --  Channel_send_idle(i) <= '0';
    --    --elsif fifo_EOP_Valid > 0 and fifo_EOP_Valid <= i*8 then
    --    --  TX_EOP_Valid_Lanes(i) <= "000";
    --    --  Channel_send_idle(i) <= '1';
    --    --else 
    --    --  Channel_send_idle(i) <= '0';
    --    --  TX_EOP_Valid_Lanes_tmp := (fifo_EOP_Valid-std_logic_vector(to_unsigned(i*8, f_log2(Lanes)+3)));
    --    --  TX_EOP_Valid_Lanes(i) <= TX_EOP_Valid_Lanes_tmp(2 downto 0);
    --    --  
    --    --end if;
    --  end loop;
    --end process; 

end architecture Transmitter;
