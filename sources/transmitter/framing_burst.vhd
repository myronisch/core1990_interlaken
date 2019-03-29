library ieee; 
use ieee.std_logic_1164.all;

entity Burst_Framer is 
	generic (
        BurstMax   : positive;      -- Configurable value of BurstMax
        BurstShort : positive       -- Configurable value of BurstShort
	);
	port ( 
		clk	  : in std_logic;			                      -- System clock
		reset : in std_logic;			                      -- Reset, use for initialization
		
		TX_Enable     : in std_logic;                         -- Enable the TX
		TX_SOP        : in std_logic;                         -- Start of Packet
		TX_ValidBytes : in std_logic_vector(2 downto 0);      -- Valid bytes packet contains
		TX_EOP        : in std_logic;                         -- End of Packet
		TX_Channel    : in std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
		
		Data_in          : in std_logic_vector(63 downto 0);  -- Input data
		Data_in_valid    : in std_logic ;                     -- 1 means that the fifo data was successfully read
		Data_out         : out std_logic_vector(66 downto 0); -- To scrambling/framing
		Data_valid_out   : out std_logic;				      -- Indicate data transmitted is valid
		--Data_control_out : out std_logic;                     -- Control word indication
		
	    HealthLane       : out std_logic;                      -- Lane status bit transmitted for diagnostic word
        HealthInterface  : out std_logic;                      -- Interface status bit transmitted for diagnostic word
		
        TX_FlowControl  : in std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
        RX_prog_full    : in std_logic_vector(15 downto 0);    
        
        FIFO_Empty   : in std_logic;
		
		FIFO_meta    : in std_logic;                          -- Request from the MetaFraming to read data from the FIFO
		FIFO_data    : in std_logic_vector(4 downto 0);       -- Determines how many bytes have to be transmitted (yet unutilized)
		FIFO_read    : out std_logic;              			  -- Request data from the FIFO
		Gearboxready : in std_logic
	);
end Burst_Framer;

architecture framing of Burst_Framer is 
	type state_type is (IDLE, DATA, WORD, FILL, EOP_SET, EOP_FULL, EOP_EMPTY);
	signal pres_state, next_state : state_type;
	
	signal Data_Temp             : std_logic_vector(66 downto 0) := (others => '0');
	signal Byte_Counter          : integer range 0 to 80;
	signal Word_Control_out      : std_logic;
	signal Data_Control          : std_logic;
	signal Data_Valid            : std_logic := '0';
	signal FIFO_readreq          : std_logic;
	signal Word_valid_out        : std_logic;  
	signal HDR_P1, HDR_P2 : std_logic_vector(2 downto 0);
	signal Valid_P1, Valid_P2 : std_logic
	;
	
	signal Data_P1, Data_P2                    : std_logic_vector(63 downto 0);    -- Pipelined data
	--signal ControlValid_P1, ControlValid_P2    : std_logic_vector(1 downto 0);     -- Pipelined control/valid indicator
	signal Data_valid_temp : std_logic;
	signal valid_temp : std_logic := '0';
	
    signal CRC24_TX  : std_logic_vector(66 downto 0) := (others => '0');   -- Data transmitted to CRC-24
    signal CRC24_Out : std_logic_vector(23 downto 0);   -- Calculated CRC-24 which returns
    --signal CRC24_En  : std_logic;                       -- Indicate the CRC-24 the data is valid
    signal CRC24_RST : std_logic;                       -- CRC24 reset
    signal CRC24_P1  : std_logic;                       -- CRC24 reset pipelining
    signal CRC24_RST_P1  : std_logic;                       -- CRC24 reset pipelining
    signal CRC24_Stored : std_logic_vector(31 downto 0);
    signal CRC24_Ready : std_logic;
    signal CRC_P1, CRC_P2 : std_logic;
    
    signal Gearboxready_P1 : std_logic;
    signal CalcCrc   : std_logic;                       -- CRC24_EN and Gearboxready
    signal TX_ValidBytes_s : std_logic_vector(2 downto 0);
    
        -- Constants
   -- constant SOP : std_logic_vector(2 downto 0) := "100";  -- Start Of Packet
   -- constant EOP : std_logic_vector(2 downto 0) := "001";  -- End Of Pack
    

    component CRC_24 -- Add the CRC-24 component
        generic
        (
            Nbits     : positive := 64;
            CRC_Width : positive := 24;
            G_Poly    : Std_Logic_Vector := X"32_8B63"; -- Polynomal for CRC24 Interlaken
            G_InitVal : std_logic_vector:=X"FF_FFFF"
        );
        port
        (
            CRC   : out std_logic_vector(CRC_Width-1 downto 0);
            Calc  : in  std_logic;
            Clk   : in  std_logic;
            DIn   : in  std_logic_vector(Nbits-1 downto 0);
            Reset : in  std_logic
        );
    end component CRC_24;
