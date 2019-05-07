library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity interlaken_interface is
    generic(
         BurstMax   : positive;      -- Configurable value of BurstMax
         BurstShort : positive;      -- Configurable value of BurstShort
         PacketLength : positive    -- Configurable value of PacketLength -- 24 packets * 8  = 192 B
    );
	port (
	    ----40 MHz input, from clock generator------------
        clk40 : in std_logic;
        clk150 : in std_logic;
        reset : in std_logic;
        
        ----125 MHz input, to transceiver (SGMII clock)--
        GTREFCLK_IN_P : in std_logic;
        GTREFCLK_IN_N : in std_logic;
        
        
        ----Data signals---------------------------------
		TX_Data 	: in std_logic_vector(63 downto 0);          -- Data transmitted
        RX_Data     : out std_logic_vector (63 downto 0);   -- Data received
		
		----Transceiver related transmission-------------
		TX_Out_P  : out std_logic;
		TX_Out_N  : out std_logic;
		RX_In_P   : in std_logic;
        RX_In_N   : in std_logic;
		
		----Transmitter input/ready signals--------------
		TX_SOP          : in std_logic;
		TX_EOP          : in std_logic;
		TX_EOP_Valid    : in std_logic_vector(2 downto 0);
		TX_FlowControl  : in std_logic_vector(15 downto 0);
        TX_Channel      : in std_logic_vector(7 downto 0);
		
		----Receiver output signals-----------------------
		RX_SOP        	: out std_logic;                         -- Start of Packet
		RX_EOP        	: out std_logic;                         -- End of Packet
		RX_EOP_Valid 	: out std_logic_vector(2 downto 0);      -- Valid bytes packet contains
		RX_FlowControl	: out std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
		RX_Channel    	: out std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
		
		RX_FIFO_Valid    : out std_logic;
		
		----Transmitter status signals---------------------
		TX_FIFO_Full    : out std_logic;
        TX_FIFO_Write   : in std_logic;
        TX_FIFO_progfull: out std_logic;
        
--        RX_in: out std_logic_vector(63 downto 0); --Debug
--        TX_out: out std_logic_vector(63 downto 0); --Debug
--        Data_Descrambler : out std_logic_vector(66 downto 0);
--        Data_Decoder : out std_logic_vector(66 downto 0);
		
		----Receiver status signals------------------------
		RX_FIFO_Full      : out std_logic;
		RX_FIFO_Empty     : out std_logic;
		RX_FIFO_Read      : in std_logic;
		Decoder_lock      : out std_logic;
		Descrambler_lock  : out std_logic;
		CRC24_Error       : out std_logic;
		CRC32_Error       : out std_logic
		
	);
end entity interlaken_interface;

architecture interface of interlaken_interface is
    
    signal TX_User_Clock, RX_User_Clock : std_logic;
    signal Data_Transferred : std_logic_vector(66 downto 0);    --Data in transfer
    

    
    -------------------------- Include Transceiver -----------------------------
