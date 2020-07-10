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
        clk             : in  std_logic;
        reset           : in  std_logic;
        TX_Data_Out     : out slv_67_array(0 to Lanes - 1);
        TX_Gearboxready : in  std_logic_vector(Lanes - 1 downto 0);
        FlowControl     : in  slv_16_array(0 to Lanes-1);
        HealthLane      : in  std_logic_vector(Lanes - 1 downto 0);
        s_axis_aclk     : in  std_logic;
        s_axis          : in  axis_64_array_type(0 to Lanes - 1);
        s_axis_tready   : out axis_tready_array_type(0 to Lanes - 1)
    );
end entity Interlaken_Transmitter_multiChannel;

architecture Transmitter of Interlaken_Transmitter_multiChannel is
    signal HealthInterface_s : std_logic;
    signal m_axis_tready    : std_logic_vector(Lanes-1 downto 0);
    signal m_axis           : axis_64_array_type(0 to Lanes-1);
    signal insert_burst_idle: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_idle_df: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_sop: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_eop: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_eop_now: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_eop_next: std_logic_vector(Lanes-1 downto 0);
    signal insert_burst_max : std_logic_vector(Lanes-1 downto 0);
    --signal insert_burst_short : std_logic_vector(Lanes-1 downto 0);
    signal SOP_FLAG : std_logic;
    type slv8_array is array (natural range <>) of std_logic_vector(7 downto 0);
    signal tid_cur, tid_next :slv8_array(0 to Lanes-1);
    signal muxIndex, muxIndexTready : integer range 0 to Lanes*2-1;
    signal m_axis_mapped : axis_64_array_type(0 to Lanes-1);
    signal m_axis_tready_mapped : std_logic_vector(Lanes-1 downto 0);
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


    aximux_proc: process(muxIndex, m_axis, m_axis_tready_mapped, insert_burst_max, muxIndexTready)
        variable addOne: integer range 0 to Lanes*2-1;
    begin
        addOne := 0;
        for i in 0 to Lanes-1 loop
            --We have inserted an idle, all the remaining axi buses have to move to the next lane
            if insert_burst_max(i) = '1' then
                addOne := 1;
            end if;
            m_axis_mapped(i) <= m_axis(((i+Lanes)-(muxIndex+addOne)) mod Lanes);
            m_axis_tready(i) <= m_axis_tready_mapped(((i+Lanes)+muxIndexTready) mod Lanes);
        end loop;
        
    end process;

    ----- Instantiation of different transmission Lanes. -----   
    g_lanes : for i in 0 to Lanes - 1 generate -- Generate TX Lanes (Transmission Channels)
    --        signal Gearbox_Count : integer range 0 to 67;
    --        signal Gearbox_Pause : std_logic;
    --        signal GearboxSignal : std_logic;

        signal m_axis_aresetn : std_logic;
        signal FlowControl_s     : slv_16_array(0 to Lanes-1);

    begin


        lane_tx : entity work.Interlaken_Transmitter
            generic map(
                BurstMax => BurstMax, -- Configurable value of BurstMax
                BurstShort => BurstShort, -- Configurable value of BurstShort
                PacketLength => PacketLength, -- Configurable value of PacketLength
                Lanes => Lanes,
                LaneNumber => i)
            port map(
                clk => clk,
                reset => reset,
                TX_Lane_Data_Out => TX_Data_Out(i)(66 downto 0),
                TX_Gearboxready => TX_Gearboxready(i),
                FlowControl => FlowControl_s(i), -- Per channel flow control, 1 means Xon, 0 means Xoff.
                HealthLane => HealthLane(i),
                HealthInterface => HealthInterface_s,
                s_axis => m_axis_mapped(i), --: out axis_64_type;
                Channel => tid_next(i),
                s_axis_tready => m_axis_tready_mapped(i), --: in std_logic;
                insert_burst_idle => insert_burst_idle(i),
                insert_burst_idle_df => insert_burst_idle_df(i),
                insert_burst_sop => insert_burst_sop(i),
                insert_burst_eop => insert_burst_eop(i)
            );
        FlowControl_s(i) <= FlowControl(i);
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
                m_axis            => m_axis(i),
                m_axis_tready     => m_axis_tready(i),
                m_axis_prog_empty => open
            );
    end generate;
--
LaneFormatHandling: process (SOP_FLAG, m_axis, insert_burst_eop_now, insert_burst_eop_next, insert_burst_eop, insert_burst_max, muxIndex, tid_cur)
    variable addIdle : std_logic;
