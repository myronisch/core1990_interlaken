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
    gt1_rxp_in : IN STD_LOGIC;
    gt1_rxn_in : IN STD_LOGIC;
    gt2_rxp_in : IN STD_LOGIC;
    gt2_rxn_in : IN STD_LOGIC;
    gt3_rxp_in : IN STD_LOGIC;
    gt3_rxn_in : IN STD_LOGIC;
    gt0_txn_out : OUT STD_LOGIC;
    gt0_txp_out : OUT STD_LOGIC;
    gt1_txn_out : OUT STD_LOGIC;
    gt1_txp_out : OUT STD_LOGIC;
    gt2_txn_out : OUT STD_LOGIC;
    gt2_txp_out : OUT STD_LOGIC;
    gt3_txn_out : OUT STD_LOGIC;
    gt3_txp_out : OUT STD_LOGIC;
    s_axi_aclk : IN STD_LOGIC;
    s_axi_sreset : IN STD_LOGIC;
    s_axi_pm_tick : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
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
    gt_loopback_in : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    gtwiz_reset_tx_datapath : IN STD_LOGIC;
    gtwiz_reset_rx_datapath : IN STD_LOGIC;
    stat_tx_underflow_err : OUT STD_LOGIC;
    stat_tx_burst_err : OUT STD_LOGIC;
    stat_tx_overflow_err : OUT STD_LOGIC;
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
    gtpowergood_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

