library ieee;
use ieee.std_logic_1164.all;
use work.interlaken_package.all;
use work.axi_stream_package.all;

entity Burst_Framer is
    generic (
        BurstMax   : positive :=  256;   -- Configurable value of BurstMax
        BurstShort : positive :=  8;     -- Configurable value of BurstShort
        Lanes : positive := 4
  
    );
    port (
        clk	              : in std_logic;			            -- System clock
        reset             : in std_logic;			            -- Reset, use for initialization
        TX_Enable         : in std_logic;                        -- Enable the TX
        Data_out          : out std_logic_vector(66 downto 0);   -- To scrambling/framing
        FlowControl       : in std_logic_vector(15 downto 0);    -- Flow control data (yet unutilized)
        meta_tready       : in std_logic;                        -- Request from the MetaFraming to read data from the FIFO
        Gearboxready      : in std_logic;
        s_axis            : in axis_64_type;
        s_axis_tready     : out  std_logic;
        LaneNumber        : in std_logic_vector (3 downto 0);
        insert_burst_idle : in std_logic;
        insert_burst_sop  : in std_logic;
        insert_burst_eop  : in std_logic;
        LaneByteMax       : out std_logic;
        LaneByteShort     : out std_logic
    );
end Burst_Framer;

architecture framing of Burst_Framer is
    constant ByteMax : positive := (BurstMax/Lanes); --ByteMax is maxBytes per lane to ensure BurstMax
    signal Channel_send_idle : std_logic;
    signal Byte_Counter         : integer range 0 to BurstMax;
    signal BURST_tready         : std_logic;
    signal CRC24_TX             : std_logic_vector(66 downto 0) := (others => '0'); -- Data transmitted to CRC-24
    signal CRC24_Out            : std_logic_vector(23 downto 0);                    -- Calculated CRC-24 which returns
    signal CRC24_RST            : std_logic;                                        -- CRC24 reset 
    signal CalcCrc              : std_logic;                                        -- CRC24_EN and Gearboxready
    signal TX_ValidBytes_s      : std_logic_vector(2 downto 0);
    signal s_axis_tready_s      : std_logic;
    signal SendEOP              : std_logic; --Indication that the next burst word has to be an End of Packet
    signal delay_SOP            : std_logic;
    signal delay_EOP            : std_logic;
    signal LaneByteMax_s : std_logic;
    signal SOP_is_delayed : std_logic;
    signal LaneByteShort_s : std_logic;

