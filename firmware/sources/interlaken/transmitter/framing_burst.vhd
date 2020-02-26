library ieee;
use ieee.std_logic_1164.all;
use work.interlaken_package.all;
use work.axi_stream_package.all;

entity Burst_Framer is
    generic (
        BurstMax   : positive :=256;      -- Configurable value of BurstMax
        BurstShort : positive :=8      -- Configurable value of BurstShort
    );
    port (
        clk	  : in std_logic;			                      -- System clock
        reset : in std_logic;			                      -- Reset, use for initialization
        TX_Enable     : in std_logic;                         -- Enable the TX
        Data_out         : out std_logic_vector(66 downto 0); -- To scrambling/framing
        Data_valid_out   : out std_logic;				      -- Indicate data transmitted is valid
        FlowControl  : in std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
        meta_tready    : in std_logic;                          -- Request from the MetaFraming to read data from the FIFO
        Gearboxready : in std_logic;
        s_axis           : in axis_64_type;
        s_axis_tready    : out  std_logic
    );
end Burst_Framer;

architecture framing of Burst_Framer is
    type state_type is (IDLE, DATA, WORD);
    signal pres_state, next_state : state_type;
    signal Channel_send_idle : std_logic;

    signal Data_Temp             : std_logic_vector(66 downto 0) := (others => '0');
    signal Byte_Counter          : integer range 0 to BurstMax;
    signal Word_Control_out      : std_logic;
    signal Data_Valid            : std_logic := '0';
    signal BURST_tready          : std_logic;
    signal Word_valid_out        : std_logic;
    signal HDR_P1, HDR_P2 : std_logic_vector(2 downto 0);
    signal Valid_P1, Valid_P2 : std_logic
	;

    signal Data_P1, Data_P2                    : std_logic_vector(63 downto 0);    -- Pipelined data
    signal Data_valid_temp : std_logic;
    signal valid_temp : std_logic := '0';
    signal CRC24_TX  : std_logic_vector(66 downto 0) := (others => '0');   -- Data transmitted to CRC-24
    signal CRC24_Out : std_logic_vector(23 downto 0);   -- Calculated CRC-24 which returns
    signal CRC24_RST : std_logic;                       -- CRC24 reset
    signal CRC24_P1  : std_logic;                       -- CRC24 reset pipelining
    --signal CRC24_Stored : std_logic_vector(31 downto 0); --TODO CRC24 process cleanup
    signal CRC_P1, CRC_P2 : std_logic;
    signal CalcCrc   : std_logic;                       -- CRC24_EN and Gearboxready
    signal TX_ValidBytes_s : std_logic_vector(2 downto 0);
    signal s_axis_tready_s : std_logic;


