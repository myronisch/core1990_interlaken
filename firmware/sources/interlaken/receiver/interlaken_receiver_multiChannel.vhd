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
        FlowControl	    : out slv_16_array(0 to Lanes-1);   -- Flow control data (yet unutilized)
        RX_Datavalid     : in std_logic_vector(Lanes-1 downto 0); -- From GTH Transceiver
        Bitslip         : out std_logic_vector(Lanes-1 downto 0);
        m_axis_aclk       : in std_logic;
        m_axis            : out axis_64_array_type(0 to Lanes-1);
        m_axis_tready     : in axis_tready_array_type(0 to Lanes-1);
        m_axis_prog_empty : out axis_tready_array_type(0 to Lanes-1);
        Descrambler_lock : out std_logic_vector(Lanes-1 downto 0);
        Decoder_Lock : out std_logic_vector(Lanes-1 downto 0);
        HealthLane : out std_logic_vector(Lanes-1 downto 0);
        HealthInterface: out std_logic
    );
end entity Interlaken_Receiver_multiChannel;

architecture Receiver of Interlaken_Receiver_multiChannel is
    signal HealthInterface_s : std_logic_vector(Lanes-1 downto 0);  
    signal insert_t_valid : std_logic_vector(Lanes-1 downto 0);
    signal all_lanes_aligned: std_logic;
    --variable wait_for_lane_n :  integer; 

begin

    HealthInterface_procc : process(HealthInterface_s)
    begin
        HealthInterface <= '1';
        for i in 0 to Lanes - 1 loop
            if (HealthInterface_s(i) = '0') then
                HealthInterface <= '0';
            end if;
        end loop;

    end process;

----- Instantiation of different Receiver Lanes. -----   
    g_lanes: for i in 0 to Lanes-1 generate      -- Generate RX Lanes (Channels)
        signal axis : axis_64_type;
        signal s_axis_aresetn : std_logic;
        signal axis_tready  : std_logic;
    begin
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
                m_axis => axis,                         --: out axis_64_type;
                m_axis_tready => axis_tready,           --: in std_logic;
                Flowcontrol => FlowControl(i),
                Descrambler_lock => Descrambler_lock(i),
                Decoder_Lock => Decoder_Lock(i),
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
                s_axis_aresetn    => s_axis_aresetn,            --: in std_logic;
                s_axis_aclk       => clk,                       --: in std_logic;
                s_axis            => axis,                      --: in axis_64_type;
                s_axis_tready     => axis_tready,               --: out std_logic;

                -- axi stream master
                m_axis_aclk       => m_axis_aclk,               --: in std_logic;
                m_axis            => m_axis(i),                 --: out axis_64_type;
                m_axis_tready     => m_axis_tready(i),          --: in std_logic;

                --Indication that the FIFO contains a block of data (for MUX).
                m_axis_prog_empty => m_axis_prog_empty(i)       --: out std_logic
            );
    end generate;

    --TODO test code down this line and implement burst_frame_ready and insert_t_valid
--  skewHandling : process (clk)
--  begin
--    insert_t_valid(i) <=( others => '0');      --no valid data   
--    if rising_edge_(clk) then                  --clk
--      for i in 0 to Lanes-1 loop               --for each lane
--        if (i >= wait_for_lane_n) then         --skip already processed lanes
--          if (burst_frame_ready(i) = '0') then --if burst frame not ready
--             all_lanes_aligned = '0';          --lanes are not longer aligned
--          else                                      --if burst frame ready
--             wait_for_lane_n = wait_for_lane_n + 1; --wait for next lane
--             insert_t_valid(i) <= '1';              --insert t valid and process this lane
--          end if;
--        end if;
--      end loop;
--    end if;
--  end process skewHandling;

--  skewReset: process
--  begin
--     if (wait_for_lane_n = Lanes)then          --if all lanes are done
--        all_lanes_aligned = '1';               --Lanes are aligned
--     end if;
--     if (all_lanes_aligned = '1') then         --if lanes were aligned
--        wait_for_lane_n ='0';                  --revaluate all lanes from top
--     end if;  
--  end process skewReset;

end architecture Receiver;
