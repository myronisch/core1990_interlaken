library ieee;
use ieee.std_logic_1164.all;
library unisim;
use unisim.vcomponents.all;
use work.axi_stream_package.ALL;

entity interlaken150G_wrapper is
   port(
        clk300 : in std_logic;
		clk150 : in std_logic;
		GTREFCLK_IN_P : in std_logic;
		GTREFCLK_IN_N : in std_logic;	
		TX_Out_P     : out std_logic_vector(3 downto 0);
		TX_Out_N     : out std_logic_vector(3 downto 0);
		RX_In_P      : in std_logic_vector(3 downto 0);
		RX_In_N      : in std_logic_vector(3 downto 0);
		stat_rx_aligned : out STD_LOGIC;
		reset : in std_logic
    );
end entity interlaken150G_wrapper;

architecture rtl of interlaken150G_wrapper is

component interlaken_0
    port(
        gt_ref_clk0_p             : in  STD_LOGIC;
        gt_ref_clk0_n             : in  STD_LOGIC;
        gt_refclk_out             : out STD_LOGIC;
        init_clk                  : in  STD_LOGIC;
        sys_reset                 : in  STD_LOGIC;
        gt_txusrclk2              : out STD_LOGIC;
        gtpowergood_out           : out STD_LOGIC_VECTOR(3 downto 0);
        gt_rxusrclk2              : out STD_LOGIC;
        gt_rx_reset_done_inv      : out STD_LOGIC;
        usr_rx_reset              : out STD_LOGIC;
        gt_rxp_in                 : in  STD_LOGIC_VECTOR(3 downto 0);
        gt_rxn_in                 : in  STD_LOGIC_VECTOR(3 downto 0);
        gt_tx_reset_done_inv      : out STD_LOGIC;
        usr_tx_reset              : out STD_LOGIC;
        gt_txp_out                : out STD_LOGIC_VECTOR(3 downto 0);
        gt_txn_out                : out STD_LOGIC_VECTOR(3 downto 0);
        core_rx_reset             : in  STD_LOGIC;
        rx_ovfout                 : out STD_LOGIC;
        rx_dataout0               : out STD_LOGIC_VECTOR(127 downto 0);
        rx_chanout0               : out STD_LOGIC_VECTOR(10 downto 0);
        rx_enaout0                : out STD_LOGIC;
        rx_sopout0                : out STD_LOGIC;
        rx_eopout0                : out STD_LOGIC;
        rx_errout0                : out STD_LOGIC;
        rx_mtyout0                : out STD_LOGIC_VECTOR(3 downto 0);
        rx_dataout1               : out STD_LOGIC_VECTOR(127 downto 0);
        rx_chanout1               : out STD_LOGIC_VECTOR(10 downto 0);
        rx_enaout1                : out STD_LOGIC;
        rx_sopout1                : out STD_LOGIC;
        rx_eopout1                : out STD_LOGIC;
        rx_errout1                : out STD_LOGIC;
        rx_mtyout1                : out STD_LOGIC_VECTOR(3 downto 0);
        rx_dataout2               : out STD_LOGIC_VECTOR(127 downto 0);
        rx_chanout2               : out STD_LOGIC_VECTOR(10 downto 0);
        rx_enaout2                : out STD_LOGIC;
        rx_sopout2                : out STD_LOGIC;
        rx_eopout2                : out STD_LOGIC;
        rx_errout2                : out STD_LOGIC;
        rx_mtyout2                : out STD_LOGIC_VECTOR(3 downto 0);
        rx_dataout3               : out STD_LOGIC_VECTOR(127 downto 0);
        rx_chanout3               : out STD_LOGIC_VECTOR(10 downto 0);
        rx_enaout3                : out STD_LOGIC;
        rx_sopout3                : out STD_LOGIC;
        rx_eopout3                : out STD_LOGIC;
        rx_errout3                : out STD_LOGIC;
        rx_mtyout3                : out STD_LOGIC_VECTOR(3 downto 0);
        core_tx_reset             : in  STD_LOGIC;
        tx_rdyout                 : out STD_LOGIC;
        tx_ovfout                 : out STD_LOGIC;
        tx_datain0                : in  STD_LOGIC_VECTOR(127 downto 0);
        tx_chanin0                : in  STD_LOGIC_VECTOR(10 downto 0);
        tx_enain0                 : in  STD_LOGIC;
        tx_sopin0                 : in  STD_LOGIC;
        tx_eopin0                 : in  STD_LOGIC;
        tx_errin0                 : in  STD_LOGIC;
        tx_mtyin0                 : in  STD_LOGIC_VECTOR(3 downto 0);
        tx_bctlin0                : in  STD_LOGIC;
        tx_datain1                : in  STD_LOGIC_VECTOR(127 downto 0);
        tx_chanin1                : in  STD_LOGIC_VECTOR(10 downto 0);
        tx_enain1                 : in  STD_LOGIC;
        tx_sopin1                 : in  STD_LOGIC;
        tx_eopin1                 : in  STD_LOGIC;
        tx_errin1                 : in  STD_LOGIC;
        tx_mtyin1                 : in  STD_LOGIC_VECTOR(3 downto 0);
        tx_bctlin1                : in  STD_LOGIC;
        tx_datain2                : in  STD_LOGIC_VECTOR(127 downto 0);
        tx_chanin2                : in  STD_LOGIC_VECTOR(10 downto 0);
        tx_enain2                 : in  STD_LOGIC;
        tx_sopin2                 : in  STD_LOGIC;
        tx_eopin2                 : in  STD_LOGIC;
        tx_errin2                 : in  STD_LOGIC;
        tx_mtyin2                 : in  STD_LOGIC_VECTOR(3 downto 0);
        tx_bctlin2                : in  STD_LOGIC;
        tx_datain3                : in  STD_LOGIC_VECTOR(127 downto 0);
        tx_chanin3                : in  STD_LOGIC_VECTOR(10 downto 0);
        tx_enain3                 : in  STD_LOGIC;
        tx_sopin3                 : in  STD_LOGIC;
        tx_eopin3                 : in  STD_LOGIC;
        tx_errin3                 : in  STD_LOGIC;
        tx_mtyin3                 : in  STD_LOGIC_VECTOR(3 downto 0);
        tx_bctlin3                : in  STD_LOGIC;
        lockedn                   : in  STD_LOGIC;
        core_drp_reset            : in  STD_LOGIC;
        drp_clk                   : in  STD_LOGIC;
        drp_en                    : in  STD_LOGIC;
        drp_we                    : in  STD_LOGIC;
        drp_addr                  : in  STD_LOGIC_VECTOR(9 downto 0);
        drp_di                    : in  STD_LOGIC_VECTOR(15 downto 0);
        drp_do                    : out STD_LOGIC_VECTOR(15 downto 0);
        drp_rdy                   : out STD_LOGIC;
        core_clk                  : in  STD_LOGIC;
        lbus_clk                  : in  STD_LOGIC;
        s_axi_aclk                : in  STD_LOGIC;
        s_axi_sreset              : in  STD_LOGIC;
        s_axi_pm_tick             : in  STD_LOGIC;
        s_axi_awaddr              : in  STD_LOGIC_VECTOR(31 downto 0);
        s_axi_awvalid             : in  STD_LOGIC;
        s_axi_awready             : out STD_LOGIC;
        s_axi_wdata               : in  STD_LOGIC_VECTOR(31 downto 0);
        s_axi_wstrb               : in  STD_LOGIC_VECTOR(3 downto 0);
        s_axi_wvalid              : in  STD_LOGIC;
        s_axi_wready              : out STD_LOGIC;
        s_axi_bresp               : out STD_LOGIC_VECTOR(1 downto 0);
        s_axi_bvalid              : out STD_LOGIC;
        s_axi_bready              : in  STD_LOGIC;
        s_axi_araddr              : in  STD_LOGIC_VECTOR(31 downto 0);
        s_axi_arvalid             : in  STD_LOGIC;
        s_axi_arready             : out STD_LOGIC;
        s_axi_rdata               : out STD_LOGIC_VECTOR(31 downto 0);
        s_axi_rresp               : out STD_LOGIC_VECTOR(1 downto 0);
        s_axi_rvalid              : out STD_LOGIC;
        s_axi_rready              : in  STD_LOGIC;
        gtwiz_reset_tx_datapath   : in  STD_LOGIC;
        gtwiz_reset_rx_datapath   : in  STD_LOGIC;
        stat_tx_underflow_err     : out STD_LOGIC;
        stat_tx_burst_err         : out STD_LOGIC;
        stat_tx_overflow_err      : out STD_LOGIC;
        stat_rx_diagword_lanestat : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_diagword_intfstat : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_crc32_valid       : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_crc32_err         : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_mubits            : out STD_LOGIC_VECTOR(7 downto 0);
        stat_rx_mubits_updated    : out STD_LOGIC;
        stat_rx_word_sync         : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_synced            : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_synced_err        : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_framing_err       : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_bad_type_err      : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_mf_err            : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_descram_err       : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_mf_len_err        : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_mf_repeat_err     : out STD_LOGIC_VECTOR(11 downto 0);
        stat_rx_aligned           : out STD_LOGIC;
        stat_rx_misaligned        : out STD_LOGIC;
        stat_rx_aligned_err       : out STD_LOGIC;
        stat_rx_crc24_err         : out STD_LOGIC;
        stat_rx_msop_err          : out STD_LOGIC;
        stat_rx_meop_err          : out STD_LOGIC;
        stat_rx_overflow_err      : out STD_LOGIC;
        stat_rx_burstmax_err      : out STD_LOGIC;
        stat_rx_burst_err         : out STD_LOGIC;
        gt_txresetdone_int        : out STD_LOGIC;
        gt_rxresetdone_int        : out STD_LOGIC;
        gt_loopback_in            : in  STD_LOGIC_VECTOR(11 downto 0)
    );