--COMPONENT interlaken_0
--  PORT (
--    gt_ref_clk0_p : IN STD_LOGIC;
--    gt_ref_clk0_n : IN STD_LOGIC;
--    gt_refclk_out : OUT STD_LOGIC;
--    init_clk : IN STD_LOGIC;
--    sys_reset : IN STD_LOGIC;
--    gt_txusrclk2 : OUT STD_LOGIC;
--    gt_rxusrclk2 : OUT STD_LOGIC;
--    gt_txresetdone_int : OUT STD_LOGIC;
--    gt_rxresetdone_int : OUT STD_LOGIC;
--    gt_tx_reset_done_inv : OUT STD_LOGIC;
--    gt_rx_reset_done_inv : OUT STD_LOGIC;
--    gt_txp_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    gt_txn_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--    gt_rxp_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    gt_rxn_in : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    s_axi_aclk : IN STD_LOGIC;
--    s_axi_sreset : IN STD_LOGIC;
--    s_axi_pm_tick : IN STD_LOGIC;
--    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    s_axi_awvalid : IN STD_LOGIC;
--    s_axi_awready : OUT STD_LOGIC;
--    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    s_axi_wvalid : IN STD_LOGIC;
--    s_axi_wready : OUT STD_LOGIC;
--    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--    s_axi_bvalid : OUT STD_LOGIC;
--    s_axi_bready : IN STD_LOGIC;
--    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    s_axi_arvalid : IN STD_LOGIC;
--    s_axi_arready : OUT STD_LOGIC;
--    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--    s_axi_rvalid : OUT STD_LOGIC;
--    s_axi_rready : IN STD_LOGIC;
--    rx_ovfout : OUT STD_LOGIC;
--    rx_dataout0 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
--    rx_chanout0 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
--    rx_enaout0 : OUT STD_LOGIC;
--    rx_sopout0 : OUT STD_LOGIC;
--    rx_eopout0 : OUT STD_LOGIC;
--    rx_errout0 : OUT STD_LOGIC;
--    rx_mtyout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--    rx_dataout1 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
--    rx_chanout1 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
--    rx_enaout1 : OUT STD_LOGIC;
--    rx_sopout1 : OUT STD_LOGIC;
--    rx_eopout1 : OUT STD_LOGIC;
--    rx_errout1 : OUT STD_LOGIC;
--    rx_mtyout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--    rx_dataout2 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
--    rx_chanout2 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
--    rx_enaout2 : OUT STD_LOGIC;
--    rx_sopout2 : OUT STD_LOGIC;
--    rx_eopout2 : OUT STD_LOGIC;
--    rx_errout2 : OUT STD_LOGIC;
--    rx_mtyout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--    rx_dataout3 : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
--    rx_chanout3 : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
--    rx_enaout3 : OUT STD_LOGIC;
--    rx_sopout3 : OUT STD_LOGIC;
--    rx_eopout3 : OUT STD_LOGIC;
--    rx_errout3 : OUT STD_LOGIC;
--    rx_mtyout3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
--    tx_rdyout : OUT STD_LOGIC;
--    tx_ovfout : OUT STD_LOGIC;
--    tx_datain0 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
--    tx_chanin0 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
--    tx_enain0 : IN STD_LOGIC;
--    tx_sopin0 : IN STD_LOGIC;
--    tx_eopin0 : IN STD_LOGIC;
--    tx_errin0 : IN STD_LOGIC;
--    tx_mtyin0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    tx_bctlin0 : IN STD_LOGIC;
--    tx_datain1 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
--    tx_chanin1 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
--    tx_enain1 : IN STD_LOGIC;
--    tx_sopin1 : IN STD_LOGIC;
--    tx_eopin1 : IN STD_LOGIC;
--    tx_errin1 : IN STD_LOGIC;
--    tx_mtyin1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    tx_bctlin1 : IN STD_LOGIC;
--    tx_datain2 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
--    tx_chanin2 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
--    tx_enain2 : IN STD_LOGIC;
--    tx_sopin2 : IN STD_LOGIC;
--    tx_eopin2 : IN STD_LOGIC;
--    tx_errin2 : IN STD_LOGIC;
--    tx_mtyin2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    tx_bctlin2 : IN STD_LOGIC;
--    tx_datain3 : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
--    tx_chanin3 : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
--    tx_enain3 : IN STD_LOGIC;
--    tx_sopin3 : IN STD_LOGIC;
--    tx_eopin3 : IN STD_LOGIC;
--    tx_errin3 : IN STD_LOGIC;
--    core_tx_reset : IN STD_LOGIC;
--    core_rx_reset : IN STD_LOGIC;
--    tx_mtyin3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    tx_bctlin3 : IN STD_LOGIC;
--    drp_clk : IN STD_LOGIC;
--    core_drp_reset : IN STD_LOGIC;
--    lockedn : IN STD_LOGIC;
--    drp_en : IN STD_LOGIC;
--    drp_we : IN STD_LOGIC;
--    drp_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--    drp_di : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--    drp_do : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
--    usr_tx_reset : OUT STD_LOGIC;
--    usr_rx_reset : OUT STD_LOGIC;
--    drp_rdy : OUT STD_LOGIC;
--    core_clk : IN STD_LOGIC;
--    lbus_clk : IN STD_LOGIC;
--    gt_loopback_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
--    gtwiz_reset_tx_datapath : IN STD_LOGIC;
--    gtwiz_reset_rx_datapath : IN STD_LOGIC;
--    stat_tx_underflow_err : OUT STD_LOGIC;
--    stat_tx_burst_err : OUT STD_LOGIC;
--    stat_tx_overflow_err : OUT STD_LOGIC;
--    stat_rx_diagword_lanestat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_diagword_intfstat : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_crc32_valid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_crc32_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_mubits : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
--    stat_rx_mubits_updated : OUT STD_LOGIC;
--    stat_rx_word_sync : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_synced : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_synced_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_framing_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_bad_type_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_mf_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_descram_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_mf_len_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_mf_repeat_err : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
--    stat_rx_aligned : OUT STD_LOGIC;
--    stat_rx_misaligned : OUT STD_LOGIC;
--    stat_rx_aligned_err : OUT STD_LOGIC;
--    stat_rx_crc24_err : OUT STD_LOGIC;
--    stat_rx_msop_err : OUT STD_LOGIC;
--    stat_rx_meop_err : OUT STD_LOGIC;
--    stat_rx_overflow_err : OUT STD_LOGIC;
--    stat_rx_burstmax_err : OUT STD_LOGIC;
--    stat_rx_burst_err : OUT STD_LOGIC;
--    gtpowergood_out : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
--  );
--END COMPONENT;
    -------------------------- Generate System Clock ---------------------------
    
--signal clk300: std_logic;
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