begin

	CRC_24_Encoding : CRC_24 -- Define the connections of the CRC-24 component to the Burst component and generics
	generic map
	(
        Nbits       => 64,
        CRC_Width   => 24,
        G_Poly      => X"32_8B63", --Test with CRC-32 : 1EDC_6F41 (Interlaken-24 : X"32_8B63") previous: 04C11DB7
        G_InitVal   => X"FF_FFFF"
	)
    port map
	(
        Clk     => Clk,
        DIn     => CRC24_TX(63 downto 0),
        CRC     => CRC24_Out,
        Calc    => CalcCrc,
        Reset   => CRC24_RST
	);
	
    CalcCrc <= Gearboxready and FIFO_meta;
	
    pipeline : process (clk, reset)
        variable CRC24_Out_v: std_logic_vector(23 downto 0); 
        variable Data_valid_check : std_logic;
	begin
        if (reset = '1') then
            Data_P1          <= (others => '0');
            Data_P2          <= (others => '0');
            Data_out         <= (others => '0');
            CRC24_Stored     <= (others => '0');
            --ControlValid_P1  <= "00";
            --ControlValid_P2  <= "00";
            --Data_Control_Out <= '0';
            Data_Valid_Out   <= '0';
            CRC24_Ready      <= '0';
            CRC24_RST_P1     <= '0';
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
            
            Data_Valid_Out <= '0';
            CRC_P1 <= '0';
            
            Gearboxready_P1 <= Gearboxready;
            CRC24_Rst_P1 <= CRC24_Rst;
            
            if(CRC24_TX(62 downto 60) = "100" or CRC24_TX(61 downto 60) = "01") then
                CRC_P1 <= '1';
            end if;
            CRC_P2 <= CRC_P1;
            
            if (CRC_P2 = '1') then
                CRC24_Out_v := CRC24_Out;
            end if;

            if(Gearboxready = '1' and FIFO_meta = '1') then
                Data_P1  <= CRC24_TX(63 downto 0);
                Data_P2  <= Data_P1;    
                Data_out(63 downto 0) <= Data_P2;
                
                HDR_P1 <= CRC24_TX(66 downto 64);
                HDR_P2  <= HDR_P1;
                Data_Out(66 downto 64) <= HDR_P2;
                
                Valid_P1  <= Data_Valid;
                Valid_P2 <= Valid_P1;
                Data_Valid_Out   <= Valid_P2;	  
                Data_valid_check := Valid_P2;  
                
                --if(HDR_P2 = "010"and(Data_P2(62 downto 60) = "110" or Data_P2(61 downto 60) = "01")) then --Control word BurstMax or EOP only word 
                if(HDR_P2 = "010"and(Data_P2(61 downto 60) = "01")) then --Control word BurstMax or EOP only word 
                    Data_out(23 downto 0) <= CRC24_Out_v; -- Include CRC in last packet of burst   
                end if;
                
                if(Valid_P2 = '0') then
                    Data_Out <= "010"&X"8000_0001_0000_0000";  -- Idle control word
                end if;                 

                --CRC24_PP1 <= CRC24_Rst;
            end if;
            
            if(Data_valid_check = '0') then
                Data_Out <= "010"&X"8000_0001_0000_0000";  -- Idle control word
            end if;   
           
--            CRC24_RST_P1 <= CRC24_Rst;
            
--            if (CRC24_RST_P1 = '1') then 
--               if(ControlValid_P2(1) = '1' and Gearboxready = '1' and FIFO_meta = '1' and CRC24_Ready = '0') then
--                   Data_out(31 downto 0) <= CRC24_Out; -- Include CRC in last packet of burst
--               else
--                   if (CRC24_Ready = '0') then
--                       CRC24_Stored <= CRC24_Out;
--                       CRC24_Ready <= '1';
--                   end if;
--               end if;
--            end if;
            
--            if (CRC24_Ready = '1' and ControlValid_P2(1) = '1' and Gearboxready = '1' and FIFO_meta = '1') then
--               Data_out(31 downto 0) <= CRC24_Stored;
--               CRC24_Ready <= '0';
--            end if;              

        end if;
	end process pipeline;
	