end component interlaken_0;

    -------------------------- Generate System Clock ---------------------------
    
--signal clk300: std_logic;
--constant clk300_period: time := 3.333 ns;

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

begin
    interlaken_instance : interlaken_0
      PORT MAP (
        gt_ref_clk0_p => GTREFCLK_IN_P,
        gt_ref_clk0_n => GTREFCLK_IN_N,
        gt_refclk_out => open,
        init_clk => clk150,
        sys_reset => reset,
        gt_txusrclk2 => open,
        gtpowergood_out => open,
        gt_rxusrclk2 => open,
        gt_rx_reset_done_inv => open,
        usr_rx_reset => open,
        gt_rxp_in => RX_In_P,
        gt_rxn_in => RX_In_N,
        gt_tx_reset_done_inv => open,
        usr_tx_reset => open,
        gt_txp_out => TX_Out_P,
        gt_txn_out => TX_Out_N,
        core_rx_reset => reset,
        rx_ovfout => open,
        rx_dataout0 => open, --data0,
        rx_chanout0 => open, --chan0,
        rx_enaout0 => open, --ena0,
        rx_sopout0 => open, --sop0,
        rx_eopout0 => open, --eop0,
        rx_errout0 => open, --err0,
        rx_mtyout0 => open, --mty0,
        rx_dataout1 => open, --data1,
        rx_chanout1 => open, --chan1,
        rx_enaout1 => open, --ena1,
        rx_sopout1 => open, --sop1,
        rx_eopout1 => open, --eop1,
        rx_errout1 => open, --err1,
        rx_mtyout1 => open, --mty1,
        rx_dataout2 => open, --data2,
        rx_chanout2 => open, --chan2,
        rx_enaout2 => open, --ena2, 
        rx_sopout2 => open, --sop2, 
        rx_eopout2 => open, --eop2, 
        rx_errout2 => open, --err2, 
        rx_mtyout2 => open, --mty2, 
        rx_dataout3 => open, -- data3,
        rx_chanout3 => open, -- chan3,
        rx_enaout3 => open, --ena3, 
        rx_sopout3 => open, --sop3, 
        rx_eopout3 => open, --eop3, 
        rx_errout3 => open, --err3, 
        rx_mtyout3 => open, --mty3, 
        core_tx_reset => reset,
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
        tx_mtyin3 => mty3,
        tx_bctlin3 => '0',
        lockedn => reset,
        core_drp_reset => reset,
        drp_clk => clk150,
        drp_en => '0',
        drp_we => '0',
        drp_addr => (others => '0'),
        drp_di => (others => '0'),
        drp_do => open,
        drp_rdy => open,
        core_clk => clk300,
        lbus_clk => clk300,
        s_axi_aclk => clk150,
        s_axi_sreset => reset,
        s_axi_pm_tick => '0',
        s_axi_awaddr => (others => '0'), --axi write address          :in
        s_axi_awvalid => '0', --axi write address valid    :in
        s_axi_awready => open, --axi write address ready    :out
        s_axi_wdata => (others => '0'), --axi write data            :in
        s_axi_wstrb => (others => '0'), --axi write data strobe     :in
        s_axi_wvalid => '0', --axi write data valid      :in
        s_axi_wready => open, --axi write data ready      :out
        s_axi_bresp => open, --axi write response        :out
        s_axi_bvalid => open, --axi write response valid  :out
        s_axi_bready => '1', --axi write response ready  :in
        s_axi_araddr => (others => '0'), --axi read address          :in
        s_axi_arvalid => '0', --axi read address valid    :in
        s_axi_arready => open, --axi read address ready    :out
        s_axi_rdata => open, --axi read data             :out
        s_axi_rresp => open, --axi read data response    :out
        s_axi_rvalid => open, --axi read data valid       :out
        s_axi_rready => '1', --axi read data ready       :in
        gtwiz_reset_tx_datapath => reset,
        gtwiz_reset_rx_datapath => reset,
        stat_tx_underflow_err => open,
        stat_tx_burst_err => open,
        stat_tx_overflow_err => open,
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
        stat_rx_aligned => stat_rx_aligned,
        stat_rx_misaligned => open,
        stat_rx_aligned_err => open,
        stat_rx_crc24_err => open,
        stat_rx_msop_err => open,
        stat_rx_meop_err => open,
        stat_rx_overflow_err => open,
        stat_rx_burstmax_err => open,
        stat_rx_burst_err => open,
        gt_txresetdone_int => open,
        gt_rxresetdone_int => open,
        gt_loopback_in => "000000000000"
      );