component Transceiver_10g_64b67b
    port
    (
        SOFT_RESET_TX_IN                        : in   std_logic;
        SOFT_RESET_RX_IN                        : in   std_logic;
        DONT_RESET_ON_DATA_ERROR_IN             : in   std_logic;
        Q1_CLK0_GTREFCLK_PAD_N_IN               : in   std_logic;
        Q1_CLK0_GTREFCLK_PAD_P_IN               : in   std_logic;
    
        GT0_TX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT0_RX_FSM_RESET_DONE_OUT               : out  std_logic;
        GT0_DATA_VALID_IN                       : in   std_logic;
        GT0_TX_MMCM_LOCK_OUT                    : out  std_logic;
        GT0_RX_MMCM_LOCK_OUT                    : out  std_logic;
     
        GT0_TXUSRCLK_OUT                        : out  std_logic;
        GT0_TXUSRCLK2_OUT                       : out  std_logic;
        GT0_RXUSRCLK_OUT                        : out  std_logic;
        GT0_RXUSRCLK2_OUT                       : out  std_logic;
    
        --_________________________________________________________________________
        --GT0  (X0Y4)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt0_drpaddr_in                          : in   std_logic_vector(8 downto 0);
        gt0_drpdi_in                            : in   std_logic_vector(15 downto 0);
        gt0_drpdo_out                           : out  std_logic_vector(15 downto 0);
        gt0_drpen_in                            : in   std_logic;
        gt0_drprdy_out                          : out  std_logic;
        gt0_drpwe_in                            : in   std_logic;
        --------------------- RX Initialization and Reset Ports --------------------
        gt0_eyescanreset_in                     : in   std_logic;
        gt0_rxuserrdy_in                        : in   std_logic;
        -------------------------- RX Margin Analysis Ports ------------------------
        gt0_eyescandataerror_out                : out  std_logic;
        gt0_eyescantrigger_in                   : in   std_logic;
        ------------------- Receive Ports - Digital Monitor Ports ------------------
        gt0_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
        ------------------ Receive Ports - FPGA RX interface Ports -----------------
        gt0_rxdata_out                          : out  std_logic_vector(63 downto 0);
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        gt0_gthrxn_in                           : in   std_logic;
        --------------------- Receive Ports - RX Equalizer Ports -------------------
        gt0_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
        gt0_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        gt0_rxoutclkfabric_out                  : out  std_logic;
        ---------------------- Receive Ports - RX Gearbox Ports --------------------
        gt0_rxdatavalid_out                     : out  std_logic;
        gt0_rxheader_out                        : out  std_logic_vector(2 downto 0);
        gt0_rxheadervalid_out                   : out  std_logic;
        --------------------- Receive Ports - RX Gearbox Ports  --------------------
        gt0_rxgearboxslip_in                    : in   std_logic;
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt0_gtrxreset_in                        : in   std_logic;
        ------------------------ Receive Ports -RX AFE Ports -----------------------
        gt0_gthrxp_in                           : in   std_logic;
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        gt0_rxresetdone_out                     : out  std_logic;
        --------------------- TX Initialization and Reset Ports --------------------
        gt0_gttxreset_in                        : in   std_logic;
        gt0_txuserrdy_in                        : in   std_logic;
        -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
        gt0_txheader_in                         : in   std_logic_vector(2 downto 0);
        ------------------ Transmit Ports - TX Data Path interface -----------------
        gt0_txdata_in                           : in   std_logic_vector(63 downto 0);
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        gt0_gthtxn_out                          : out  std_logic;
        gt0_gthtxp_out                          : out  std_logic;
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt0_txoutclkfabric_out                  : out  std_logic;
        gt0_txoutclkpcs_out                     : out  std_logic;
        --------------------- Transmit Ports - TX Gearbox Ports --------------------
        gt0_txsequence_in                       : in   std_logic_vector(6 downto 0);
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt0_txresetdone_out                     : out  std_logic;
    
        --____________________________COMMON PORTS________________________________
        GT0_QPLLLOCK_OUT : out std_logic;
        GT0_QPLLREFCLKLOST_OUT  : out std_logic;
         GT0_QPLLOUTCLK_OUT  : out std_logic;
         GT0_QPLLOUTREFCLK_OUT : out std_logic;
    
              sysclk_in                               : in   std_logic
    
    );
    
    end component;
    
    signal RX_prog_full : std_logic_vector(15 downto 0);    
    signal FlowControl : std_logic_vector(15 downto 0);
    signal RX_Datavalid_Out : std_logic;
    signal RX_Header_Out : std_logic_vector(2 downto 0);
    signal RX_Headervalid_Out : std_logic;
    signal RX_Gearboxslip_In : std_logic;
    signal RX_Resetdone_Out : std_logic;
    
    signal TX_Gearboxready_Out : std_logic;
    signal TX_Header_In : std_logic_vector(2 downto 0);
    signal TX_Startseq_In : std_logic;
    signal TX_Resetdone_Out : std_logic;
    
    signal Data_Transceiver_In, Data_Transceiver_Out : std_logic_vector(63 downto 0);
    signal GT0_DATA_VALID_IN : std_logic;
    signal GT0_TX_FSM_RESET_DONE_OUT : std_logic;
    signal link_up : std_logic;
    signal Descrambler_Locked : std_logic;
    
    signal  gt0_txsequence_i                : std_logic_vector(6 downto 0);
    signal   gt0_txseq_counter_r      :   unsigned(8 downto 0);

    signal gt0_pause_data_valid_r : std_logic;
    signal gt0_data_valid_out_i   : std_logic;       
