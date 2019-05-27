library ieee;
use ieee.std_logic_1164.all;
library unisim;
use unisim.vcomponents.all;

entity Core199_verification is
--    port(
--		System_Clock_In_P : in std_logic;
--		System_Clock_In_N : in std_logic;
		
--		GTREFCLK_IN_P : in std_logic;
--		GTREFCLK_IN_N : in std_logic;
		
--		USER_CLK_IN_P : in std_logic;
--		USER_CLK_IN_N : in std_logic;
		
--		USER_SMA_CLK_OUT_P : out std_logic;
--		USER_SMA_CLK_OUT_N : out std_logic;
		
--		TX_Out_P     : out std_logic;
--		TX_Out_N     : out std_logic;
--		RX_In_P      : in std_logic;
--		RX_In_N      : in std_logic;
		
--		Lock_Out  : out std_logic;
--		Valid_out : out std_logic
--    );
end entity Core199_verification;

architecture Test of Core199_verification is

COMPONENT interlaken_0
  PORT (
    gt_ref_clk0_p : IN STD_LOGIC;
    gt_ref_clk0_n : IN STD_LOGIC;
    gt_refclk_out : OUT STD_LOGIC;
    init_clk : IN STD_LOGIC;
    sys_reset : IN STD_LOGIC;
    gt_txusrclk2 : OUT STD_LOGIC;
    gt_rxusrclk2 : OUT STD_LOGIC;
    gt_txresetdone_int : OUT STD_LOGIC;
    gt_rxresetdone_int : OUT STD_LOGIC;
    gt_tx_reset_done_inv : OUT STD_LOGIC;
    gt_rx_reset_done_inv : OUT STD_LOGIC;
    gt0_rxp_in : IN STD_LOGIC;
    gt0_rxn_in : IN STD_LOGIC;
    gt0_txn_out : OUT STD_LOGIC;
    gt0_txp_out : OUT STD_LOGIC;
    rx_ovfout : OUT STD_LOGIC;
    rx_dataout0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout0 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout0 : OUT STD_LOGIC;
    rx_sopout0 : OUT STD_LOGIC;
    rx_eopout0 : OUT STD_LOGIC;
    rx_errout0 : OUT STD_LOGIC;
    rx_mtyout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout1 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout1 : OUT STD_LOGIC;
    rx_sopout1 : OUT STD_LOGIC;
    rx_eopout1 : OUT STD_LOGIC;
    rx_errout1 : OUT STD_LOGIC;
    rx_mtyout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout2 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout2 : OUT STD_LOGIC;
    rx_sopout2 : OUT STD_LOGIC;
    rx_eopout2 : OUT STD_LOGIC;
    rx_errout2 : OUT STD_LOGIC;
    rx_mtyout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rx_dataout3 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    rx_chanout3 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
    rx_enaout3 : OUT STD_LOGIC;
    rx_sopout3 : OUT STD_LOGIC;
    rx_eopout3 : OUT STD_LOGIC;
    rx_errout3 : OUT STD_LOGIC;
    rx_mtyout3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_rdyout : OUT STD_LOGIC;
    tx_ovfout : OUT STD_LOGIC;
    tx_datain0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin0 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain0 : IN STD_LOGIC;
    tx_sopin0 : IN STD_LOGIC;
    tx_eopin0 : IN STD_LOGIC;
    tx_errin0 : IN STD_LOGIC;
    tx_mtyin0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin0 : IN STD_LOGIC;
    tx_datain1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain1 : IN STD_LOGIC;
    tx_sopin1 : IN STD_LOGIC;
    tx_eopin1 : IN STD_LOGIC;
    tx_errin1 : IN STD_LOGIC;
    tx_mtyin1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin1 : IN STD_LOGIC;
    tx_datain2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin2 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain2 : IN STD_LOGIC;
    tx_sopin2 : IN STD_LOGIC;
    tx_eopin2 : IN STD_LOGIC;
    tx_errin2 : IN STD_LOGIC;
    tx_mtyin2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin2 : IN STD_LOGIC;
    tx_datain3 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    tx_chanin3 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    tx_enain3 : IN STD_LOGIC;
    tx_sopin3 : IN STD_LOGIC;
    tx_eopin3 : IN STD_LOGIC;
    tx_errin3 : IN STD_LOGIC;
    core_tx_reset : IN STD_LOGIC;
    core_rx_reset : IN STD_LOGIC;
    tx_mtyin3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    tx_bctlin3 : IN STD_LOGIC;
    drp_clk : IN STD_LOGIC;
    core_drp_reset : IN STD_LOGIC;
    lockedn : IN STD_LOGIC;
    drp_en : IN STD_LOGIC;
    drp_we : IN STD_LOGIC;
    drp_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    drp_di : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    drp_do : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    usr_tx_reset : OUT STD_LOGIC;
    usr_rx_reset : OUT STD_LOGIC;
    drp_rdy : OUT STD_LOGIC;
    core_clk : IN STD_LOGIC;
    lbus_clk : IN STD_LOGIC;
    ctl_tx_enable : IN STD_LOGIC;
    gt_loopback_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    gtwiz_reset_tx_datapath : IN STD_LOGIC;
    gtwiz_reset_rx_datapath : IN STD_LOGIC;
    ctl_tx_diagword_lanestat : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    ctl_tx_diagword_intfstat : IN STD_LOGIC;
    ctl_tx_mubits : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    stat_tx_underflow_err : OUT STD_LOGIC;
    stat_tx_burst_err : OUT STD_LOGIC;
    stat_tx_overflow_err : OUT STD_LOGIC;
    ctl_rx_force_resync : IN STD_LOGIC;
    stat_rx_diagword_lanestat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_diagword_intfstat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_crc32_valid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_crc32_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mubits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    stat_rx_mubits_updated : OUT STD_LOGIC;
    stat_rx_word_sync : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_synced : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_synced_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_framing_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_bad_type_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_descram_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_len_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_mf_repeat_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    stat_rx_aligned : OUT STD_LOGIC;
    stat_rx_misaligned : OUT STD_LOGIC;
    stat_rx_aligned_err : OUT STD_LOGIC;
    stat_rx_crc24_err : OUT STD_LOGIC;
    stat_rx_msop_err : OUT STD_LOGIC;
    stat_rx_meop_err : OUT STD_LOGIC;
    stat_rx_overflow_err : OUT STD_LOGIC;
    stat_rx_burstmax_err : OUT STD_LOGIC;
    stat_rx_burst_err : OUT STD_LOGIC;
    gtpowergood_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END COMPONENT;

    -------------------------- Generate System Clock ---------------------------
    component clk_40MHz
    port (
        --Clock in- and output signals
        clk_in1_p         : in     std_logic;
        clk_in1_n         : in     std_logic;
        clk_out1          : out    std_logic;
        clk_out2          : out    std_logic;
        
        -- Status and control signals
        reset             : in     std_logic;
        locked            : out    std_logic
    );
    end component;
    
    signal TX_Data 	: std_logic_vector(63 downto 0);            -- Data transmitted
    signal RX_Data  : std_logic_vector(63 downto 0);            -- Data received
    
    signal TX_SOP          : std_logic;
    signal TX_EOP          : std_logic;
    signal TX_EOP_Valid    : std_logic_vector(2 downto 0);
    signal TX_FlowControl  : std_logic_vector(15 downto 0);
    signal TX_Channel      : std_logic_vector(7 downto 0);
    
    signal RX_SOP        	: std_logic;                         -- Start of Packet
    signal RX_EOP        	: std_logic;                         -- End of Packet
    signal RX_EOP_Valid 	: std_logic_vector(2 downto 0);      -- Valid bytes packet contains
    signal RX_FlowControl	: std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
    signal RX_Channel    	: std_logic_vector(7 downto 0);      -- Select transmit channel (yet unutilized)
    
    signal RX_FIFO_Valid     : std_logic;
    
    signal TX_FIFO_Full      : std_logic;
    signal TX_FIFO_progfull  : std_logic;
    signal TX_FIFO_Write     : std_logic;
    signal RX_FIFO_Read      : std_logic;
    signal RX_FIFO_Full      : std_logic;
    signal RX_FIFO_Empty     : std_logic;
    
    signal Decoder_lock      : std_logic;
    signal Descrambler_lock  : std_logic;
    signal CRC24_Error       : std_logic;
    signal CRC32_Error       : std_logic;
    
--    signal pipeline_length : std_logic_vector(6 downto 0);
--    signal TX_Info_Pipelined : std_logic_vector(4 downto 0);
--    signal TX_Data_Pipelined : std_logic_vector(63 downto 0);
--    signal RX_Info : std_logic_vector(4 downto 0);
--    signal System_Clock : std_logic;
	
--	signal valid_probe, RX_Valid : std_logic_vector(0 downto 0);
	constant packet_length : std_logic_vector(6 downto 0) := "0001000";
	signal RX_in: std_logic_vector(63 downto 0); --Debug
    signal TX_out: std_logic_vector(63 downto 0); --Debug
    signal Data_Descrambler : std_logic_vector(66 downto 0);
    signal Data_Decoder : std_logic_vector(66 downto 0);


--    signal USER_CLK, USER_SMA_CLK: std_logic;

signal clk40: std_logic;
signal clk150: std_logic;
signal reset: std_logic;
signal locked: std_logic;

signal System_Clock_In_P : std_logic;
signal System_Clock_In_N : std_logic;
constant System_Clock_In_period : time := 5 ns;

signal IL150G_RXP_IN  : std_logic;
signal IL150G_RXN_IN  : std_logic;
signal IL150G_TXN_OUT : std_logic;
signal IL150G_TXP_OUT : std_logic;

signal C1990_RXN_IN  : std_logic;
signal C1990_RXP_IN  : std_logic;
signal C1990_TXN_OUT : std_logic;
signal C1990_TXP_OUT : std_logic;




signal GTREFCLK_IN_P: std_logic;
signal GTREFCLK_IN_N: std_logic;
constant GTREFCLK_IN_period : time := 6.4 ns;
signal clk300: std_logic;
constant clk300_period: time := 3.333 ns;

signal tx_rdyout: std_logic;
signal data0: std_logic_vector(127 downto 0);
signal chan0: std_logic_vector(10 downto 0);
signal ena0: std_logic;
signal sop0: std_logic;
signal eop0: std_logic;
signal err0: std_logic;
signal mty0: std_logic_vector(3 downto 0);

signal data1: std_logic_vector(127 downto 0);
signal chan1: std_logic_vector(10 downto 0);
signal ena1: std_logic;
signal sop1: std_logic;
signal eop1: std_logic;
signal err1: std_logic;
signal mty1: std_logic_vector(3 downto 0);

signal data2: std_logic_vector(127 downto 0);
signal chan2: std_logic_vector(10 downto 0);
signal ena2: std_logic;
signal sop2: std_logic;
signal eop2: std_logic;
signal err2: std_logic;
signal mty2: std_logic_vector(3 downto 0);

signal data3: std_logic_vector(127 downto 0);
signal chan3: std_logic_vector(10 downto 0);
signal ena3: std_logic;
signal sop3: std_logic;
signal eop3: std_logic;
signal err3: std_logic;
signal mty3: std_logic_vector(3 downto 0);


constant LOOPBACK: boolean := false;




begin
    
    
    sysclk_proc: process
    begin
        System_Clock_In_P <= '0';
        System_Clock_In_N <= '1';
        wait for System_Clock_In_period / 2;
        System_Clock_In_P <= '1';
        System_Clock_In_N <= '0';
        wait for System_Clock_In_period / 2;
    end process;
    
    
    dbusclk_proc: process
    begin
        clk300 <= '0';
        wait for clk300_period / 2;
        clk300 <= '1';
        wait for clk300_period / 2;
    end process;
    
    
    refclk_proc: process
    begin
        GTREFCLK_IN_P <= '0';
        GTREFCLK_IN_N <= '1';
        wait for GTREFCLK_IN_period / 2;
        GTREFCLK_IN_P <= '1';
        GTREFCLK_IN_N <= '0';
        wait for GTREFCLK_IN_period / 2;
    end process;

    System_Clock : clk_40MHz
    port map (
        clk_in1_p => System_Clock_In_P,
        clk_in1_n => System_Clock_In_N, 
        clk_out1 => clk40,
        clk_out2 => clk150,
                    
        reset => '0',
        locked => locked
    );
    
    reset <= not locked;
        
	------- The Interlaken Interface -------
    interface : entity work.interlaken_interface
    generic map(
         BurstMax     => 256, --(Bytes)
         BurstShort   => 64, --(Bytes)
         PacketLength => 2028 --(Packets)
    )
    port map (
        clk40 => clk40,
        clk150 => clk150,
        reset => reset,
        GTREFCLK_IN_P => GTREFCLK_IN_P,
        GTREFCLK_IN_N => GTREFCLK_IN_N,
        
        
        TX_Data => TX_Data,
        RX_Data => RX_Data,
        
        RX_In_N =>   C1990_RXN_IN,
        RX_In_P =>   C1990_RXP_IN,  
        TX_Out_N =>  C1990_TXN_OUT,
        TX_Out_P =>  C1990_TXP_OUT,  
        
        TX_FIFO_Write => TX_FIFO_Write,
        TX_SOP => TX_SOP,
        TX_EOP => TX_EOP,
        TX_EOP_Valid => TX_EOP_Valid,
        TX_FlowControl => TX_FlowControl,
        TX_Channel => TX_Channel,
        
        RX_FIFO_Read => RX_FIFO_Read,
        RX_FIFO_Empty => RX_FIFO_Empty,
        RX_SOP => RX_SOP, 
        RX_EOP => RX_EOP,
        RX_EOP_Valid => RX_EOP_Valid,
        RX_FlowControl => RX_FlowControl,
        RX_Channel => RX_Channel,
        
        TX_FIFO_progfull => TX_FIFO_progfull,
        
        RX_FIFO_Valid => RX_FIFO_Valid,
        TX_FIFO_Full => TX_FIFO_Full,
        RX_FIFO_Full => RX_FIFO_Full,
        
        RX_in => RX_in,
        TX_out => TX_out,
        Data_Descrambler => Data_Descrambler,
        Data_Decoder => Data_Decoder,
        
        Decoder_lock => Decoder_lock,
        Descrambler_lock => Descrambler_lock,
        CRC24_Error => CRC24_Error,
        CRC32_Error => CRC32_Error
    );
    
    ---- Generates input data and interface signals ----
    generate_data : entity work.data_generator
    port map (
		clk => clk150,
	    Packet_length => packet_length,
	    --link_up => Link_up,
	    TX_FIFO_Full => TX_FIFO_progfull,
	    
	    write_enable => TX_FIFO_Write,
	    data_out => TX_Data,
        sop 	 => TX_SOP,
        eop		 => TX_EOP,
        eop_valid=> TX_EOP_Valid,
        channel	 => TX_Channel
    );
    
    
    g_loopback: if LOOPBACK = true generate
    --! Core1990 loopback
    C1990_RXN_IN <= C1990_TXN_OUT;  
    C1990_RXP_IN <= C1990_TXP_OUT;  
     
    --! Xilinx Interlaken loopback
    IL150G_RXN_IN <= IL150G_TXN_OUT;
    IL150G_RXP_IN <= IL150G_TXP_OUT;
    end generate;
    
    g_connection: if LOOPBACK = false generate
        
    --! Core 1990 -> Interlaken connection
    IL150G_RXN_IN <= C1990_TXN_OUT;
    IL150G_RXP_IN <= C1990_TXP_OUT;
    
    --! Interlaken -> Core1990 connection
    C1990_RXN_IN <= IL150G_TXN_OUT;  
    C1990_RXP_IN <= IL150G_TXP_OUT;  
    end generate;

    
    RX_FIFO_Read <= not RX_FIFO_Empty;
    
    
   -- RX_Channel <= TX_Channel; 
    
    
    
    
    interlaken_instance : interlaken_0
      PORT MAP (
        gt_ref_clk0_p => GTREFCLK_IN_P,
        gt_ref_clk0_n => GTREFCLK_IN_N,
        gt_refclk_out => open,
        init_clk => clk40,
        sys_reset => reset,
        gt_txusrclk2 => open,
        gt_rxusrclk2 => open,
        gt_txresetdone_int => open,
        gt_rxresetdone_int => open,
        gt_tx_reset_done_inv => open,
        gt_rx_reset_done_inv => open,
        gt0_rxp_in =>  IL150G_RXP_IN,
        gt0_rxn_in =>  IL150G_RXN_IN,
        gt0_txn_out => IL150G_TXN_OUT,
        gt0_txp_out => IL150G_TXP_OUT,
        rx_ovfout => open,
        rx_dataout0 => open,--data0,
        rx_chanout0 => open,--chan0,
        rx_enaout0 =>  open,--ena0,
        rx_sopout0 =>  open,--sop0,
        rx_eopout0 =>  open,--eop0,
        rx_errout0 =>  open,--err0,
        rx_mtyout0 =>  open,--mty0,
        rx_dataout1 => open,--data1,
        rx_chanout1 => open,--chan1,
        rx_enaout1 =>  open,--ena1,
        rx_sopout1 =>  open,--sop1,
        rx_eopout1 =>  open,--eop1,
        rx_errout1 =>  open,--err1,
        rx_mtyout1 =>  open,--mty1,
        rx_dataout2 => open,--data2,
        rx_chanout2 => open,--chan2,
        rx_enaout2 =>  open, --ena2, 
        rx_sopout2 =>  open, --sop2, 
        rx_eopout2 =>  open, --eop2, 
        rx_errout2 =>  open, --err2, 
        rx_mtyout2 =>  open, --mty2, 
        rx_dataout3 => open, -- data3,
        rx_chanout3 => open, -- chan3,
        rx_enaout3 =>  open, --ena3, 
        rx_sopout3 =>  open, --sop3, 
        rx_eopout3 =>  open, --eop3, 
        rx_errout3 =>  open, --err3, 
        rx_mtyout3 =>  open, --mty3, 
        tx_rdyout => tx_rdyout,
        tx_ovfout => open,
        tx_datain0 => data0,
        tx_chanin0 => chan0,
        tx_enain0 => ena0,
        tx_sopin0 => sop0,
        tx_eopin0 => eop0,
        tx_errin0 => err0,
        tx_mtyin0 => mty0,
        tx_bctlin0 => '0',
        tx_datain1 => data1,
        tx_chanin1 => chan1,
        tx_enain1 => ena1,
        tx_sopin1 => sop1,
        tx_eopin1 => eop1,
        tx_errin1 => err1,
        tx_mtyin1 => mty1,
        tx_bctlin1 => '0',
        tx_datain2 => data2,
        tx_chanin2 => chan2,
        tx_enain2 => ena2,
        tx_sopin2 => sop2,
        tx_eopin2 => eop2,
        tx_errin2 => err2,
        tx_mtyin2 => mty2,
        tx_bctlin2 => '0',
        tx_datain3 => data3,
        tx_chanin3 => chan3,
        tx_enain3 => ena3,
        tx_sopin3 => sop3,
        tx_eopin3 => eop3,
        tx_errin3 => err3,
        core_tx_reset => reset,
        core_rx_reset => reset,
        tx_mtyin3 => mty3,
        tx_bctlin3 => '0',
        drp_clk => clk40,
        core_drp_reset => reset,
        lockedn => reset,
        drp_en => '0',
        drp_we => '0',
        drp_addr => (others => '0'),
        drp_di => (others => '0'),
        drp_do => open,
        usr_tx_reset => open,
        usr_rx_reset => open,
        drp_rdy => open,
        core_clk => clk300,
        lbus_clk => clk300,
        ctl_tx_enable => '1',
        gt_loopback_in => "000",
        gtwiz_reset_tx_datapath => reset,
        gtwiz_reset_rx_datapath => reset,
        ctl_tx_diagword_lanestat => "111111111111",
        ctl_tx_diagword_intfstat => '1',
        ctl_tx_mubits => "00000000",
        stat_tx_underflow_err => open,
        stat_tx_burst_err => open,
        stat_tx_overflow_err => open,
        ctl_rx_force_resync => '0',
        stat_rx_diagword_lanestat => open,
        stat_rx_diagword_intfstat => open,
        stat_rx_crc32_valid => open,
        stat_rx_crc32_err => open,
        stat_rx_mubits => open,
        stat_rx_mubits_updated => open,
        stat_rx_word_sync => open,
        stat_rx_synced => open,
        stat_rx_synced_err => open,
        stat_rx_framing_err => open,
        stat_rx_bad_type_err => open,
        stat_rx_mf_err => open,
        stat_rx_descram_err => open,
        stat_rx_mf_len_err => open,
        stat_rx_mf_repeat_err => open,
        stat_rx_aligned => open,
        stat_rx_misaligned => open,
        stat_rx_aligned_err => open,
        stat_rx_crc24_err => open,
        stat_rx_msop_err => open,
        stat_rx_meop_err => open,
        stat_rx_overflow_err => open,
        stat_rx_burstmax_err => open,
        stat_rx_burst_err => open,
        gtpowergood_out => open
      );

lbus_sim: process
begin
            data0 <= (others => '0');
            data1 <= x"1111_1111_1111_1111_1010_0101_1010_0101";
            data2 <= x"2222_2222_2222_2222_0202_0202_0202_0202";
            data3 <= x"3333_3333_3333_3333_3030_0303_0303_0303";
                                        
            chan0 <= (others => '0');
            ena0 <= '0';
            sop0 <= '0';
            eop0 <= '0';
            err0 <= '0';
            mty0 <= (others => '0');
            
            chan1 <= (others => '0');
            ena1 <= '0';
            sop1 <= '0';
            eop1 <= '0';
            err1 <= '0';
            mty1 <= (others => '0');
            
            chan2 <= (others => '0');
            ena2 <= '0';
            sop2 <= '0';
            eop2 <= '0';
            err2 <= '0';
            mty2 <= (others => '0');
            
            chan3 <= (others => '0');
            ena3 <= '0';
            sop3 <= '0';
            eop3 <= '0';
            err3 <= '0';
            mty3 <= (others => '0');
                                                
            
            wait for clk300_period * 30000; --wait for initialization time
            for i in 0 to 1000 loop
                if tx_rdyout = '0' then
                    ena0 <= '0';
                    ena1 <= '0';
                    ena2 <= '0';
                    ena3 <= '0';
                                                                                
                    while tx_rdyout = '0' loop
                        wait for clk300_period;
                    end loop;
                    ena0 <= '1';
                    ena1 <= '1';
                    ena2 <= '1';
                    ena3 <= '1';
                end if;
                sop0 <= '1';
                data0 <= x"0000_1111_2222_3333_4444_5555_6666_7777";
                ena0 <= '1';
                ena1 <= '1';
                ena2 <= '1';
                ena3 <= '1';
                wait for clk300_period;
                
                if tx_rdyout = '0' then
                    ena0 <= '0';
                    ena1 <= '0';
                    ena2 <= '0';
                    ena3 <= '0';
                    while tx_rdyout = '0' loop
                        wait for clk300_period;
                    end loop;
                    ena0 <= '1';
                    ena1 <= '1';
                    ena2 <= '1';
                    ena3 <= '1';                    
                end if;
                sop0 <= '0';
                data0 <= x"8888_9999_AAAA_BBBB_CCCC_DDDD_EEEE_FFFF";
                wait for clk300_period;
                
                if tx_rdyout = '0' then
                    ena0 <= '0';
                    ena1 <= '0';
                    ena2 <= '0';
                    ena3 <= '0';
                    while tx_rdyout = '0' loop
                        wait for clk300_period;
                    end loop;
                    ena0 <= '1';
                    ena1 <= '1';
                    ena2 <= '1';
                    ena3 <= '1';
                end if;
                eop3 <= '1';
                data0 <= x"0123_4567_89AB_CDEF_DEAD_BEEF_DEAD_FACE";
                wait for clk300_period;                
                eop3 <= '0';
                ena0 <= '0';
                ena1 <= '0';
                ena2 <= '0';
                ena3 <= '0';
                data0 <= (others => '0');
                wait for clk300_period;
            end loop;
            wait;
            
end process;


end architecture Test;
