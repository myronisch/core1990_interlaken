library ieee;
use ieee.std_logic_1164.all;
use work.interlaken_package.all;
use work.axi_stream_package.all;

entity Burst_Framer is
	generic (
		Lanes : positive := 4;
        Lane : natural := 0
    );
    port (
        clk                  : in std_logic;                        -- System clock
        reset             : in std_logic;                        -- Reset, use for initialization
        Data_out          : out std_logic_vector(66 downto 0);   -- To scrambling/framing
        FlowControl       : in std_logic_vector(15 downto 0);    -- Flow control data (yet unutilized)
        meta_tready       : in std_logic;                        -- Request from the MetaFraming to read data from the FIFO
        Gearboxready      : in std_logic;
        Channel           : in std_logic_vector(7 downto 0);
        s_axis            : in axis_64_type;
        s_axis_tready     : out  std_logic;
        insert_burst_idle : in std_logic;
        insert_burst_idle_df : in std_logic;
        insert_burst_sop  : in std_logic;
        insert_burst_eop  : in std_logic
    );
end Burst_Framer;

architecture framing of Burst_Framer is
    signal BURST_tready         : std_logic;
    signal CRC24_TX             : std_logic_vector(66 downto 0) := (others => '0'); -- Data transmitted to CRC-24
    signal CRC24_TX_p1          : std_logic_vector(66 downto 0) := (others => '0'); -- Data transmitted to CRC-24
    
    signal CRC24_Out            : std_logic_vector(23 downto 0);                    -- Calculated CRC-24 which returns
    signal CRC24_RST            : std_logic;                                        -- CRC24 reset 
    signal CRC24_RST_P1         : std_logic;                                        -- CRC24 reset 
    signal CalcCrc              : std_logic;                                        -- CRC24_EN and Gearboxready
    signal TX_ValidBytes_s      : std_logic_vector(2 downto 0);
    signal s_axis_tready_s      : std_logic := '0';
    signal calendarCount        : integer range 0 to 15;
    
    signal insert_burst_idle_tready : std_logic;
    signal insert_burst_idle_df_tready : std_logic;
    signal insert_burst_sop_tready  : std_logic;
    signal insert_burst_eop_tready  : std_logic;
    
begin

    CRC_24_Encoding : entity work.CRC_24 -- Define the connections of the CRC-24 component to the Burst component and generics
        port map(
            CRC => CRC24_Out,
            Calc => CalcCrc,
            Clk => clk,
            DIn => CRC24_TX(63 downto 0),
            Reset => CRC24_RST_P1
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
            	CRC24_TX_p1 <= CRC24_TX; --pipeline 2 clockcycles to be in sync with CRC24
                Data_out(66 downto 0)<= CRC24_TX_p1(66 downto 0); --Pipe data 
                if(CRC24_TX_p1(66 downto 63) = "0101") then 
                      CRC24_Out_v := CRC24_Out;
                    Data_out(23 downto 0) <= CRC24_Out_v; -- Include CRC in last packet of burst   
                end if;
            end if;
        end if;
    end process pipeline;

    s_axis_tready_s <= BURST_tready and meta_tready and Gearboxready; --and not idle
    s_axis_tready <= s_axis_tready_s;
   
    state_register : process (clk, reset) -- Determines the next state of the FSM
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
    
    BURST_tready <= not(
    		insert_burst_sop or 
    		insert_burst_eop or 
    		insert_burst_idle or 
    		insert_burst_idle_df or 
    		insert_burst_sop_tready or 
    		insert_burst_eop_tready or 
    		insert_burst_idle_tready or 
    		insert_burst_idle_df_tready or 
    		(not s_axis.tvalid)
    );
    
                		
    
    output : process (clk, reset) is
    begin
    	if reset = '1' then
    		calendarCount <= 0;
    		CRC24_RST <= '1';
    		CRC24_RST_P1 <= '1';	
        elsif rising_edge(clk) then
            if( meta_tready = '1' and Gearboxready = '1' ) then
            	CRC24_RST <= '0';
            	CRC24_RST_P1 <= CRC24_RST;
            	insert_burst_sop_tready <= '0'; 
                insert_burst_eop_tready <= '0'; 
                insert_burst_idle_tready <= '0'; 
                insert_burst_idle_df_tready <= '0'; 
                -- insert_burst_sop, eop and idle are flags from the TX multichannel to ensure burst format during channel-bonding
                if (insert_burst_sop = '1') or 
                   (insert_burst_eop = '1') or 
                   (insert_burst_idle = '1') or 
                   (insert_burst_idle_df = '1') or 
                   (insert_burst_sop_tready = '1') or 
                   (insert_burst_eop_tready = '1') or 
                   (insert_burst_idle_tready = '1') or 
                   (insert_burst_idle_df_tready = '1') or 
                   (s_axis.tvalid ='0')  then --or (Channel_send_idle = '1') then --This means that it was indicated in the data state to send a Burst control word.    
                    CRC24_RST <= '1';
                    CRC24_TX(66 downto 64) <= "010"; --inversion and framing
                    CRC24_TX(63) <= '1'; --Control
                    CRC24_TX(62) <= '0'; --Type
                    CRC24_TX(61) <= '0'; --SOP
                    CRC24_TX(60 downto 57) <= x"0";--EOP_Format 
                    CRC24_TX(56) <= '0'; --Reset Calendar bit
                    if Lane = 0 then
                    	if calendarCount < 16-Lanes then
                    		calendarCount <= calendarCount + Lanes;
                    	else
                    		calendarCount <= 0;
                    	end if;
                    	if calendarCount = 0 then
                    		CRC24_TX(56) <= '1'; --Reset Calendar bit
                    	end if;
                    end if;
                    CRC24_TX(55 downto 40) <= FlowControl; --Per channel flow control, 1 means Xon, 0 means Xoff. (Inverted at transmittermultichannel)
                    CRC24_TX(39 downto 32) <= Channel;
                    CRC24_TX(31 downto 24) <= x"00"; --Multiple-Use field 
                    CRC24_TX(23 downto 0) <= (others => '0');
                    if (insert_burst_idle_df = '1' or insert_burst_idle_df_tready = '1') then
                        CRC24_TX(62) <= '1'; --Type
                    end if;
                    if((insert_burst_eop = '1' or insert_burst_eop_tready = '1') and s_axis.tvalid ='1') then
                        CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;--EOP_Format, converted from tkeep.
                    elsif(insert_burst_sop = '1' or insert_burst_sop_tready = '1') then
                        CRC24_TX(62) <= '1'; --Type
                        CRC24_TX(61) <= '1'; --SOP
                    end if;
                else
                    CRC24_TX(63 downto 0) <= s_axis.tdata;
                    CRC24_TX(66 downto 64)<= "001"; --Data word
                end if;
            else
            	--We can't process these signals right now, so let's process them later.
            	if insert_burst_idle = '1' then
            		insert_burst_idle_tready <= '1';
            	end if; 
				if insert_burst_idle_df = '1' then 
					insert_burst_idle_df_tready <= '1';
				end if;
				if insert_burst_sop = '1' then 
					insert_burst_sop_tready  <= '1'; 
				end if;
				if insert_burst_eop = '1' then
					insert_burst_eop_tready  <= '1';
				end if; 
            end if; --meta_tready = '1' and Gearboxready = '1'
        end if; --clk
    end process output;
    
    

end architecture framing;--(from 491 lines to 146)