--lbus_clk: process
--begin
--    clk300 <= '1';
--    wait for clk300_period/2;
--    clk300 <= '0';
--    wait for clk300_period/2;
--end process;
--
--lbus_sim: process
--begin
--            data0 <= (others => '0');
--            data1 <= x"1111_1111_1111_1111_1010_0101_1010_0101";
--            data2 <= x"2222_2222_2222_2222_0202_0202_0202_0202";
--            data3 <= x"3333_3333_3333_3333_3030_0303_0303_0303";
--                                        
--            chan0 <= (others => '0');
--            ena0 <= '0';
--            sop0 <= '0';
--            eop0 <= '0';
--            err0 <= '0';
--            mty0 <= (others => '0');
--            
--            chan1 <= (others => '0');
--            ena1 <= '0';
--            sop1 <= '0';
--            eop1 <= '0';
--            err1 <= '0';
--            mty1 <= (others => '0');
--            
--            chan2 <= (others => '0');
--            ena2 <= '0';
--            sop2 <= '0';
--            eop2 <= '0';
--            err2 <= '0';
--            mty2 <= (others => '0');
--            
--            chan3 <= (others => '0');
--            ena3 <= '0';
--            sop3 <= '0';
--            eop3 <= '0';
--            err3 <= '0';
--            mty3 <= (others => '0');
--                                                
--            
--            wait for clk300_period * 30000; --wait for initialization time
--            for i in 0 to 1000 loop
--                if tx_rdyout = '0' then
--                    ena0 <= '0';
--                    ena1 <= '0';
--                    ena2 <= '0';
--                    ena3 <= '0';
--                                                                                
--                    while tx_rdyout = '0' loop
--                        wait for clk300_period;
--                    end loop;
--                    ena0 <= '1';
--                    ena1 <= '1';
--                    ena2 <= '1';
--                    ena3 <= '1';
--                end if;
--                sop0 <= '1';
--                data0 <= x"0000_1111_2222_3333_4444_5555_6666_7777";
--                ena0 <= '1';
--                ena1 <= '1';
--                ena2 <= '1';
--                ena3 <= '1';
--                wait for clk300_period;
--                
--                if tx_rdyout = '0' then
--                    ena0 <= '0';
--                    ena1 <= '0';
--                    ena2 <= '0';
--                    ena3 <= '0';
--                    while tx_rdyout = '0' loop
--                        wait for clk300_period;
--                    end loop;
--                    ena0 <= '1';
--                    ena1 <= '1';
--                    ena2 <= '1';
--                    ena3 <= '1';                    
--                end if;
--                sop0 <= '0';
--                data0 <= x"8888_9999_AAAA_BBBB_CCCC_DDDD_EEEE_FFFF";
--                wait for clk300_period;
--                
--                if tx_rdyout = '0' then
--                    ena0 <= '0';
--                    ena1 <= '0';
--                    ena2 <= '0';
--                    ena3 <= '0';
--                    while tx_rdyout = '0' loop
--                        wait for clk300_period;
--                    end loop;
--                    ena0 <= '1';
--                    ena1 <= '1';
--                    ena2 <= '1';
--                    ena3 <= '1';
--                end if;
--                eop3 <= '1';
--                data0 <= x"0123_4567_89AB_CDEF_DEAD_BEEF_DEAD_FACE";
--                wait for clk300_period;                
--                eop3 <= '0';
--                ena0 <= '0';
--                ena1 <= '0';
--                ena2 <= '0';
--                ena3 <= '0';
--                data0 <= (others => '0');
--                wait for clk300_period;
--            end loop;
--            wait;
--            
--end process;


end architecture rtl;
