library ieee;
use ieee.std_logic_1164.all;
use work.axi_stream_package.ALL;
use ieee.std_logic_unsigned.all; -- @suppress "Deprecated package" (used for sigasi to recognize - operator with std_logic vector)

entity interlaken_interface_tb is
end entity interlaken_interface_tb;

architecture tb of interlaken_interface_tb is

    constant   REFCLK_PERIOD           :   time   :=  8.0 ns;
    constant   SYSCLK_PERIOD           :   time   :=  25.0 ns;
    constant   DCLK_PERIOD             :   time   :=  5.0 ns;
    constant   Lanes                   : integer  :=  4;
    constant   BurstMax     : positive := 256;      -- Configurable value of BurstMax
    constant   BurstShort   : positive := 8;      -- Configurable value of BurstShort
    constant   PacketLength : positive := 192;     -- Configurable value of PacketLength -- 24 packets * 8  = 192 B
    constant   CLOCKING_MODE : string := "independent_clock";
    constant   RELATED_CLOCKS : integer range 0 to 1 := 0;
    constant   FIFO_MEMORY_TYPE : string := "auto";
    constant   PACKET_FIFO : string := "false";

    --signal System_Clock_In_P : std_logic;
    --signal System_Clock_In_N : std_logic;

    signal GTREFCLK_IN_P : std_logic;
    signal GTREFCLK_IN_N : std_logic;

    signal Reset 		: std_logic;

    signal TX_Out_P     : std_logic_vector(3 downto 0);
    signal TX_Out_N     : std_logic_vector(3 downto 0);
    signal RX_In_P      : std_logic_vector(3 downto 0);
    signal RX_In_N      : std_logic_vector(3 downto 0);

    --signal TX_Link_Up      : std_logic;                         -- In case signal is high transmission may start
    --signal TX_SOP          : std_logic;
    --signal TX_EOP          : std_logic;
    --signal TX_EOP_Valid    : std_logic_vector(2 downto 0);
    --signal TX_FlowControl  : std_logic_vector(15 downto 0);
    --signal TX_Channel      : std_logic_vector(7 downto 0);

    --signal RX_SOP        	: std_logic;                         -- Start of Packet
    --signal RX_EOP        	: std_logic;                         -- End of Packet
    --signal RX_EOP_Valid 	: std_logic_vector(2 downto 0);      -- Valid bytes packet contains
    --signal RX_FlowControl	: std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
    --signal RX_Channel    	: std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)

    --signal RX_Link_Up       : std_logic;

    --signal TX_Overflow      : std_logic;
    --signal TX_Underflow     : std_logic;

    --signal RX_FIFO_Full      : std_logic;
    --signal RX_FIFO_Empty     : std_logic;
    --signal Decoder_lock      : std_logic;
    --signal Descrambler_lock  : std_logic;
    --signal CRC24_Error       : std_logic;
    --signal CRC32_Error       : std_logic;
    --signal BurstMax : positive;
    --signal BurstShort : positive;
    --signal PacketLength : positive;
    --signal clk40 : std_logic;
    --signal clk150 : std_logic;
    --signal TX_Data : slv_64_array(0 to Lanes-1);
    --signal RX_In_P : std_logic_vector(Lanes-1 downto 0);
    --signal RX_In_N : std_logic_vector(Lanes-1 downto 0);
    --signal TX_EOP_Valid_Total : std_logic_vector(f_log2(Lanes) + 2 downto 0);
    signal m_axis_aclk : std_logic;
    signal m_axis_tready : axis_tready_array_type(0 to Lanes-1);
    --signal TX_FIFO_Write : std_logic;
    --signal loopback_in : std_logic_vector(2 downto 0);
    signal s_axis : axis_64_array_type(0 to Lanes-1);
    --signal s_axis_prog_empty : axis_tready_array_type(0 to Lanes-1);
    signal s_axis_aclk : std_logic;
    signal s_axis_tready : axis_tready_array_type(0 to Lanes-1); -- @suppress "signal s_axis_tready is never read"
    signal m_axis : axis_64_array_type(0 to Lanes-1); -- @suppress "signal m_axis is never read"
    signal m_axis_prog_empty : axis_tready_array_type(0 to Lanes-1); -- @suppress "signal m_axis_prog_empty is never read"
    signal clk40 : std_logic;
    signal Decoder_lock : std_logic_vector(Lanes-1 downto 0); --TODO use as status bit-- @suppress "signal Decoder_lock is never read"
    signal HealthLane : std_logic_vector(Lanes-1 downto 0); --TODO use as status bit -- @suppress "signal HealthLane is never read"
    signal HealthInterface : std_logic;
    signal Descrambler_lock : std_logic_vector(Lanes-1 downto 0); --TODO use as status bit -- @suppress "signal Descrambler_lock is never read"
    signal Channel : std_logic_vector(7 downto 0); --TODO use as status bit -- @suppress "signal Channel is never read"
	