begin
    

        
    ------------------------------ System Clock --------------------------------

   
    startseq : process (TX_User_Clock)
    begin
        
        if rising_edge(TX_User_Clock) then
            if (reset = '1') then
               TX_Startseq_In <= '0';
            elsif (TX_Gearboxready_Out = '1') then
                TX_Startseq_In <= '1';           
            end if;
        end if;
    end process;
    
    ------------------------------- Transceiver --------------------------------
    Transceiver_10g_64b67b_i : Transceiver_10g_64b67b
    port map (
        SOFT_RESET_TX_IN => reset,
        SOFT_RESET_RX_IN => reset,
        DONT_RESET_ON_DATA_ERROR_IN => '0',
        Q1_CLK0_GTREFCLK_PAD_N_IN => GTREFCLK_IN_N,
        Q1_CLK0_GTREFCLK_PAD_P_IN => GTREFCLK_IN_P,
        
        GT0_TX_FSM_RESET_DONE_OUT => GT0_TX_FSM_RESET_DONE_OUT,
        GT0_RX_FSM_RESET_DONE_OUT => open,
        GT0_DATA_VALID_IN => GT0_DATA_VALID_IN,
        GT0_TX_MMCM_LOCK_OUT => open,
        GT0_RX_MMCM_LOCK_OUT => open,
        
        GT0_TXUSRCLK_OUT => open,
        GT0_TXUSRCLK2_OUT => TX_User_Clock,
        GT0_RXUSRCLK_OUT => open,
        GT0_RXUSRCLK2_OUT => RX_User_Clock,
        
        --_________________________________________________________________________
        --GT0  (X0Y2)
        --____________________________CHANNEL PORTS________________________________
        ---------------------------- Channel - DRP Ports  --------------------------
        gt0_drpaddr_in                  =>      (others => '0'),
        gt0_drpdi_in                    =>      (others => '0'),
        gt0_drpdo_out                   =>      open,
        gt0_drpen_in                    =>      '0',
        gt0_drprdy_out                  =>      open,
        gt0_drpwe_in                    =>      '0',

        --------------------- RX Initialization and Reset Ports --------------------
        gt0_eyescanreset_in             =>      '0',
        gt0_rxuserrdy_in                =>      '1',
        -------------------------- RX Margin Analysis Ports ------------------------
        gt0_eyescandataerror_out        =>      open,
        gt0_eyescantrigger_in           =>      '0',
        --------------------------- Digital Monitor Ports --------------------------
        gt0_dmonitorout_out             =>      open,
        
        ------------------ Receive Ports - FPGA RX interface Ports -----------------
        gt0_rxdata_out                  =>      Data_Transceiver_Out,
        --------------------------- Receive Ports - RX AFE -------------------------
        gt0_gthrxp_in                   =>      RX_In_P,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        gt0_gthrxn_in                   =>      RX_In_N,
        --------------------- Receive Ports - RX Equalizer Ports -------------------
        gt0_rxmonitorout_out            =>      open,
        gt0_rxmonitorsel_in             =>      (others => '0'),
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        gt0_rxoutclkfabric_out          =>      open,
        ---------------------- Receive Ports - RX Gearbox Ports --------------------
        gt0_rxdatavalid_out             =>      RX_Datavalid_Out,
        gt0_rxheader_out                =>      RX_Header_Out,
        gt0_rxheadervalid_out           =>      RX_Headervalid_Out,
        --------------------- Receive Ports - RX Gearbox Ports  --------------------
        gt0_rxgearboxslip_in            =>      RX_Gearboxslip_In,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt0_gtrxreset_in                =>      reset,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        gt0_rxresetdone_out             =>      RX_Resetdone_Out,
        
        --------------------- TX Initialization and Reset Ports --------------------
        gt0_gttxreset_in                =>      reset,
        gt0_txuserrdy_in                =>      '1',
        -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
        gt0_txheader_in                 =>      TX_Header_In,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        gt0_txdata_in                   =>      Data_Transceiver_In,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        gt0_gthtxn_out                  =>      TX_Out_N,
        gt0_gthtxp_out                  =>      TX_Out_P,
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt0_txoutclkfabric_out          =>      open,
        gt0_txoutclkpcs_out             =>      open,
        --------------------- Transmit Ports - TX Gearbox Ports --------------------
        gt0_txsequence_in               =>      gt0_txsequence_i, 
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt0_txresetdone_out             =>      TX_Resetdone_Out,
        --____________________________COMMON PORTS________________________________
        GT0_QPLLLOCK_OUT => open,
        GT0_QPLLREFCLKLOST_OUT  => open,
        GT0_QPLLOUTCLK_OUT  => open,
        GT0_QPLLOUTREFCLK_OUT => open,
        
        sysclk_in => clk40
    );
    
    --TX Gearbox sequencer
    
    gt0_data_valid_out_i <=  '1' when ((gt0_txsequence_i /= "0010101") and (gt0_txsequence_i /= "0101011") and (gt0_txsequence_i /= "1000001")) else
                                       '0';
    
        process(TX_User_Clock)
        begin
          if rising_edge (TX_User_Clock) then
                 gt0_pause_data_valid_r <=  gt0_data_valid_out_i ;
          end if;
        end process;
    
        TX_Gearboxready_Out  <= '1' when (gt0_pause_data_valid_r='1') else '0';
    
        --____________________________ TXSEQUENCE counter to GT __________________________    
        process(TX_User_Clock)
        begin
          if rising_edge (TX_User_Clock) then
            if((reset='1') or (gt0_txseq_counter_r = 66)) then 
                 gt0_txseq_counter_r <=  (others => '0') ;
            else 
                 gt0_txseq_counter_r <=  gt0_txseq_counter_r + 1 ;
            end if;
          end if;
        end process;
        gt0_txsequence_i         <= std_logic_vector(gt0_txseq_counter_r(6 downto 0));
        
     --RX Gearbox
        block_sync_sm_0_i  :  entity work.Transceiver_10g_64b67b_BLOCK_SYNC_SM 
     generic map
     (
         SH_CNT_MAX          => 64,    
         SH_INVALID_CNT_MAX  => 16    
     )
     port map
     (
         -- User Interface
         BLOCKSYNC_OUT             =>    open,
         RXGEARBOXSLIP_OUT         =>    RX_Gearboxslip_In,
         RXHEADER_IN               =>    RX_Header_Out,
         RXHEADERVALID_IN          =>    RX_Headervalid_Out,
 
         -- System Interface
         USER_CLK                  =>    RX_User_Clock,
         SYSTEM_RESET              =>    reset
     );
    
    ---------------------------- Transmitting side -----------------------------
    Interlaken_TX : entity work.Interlaken_Transmitter
    generic map(
        BurstMax   => BurstMax,      -- Configurable value of BurstMax
        BurstShort => BurstShort,    -- Configurable value of BurstShort
        PacketLength => PacketLength -- Configurable value of PacketLength
    )
    port map (
        write_clk => clk150,
        clk   => TX_User_Clock,
        reset => reset,
        
        TX_Data_In  => TX_Data,
        TX_Data_Out(63 downto 0) => Data_Transceiver_In,
        TX_Data_Out(66 downto 64) => TX_Header_In,
        
        TX_SOP          => TX_SOP,
        TX_EOP_Valid    => TX_EOP_Valid,
        TX_EOP          => TX_EOP,
        TX_Channel      => TX_Channel,
        TX_Gearboxready => TX_Gearboxready_Out,
        TX_Startseq     => TX_Startseq_In,
        
        FIFO_Write_Data => TX_FIFO_Write,
        FIFO_prog_full  => TX_FIFO_progfull,
        
        TX_FlowControl  => FlowControl,
        RX_prog_full    => RX_prog_full,
        
        Link_up         => Descrambler_locked,
        FIFO_Full       => TX_FIFO_Full,
        
        TX_valid_out    => GT0_DATA_VALID_IN
    );
    
  --  TX_out <= Data_Transceiver_In;
    
    ---------------------------- Receiving side --------------------------------
    Interlaken_RX : entity work.Interlaken_Receiver
    generic map (
        PacketLength => PacketLength
    )
    port map (
        fifo_read_clk   => clk150,
        clk             => RX_User_Clock,
        reset           => reset,
        
        RX_Data_In(63 downto 0) => Data_Transceiver_Out,--Data_Transferred,
        RX_Data_In(66 downto 64)=> RX_Header_Out,--Data_Transferred,
        RX_Data_Out             => RX_Data,
        RX_FIFO_Valid           => RX_FIFO_Valid,
        
        RX_SOP          => RX_SOP,
        RX_EOP_valid    => RX_EOP_Valid,
        RX_EOP          => RX_EOP,
        RX_FlowControl  => FlowControl,
        RX_prog_full    => RX_prog_full,
        RX_Channel      => RX_Channel,
        RX_Datavalid    => RX_Datavalid_Out,
        
        Descrambler_Lock=> Descrambler_Locked,
        Decoder_Lock    => Decoder_Lock,
        CRC24_Error     => CRC24_Error,
        CRC32_Error     => CRC32_Error,
        
        Data_Descrambler => open, 
        Data_Decoder => open,
        
        RX_FIFO_Full       => RX_FIFO_Full,
        RX_FIFO_Empty      => RX_FIFO_Empty,
        RX_FIFO_Read       => RX_FIFO_Read,
           
        RX_Link_Up      => Link_Up,
        Bitslip         => open--RX_Gearboxslip_In
    );
    Descrambler_Lock <= Descrambler_locked;
   -- RX_in <= Data_Transceiver_Out;
    
end architecture interface;