begin
    Channel_send_idle <= not s_axis.tvalid and s_axis.tlast;

    CRC_24_Encoding : entity work.CRC_24 -- Define the connections of the CRC-24 component to the Burst component and generics
        port map(
            CRC => CRC24_Out,
            Calc => CalcCrc,
            Clk => clk,
            DIn => CRC24_TX(63 downto 0),
            Reset => CRC24_RST
        );

    CalcCrc <= Gearboxready and meta_tready; 

	
    pipeline : process (clk, reset)
        variable CRC24_Out_v: std_logic_vector(23 downto 0);
        variable Data_valid_check : std_logic;
    begin
        if (reset = '1') then
            Data_P1          <= (others => '0');
            Data_P2          <= (others => '0');
            Data_out         <= (others => '0');
            --ControlValid_P1  <= "00";
            --ControlValid_P2  <= "00";
            --Data_Control_Out <= '0';
            Data_valid_out   <= '0';
        --CRC24_RST_P1     <= '0';
        elsif (rising_edge(clk)) then
            --            if (CRC24_Rst <= '1') then
            --                CRC24_PP1 <= '1';
            --            else
            --                CRC24_PP1 <= CRC24_PP1;
            --            end if;
            --CRC24_PP1 <= CRC24_PP1;
            --Data_control_out <= '0';

            --            if(CRC24_Rst_P1 = '1' and (Data_P2(62 downto 60) = "100" or Data_P2(61 downto 60) = "01")) then
            --                CRC24_Out_v := CRC24_Out;
            --            end if;

            
            Data_valid_out <= '0';
            CRC_P1 <= '0';

            --Gearboxready_P1 <= Gearboxready;
            --CRC24_Rst_P1 <= CRC24_Rst;

            if(CRC24_TX(62 downto 60) = "100" or CRC24_TX(61 downto 60) = "01") then
                CRC_P1 <= '1';
            end if;
            CRC_P2 <= CRC_P1;

            if (CRC_P2 = '1') then
                CRC24_Out_v := CRC24_Out;
            end if;

            if(Gearboxready = '1' and meta_tready = '1') then
                Data_P1  <= CRC24_TX(63 downto 0);
                Data_P2  <= Data_P1;
                Data_out(63 downto 0) <= Data_P2;

                HDR_P1 <= CRC24_TX(66 downto 64);
                HDR_P2  <= HDR_P1;
                Data_out(66 downto 64) <= HDR_P2;

                Valid_P1  <= Data_Valid;
                Valid_P2 <= Valid_P1;
                Data_valid_out   <= Valid_P2;
                Data_valid_check := Valid_P2;

                --if(HDR_P2 = "010"and(Data_P2(62 downto 60) = "110" or Data_P2(61 downto 60) = "01")) then --Control word BurstMax or EOP only word 
                if(HDR_P2 = "010" and ((Data_P2(61 downto 60) = "01") or (Data_P2(62 downto 60) = "100"))) then --Control word BurstMax or EOP only word 
                    Data_out(23 downto 0) <= CRC24_Out_v; -- Include CRC in last packet of burst   
                end if;

                if(Valid_P2 = '0') then
                    Data_out <= "010"&X"8000_0001_0000_0000";  -- Idle control word
                end if;

                --CRC24_PP1 <= CRC24_Rst;
            end if;

            if(Data_valid_check = '0') then
                Data_out <= "010"&X"8000_0001_0000_0000";  -- Idle control word
            end if;

            --            CRC24_RST_P1 <= CRC24_Rst;

            --            if (CRC24_RST_P1 = '1') then 
            --               if(ControlValid_P2(1) = '1' and Gearboxready = '1' and meta_tready = '1' and CRC24_Ready = '0') then
            --                   Data_out(31 downto 0) <= CRC24_Out; -- Include CRC in last packet of burst
            --               else
            --                   if (CRC24_Ready = '0') then
            --                       CRC24_Stored <= CRC24_Out;
            --                       CRC24_Ready <= '1';
            --                   end if;
            --               end if;
            --            end if;

            --            if (CRC24_Ready = '1' and ControlValid_P2(1) = '1' and Gearboxready = '1' and meta_tready = '1') then
            --               Data_out(31 downto 0) <= CRC24_Stored;
            --               CRC24_Ready <= '0';
            --            end if;              

        end if;
    end process pipeline;

    --	valid : process(meta_tready, Gearboxready, s_axis.tvalid)
    --	begin
    --	   --if(rising_edge(clk)) then
    --	       if(Gearboxready = '0' or meta_tready = '0') and s_axis.tvalid = '1' then
    --	           valid_temp <= '1';
    --	       end if;
    --      -- end if;
    --	end process valid;
    s_axis_tready_s <= BURST_tready and meta_tready and Gearboxready;
    s_axis_tready <= s_axis_tready_s;

    state_register : process (clk) is -- Determines the next state of the FSM
    begin
        if (rising_edge(clk)) then
            pres_state <= next_state;
            if s_axis.tlast = '1' then
                --TX_ValidBytes_s <= s_axis.tkeep;
                case s_axis.tkeep is
                    when "11111111" => TX_ValidBytes_s <= "000";
                    when "00000001" => TX_ValidBytes_s <= "001";
                    when "00000011" => TX_ValidBytes_s <= "010";
                    when "00000111" => TX_ValidBytes_s <= "011";
                    when "00001111" => TX_ValidBytes_s <= "100";
                    when "00011111" => TX_ValidBytes_s <= "101";
                    when "00111111" => TX_ValidBytes_s <= "110";
                    when "01111111" => TX_ValidBytes_s <= "111";
                    when others => TX_ValidBytes_s <= "000";
                end case;
            end if;
        end if;
    end process state_register;

    state_decoder : process (pres_state, Byte_Counter, Channel_send_idle, Gearboxready, TX_Enable, meta_tready, s_axis.tlast) is
    begin
        if(Gearboxready = '0' or meta_tready = '0') then
            next_state <= pres_state;
        else
            case pres_state is
                when IDLE =>
                    if ( (TX_Enable = '1' and s_axis.tlast = '0' and Channel_send_idle = '0') or (TX_Enable = '1' and s_axis.tlast = '1') ) then
                        next_state <= DATA;
                    else
                        next_state <= IDLE;
                    end if;
                when DATA =>
                    if (Byte_Counter >= (BurstMax-8)) then
                        next_state <= WORD;
                    elsif( (TX_Enable = '1' and s_axis.tlast = '0' and Channel_send_idle = '0') or (s_axis.tlast = '1')) then
                        next_state <= DATA;
                    else
                        next_state <= IDLE;
                    end if;
                when WORD =>
                    next_state <= DATA;
                when others => -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                    next_state <= IDLE;
            end case;
        end if;
    end process state_decoder;

    output : process (clk) is
    begin
        if rising_edge(clk) then
            CRC24_RST <= '0';
            --X"Type/SOP/EOP(2)FlowC(2)_FlowC(2)Channel(2)_Mutiple(2)CRC24(2)_CRC24(2)CRC24(2)" Structure of packet
            if(Gearboxready = '1' and  meta_tready = '1' ) then
                case pres_state is
                    when IDLE =>
                        CRC24_RST <= '1';
                        Data_Valid <= '0';
                        Word_Control_out <= '0';
                        BURST_tready <= '1';
                        Byte_Counter <= 8;
                        CRC24_P1 <= '0';
                        valid_temp <= '0';
                        Data_Temp <= "001"&s_axis.tdata;
                        Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;

                        if(TX_Enable = '1') then
                            CRC24_TX <= "010"&X"C000_0001_0000_0000"; -- Idle packet, data follows
                            Data_Valid <= '1';
                            Data_valid_temp <= '1'; --Start of a new packet is always valid

                            if (s_axis.tvalid = '1' and s_axis_tready_s = '1') then -- Indicates the start of data flow
                                CRC24_TX <= "010"&X"E000_0001_0000_0000"; -- Start packet 
                                CRC24_TX(55 downto 40) <= FlowControl;
                            end if;
                        else
                            CRC24_TX <= "010"&X"8000_0001_0000_0000"; -- Idle fill packets 1000
                        end if;
                        
                        if(s_axis.tlast = '1' or Channel_send_idle = '1') then
                                BURST_tready <= '0';
                                Data_Valid<='1';
                            end if;
                    when DATA =>
                        CRC24_TX <= Data_Temp;
                        Data_Temp <= "001"&s_axis.tdata;
                        Data_Valid <= Data_valid_temp;
                        Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;
                        CRC24_RST <= '0';
                        BURST_tready <= '1';

                        if s_axis_tready_s = '1' then
                            Byte_Counter <= Byte_Counter + 8;
                        end if;

                        --CRC24_En <= s_axis.tvalid and s_axis_tready_s;  -- <= '1' --s_axis.tvalid; -- Makes CRC-32 error
                        
                        if (CRC24_P1 = '1') then
                            CRC24_RST <= '1';
                            CRC24_P1 <= '0';
                        end if;
                    if(Byte_Counter <= BurstShort) then
                        if(meta_tready = '0' or BURST_tready = '0') then
                            Data_Valid <= '0';
                        end if;

                        if ( (Byte_Counter >= (BurstMax-8)) or (s_axis.tlast = '1') or (Channel_send_idle='1') ) then
                            BURST_tready <= '0';
                        end if;

                        if Word_Control_out = '1' then
                            Word_Control_out <= '0';
                            CRC24_P1 <= '1';
                        end if;

                        if Word_valid_out = '1' or valid_temp = '1' then
                            Data_valid_temp <= '1';
                            if (Word_valid_out = '1') then
                                Word_valid_out <= '0';
                            elsif (valid_temp = '1') then
                                valid_temp <= '0';
                            end if;
                        end if;
                        if (Channel_send_idle = '1') then 
                            CRC24_TX <= "010"&X"C000_0001_0000_0000";--END OF PACKET
                        elsif((TX_Enable='0') or ((s_axis.tvalid='0') and (s_axis_tready_s='0') and (TX_Enable='0'))) then 
                         CRC24_TX <= "010"&X"8000_0001_0000_0000"; --IDLE PACKETS
                        end if;
                    elsif (s_axis.tlast = '1') then
                        CRC24_TX <= "010"&X"9000_0001_0000_0000"; --End OF BURST PACKET
                        CRC24_TX(55 downto 40) <= FlowControl;
                        CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;
                        Data_Valid <= '1';
                     end if;