begin
    RX_In_N <=  TX_Out_N;
    RX_In_P <=  TX_Out_P;

    uut : entity work.interlaken_interface
        generic map(
            BurstMax => BurstMax,
            BurstShort => BurstShort,
            PacketLength => PacketLength,
            Lanes => Lanes,
            CLOCKING_MODE => CLOCKING_MODE,
            RELATED_CLOCKS => RELATED_CLOCKS,
            FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
            PACKET_FIFO => PACKET_FIFO
        )
        port map(
            clk40 => clk40,
            --clk150 => clk150,
            reset => Reset,
            GTREFCLK_IN_P => GTREFCLK_IN_P,
            GTREFCLK_IN_N => GTREFCLK_IN_N,
            TX_Out_P => TX_Out_P,
            TX_Out_N => TX_Out_N,
            --TX_Data => TX_Data,
            RX_In_P => RX_In_P,
            RX_In_N => RX_In_N,
            --TX_SOP => TX_SOP,
            --TX_EOP => TX_EOP,
            --TX_EOP_Valid_Total => TX_EOP_Valid_Total,
            TX_FlowControl => (others => (others => '0')),
            s_axis => s_axis,
            --s_axis_prog_empty => s_axis_prog_empty,
            s_axis_aclk => s_axis_aclk,
            s_axis_tready => s_axis_tready,
            m_axis_aclk => m_axis_aclk,
            m_axis => m_axis,
            m_axis_tready => m_axis_tready,
            m_axis_prog_empty => m_axis_prog_empty,
            Decoder_Lock => Decoder_lock,
            Descrambler_lock => Descrambler_lock,
            Channel => Channel,
            --Decoder_lock => Decoder_lock,
            --Descrambler_lock => Descrambler_lock,
            --TX_FIFO_Write => TX_FIFO_Write,
            loopback_in => "000",
            HealthLane => HealthLane,
            HealthInterface => HealthInterface
        );

    process
    begin
        Reset <=  '1';
        wait for SYSCLK_PERIOD * 10;
        Reset <=  '0';
        wait;
    end process;

    process
    begin
        GTREFCLK_IN_N  <=  '1';
        GTREFCLK_IN_P  <=  '0';
        wait for REFCLK_PERIOD/2;
        GTREFCLK_IN_N  <=  '0';
        GTREFCLK_IN_P  <=  '1';
        wait for REFCLK_PERIOD/2;
    end process;

    
    process
    begin
        --System_Clock_In_N  <=  '1';
        --System_Clock_In_P  <=  '0';
        m_axis_aclk <= '1';
        s_axis_aclk <= '1';
        wait for DCLK_PERIOD/2;
        m_axis_aclk <= '0';
        s_axis_aclk <= '0';
        --System_Clock_In_N  <=  '0';
        --System_Clock_In_P  <=  '1';
        wait for DCLK_PERIOD/2;
    end process;

    process
    begin
        clk40  <=  '1';
        wait for SYSCLK_PERIOD/2;
        clk40  <=  '0';
        wait for SYSCLK_PERIOD/2;
    end process;
    
    --TODO write a testbench for the Framing Burst (To test the statemachine)
    Simulation_Framing_Burst : process
    begin
         m_axis_tready <= (others => '1');
        --Test Data patern 1 to FFFFFF
        for i in 0 to Lanes-1 loop
            s_axis(i).tvalid <= '0';
            s_axis(i).tlast <='0';
        end loop;
        wait until (Reset = '0');
        wait until (HealthInterface = '1');-- Wait for lock before sending data
        for i in 0 to Lanes-1 loop
            s_axis(i).tvalid <= '1';
            s_axis(i).tkeep <= (others => '0');
            s_axis(i).tuser <= (others => '0');
        end loop;
        
        --Testing the tlast 
        for packet in 0 to 20 loop --20 packets
            
            for i in 0 to Lanes-1 loop                          -- For all lanes
                s_axis(i).tlast <= '1';                         -- Set tlast '1'
                s_axis(i).tdata <= x"0000000000000000";         -- start data
            end loop;
            wait for DCLK_PERIOD;
            for j in 1 to 20 loop --20 bursts
                
                for i in 0 to Lanes-1 loop                      -- For all lanes
                    s_axis(i).tlast <= '0';                     -- Set tlast '0'
                    s_axis(i).tdata <= x"0000000000000000"+j;   -- Set data pattern
                end loop;
                wait for DCLK_PERIOD;                           -- Wait for data clk
                
            end loop;
            for i in 0 to Lanes-1 loop                          -- For all lanes
              s_axis(i).tlast <= '1';                           -- Set tlast '1'
            end loop;
            
            
            
        end loop;
        wait;
        end process;
    
    
 --   Simulation_Interlaken_TX_to_RX : process
 --   begin
 --       m_axis_tready <= (others => '1');
 --       --Test Data patern 1 to FFFFFF
 --       for i in 0 to Lanes-1 loop
 --           s_axis(i).tvalid <= '0';
 --           s_axis(i).tlast <='0';
 --       end loop;
 --       wait until (Reset = '0');
 --       wait until (HealthInterface = '1');-- Wait for lock before sending data
 --       for i in 0 to Lanes-1 loop
 --           s_axis(i).tvalid <= '1';
 --           s_axis(i).tkeep <= (others => '0');
 --           s_axis(i).tuser <= (others => '0');
 --       end loop;
 --       for j in 0 to 16777215 loop --FFFFFF
 --           for i in 0 to Lanes-1 loop
 --               s_axis(i).tdata <= x"0000000000000000"+j;
 --           end loop;
 --           wait for SYSCLK_PERIOD;
 --       end loop;
 --       wait;
 --   end process;
    
    