--	valid : process(FIFO_meta, Gearboxready, data_in_valid)
--	begin
--	   --if(rising_edge(clk)) then
--	       if(Gearboxready = '0' or FIFO_meta = '0') and data_in_valid = '1' then
--	           valid_temp <= '1';
--	       end if;
--      -- end if;
--	end process valid;
	
	fifo_reading : process (FIFO_meta, FIFO_readreq, Gearboxready, FIFO_Empty) is
	begin
	   if (FIFO_meta = '1' and FIFO_readreq = '1' and Gearboxready = '1' and FIFO_Empty = '0') then
	       FIFO_read <= '1';
	   else
	       FIFO_read <= '0';
	   end if;
	end process fifo_reading;
	
	state_register : process (clk) is -- Determines the next state of the FSM
	begin
		if (rising_edge(clk)) then
            pres_state <= next_state;
            if TX_EOP = '1' then
                TX_ValidBytes_s <= TX_ValidBytes;
            end if; 
		end if;
	end process state_register;
	
	state_decoder : process (pres_state, TX_SOP, TX_Enable, TX_EOP, Byte_Counter, FIFO_meta, Gearboxready) is
	begin
	    if(Gearboxready = '0' or FIFO_meta = '0') then
	       next_state <= pres_state;
	    else
            case pres_state is
            when IDLE =>
                if (TX_Enable = '1' and TX_SOP = '1' and TX_EOP = '0') then
                    next_state <= DATA;
                elsif (TX_Enable = '1' and TX_SOP = '1' and TX_EOP = '1') then
                    next_state <= EOP_SET;
                else 
                    next_state <= IDLE;
                end if;
            when DATA =>
                if(TX_EOP = '1' ) then
                    next_state <= EOP_SET;    
                elsif (Byte_Counter >= (BurstMax-8)) then
                    next_state <= WORD;
                else
                    next_state <= DATA;
                end if;	
            when WORD =>
                next_state <= DATA;
            when EOP_SET =>
                if (Byte_Counter >= BurstShort) then
                    next_state <= EOP_FULL;
                else
                    next_state <= EOP_EMPTY;
                end if;	            
            when EOP_EMPTY =>
                if (Byte_Counter >= BurstShort) then
                   next_state <= IDLE;
                else 
                   next_state <= FILL;
                end if;               
            when FILL =>
                if (Byte_Counter >= BurstShort-8) then
                    next_state <= IDLE;
                else 
                    next_state <= FILL;
                end if;
            when EOP_FULL =>
                next_state <= IDLE;
            when others =>
                next_state <= IDLE;
            end case;
        end if;
	end process state_decoder;

	output : process (pres_state, clk) is
	begin
        if rising_edge(clk) then
            CRC24_RST <= '0'; 
            -- X"Type/SOP/EOP(2)FlowC(2)_FlowC(2)Channel(2)_Mutiple(2)CRC24(2)_CRC24(2)CRC24(2)" Structure of packet
            if(Gearboxready = '1' and  FIFO_meta = '1') then
                case pres_state is
                when IDLE =>  		-- Wait for SOP, start reading FIFO and save last cycle data
                    --CRC24_EN <= '0'; -- Reset CRC calculations
                    CRC24_RST <= '1';
                    Data_Valid <= '0';
                    Word_Control_out <= '0';
                    FIFO_readreq <= '1';
                    Byte_Counter <= 8;
                    CRC24_P1 <= '0';
                    Data_Control <= '0';
                    valid_temp <= '0';
                    
                    Data_temp <= "001"&Data_in;
                    Data_valid_temp <= Data_in_valid;                    
                    
                    if (TX_SOP = '1' and TX_Enable = '1') then -- Indicates the start of data flow
                        CRC24_TX <= "010"&X"E000_0001_0000_0000"; -- Start packet E000_0001_0000_0000
                        CRC24_TX(55 downto 40) <= RX_prog_full;
                        Data_Valid <= '1';
                        Data_valid_temp <= '1'; --Start of a new packet is always valid
                   -- elsif (TX_flowcontrol(0) = '0') then  -- TODO Flowcontrol is not used? why as condition? 
                    --    CRC24_TX <= "010"&X"C000_0001_0000_0000"; --  C000_0001_0000_0000
                     --   CRC24_TX(55 downto 40) <= RX_prog_full;
                        
                    else
                        CRC24_TX <= "001"&X"0000_0000_0000_0000"; ---TODO what does this case mean? error condition? -- data word placeholder
                    end if;
                    
                    if(TX_EOP = '1' and TX_SOP = '1') then
                        FIFO_readreq <= '0';
                        Data_Valid <= '1';    
                    end if;
                    
                when DATA =>  		-- Process input data, count the transmitted bytes, send data to output and CRC-24
                    Byte_Counter <= Byte_Counter + 8;
                    CRC24_TX <= Data_temp;
                    Data_temp <= "001"&Data_in;
                    Data_valid <= Data_valid_temp;
                    Data_valid_temp <= Data_in_valid;
                    Data_Control <= '0';