---------------original DATA
              --TODO add these situations
              --         if (Byte_Counter >= BurstShort) then
              --
              --             CRC24_TX <= "010"&X"9000_0001_0000_0000"; -- Burst end packet 1001
              --             CRC24_TX(55 downto 40) <= FlowControl;
              --             CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;
              --             Data_Valid <= '1';
              --       
              --       
              --         elsif (Byte_Counter <= BurstShort) then
              --             CRC24_TX(55 downto 40) <= FlowControl;
              --             Data_Valid <= '1';
              --             CRC24_RST <= '1';
              --             if (Channel_send_idle = '1')thenEOP
              --                 CRC24_TX <= "010"&X"C000_0001_0000_0000";
              --             else
              --                 CRC24_TX <= "010"&X"8000_0001_0000_0000"; -- Idle fill packets 1000
              --             end if;
              --         end if;

                    when WORD =>
                        BURST_tready <= '1';
                        Byte_Counter <= 0;
                        --CRC24_En <= '1';
                        CRC24_TX <= Data_Temp;
                        Data_Temp <= "010"&X"C000_0001_0000_0000"; -- Burst no start nor end packet (Idle words)
                        Data_Temp(55 downto 40) <= FlowControl;
                        Data_Valid <= Data_valid_temp;
                        Data_valid_temp <= '1';
                        if (s_axis.tvalid = '1' and s_axis_tready_s = '1') then
                            Word_valid_out <= '1';
                        end if;
                        Word_Control_out <= '1';
                    When Others =>  -- @suppress "Case statement contains all choices explicitly. You can safely remove the redundant 'others'"
                end case;
            else
                CRC24_RST <= CRC24_RST;
                if s_axis.tvalid = '1' and s_axis_tready_s = '1'then
                    valid_temp <= '1';
                end if;
            end if;
        end if;
    end process output;