---old sim
--        wait for 1 ps;
--            --TX_Enable <= '0';
--        TX_EOP <= '0';
--        TX_SOP <= '0';
--        TX_Channel <= X"01";
--        TX_EOP_Valid <= "111";
--        TX_Data <= (others=>'0');
--        Reset <= '1';
--        TX_FlowControl <= (others => '0');
--        
--        wait for 20*SYSCLK_PERIOD;
--        
--        wait for SYSCLK_PERIOD;
--        Reset <= '0';
--        --TX_SOP <= '1';
--        --TX_Enable <= '1';
--        TX_Data <= X"1f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--        --TX_EOP <= '1';
--        
--        wait until (TX_Link_Up = '1');
--    
--        wait for SYSCLK_PERIOD*10;
--        TX_FlowControl(0) <= '1';
--        TX_SOP <= '1';
--        TX_EOP <= '1';
--        TX_Data <= X"2f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--        
--        TX_EOP <= '0';
--        TX_Data <= X"3f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--        
--         
--        TX_SOP <= '0';
--        TX_EOP <= '0';
--        TX_EOP <= '0';
--        --reset <= '1';
--        TX_Data <= X"4f21a2a3a4a5a6a7";
--        wait for SYSCLK_PERIOD;
----        TX_FlowControl(0) <= '1';
--        TX_SOP <= '1';
--        TX_Data <= X"5f5e5a5c5b60f2a0";      
--        wait for SYSCLK_PERIOD;
--        
--        TX_SOP <= '0';
--        TX_EOP <= '1';
--        TX_Data  <= X"635e22a3a4a5a7a7";
--        wait for SYSCLK_PERIOD;
--        
--        TX_EOP <= '0';
--        --TX_SOP <= '1';
--        TX_Data  <= X"70000FFF000000F0";
--        wait for SYSCLK_PERIOD*2;
--        
--        TX_SOP <= '1';
--        TX_Data <= X"2f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--              
--        TX_SOP <= '0';
--        TX_EOP <= '1';
--        wait for SYSCLK_PERIOD;
--        
--        TX_EOP <= '0';
--        --TX_SOP <= '0';
--        TX_Data  <= X"8050505050050505";
--        --wait for SYSCLK_PERIOD*3;                          
--        wait for SYSCLK_PERIOD;
--        TX_Data  <= X"9486576758050505";
--        wait for SYSCLK_PERIOD; 
--        
--        TX_EOP <= '1';                          
--        TX_Data <= X"60b35d5dc4a582a7";
--        wait for SYSCLK_PERIOD; --Test influencing pause state position
--        
--        TX_EOP <= '0';
--        wait for SYSCLK_PERIOD*16;
--        
--        TX_SOP <= '1';
--        TX_Data <= X"4f21a2a3a4a5a6a7";
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data <= X"995e5a5c5b60f2a0";      
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data  <= X"635e22a3a4a5a7a7";
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data  <= X"70000FFF000000F0";
--        wait for SYSCLK_PERIOD*2;
--        
--        TX_Data <= X"2f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data <= X"4f21a2a3a4a5a6a7";
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data <= X"5f5e5a5c5b60f2a0";      
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data  <= X"635e22a3a4a5a7a7";
--        wait for SYSCLK_PERIOD;
--        
--        TX_Data  <= X"70000FFF000000F0";
--        wait for SYSCLK_PERIOD*2;
--        
--        
--        TX_Data <= X"2f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD*12;
--        
--        TX_Data <= X"4f5e5d5c5b5a5958";
--        wait for SYSCLK_PERIOD;
--        
--        TX_SOP <= '0';
--        TX_EOP <= '1';
--        wait for SYSCLK_PERIOD;
--        
--        wait for SYSCLK_PERIOD*4;
--        wait;



end architecture tb;