--                    if Data_in_valid = '0' then
--                        Data_Control <= '1';
--                        Data_temp <= X"8000_0001_0000_0000";
--                    end if;
                    CRC24_RST <= '0';
                    --CRC24_EN <= Data_in_valid;  -- <= '1' --Data_in_valid; -- Makes CRC-32 error
                    FIFO_readreq <= '1';
                    
                    --added
                    if(FIFO_meta = '0') then
                        Data_valid <= '0';
                    end if;
                    
                    if (Byte_Counter >= (BurstMax-8)) then
                        FIFO_readreq <= '0';
                    elsif(TX_EOP = '1' ) then
                        FIFO_readreq <= '0';
                    end if; 
                    
                    if (CRC24_P1 = '1') then
                        CRC24_RST <= '1';
                        CRC24_P1 <= '0';
                    end if;    
                    
                    if Word_Control_out = '1' then
                        Data_Control <= '1';
                        Word_Control_out <= '0';
                        CRC24_P1 <= '1';
                    end if;
                    
                    if Word_valid_out = '1' then
                        Data_valid_temp <= '1';
                        word_valid_out <= '0';
                    end if;
                    
                    if valid_temp = '1' then
                        Data_valid_temp <= '1';
                        valid_temp <= '0';
                    end if;
                       
                when WORD =>        -- Reset byte count, send frame to CRC-24, stop reading FIFO to make room for output frame 
                    FIFO_readreq <= '1';
                    Byte_Counter <= 0;
                    --CRC24_EN <= '1';
                    
                    CRC24_TX <= Data_temp;
                    Data_temp <= "010"&X"C000_0001_0000_0000"; -- Burst no start nor end packet 1100
                    Data_temp(55 downto 40) <= RX_prog_full;
                    
                    Data_valid <= Data_valid_temp;
                    Data_valid_temp <= '1';
                    if (Data_in_valid = '1') then
                        Word_valid_out <= '1';
                    end if;
                    Word_Control_out <= '1';
                    
                when EOP_SET =>     -- Transmit last bytes from buffer and add this to byte count
                    Byte_Counter <= Byte_Counter + 8;
                    
                    CRC24_TX <= Data_temp;
                    Data_temp <= "001"&Data_in; -- Still read out data and save because FIFO takes a cycle to respond
                    
                    Data_valid <= Data_valid_temp;
                    Data_valid_temp <= Data_in_valid;
                    
                    HealthLane <= '1';     -- set status of lane to healthy
                    HealthInterface <= '1'; -- set status of interface to health
                    
                    Data_Control <= '0';
                    --CRC24_EN <= '1';
                    CRC24_RST <= '0';
                    if (CRC24_P1 = '1') then
                        CRC24_RST <= '1';
                        CRC24_P1 <= '0';
                    end if; 
                
                when EOP_EMPTY =>	-- Count bytes, send frame to CRC-24 and output idle word containing CRC and EOP
                    if (Byte_Counter >= BurstShort) then
                         FIFO_readreq <= '1';
                    end if; 
                    --Byte_Counter <= Byte_Counter + 8;
                    
                    CRC24_TX <= "010"&X"9000_0001_0000_0000"; -- Burst end packet 1001
                    CRC24_TX(55 downto 40) <= RX_prog_full;
                    CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s; 
                    Data_Valid <= '1';
                    Data_Control <= '1'; 
                    
                When FILL =>		-- Continue sending idle words to fill up the minimum frame length
    --                FIFO_readreq <= '1';
                    Byte_Counter <= Byte_Counter + 8;
                    CRC24_TX <= "010"&X"8000_0001_0000_0000"; -- Idle fill packets 1000
                    CRC24_TX(55 downto 40) <= RX_prog_full;
                    --CRC24_EN <= '0';
                    Data_Valid <= '1';
                    CRC24_RST <= '1';
                    if (Byte_Counter >= BurstShort-8) then
                        FIFO_readreq <= '1';
                    end if;
                    
                when EOP_FULL => 	-- Send frame to CRC-24 and output burst word containing CRC and EOP
                    FIFO_readreq <= '1';
                    CRC24_TX <= "010"&X"9000_0001_0000_0000"; -- Burst end packet -> 1101 if more data follows or 1001 if no data follows
                    CRC24_TX(60 downto 57) <= '1' & TX_ValidBytes_s;
                    CRC24_TX(55 downto 40) <= RX_prog_full;
                    Data_Valid <= '1';
                    Data_Control <= '1';

                end case;
            else
                if data_in_valid = '1' then
                    valid_temp <= '1';
                end if;
            end if;
	    end if;
	end process output;

end architecture framing;