begin
    -- For all lanes 
    for i in 0 to Lanes - 1 loop
        insert_burst_idle(i)<= '0';
        insert_burst_idle_df(i)<= '0';
        insert_burst_sop(i) <= '0';
        insert_burst_eop_now(i) <= '0';
        if(m_axis(i).tvalid ='1' and m_axis(i).tlast = '1' and i+muxIndex < Lanes-1) then
            insert_burst_eop_now(i+1+muxIndex) <= '1';
        end if;
        insert_burst_eop(i) <= insert_burst_eop_now(i) or insert_burst_eop_next(i);
        if SOP_FLAG = '1' then
            tid_next(i) <= m_axis(i).tid;
        else
            tid_next(i) <= tid_cur(i);
        end if;
    end loop;
    -- SOP when new valid data after an EOP
    if(m_axis(0).tvalid ='1' and SOP_FLAG = '1' ) then
        insert_burst_sop(0) <= '1';
    end if;
    addIdle := '0';
    for i in 0 to Lanes - 1 loop
        insert_burst_idle(i) <= addIdle; --Add an idle in the remaining lanes to keep the channels aligned.
        insert_burst_idle_df(i) <= (insert_burst_max(i) and not insert_burst_eop(i)); --Add an idle if burstMax is reached
        
        if insert_burst_eop(i) = '1' then
            addIdle := '1';
        end if;
    end loop;

end process LaneFormatHandling;

LaneFormatHandling_SOP_encoder: process (clk, reset)
begin
    if (reset = '1') then
        SOP_FLAG <= '1';
        tid_cur <= (others => x"00");
    elsif rising_edge(clk) then
        tid_cur <= tid_next;
        for i in 0 to Lanes - 1 loop
            if(insert_burst_eop(i)='1' ) then
                SOP_FLAG <= '1';
            elsif (insert_burst_sop(0)='1' ) then
                SOP_FLAG <= '0'; --when done reset flag
            end if;
        end loop;
    end if;
end process;

LaneFormatHandling_EOP_encoder: process (clk, reset)
begin
    if (reset = '1') then
        insert_burst_eop_next <= (others=>'0');
    elsif rising_edge(clk) then
        for i in 0 to Lanes - 1 loop
            insert_burst_eop_next(i) <= '0';
            if (m_axis(i).tlast = '1' and m_axis(i).tvalid = '1' and m_axis_tready(i) = '1' and i+muxIndex>=Lanes-1) then
                insert_burst_eop_next(i+muxIndex+1-Lanes) <= '1';
            end if;
        end loop;
    end if;
end process;

burstCounter_proc: process(clk, reset)
    variable burstCounter: integer range 0 to BurstMax;
    variable insert_burst_max_next: std_logic_vector(Lanes-1 downto 0);
begin
    if (reset = '1') then
        burstCounter := 0;
        muxIndex <= 1;
        insert_burst_max <= (others => '0');
        insert_burst_max_next := (others => '0');
    elsif rising_edge(clk) then
        if m_axis_tready_mapped /= (m_axis_tready_mapped'range => '0') then
            insert_burst_max <= (others => '0');
            if insert_burst_max /= (insert_burst_max'range => '0') then
                muxIndex <= (muxIndex + 1)mod Lanes;
            end if;
            if insert_burst_max_next /= (insert_burst_max_next'range => '0') then
            	insert_burst_max <= insert_burst_max_next;
            	insert_burst_max_next := (others => '0');
            end if;
        end if;
        for i in 0 to Lanes-1 loop
            if SOP_FLAG = '1' then
                burstCounter :=  (Lanes-1)*8; --SOP is not counted in frame length, so all others are counted.
                muxIndex <= 1; --SOP is by default sent at index 0, so the first data starts at index 1.
                muxIndexTready <= 1;
            elsif(m_axis_mapped(i).tvalid = '1' and m_axis_tready_mapped(i) = '1') then
                if (m_axis_mapped(i).tlast = '0') then
                    burstCounter := burstCounter + 8;
                    if burstCounter = (BurstMax-8) then
                    	burstCounter := 0;
                		muxIndexTready <= (muxIndexTready + 2) mod Lanes;
                    	if(((i+muxIndex+1) mod Lanes) = 0)then
                    		insert_burst_max_next((i+muxIndex+1) mod Lanes) := '1';
                    	else
                    		insert_burst_max((i+muxIndex+1) mod Lanes) <= '1';
                    	end if;
                    end if;
                else
                    --TODO: add BurstShort here...
                    burstCounter := (Lanes-1)*8;
                end if;
            end if;
            
        end loop;
        
    end if;
end process;

end architecture Transmitter;