signal bctlin0 : std_logic;
signal bctlin1 : std_logic;
signal bctlin2 : std_logic;
signal bctlin3 : std_logic;
signal ctl_tx_enable: std_logic;
signal ctl_tx_diagword_lanestat : STD_LOGIC_VECTOR(11 DOWNTO 0);
signal ctl_tx_diagword_intfstat : STD_LOGIC;
signal ctl_tx_mubits : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal ctl_rx_force_resync : STD_LOGIC;
signal rx_reset : std_logic;
signal stat_rx_aligned_s : std_logic;
begin
	
	rx_reset_proc: process(clk150)
		variable cnt: integer range 0 to 3750;
	begin
		
		if rising_edge(clk150) then
			if reset = '1' then
				cnt := 0;
			else
				if cnt < 3750 then
					cnt := cnt + 1;
					rx_reset <= '1';
				else
					rx_reset <= '0';
				end if;
			end if;
				
			
		end if;
	end process;
		
    interlaken_instance : interlaken_0
      PORT MAP (
        gt_ref_clk0_p => GTREFCLK_IN_P,
        gt_ref_clk0_n => GTREFCLK_IN_N,
        gt_refclk_out => open,
        init_clk => clk150,
        sys_reset => reset,
        gt_txusrclk2 => open,
        gt_rxusrclk2 => open,
        gt_txresetdone_int => open,
        gt_rxresetdone_int => open,
        --gt_rxp_in => RX_In_P,
        --gt_rxn_in => RX_In_N,
        gt_tx_reset_done_inv => open,
        gt_rx_reset_done_inv => open,
        gt0_rxp_in => RX_In_P(0),
        gt0_rxn_in => RX_In_N(0),
        gt1_rxp_in => RX_In_P(1),
        gt1_rxn_in => RX_In_N(1),
        gt2_rxp_in => RX_In_P(2),
        gt2_rxn_in => RX_In_N(2),
        gt3_rxp_in => RX_In_P(3),
        gt3_rxn_in => RX_In_N(3),
        gt0_txn_out => TX_Out_N(0),
        gt0_txp_out => TX_Out_P(0),
        gt1_txn_out => TX_Out_N(1),
        gt1_txp_out => TX_Out_P(1),
        gt2_txn_out => TX_Out_N(2),
        gt2_txp_out => TX_Out_P(2),
        gt3_txn_out => TX_Out_N(3),
        gt3_txp_out => TX_Out_P(3),
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
        --gt_txp_out => TX_Out_P,
        --gt_txn_out => TX_Out_N,
        core_rx_reset => reset,
        tx_mtyin3 => mty3,
        tx_bctlin3 => '0',
        drp_clk => clk150,
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
        gt_loopback_in => "000000000000",
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
        stat_rx_aligned => stat_rx_aligned_s,
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
      
      stat_rx_aligned <= stat_rx_aligned_s;

--lbus_clk: process
--begin
--    clk300 <= '1';
--    wait for clk300_period/2;
--    clk300 <= '0';
--    wait for clk300_period/2;
--end process;
ctl_tx_enable <= tx_rdyout;
ctl_tx_diagword_lanestat <= x"00F";
ctl_tx_diagword_intfstat <= '1';
ctl_tx_mubits <= x"00";
ctl_rx_force_resync <= '1';
lbus_sim: process
begin
    data0 <= x"0000_0000_0000_0001_0000_0000_0000_0000";
    data1 <= x"0000_0000_0000_0003_0000_0000_0000_0002";
    data2 <= x"0000_0000_0000_0005_0000_0000_0000_0004";
    data3 <= x"0000_0000_0000_0007_0000_0000_0000_0006";
        
    ena0 <= '0';
    ena1 <= '0';
    ena2 <= '0';
    ena3 <= '0';
    chan0 <= "00000000000";
    sop0 <= '0';
    eop0 <= '0';
    err0 <= '0';
    mty0 <= (others => '0');
    bctlin0 <= '0';
    chan1 <= "00000000000";
    sop1 <= '0';
    eop1 <= '0';
    err1 <= '0';
    mty1 <= (others => '0');
    bctlin1 <= '0';
    
    chan2 <= "00000000000";
    sop2 <= '0';
    eop2 <= '0';
    err2 <= '0';
    mty2 <= (others => '0');
    bctlin2 <= '0';
    
    chan3 <= "00000000000";
    sop3 <= '0';
    eop3 <= '0';
    err3 <= '0';
    mty3 <= (others => '0');
    bctlin3 <= '0';
    wait until stat_rx_aligned_s = '1';
    wait until rising_edge(clk300);
    --wait until tx_rdyout = '1';
    loop
        data0 <= x"0000_0000_0000_0001_0000_0000_0000_0000";
        data1 <= x"0000_0000_0000_0003_0000_0000_0000_0002";
        data2 <= x"0000_0000_0000_0005_0000_0000_0000_0004";
        data3 <= x"0000_0000_0000_0007_0000_0000_0000_0006";
        ena0 <= tx_rdyout;
        ena1 <= tx_rdyout;
        ena2 <= tx_rdyout;
        ena3 <= tx_rdyout;
        sop0 <= '1';
        bctlin0 <= '0';
        bctlin1 <= '0';
        bctlin2 <= '0';
        bctlin3 <= '0';
        wait until rising_edge(clk300);
        data0 <= x"0000_0000_0000_0009_0000_0000_0000_0008";
        data1 <= x"0000_0000_0000_000b_0000_0000_0000_000a";
        data2 <= x"0000_0000_0000_000d_0000_0000_0000_000c";
        data3 <= x"0000_0000_0000_000f_0000_0000_0000_000e";
        ena0 <= tx_rdyout;
        ena1 <= tx_rdyout;
        ena2 <= tx_rdyout;
        ena3 <= tx_rdyout;
        sop0 <= '0';
        bctlin0 <= '0';
        bctlin1 <= '0';
        bctlin2 <= '0';
        bctlin3 <= '0';
        wait until rising_edge(clk300);
        eop3 <= '1';
        mty3 <= x"F";
    
        data0 <= x"0000_0000_0000_0011_0000_0000_0000_0010";
        data1 <= x"0000_0000_0000_0013_0000_0000_0000_0012";
        data2 <= x"0000_0000_0000_0015_0000_0000_0000_0014";
        data3 <= x"0000_0000_0000_0017_0000_0000_0000_0016";
        ena0 <= tx_rdyout;
        ena1 <= tx_rdyout;
        ena2 <= tx_rdyout;
        ena3 <= tx_rdyout;
        bctlin0 <= '0';
        bctlin1 <= '0';
        bctlin2 <= '0';
        bctlin3 <= '0';
        wait until rising_edge(clk300);
        eop3 <= '0';
        mty3 <= x"0";
        data0 <= x"0000_0000_0000_0000_0000_0000_0000_0000";
        data1 <= x"0000_0000_0000_0000_0000_0000_0000_0000";
        data2 <= x"0000_0000_0000_0000_0000_0000_0000_0000";
        data3 <= x"0000_0000_0000_0000_0000_0000_0000_0000";
        ena0 <= '0';
        ena1 <= '0';
        ena2 <= '0';
        ena3 <= '0';
        bctlin0 <= '0';
        bctlin1 <= '0';
        bctlin2 <= '0';
        bctlin3 <= '0';
        for i in 0 to 10 loop
            wait until rising_edge(clk300);
        end loop;
        

    end loop;

wait;
            --
            --wait for clk300_period * 30000; --wait for initialization time
            --for i in 0 to 1000 loop
            --    if tx_rdyout = '0' then
            --        ena0 <= '0';
            --        ena1 <= '0';
            --        ena2 <= '0';
            --        ena3 <= '0';
            --                                                                    
            --        while tx_rdyout = '0' loop
            --            wait until rising_edge(clk300);
            --        end loop;
            --        ena0 <= '1';
            --        ena1 <= '1';
            --        ena2 <= '1';
            --        ena3 <= '1';
            --    end if;
            --    sop0 <= '1';
            --    data0 <= x"0000_1111_2222_3333_4444_5555_6666_7777";
            --    ena0 <= '1';
            --    ena1 <= '1';
            --    ena2 <= '1';
            --    ena3 <= '1';
            --    wait until rising_edge(clk300);
            --    
            --    if tx_rdyout = '0' then
            --        ena0 <= '0';
            --        ena1 <= '0';
            --        ena2 <= '0';
            --        ena3 <= '0';
            --        while tx_rdyout = '0' loop
            --            wait until rising_edge(clk300);
            --        end loop;
            --        ena0 <= '1';
            --        ena1 <= '1';
            --        ena2 <= '1';
            --        ena3 <= '1';                    
            --    end if;
            --    sop0 <= '0';
            --    data0 <= x"8888_9999_AAAA_BBBB_CCCC_DDDD_EEEE_FFFF";
            --    wait until rising_edge(clk300);
            --    
            --    if tx_rdyout = '0' then
            --        ena0 <= '0';
            --        ena1 <= '0';
            --        ena2 <= '0';
            --        ena3 <= '0';
            --        while tx_rdyout = '0' loop
            --            wait until rising_edge(clk300);
            --        end loop;
            --        ena0 <= '1';
            --        ena1 <= '1';
            --        ena2 <= '1';
            --        ena3 <= '1';
            --    end if;
            --    eop3 <= '1';
            --    data0 <= x"0123_4567_89AB_CDEF_DEAD_BEEF_DEAD_FACE";
            --    wait until rising_edge(clk300);
            --    eop3 <= '0';
            --    ena0 <= '0';
            --    ena1 <= '0';
            --    ena2 <= '0';
            --    ena3 <= '0';
            --    data0 <= (others => '0');
            --    wait until rising_edge(clk300);
            --end loop;
            --wait;
            
end process;


end architecture rtl;