-- state_decoder : process (pres_state, Channel_send_idle, TX_Enable, s_axis.tlast, Byte_Counter, meta_tready, Gearboxready) is
--  begin
--      if(Gearboxready = '0' or meta_tready = '0') then
--          next_state <= pres_state;
--      else
--          case pres_state is
--              when IDLE =>
--                  if (TX_Enable = '1' and s_axis.tlast = '0' and Channel_send_idle = '0') then
--                      next_state <= DATA;
--                 elsif (TX_Enable = '1' and s_axis.tlast = '1') then
--                      next_state <= EOP_SET;
--                 elsif (TX_Enable = '1' and  Channel_send_idle = '1') then
--                     next_state <= IDLE_SET;
--                  else
--                      next_state <= IDLE;
--                 end if;
--              when DATA =>
--                  if(s_axis.tlast = '1' ) then
--                      next_state <= EOP_SET;
--                 elsif (Channel_send_idle = '1') then
--                     next_state <= IDLE_SET;
--                  elsif (Byte_Counter >= (BurstMax-8)) then
--                      next_state <= WORD;
--                 else
--                     next_state <= DATA;
--                 end if;
--              when WORD =>
--                  next_state <= DATA;
--             when EOP_SET =>
--                 if (Byte_Counter >= BurstShort) then
--                     next_state <= EOP_FULL;
--                 else
--                     next_state <= EOP_EMPTY;
--                 end if;
--             when IDLE_SET =>
--                 if (Byte_Counter >= BurstShort) then
--                     next_state <= IDLE_FULL;
--                 else
--                     next_state <= IDLE_EMPTY;
--                 end if;
--             when EOP_EMPTY =>
--                 if (Byte_Counter >= BurstShort) then
--                     next_state <= IDLE;
--                 else
--                     next_state <= FILL;
--                 end if;
--             when FILL =>
--                 if (Byte_Counter >= BurstShort-8) then
--                     next_state <= IDLE;
--                 else
--                     next_state <= FILL;
--                 end if;
--             when EOP_FULL =>
--                 next_state <= IDLE;
--              when others =>
--                  next_state <= IDLE;
--          end case;
--      end if;
--  end process state_decoder;
-- 
--  output : process (clk) is
--  begin
--    if rising_edge(clk) then
--        CRC24_RST <= '0';
--  
--        -- X"Type/SOP/EOP(2)FlowC(2)_FlowC(2)Channel(2)_Mutiple(2)CRC24(2)_CRC24(2)CRC24(2)" Structure of packet
--        if(Gearboxready = '1' and  meta_tready = '1' ) then
--            case pres_state is
--                when IDLE =>        -- Wait for SOP, start reading FIFO and save last cycle data
--                --CRC24_En <= '0'; -- Reset CRC calculations
--                    CRC24_RST <= '1';
--                    Data_Valid <= '0';
--                    Word_Control_out <= '0';
--                    BURST_tready <= '1';
--                    Byte_Counter <= 8;
--                    CRC24_P1 <= '0';
--                    valid_temp <= '0';
-- 
--                    Data_Temp <= "001"&s_axis.tdata;
--                    Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;
-- 
--                    if (s_axis.tvalid = '1' and s_axis_tready_s = '1' and TX_Enable = '1') then -- Indicates the start of data flow
--                         CRC24_TX <= "010"&X"E000_0001_0000_0000"; -- Start packet 
--                       CRC24_TX(55 downto 40) <= FlowControl;
--                       Data_Valid <= '1';
--                       Data_valid_temp <= '1'; --Start of a new packet is always valid
--                       -- elsif (TX_flowcontrol(0) = '0') then  -- TODO Flowcontrol is not used? why as condition? 
--                       --    CRC24_TX <= "010"&X"C000_0001_0000_0000"; --  C000_0001_0000_0000
--                       --   CRC24_TX(55 downto 40) <= RX_prog_full;
--                   elsif (TX_Enable = '1') then
--                       CRC24_TX <= "010"&X"C000_0001_0000_0000"; -- Idle packet, data follows
--                       Data_Valid <= '1';
--                       Data_valid_temp <= '1'; --Start of a new packet is always valid
-- 
--                   else
--                       CRC24_TX <= "010"&X"8000_0001_0000_0000"; -- Idle fill packets 1000
--                   end if;
-- 
--                   if((s_axis.tlast = '1' or Channel_send_idle = '1') and TX_Enable = '1') then
--                       BURST_tready <= '0';
--                       Data_Valid <= '1';
--                   end if;
--
--                when DATA =>        -- Process input data, count the transmitted bytes, send data to output and CRC-24
--                    if s_axis_tready_s = '1' then
--                        Byte_Counter <= Byte_Counter + 8;
--                    end if;
--                    CRC24_TX <= Data_Temp;
--                    Data_Temp <= "001"&s_axis.tdata;
--                    Data_Valid <= Data_valid_temp;
--                    Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;
--                    --                    if s_axis.tvalid = '0' then
-- 
--                     --                        Data_Control <= '1';
--                    --                        Data_temp <= X"8000_0001_0000_0000";
--                    --                    end if;
--                    CRC24_RST <= '0';
--                    --CRC24_En <= s_axis.tvalid and s_axis_tready_s;  -- <= '1' --s_axis.tvalid; -- Makes CRC-32 error
--                    BURST_tready <= '1';
-- 
--                    --added
--                    if(meta_tready = '0' or BURST_tready = '0') then
--                        Data_Valid <= '0';
--                    end if;
-- 
--                    if (Byte_Counter >= (BurstMax-8)) then
--                        BURST_tready <= '0';
--                    elsif(s_axis.tlast = '1'  or Channel_send_idle = '1') then
--                        BURST_tready <= '0';
--                    end if;
-- 
--                    if (CRC24_P1 = '1') then
--                        CRC24_RST <= '1';
--                        CRC24_P1 <= '0';
--                    end if;
-- 
--                    if Word_Control_out = '1' then
--                        Word_Control_out <= '0';
--                        CRC24_P1 <= '1';
--                    end if;
-- 
--                    if Word_valid_out = '1' then
--                        Data_valid_temp <= '1';
--                        Word_valid_out <= '0';
--                    end if;
-- 
--                    if valid_temp = '1' then
--                        Data_valid_temp <= '1';
--                        valid_temp <= '0';
--                    end if;
-- 
--                when WORD =>        -- Reset byte count, send frame to CRC-24, stop reading FIFO to make room for output frame 
--                    BURST_tready <= '1';
--                    Byte_Counter <= 0;
--                    --CRC24_En <= '1';
-- 
--                    CRC24_TX <= Data_Temp;
--                    Data_Temp <= "010"&X"C000_0001_0000_0000"; -- Burst no start nor end packet (Idle words)
--                    Data_Temp(55 downto 40) <= FlowControl;
-- 
--                    Data_Valid <= Data_valid_temp;
--                    Data_valid_temp <= '1';
--                    if (s_axis.tvalid = '1' and s_axis_tready_s = '1') then
--                        Word_valid_out <= '1';
--                    end if;
--                    Word_Control_out <= '1';
--
--               when EOP_SET =>     -- Transmit last bytes from buffer and add this to byte count
--                     if s_axis_tready_s = '1' then
--                         Byte_Counter <= Byte_Counter + 8;
--                     end if;
--                    CRC24_TX <= Data_Temp;
--                    Data_Temp <= "001"&s_axis.tdata; -- Still read out data and save because FIFO takes a cycle to respond
--
--                    Data_Valid <= Data_valid_temp;
--                     Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;
--
--                   --HealthLane <= '1';     -- set status of lane to healthy
--                   --HealthInterface <= '1'; -- set status of interface to healthy
--
--                   --CRC24_En <= '1';
--                     CRC24_RST <= '0';
--                     if (CRC24_P1 = '1') then
--                         CRC24_RST <= '1';
--                         CRC24_P1 <= '0';
--                     end if;
--                 when IDLE_SET =>     -- Transmit last bytes from buffer and add this to byte count
--                     if s_axis_tready_s = '1' then
--                         Byte_Counter <= Byte_Counter + 8;
--                     end if;
-- 
--                     CRC24_TX <= Data_Temp;
--                     Data_Temp <= "001"&s_axis.tdata; -- Still read out data and save because FIFO takes a cycle to respond
-- 
--                     Data_Valid <= Data_valid_temp;
--                     Data_valid_temp <= s_axis.tvalid and s_axis_tready_s;
-- 
--                     --HealthLane <= '1';     -- set status of lane to healthy
--                     --HealthInterface <= '1'; -- set status of interface to healthy
-- 
--                     --CRC24_En <= '1';
--                     CRC24_RST <= '0';
--                     if (CRC24_P1 = '1') then
--                         CRC24_RST <= '1';
--                         CRC24_P1 <= '0';
--                     end if; 
--               
--           
--           when EOP_EMPTY =>    -- Count bytes, send frame to CRC-24 and output idle word containing CRC and EOP
--                     if (Byte_Counter >= BurstShort) then
--                         BURST_tready <= '1';
--                     end if;
--                     if s_axis_tready_s = '1' then
--                         Byte_Counter <= Byte_Counter + 8;
--                     end if;
--                     CRC24_TX <= "010"&X"9000_0001_0000_0000"; -- Burst end packet 1001
--                     CRC24_TX(55 downto 40) <= FlowControl;
--                     CRC24_TX(59 downto 57) <= TX_ValidBytes_s;  -- '1' & TX_ValidBytes_s; 
--                     Data_Valid <= '1';
--              when IDLE_EMPTY =>  -- Count bytes, send frame to CRC-24 and output idle word containing CRC and EOP
--                  if (Byte_Counter >= BurstShort) then
--                      BURST_tready <= '1';
--                  end if;
--                  if s_axis_tready_s = '1' then
--                      Byte_Counter <= Byte_Counter + 8;
--                  end if;
--                  CRC24_TX <= "010"&X"C000_0001_0000_0000"; -- Burst end packet 1001
--                  --CRC24_TX(55 downto 40) <= RX_prog_full;
--                  Data_Valid <= '1';
--
--                When FILL =>       -- Continue sending idle words to fill up the minimum frame length
--                 --                BURST_tready <= '1';
--                     if s_axis_tready_s = '1' then
--                         Byte_Counter <= Byte_Counter + 8;
--                     end if;                    CRC24_TX <= "010"&X"8000_0001_0000_0000"; -- Idle fill packets 1000
--                     CRC24_TX(55 downto 40) <= FlowControl;
--                     --CRC24_En <= '0';
--                     Data_Valid <= '1';
--                     CRC24_RST <= '1';
--                     if (Byte_Counter >= BurstShort-8) then
--                         BURST_tready <= '1';
--                     end if;
--
--                when EOP_FULL =>    -- Send frame to CRC-24 and output burst word containing CRC and EOP
--                    BURST_tready <= '1';
--                    CRC24_TX <= "010"&X"9000_0001_0000_0000"; -- Burst end packet -> 1101 if more data follows or 1001 if no data follows
--                    CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;
--                    CRC24_TX(55 downto 40) <= FlowControl;
--                    Data_Valid <= '1';
--               when IDLE_FULL =>    -- Send frame to CRC-24 and output burst word containing CRC and EOP
--                     BURST_tready <= '1';
--                     CRC24_TX <= "010"&X"C000_0001_0000_0000"; -- Burst end packet -> 1101 if more data follows or 1001 if no data follows
--                     CRC24_TX(55 downto 40) <= FlowControl;
--                     Data_Valid <= '1';
-- 
--           end case;
--        else
--            CRC24_RST <= CRC24_RST;
--            if s_axis.tvalid = '1' and s_axis_tready_s = '1'then
--                valid_temp <= '1';
--            end if;
--          end if;
--      end if;
--  end process output;


end architecture framing;
