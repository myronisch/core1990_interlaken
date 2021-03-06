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
		s_axis_tready   : out axis_tready_array_type(0 to Lanes - 1);
		axis_tready_transmitter : out std_logic_vector(Lanes-1 downto 0)
	);
end entity Interlaken_Transmitter_multiChannel;

architecture Transmitter of Interlaken_Transmitter_multiChannel is
	signal HealthInterface_s : std_logic;
	signal axis_tready_transmitter_s, axis_tready_process    : std_logic_vector(Lanes-1 downto 0);
	signal axis           : axis_64_array_type(0 to Lanes-1);
	signal insert_burst_idle: std_logic_vector(Lanes-1 downto 0);
	signal insert_burst_idle_df: std_logic_vector(Lanes-1 downto 0); --idle, data follows
    signal insert_burst_sop: std_logic_vector(Lanes-1 downto 0);
	signal insert_burst_eop: std_logic_vector(Lanes-1 downto 0);
	signal LaneByteMax :std_logic_vector (Lanes-1 downto 0);
	signal LaneByteShort :std_logic_vector (Lanes-1 downto 0);
	signal insert_byteMax_eop : std_logic;
	signal insert_tlast_eop : std_logic;
	signal EOP_FLAG : std_logic;
	signal SOP_FLAG : std_logic;
	signal reset_sop_flag : std_logic;
	
	
begin

	axis_tready_transmitter <= axis_tready_transmitter_s;

	HealthInterface_procc : process(HealthLane)
	begin
		HealthInterface_s <= '1';
		for i in 0 to Lanes - 1 loop
			if (HealthLane(i) = '0') then
				HealthInterface_s <= '0';
			end if;
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
				LaneNumber => i, -- Current Lane (TX channel)
				Lanes => Lanes           )
			port map(
				clk => clk,
				reset => reset,
				TX_Lane_Data_Out => TX_Data_Out(i)(66 downto 0),
				TX_Gearboxready => TX_Gearboxready(i),
				FlowControl => FlowControl_s(i), -- Per channel flow control, 1 means Xon, 0 means Xoff.
				HealthLane => HealthLane(i),
				HealthInterface => HealthInterface_s,
				s_axis => axis(i), --: out axis_64_type;
				s_axis_tready => axis_tready_transmitter_s(i), --: in std_logic;
				insert_burst_idle => insert_burst_idle(i),
				insert_burst_idle_df => insert_burst_idle_df(i),
                insert_burst_sop => insert_burst_sop(i),
				insert_burst_eop => insert_burst_eop(i)
			);
		FlowControl_s(i) <= not FlowControl(i);
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
				m_axis            => axis(i),
				m_axis_tready     => axis_tready_process(i),
				m_axis_prog_empty => open
			);
	end generate;
--
LaneFormatHandling: process (SOP_FLAG, axis, axis_tready_transmitter_s,insert_burst_idle)
	
begin
	axis_tready_process  <= axis_tready_transmitter_s and (not insert_burst_idle);
	-- For all lanes 
	for i in 0 to Lanes - 1 loop
		insert_burst_idle(i)<= '0';
		insert_burst_idle_df(i)<= '0';
        insert_burst_sop(i) <= '0';
		-- SOP when new valid data after an EOP
		if(axis(0).tvalid ='1' and SOP_FLAG = '1' ) then
			insert_burst_sop(0) <= '1';
		end if;

	end loop;
	if insert_burst_eop /= (insert_burst_eop'range => '0') then
	   insert_burst_idle <= not insert_burst_eop; 
    end if;
    if insert_burst_sop /= (insert_burst_sop'range => '0') then
       insert_burst_idle_df <= not insert_burst_sop; 
    end if;
end process LaneFormatHandling;

LaneFormatHandling_SOP_decoder: process (clk, reset)
begin
	if (reset = '1') then
		SOP_FLAG <= '1';
	elsif rising_edge(clk) then
		for i in 0 to Lanes - 1 loop
			if(insert_burst_eop(i)='1' ) then
				SOP_FLAG <= '1';
			elsif (insert_burst_sop(0)='1' ) then
				SOP_FLAG <= '0'; --when done reset flag
				reset_sop_flag <= '0';
			end if;
		end loop;
	end if;
end process LaneFormatHandling_SOP_decoder;

process (clk, reset)
begin
    if (reset = '1') then
        insert_burst_eop <= (others=>'0');
    elsif rising_edge(clk) then
        for i in 0 to Lanes - 1 loop
            insert_burst_eop(i) <= '0';
            if (axis(i).tlast = '1' and axis(i).tvalid = '1') then
                insert_burst_eop(i) <= '1';
            end if;
        end loop;
    end if;
end process;
end architecture Transmitter;