begin
    --Channel_send_idle <= not s_axis.tvalid and s_axis.tlast;

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

    begin
        if (reset = '1') then
            Data_out <= (others => '0');
        elsif (rising_edge(clk)) then
            --CRC24_TX(23 downto 0)  <= x"000000"; --CRC24 field
            if(Gearboxready = '1' and meta_tready = '1') then
                 if(CRC24_TX(62 downto 60) = "100" or CRC24_TX(61 downto 60) = "01") then --Get CRC-24
                CRC24_Out_v := CRC24_Out;
                end if;
                Data_out(66 downto 0)<= CRC24_TX(66 downto 0); --Pipe data 
                if( (CRC24_TX(66 downto 64) = "010" and (CRC24_TX(62 downto 60) = "001"))  --EOP
                    --(CRC24_TX(66 downto 64) = "010" and (CRC24_TX(62 downto 60) = "100"))     --CONTROL BURSTMAX 
                ) then 
                    Data_out(23 downto 0) <= CRC24_Out_v; -- Include CRC in last packet of burst   
                end if;
            end if;
        end if;
    end process pipeline;

    s_axis_tready_s <= BURST_tready and meta_tready and Gearboxready;
    s_axis_tready <= s_axis_tready_s;
   
    
    state_register : process (clk, reset) is -- Determines the next state of the FSM
    begin
        if (reset='1') then
            TX_ValidBytes_s <= "000";
        elsif (rising_edge(clk)) then
            if s_axis.tlast = '1' then
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

    LaneByteMax <= LaneByteMax_s;       --Burstmax flag
    LaneByteShort <=LaneByteShort_s;    --Burstshort flag
    
    output : process (clk, reset) is
        variable insert_burst_sop_v: std_logic := '0';
        variable insert_burst_eop_v: std_logic := '0';
    begin
        if reset = '1' then
            delay_SOP <= '0';
            delay_EOP <= '0';
            SOP_is_delayed <= '0';
        elsif rising_edge(clk) then
            CRC24_RST <= '0';
            if( meta_tready = '1' and Gearboxready = '1' ) then
                SendEOP <= '0';
                BURST_tready <= '1';
                 
                if (BURST_tready = '0' and insert_burst_sop = '0' and insert_burst_eop = '0') or (insert_burst_idle = '1') then --or (Channel_send_idle = '1') then --This means that it was indicated in the data state to send a Burst control word.
                    Byte_Counter <= Byte_Counter + 8;
                    CRC24_RST <= '1';
                    CRC24_TX(66 downto 64) <= "010"; --inversion and framing
                    CRC24_TX(63) <= '1'; --Control
                    CRC24_TX(62) <= '0'; --Type
                    CRC24_TX(61) <= '0'; --SOP
                    CRC24_TX(60 downto 57) <= x"0";--EOP_Format 
                    CRC24_TX(56) <= '0'; --Reset Calendar bit
                    CRC24_TX(55 downto 40) <= FlowControl; --Per channel flow control, 1 means Xon, 0 means Xoff. (Inverted at transmittermultichannel)
                    CRC24_TX(39 downto 32) <= x"0" & LaneNumber;
                    CRC24_TX(31 downto 24) <= x"00"; --Multiple-Use field 
                    if(insert_burst_eop_v = '1') then
                        CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;--EOP_Format, converted from tkeep.
                        insert_burst_eop_v := '0';
                        Byte_Counter <= 0;
                    elsif(insert_burst_sop_v = '1') then
                        CRC24_TX(62) <= '1'; --Type
                        insert_burst_sop_v := '0'; 
                        if (s_axis.tvalid = '1') then -- Indicates the start of data flow
                            CRC24_TX(61) <= '1'; --SOP      
                        end if;
                     end if;
                else
                    CRC24_TX(63 downto 0) <= s_axis.tdata;
                    CRC24_TX(66 downto 64)<= "001"; --Data word
                    Byte_Counter <= Byte_Counter + 8;
                end if;
                --Burstshort flag process
                if(Byte_Counter <= (BurstShort/Lanes)) then
                    LaneByteShort_s <= '0';
                else 
                    LaneByteShort_s <= '1';
                end if;
                --burstmax flag process
                if(Byte_Counter = ByteMax) then
                    LaneByteMax_s <= '1';
                    Byte_Counter <= 8; 
                else 
                    LaneByteMax_s <= '0';
                end if;        
            end if; --meta_tready = '1' and Gearboxready = '1'
            
            if ((BURST_tready = '0' and insert_burst_sop = '1') or (BURST_tready = '0' and insert_burst_sop = '1')) then
               BURST_tready  <= '0';
            end if;
            
            if (insert_burst_sop = '1' and BURST_tready= '1' and LaneByteMax_s ='0') or (SOP_is_delayed = '1'and BURST_tready= '1' and LaneByteMax_s ='0' ) then
                if  (meta_tready='1' and Gearboxready= '1' and SOP_is_delayed = '0') or (delay_SOP = '0' and meta_tready='1' and Gearboxready= '1') then
                    insert_burst_sop_v := '1';
                    BURST_tready <= '0';
                    SOP_is_delayed <= '0';
                elsif delay_SOP = '1' and insert_burst_sop = '0' then
                    delay_SOP <= '0';
                else
                    delay_SOP <=  '1';
                    SOP_is_delayed <= '1';
                end if;
                
                if(insert_burst_sop = '1' and SOP_is_delayed = '1') then
                    delay_SOP <=  '1';
                    SOP_is_delayed <= '1';
                end if;
                
                if (Gearboxready = '0' and insert_burst_sop = '1') then
                    SOP_is_delayed <= '1';
                    delay_SOP <=  '0';
                elsif (meta_tready = '0' and insert_burst_sop = '0') then
                    SOP_is_delayed <= '1';
                    delay_SOP <=  '0';
                end if;
            end if;
            
            if (insert_burst_eop = '1') then
                    insert_burst_eop_v := '1';
                    BURST_tready <= '0';
            end if;

            --if Gearboxready = '1' and  insert_burst_eop_v = '1' then
            --    BURST_tready <= '0';
            --end if;    
        end if; --clk
    end process output;

end architecture framing;--(from 491 lines to 146)
