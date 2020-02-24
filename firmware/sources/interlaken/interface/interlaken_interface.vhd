library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.interlaken_package.all;
use work.axi_stream_package.all;

entity interlaken_interface is
    generic(
        BurstMax     : positive := 256;      -- Configurable value of BurstMax
        BurstShort   : positive := 8;      -- Configurable value of BurstShort
        PacketLength : positive := 192;     -- Configurable value of PacketLength -- 24 packets * 8  = 192 B
        Lanes        : positive := 4;    -- Number of Lanes (Transmission channels)
        CLOCKING_MODE : string := "independent_clock";
        RELATED_CLOCKS : integer range 0 to 1 := 0;
        FIFO_MEMORY_TYPE : string := "auto";
        PACKET_FIFO : string := "false"
    );
    port (
        ----40 MHz input, from clock generator------------
        clk40 : in std_logic;
        --clk150 : in std_logic;
        reset : in std_logic;
        
        ----125 MHz input, to transceiver (SGMII clock)--
        GTREFCLK_IN_P : in std_logic;
        GTREFCLK_IN_N : in std_logic;
        
        
        ----Data signals---------------------------------
        --TX_Data 	: in slv_64_array(0 to Lanes-1);          -- Data transmitted
        --RX_Data     : out slv_64_array(0 to Lanes-1);     -- Data received

        ----Transceiver related transmission-------------
        TX_Out_P  : out std_logic_vector(3 downto 0);
        TX_Out_N  : out std_logic_vector(3 downto 0);
        RX_In_P   : in std_logic_vector(3 downto 0);
        RX_In_N   : in std_logic_vector(3 downto 0);
		
		----Transmitter input/ready signals--------------
        --TX_SOP          : in std_logic;
        --TX_EOP          : in std_logic;
        --TX_EOP_Valid_Total    : in std_logic_vector(f_log2(Lanes)+2 downto 0); -- in std_logic_vector(2 downto 0);
        TX_FlowControl  : in slv_16_array(0 to Lanes-1);
        s_axis : in axis_64_array_type(0 to Lanes-1);
        --s_axis_prog_empty : out axis_tready_array_type(0 to Lanes-1);
        s_axis_aclk : in std_logic;
        s_axis_tready : out axis_tready_array_type(0 to Lanes-1);
        -- TX_Channel      : in slv_8_array(0 to Lanes-1);   -- already done by transmitter

        ----Receiver output signals-----------------------
        --RX_FlowControl	: out std_logic_vector(15 downto 0);     -- Flow control data (yet unutilized)
        m_axis_aclk       : in std_logic;
        m_axis            : out axis_64_array_type(0 to Lanes-1);
        m_axis_tready     : in axis_tready_array_type(0 to Lanes-1);
        m_axis_prog_empty : out axis_tready_array_type(0 to Lanes-1);
		
		----Transmitter status signals---------------------
        --TX_FIFO_Full    : out std_logic;
        --TX_FIFO_Write   : in std_logic;
        --TX_FIFO_progfull: out std_logic;

        --        RX_in: out std_logic_vector(63 downto 0); --Debug
        --        TX_out: out std_logic_vector(63 downto 0); --Debug
        --        Data_Descrambler : out std_logic_vector(66 downto 0);
        --        Data_Decoder : out std_logic_vector(66 downto 0);

        ----Receiver status signals------------------------
        Decoder_Lock      : out std_logic_vector(Lanes-1 downto 0);
        Descrambler_lock  : out std_logic_vector(Lanes-1 downto 0);
        Channel           : out std_logic_vector(7 downto 0);
        --CRC24_Error       : out std_logic_vector(Lanes-1 downto 0);
        --CRC32_Error       : out std_logic_vector(Lanes-1 downto 0);

        loopback_in       : in std_logic_vector(2 downto 0);
        HealthLane : out std_logic_vector(Lanes-1 downto 0);
        HealthInterface : out std_logic
		
	);
end entity interlaken_interface;

architecture interface of interlaken_interface is
    


    
    -------------------------- Include Transceiver -----------------------------
    component Transceiver_10g_64b67b -- @suppress "Component declaration "Transceiver_10g_64b67b" has none or multiple matching entity declarations"
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
            GT1_TX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT1_RX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT1_DATA_VALID_IN                       : in   std_logic;
            GT1_TX_MMCM_LOCK_OUT                    : out  std_logic;
            GT1_RX_MMCM_LOCK_OUT                    : out  std_logic;
            GT2_TX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT2_RX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT2_DATA_VALID_IN                       : in   std_logic;
            GT2_TX_MMCM_LOCK_OUT                    : out  std_logic;
            GT2_RX_MMCM_LOCK_OUT                    : out  std_logic;
            GT3_TX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT3_RX_FSM_RESET_DONE_OUT               : out  std_logic;
            GT3_DATA_VALID_IN                       : in   std_logic;
            GT3_TX_MMCM_LOCK_OUT                    : out  std_logic;
            GT3_RX_MMCM_LOCK_OUT                    : out  std_logic;
     
        GT0_TXUSRCLK_OUT                        : out  std_logic;
            GT0_TXUSRCLK2_OUT                       : out  std_logic;
            GT0_RXUSRCLK_OUT                        : out  std_logic;
            GT0_RXUSRCLK2_OUT                       : out  std_logic;
     
        GT1_TXUSRCLK_OUT                        : out  std_logic;
            GT1_TXUSRCLK2_OUT                       : out  std_logic;
            GT1_RXUSRCLK_OUT                        : out  std_logic;
            GT1_RXUSRCLK2_OUT                       : out  std_logic;
     
        GT2_TXUSRCLK_OUT                        : out  std_logic;
            GT2_TXUSRCLK2_OUT                       : out  std_logic;
            GT2_RXUSRCLK_OUT                        : out  std_logic;
            GT2_RXUSRCLK2_OUT                       : out  std_logic;
     
        GT3_TXUSRCLK_OUT                        : out  std_logic;
            GT3_TXUSRCLK2_OUT                       : out  std_logic;
            GT3_RXUSRCLK_OUT                        : out  std_logic;
            GT3_RXUSRCLK2_OUT                       : out  std_logic;
    
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
            ------------------------------- Loopback Ports -----------------------------
            gt0_loopback_in                         : in   std_logic_vector(2 downto 0);
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
    
        --GT1  (X0Y5)
            --____________________________CHANNEL PORTS________________________________
            ---------------------------- Channel - DRP Ports  --------------------------
            gt1_drpaddr_in                          : in   std_logic_vector(8 downto 0);
            gt1_drpdi_in                            : in   std_logic_vector(15 downto 0);
            gt1_drpdo_out                           : out  std_logic_vector(15 downto 0);
            gt1_drpen_in                            : in   std_logic;
            gt1_drprdy_out                          : out  std_logic;
            gt1_drpwe_in                            : in   std_logic;
            ------------------------------- Loopback Ports -----------------------------
            gt1_loopback_in                         : in   std_logic_vector(2 downto 0);
            --------------------- RX Initialization and Reset Ports --------------------
            gt1_eyescanreset_in                     : in   std_logic;
            gt1_rxuserrdy_in                        : in   std_logic;
            -------------------------- RX Margin Analysis Ports ------------------------
            gt1_eyescandataerror_out                : out  std_logic;
            gt1_eyescantrigger_in                   : in   std_logic;
            ------------------- Receive Ports - Digital Monitor Ports ------------------
            gt1_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
            ------------------ Receive Ports - FPGA RX interface Ports -----------------
            gt1_rxdata_out                          : out  std_logic_vector(63 downto 0);
            ------------------------ Receive Ports - RX AFE Ports ----------------------
            gt1_gthrxn_in                           : in   std_logic;
            --------------------- Receive Ports - RX Equalizer Ports -------------------
            gt1_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
            gt1_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
            --------------- Receive Ports - RX Fabric Output Control Ports -------------
            gt1_rxoutclkfabric_out                  : out  std_logic;
            ---------------------- Receive Ports - RX Gearbox Ports --------------------
            gt1_rxdatavalid_out                     : out  std_logic;
            gt1_rxheader_out                        : out  std_logic_vector(2 downto 0);
            gt1_rxheadervalid_out                   : out  std_logic;
            --------------------- Receive Ports - RX Gearbox Ports  --------------------
            gt1_rxgearboxslip_in                    : in   std_logic;
            ------------- Receive Ports - RX Initialization and Reset Ports ------------
            gt1_gtrxreset_in                        : in   std_logic;
            ------------------------ Receive Ports -RX AFE Ports -----------------------
            gt1_gthrxp_in                           : in   std_logic;
            -------------- Receive Ports -RX Initialization and Reset Ports ------------
            gt1_rxresetdone_out                     : out  std_logic;
            --------------------- TX Initialization and Reset Ports --------------------
            gt1_gttxreset_in                        : in   std_logic;
            gt1_txuserrdy_in                        : in   std_logic;
            -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
            gt1_txheader_in                         : in   std_logic_vector(2 downto 0);
            ------------------ Transmit Ports - TX Data Path interface -----------------
            gt1_txdata_in                           : in   std_logic_vector(63 downto 0);
            ---------------- Transmit Ports - TX Driver and OOB signaling --------------
            gt1_gthtxn_out                          : out  std_logic;
            gt1_gthtxp_out                          : out  std_logic;
            ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
            gt1_txoutclkfabric_out                  : out  std_logic;
            gt1_txoutclkpcs_out                     : out  std_logic;
            --------------------- Transmit Ports - TX Gearbox Ports --------------------
            gt1_txsequence_in                       : in   std_logic_vector(6 downto 0);
            ------------- Transmit Ports - TX Initialization and Reset Ports -----------
            gt1_txresetdone_out                     : out  std_logic;
    
        --GT2  (X0Y6)
            --____________________________CHANNEL PORTS________________________________
            ---------------------------- Channel - DRP Ports  --------------------------
            gt2_drpaddr_in                          : in   std_logic_vector(8 downto 0);
            gt2_drpdi_in                            : in   std_logic_vector(15 downto 0);
            gt2_drpdo_out                           : out  std_logic_vector(15 downto 0);
            gt2_drpen_in                            : in   std_logic;
            gt2_drprdy_out                          : out  std_logic;
            gt2_drpwe_in                            : in   std_logic;
            ------------------------------- Loopback Ports -----------------------------
            gt2_loopback_in                         : in   std_logic_vector(2 downto 0);
            --------------------- RX Initialization and Reset Ports --------------------
            gt2_eyescanreset_in                     : in   std_logic;
            gt2_rxuserrdy_in                        : in   std_logic;
            -------------------------- RX Margin Analysis Ports ------------------------
            gt2_eyescandataerror_out                : out  std_logic;
            gt2_eyescantrigger_in                   : in   std_logic;
            ------------------- Receive Ports - Digital Monitor Ports ------------------
            gt2_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
            ------------------ Receive Ports - FPGA RX interface Ports -----------------
            gt2_rxdata_out                          : out  std_logic_vector(63 downto 0);
            ------------------------ Receive Ports - RX AFE Ports ----------------------
            gt2_gthrxn_in                           : in   std_logic;
            --------------------- Receive Ports - RX Equalizer Ports -------------------
            gt2_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
            gt2_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
            --------------- Receive Ports - RX Fabric Output Control Ports -------------
            gt2_rxoutclkfabric_out                  : out  std_logic;
            ---------------------- Receive Ports - RX Gearbox Ports --------------------
            gt2_rxdatavalid_out                     : out  std_logic;
            gt2_rxheader_out                        : out  std_logic_vector(2 downto 0);
            gt2_rxheadervalid_out                   : out  std_logic;
            --------------------- Receive Ports - RX Gearbox Ports  --------------------
            gt2_rxgearboxslip_in                    : in   std_logic;
            ------------- Receive Ports - RX Initialization and Reset Ports ------------
            gt2_gtrxreset_in                        : in   std_logic;
            ------------------------ Receive Ports -RX AFE Ports -----------------------
            gt2_gthrxp_in                           : in   std_logic;
            -------------- Receive Ports -RX Initialization and Reset Ports ------------
            gt2_rxresetdone_out                     : out  std_logic;
            --------------------- TX Initialization and Reset Ports --------------------
            gt2_gttxreset_in                        : in   std_logic;
            gt2_txuserrdy_in                        : in   std_logic;
            -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
            gt2_txheader_in                         : in   std_logic_vector(2 downto 0);
            ------------------ Transmit Ports - TX Data Path interface -----------------
            gt2_txdata_in                           : in   std_logic_vector(63 downto 0);
            ---------------- Transmit Ports - TX Driver and OOB signaling --------------
            gt2_gthtxn_out                          : out  std_logic;
            gt2_gthtxp_out                          : out  std_logic;
            ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
            gt2_txoutclkfabric_out                  : out  std_logic;
            gt2_txoutclkpcs_out                     : out  std_logic;
            --------------------- Transmit Ports - TX Gearbox Ports --------------------
            gt2_txsequence_in                       : in   std_logic_vector(6 downto 0);
            ------------- Transmit Ports - TX Initialization and Reset Ports -----------
            gt2_txresetdone_out                     : out  std_logic;
    
        --GT3  (X0Y7)
            --____________________________CHANNEL PORTS________________________________
            ---------------------------- Channel - DRP Ports  --------------------------
            gt3_drpaddr_in                          : in   std_logic_vector(8 downto 0);
            gt3_drpdi_in                            : in   std_logic_vector(15 downto 0);
            gt3_drpdo_out                           : out  std_logic_vector(15 downto 0);
            gt3_drpen_in                            : in   std_logic;
            gt3_drprdy_out                          : out  std_logic;
            gt3_drpwe_in                            : in   std_logic;
            ------------------------------- Loopback Ports -----------------------------
            gt3_loopback_in                         : in   std_logic_vector(2 downto 0);
            --------------------- RX Initialization and Reset Ports --------------------
            gt3_eyescanreset_in                     : in   std_logic;
            gt3_rxuserrdy_in                        : in   std_logic;
            -------------------------- RX Margin Analysis Ports ------------------------
            gt3_eyescandataerror_out                : out  std_logic;
            gt3_eyescantrigger_in                   : in   std_logic;
            ------------------- Receive Ports - Digital Monitor Ports ------------------
            gt3_dmonitorout_out                     : out  std_logic_vector(14 downto 0);
            ------------------ Receive Ports - FPGA RX interface Ports -----------------
            gt3_rxdata_out                          : out  std_logic_vector(63 downto 0);
            ------------------------ Receive Ports - RX AFE Ports ----------------------
            gt3_gthrxn_in                           : in   std_logic;
            --------------------- Receive Ports - RX Equalizer Ports -------------------
            gt3_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
            gt3_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
            --------------- Receive Ports - RX Fabric Output Control Ports -------------
            gt3_rxoutclkfabric_out                  : out  std_logic;
            ---------------------- Receive Ports - RX Gearbox Ports --------------------
            gt3_rxdatavalid_out                     : out  std_logic;
            gt3_rxheader_out                        : out  std_logic_vector(2 downto 0);
            gt3_rxheadervalid_out                   : out  std_logic;
            --------------------- Receive Ports - RX Gearbox Ports  --------------------
            gt3_rxgearboxslip_in                    : in   std_logic;
            ------------- Receive Ports - RX Initialization and Reset Ports ------------
            gt3_gtrxreset_in                        : in   std_logic;
            ------------------------ Receive Ports -RX AFE Ports -----------------------
            gt3_gthrxp_in                           : in   std_logic;
            -------------- Receive Ports -RX Initialization and Reset Ports ------------
            gt3_rxresetdone_out                     : out  std_logic;
            --------------------- TX Initialization and Reset Ports --------------------
            gt3_gttxreset_in                        : in   std_logic;
            gt3_txuserrdy_in                        : in   std_logic;
            -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
            gt3_txheader_in                         : in   std_logic_vector(2 downto 0);
            ------------------ Transmit Ports - TX Data Path interface -----------------
            gt3_txdata_in                           : in   std_logic_vector(63 downto 0);
            ---------------- Transmit Ports - TX Driver and OOB signaling --------------
            gt3_gthtxn_out                          : out  std_logic;
            gt3_gthtxp_out                          : out  std_logic;
            ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
            gt3_txoutclkfabric_out                  : out  std_logic;
            gt3_txoutclkpcs_out                     : out  std_logic;
            --------------------- Transmit Ports - TX Gearbox Ports --------------------
            gt3_txsequence_in                       : in   std_logic_vector(6 downto 0);
            ------------- Transmit Ports - TX Initialization and Reset Ports -----------
            gt3_txresetdone_out                     : out  std_logic;
    
        --____________________________COMMON PORTS________________________________
            GT0_QPLLLOCK_OUT : out std_logic;
            GT0_QPLLREFCLKLOST_OUT  : out std_logic;
            GT0_QPLLOUTCLK_OUT  : out std_logic;
            GT0_QPLLOUTREFCLK_OUT : out std_logic;
    
        sysclk_in                               : in   std_logic
    
    );

    end component;


    signal TX_User_Clock, RX_User_Clock : std_logic;
    
    
    --signal RX_prog_full : slv_16_array(0 to Lanes-1);    

    --signal FlowControl : std_logic_vector(15 downto 0); 
    signal RX_Datavalid_Out : std_logic_vector(3 downto 0);
    signal RX_Header_Out : slv_3_array(0 to 3);
    signal RX_Headervalid_Out : std_logic_vector(3 downto 0);
    signal RX_Gearboxslip_In : std_logic_vector(3 downto 0);
    signal RX_Resetdone_Out : std_logic_vector(3 downto 0); --Todo use as status bit -- @suppress "signal RX_Resetdone_Out is never read"
    signal TX_Gearboxready_Out : std_logic_vector(3 downto 0);
    signal TX_Header_In : slv_3_array(0 to 3);
    --signal TX_Startseq_In : std_logic_vector(3 downto 0);
    signal TX_Resetdone_Out : std_logic_vector(3 downto 0); --Todo use as status bit -- @suppress "signal TX_Resetdone_Out is never read"

    signal Data_Transceiver_In, Data_Transceiver_Out : slv_64_array(0 to 3);
    signal GT_DATA_VALID_IN :  std_logic_vector(3 downto 0);
    signal GT_TX_FSM_RESET_DONE_OUT : std_logic_vector(3 downto 0); --Todo use as status bit -- @suppress "signal GT_TX_FSM_RESET_DONE_OUT is never read"
    --signal HealthInterface_s :std_logic(Lanes-1 downto 0);--not used yet
    signal Descrambler_Lock_s : std_logic_vector(Lanes-1 downto 0);

    signal  gt_txsequence_i         : slv_7_array(0 to 3);
    signal  gt_txseq_counter_r      : uns_9_array(0 to 3);

    signal gt_pause_data_valid_r : std_logic_vector(3 downto 0);
    signal gt_data_valid_out_i   : std_logic_vector(3 downto 0);

    --signal TX_EOP_Valid_s         : slv_3_array(0 to Lanes-1);
    -- signal TX_SOP_s, TX_EOP_s     : std_logic;
    --signal FIFO_Read_Burst_s        : slv_1_array(0 to Lanes-1);
    signal TX_Data_out_s            : slv_67_array(0 to 3);
    --signal TX_valid_out_s           : slv_1_array(0 to 3);
    signal RX_Data_In_s             : slv_67_array(0 to 3);

    
    --signal TX_FIFO_Empty : std_logic;
    --signal FIFO_Valid : std_logic;

begin

    GT_DATA_VALID_IN <= (others => '1');

    --       
    --    ------------------------------ System Clock --------------------------------
    --
    --   
    --    startseq : process (TX_User_Clock)
    --    begin
    --        
    --        if rising_edge(TX_User_Clock) then
    --            if (reset = '1') then
    --               TX_Startseq_In <= (others => '0');
    --            elsif (TX_Gearboxready_Out(0) = '1') then
    --                TX_Startseq_In <= (others => '1');          
    --            end if;
    --        end if;
    --    end process;
    --    
    ------------------------------- Transceiver --------------------------------
    Transceiver_10g_64b67b_i : Transceiver_10g_64b67b
        port map (
            SOFT_RESET_TX_IN => reset,
            SOFT_RESET_RX_IN => reset,
            DONT_RESET_ON_DATA_ERROR_IN => '0',
            Q1_CLK0_GTREFCLK_PAD_N_IN => GTREFCLK_IN_N,
            Q1_CLK0_GTREFCLK_PAD_P_IN => GTREFCLK_IN_P,
            GT0_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT(0),
            GT0_RX_FSM_RESET_DONE_OUT => open,
            GT0_DATA_VALID_IN => GT_DATA_VALID_IN(0),
            GT0_TX_MMCM_LOCK_OUT => open,
            GT0_RX_MMCM_LOCK_OUT => open,
            GT1_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT(1),
            GT1_RX_FSM_RESET_DONE_OUT => open,
            GT1_DATA_VALID_IN => GT_DATA_VALID_IN(1),
            GT1_TX_MMCM_LOCK_OUT => open,
            GT1_RX_MMCM_LOCK_OUT => open,
            GT2_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT(2),
            GT2_RX_FSM_RESET_DONE_OUT => open,
            GT2_DATA_VALID_IN => GT_DATA_VALID_IN(2),
            GT2_TX_MMCM_LOCK_OUT => open,
            GT2_RX_MMCM_LOCK_OUT => open,
            GT3_TX_FSM_RESET_DONE_OUT => GT_TX_FSM_RESET_DONE_OUT(3),
            GT3_RX_FSM_RESET_DONE_OUT => open,
            GT3_DATA_VALID_IN => GT_DATA_VALID_IN(3),
            GT3_TX_MMCM_LOCK_OUT => open,
            GT3_RX_MMCM_LOCK_OUT => open,
            GT0_TXUSRCLK_OUT => open,
            GT0_TXUSRCLK2_OUT => TX_User_Clock,
            GT0_RXUSRCLK_OUT => open,
            GT0_RXUSRCLK2_OUT => RX_User_Clock,
            GT1_TXUSRCLK_OUT => open,
            GT1_TXUSRCLK2_OUT => open,
            GT1_RXUSRCLK_OUT => open,
            GT1_RXUSRCLK2_OUT => open,
            GT2_TXUSRCLK_OUT => open,
            GT2_TXUSRCLK2_OUT => open,
            GT2_RXUSRCLK_OUT => open,
            GT2_RXUSRCLK2_OUT => open,
            GT3_TXUSRCLK_OUT => open,
            GT3_TXUSRCLK2_OUT => open,
            GT3_RXUSRCLK_OUT => open,
            GT3_RXUSRCLK2_OUT => open,
            --_________________________________________________________________________
            --GT0  (X0Y2)
            --____________________________CHANNEL PORTS________________________________
            ---------------------------- Channel - DRP Ports  --------------------------
            gt0_drpaddr_in => (others => '0'),
            gt0_drpdi_in => (others => '0'),
            gt0_drpdo_out => open,
            gt0_drpen_in => '0',
            gt0_drprdy_out => open,
            gt0_drpwe_in => '0',
            gt0_loopback_in => loopback_in,
            --------------------- RX Initialization and Reset Ports --------------------
            gt0_eyescanreset_in => '0',
            gt0_rxuserrdy_in => '1',
            -------------------------- RX Margin Analysis Ports ------------------------
            gt0_eyescandataerror_out => open,
            gt0_eyescantrigger_in => '0',
            --------------------------- Digital Monitor Ports --------------------------
            gt0_dmonitorout_out => open,
            ------------------ Receive Ports - FPGA RX interface Ports -----------------
            gt0_rxdata_out => Data_Transceiver_Out(0),
            ------------------------ Receive Ports - RX AFE Ports ----------------------
            gt0_gthrxn_in => RX_In_N(0),
            --------------------- Receive Ports - RX Equalizer Ports -------------------
            gt0_rxmonitorout_out => open,
            gt0_rxmonitorsel_in => (others => '0'),
            --------------- Receive Ports - RX Fabric Output Control Ports -------------
            gt0_rxoutclkfabric_out => open,
            ---------------------- Receive Ports - RX Gearbox Ports --------------------
            gt0_rxdatavalid_out => RX_Datavalid_Out(0),
            gt0_rxheader_out => RX_Header_Out(0)(2 downto 0),
            gt0_rxheadervalid_out => RX_Headervalid_Out(0),
            --------------------- Receive Ports - RX Gearbox Ports  --------------------
            gt0_rxgearboxslip_in => RX_Gearboxslip_In(0),
            ------------- Receive Ports - RX Initialization and Reset Ports ------------
            gt0_gtrxreset_in => reset,
            --------------------------- Receive Ports - RX AFE -------------------------
            gt0_gthrxp_in => RX_In_P(0),
            -------------- Receive Ports -RX Initialization and Reset Ports ------------
            gt0_rxresetdone_out => RX_Resetdone_Out(0),
            --------------------- TX Initialization and Reset Ports --------------------
            gt0_gttxreset_in => reset,
            gt0_txuserrdy_in => '1',
            -------------- Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
            gt0_txheader_in => TX_Header_In(0),
            ------------------ Transmit Ports - TX Data Path interface -----------------
            gt0_txdata_in => Data_Transceiver_In(0),
            ---------------- Transmit Ports - TX Driver and OOB signaling --------------
            gt0_gthtxn_out => TX_Out_N(0),
            gt0_gthtxp_out => TX_Out_P(0),
            ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
            gt0_txoutclkfabric_out => open,
            gt0_txoutclkpcs_out => open,
            --------------------- Transmit Ports - TX Gearbox Ports --------------------
            gt0_txsequence_in => gt_txsequence_i(0),
            ------------- Transmit Ports - TX Initialization and Reset Ports -----------
            gt0_txresetdone_out => TX_Resetdone_Out(0),
            gt1_drpaddr_in => (others => '0'),
            gt1_drpdi_in => (others => '0'),
            gt1_drpdo_out => open,
            gt1_drpen_in => '0',
            gt1_drprdy_out => open,
            gt1_drpwe_in => '0',
            gt1_loopback_in => loopback_in,
            gt1_eyescanreset_in => '0',
            gt1_rxuserrdy_in => '1',
            gt1_eyescandataerror_out => open,
            gt1_eyescantrigger_in => '0',
            gt1_dmonitorout_out => open,
            gt1_rxdata_out => Data_Transceiver_Out(1),
            gt1_gthrxn_in => RX_In_N(1),
            gt1_rxmonitorout_out => open,
            gt1_rxmonitorsel_in => (others => '0'),
            gt1_rxoutclkfabric_out => open,
            gt1_rxdatavalid_out => RX_Datavalid_Out(1),
            gt1_rxheader_out => RX_Header_Out(1)(2 downto 0),
            gt1_rxheadervalid_out => RX_Headervalid_Out(1),
            gt1_rxgearboxslip_in => RX_Gearboxslip_In(1),
            gt1_gtrxreset_in => reset,
            gt1_gthrxp_in => RX_In_P(1),
            gt1_rxresetdone_out => RX_Resetdone_Out(1),
            gt1_gttxreset_in => reset,
            gt1_txuserrdy_in => '1',
            gt1_txheader_in => TX_Header_In(1),
            gt1_txdata_in => Data_Transceiver_In(1),
            gt1_gthtxn_out => TX_Out_N(1),
            gt1_gthtxp_out => TX_Out_P(1),
            gt1_txoutclkfabric_out => open,
            gt1_txoutclkpcs_out => open,
            gt1_txsequence_in => gt_txsequence_i(1),
            gt1_txresetdone_out => TX_Resetdone_Out(1),
            gt2_drpaddr_in => (others => '0'),
            gt2_drpdi_in => (others => '0'),
            gt2_drpdo_out => open,
            gt2_drpen_in => '0',
            gt2_drprdy_out => open,
            gt2_drpwe_in => '0',
            gt2_loopback_in => loopback_in,
            gt2_eyescanreset_in => '0',
            gt2_rxuserrdy_in => '1',
            gt2_eyescandataerror_out => open,
            gt2_eyescantrigger_in => '0',
            gt2_dmonitorout_out => open,
            gt2_rxdata_out => Data_Transceiver_Out(2),
            gt2_gthrxn_in => RX_In_N(2),
            gt2_rxmonitorout_out => open,
            gt2_rxmonitorsel_in => (others => '0'),
            gt2_rxoutclkfabric_out => open,
            gt2_rxdatavalid_out => RX_Datavalid_Out(2),
            gt2_rxheader_out => RX_Header_Out(2)(2 downto 0),
            gt2_rxheadervalid_out => RX_Headervalid_Out(2),
            gt2_rxgearboxslip_in => RX_Gearboxslip_In(2),
            gt2_gtrxreset_in => reset,
            gt2_gthrxp_in => RX_In_P(2),
            gt2_rxresetdone_out => RX_Resetdone_Out(2),
            gt2_gttxreset_in => reset,
            gt2_txuserrdy_in => '1',
            gt2_txheader_in => TX_Header_In(2),
            gt2_txdata_in => Data_Transceiver_In(2),
            gt2_gthtxn_out => TX_Out_N(2),
            gt2_gthtxp_out => TX_Out_P(2),
            gt2_txoutclkfabric_out => open,
            gt2_txoutclkpcs_out => open,
            gt2_txsequence_in => gt_txsequence_i(2),
            gt2_txresetdone_out => TX_Resetdone_Out(2),
            gt3_drpaddr_in => (others => '0'),
            gt3_drpdi_in => (others => '0'),
            gt3_drpdo_out => open,
            gt3_drpen_in => '0',
            gt3_drprdy_out => open,
            gt3_drpwe_in => '0',
            gt3_loopback_in => loopback_in,
            gt3_eyescanreset_in => '0',
            gt3_rxuserrdy_in => '1',
            gt3_eyescandataerror_out => open,
            gt3_eyescantrigger_in => '0',
            gt3_dmonitorout_out => open,
            gt3_rxdata_out => Data_Transceiver_Out(3),
            gt3_gthrxn_in => RX_In_N(3),
            gt3_rxmonitorout_out => open,
            gt3_rxmonitorsel_in => (others => '0'),
            gt3_rxoutclkfabric_out => open,
            gt3_rxdatavalid_out => RX_Datavalid_Out(3),
            gt3_rxheader_out => RX_Header_Out(3)(2 downto 0),
            gt3_rxheadervalid_out => RX_Headervalid_Out(3),
            gt3_rxgearboxslip_in => RX_Gearboxslip_In(3),
            gt3_gtrxreset_in => reset,
            gt3_gthrxp_in => RX_In_P(3),
            gt3_rxresetdone_out => RX_Resetdone_Out(3),
            gt3_gttxreset_in => reset,
            gt3_txuserrdy_in => '1',
            gt3_txheader_in => TX_Header_In(3),
            gt3_txdata_in => Data_Transceiver_In(3),
            gt3_gthtxn_out => TX_Out_N(3),
            gt3_gthtxp_out => TX_Out_P(3),
            gt3_txoutclkfabric_out => open,
            gt3_txoutclkpcs_out => open,
            gt3_txsequence_in => gt_txsequence_i(3),
            gt3_txresetdone_out => TX_Resetdone_Out(3),
            --____________________________COMMON PORTS________________________________
            GT0_QPLLLOCK_OUT => open,
            GT0_QPLLREFCLKLOST_OUT => open,
            GT0_QPLLOUTCLK_OUT => open,
            GT0_QPLLOUTREFCLK_OUT => open,
            sysclk_in => clk40
        );

    --TX Gearbox sequencer
    g_gearbox: for i in 0 to Lanes-1 generate

        gt_data_valid_out_i(i) <=  '1' when ((gt_txsequence_i(i) /= "0010101") and (gt_txsequence_i(i) /= "0101011") and (gt_txsequence_i(i) /= "1000001")) else
                                        '0';

        process(TX_User_Clock)
        begin
            if rising_edge (TX_User_Clock) then
                gt_pause_data_valid_r(i) <=  gt_data_valid_out_i(i) ;
            end if;
        end process;

        TX_Gearboxready_Out(i)  <= '1' when (gt_pause_data_valid_r(i)='1') else '0';

        --____________________________ TXSEQUENCE counter to GT __________________________    
        process(TX_User_Clock)
        begin
            if rising_edge (TX_User_Clock) then
                if((reset='1') or (gt_txseq_counter_r(i) = 66)) then
                    gt_txseq_counter_r(i) <=  (others => '0') ;
                else
                    gt_txseq_counter_r(i) <=  gt_txseq_counter_r(i) + 1 ;
                end if;
            end if;
        end process;
        gt_txsequence_i(i)         <= std_logic_vector(gt_txseq_counter_r(i)(6 downto 0));

        --RX Gearbox
        block_sync_sm_0_i  :  entity work.Transceiver_10g_64b67b_BLOCK_SYNC_SM
            generic map
      (
                SH_CNT_MAX          => 64,
                SH_INVALID_CNT_MAX  => 16
                --Lanes               => Lanes
            )
            port map
      (
                -- User Interface
                BLOCKSYNC_OUT             =>    open,
                RXGEARBOXSLIP_OUT         =>    RX_Gearboxslip_In(i),
                RXHEADER_IN               =>    RX_Header_Out(i),
                RXHEADERVALID_IN          =>    RX_Headervalid_Out(i),
 
          -- System Interface
                USER_CLK                  =>    RX_User_Clock,
                SYSTEM_RESET              =>    reset
            );
    end generate;
    ---------------------------- Transmitting side -----------------------------

    
    Interlaken_TX : entity work.Interlaken_Transmitter_multiChannel
        generic map(
            BurstMax => BurstMax, -- Configurable value of BurstMax
            BurstShort => BurstShort, -- Configurable value of BurstShort
            PacketLength => PacketLength, -- Configurable value of PacketLength
            Lanes => Lanes,
            CLOCKING_MODE => CLOCKING_MODE,
            RELATED_CLOCKS => RELATED_CLOCKS,
            FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
            PACKET_FIFO => PACKET_FIFO
        )
        port map (
        
        --write_clk => clk150,
            clk => TX_User_Clock,
            reset => reset,
            --TX_Data_In => TX_Data,
            TX_Data_Out => TX_Data_out_s(0 to Lanes-1), --Data_Transceiver_In(i)(63 downto 0), -- 64 bits
            --TX_SOP => TX_SOP,
            --TX_EOP_Valid_Total => TX_EOP_Valid_Total,
            --TX_EOP => TX_EOP,
            TX_Gearboxready => TX_Gearboxready_Out(Lanes-1 downto 0),
            --TX_Startseq => TX_Startseq_In(Lanes-1 downto 0),
            FlowControl => TX_FlowControl,
            --RX_prog_full => RX_prog_full,
            --TX_FIFO_Write_Data => TX_FIFO_Write,
            --TX_FIFO_prog_full => TX_FIFO_progfull,
            --TX_FIFO_Full => TX_FIFO_Full,
            --TX_FIFO_Empty => TX_FIFO_Empty,
            HealthLane => Descrambler_Lock_s,
            --FIFO_Valid => FIFO_Valid,
            --FIFO_Read_Burst => FIFO_Read_Burst_s,
            --TX_valid_out => TX_valid_out_s,
            s_axis_aclk => s_axis_aclk,
            s_axis => s_axis,
            s_axis_tready => s_axis_tready
            --s_axis_prog_empty => s_axis_prog_empty

        );
    
    
-- Map data from TX to the transceiver --
    -- Lane 0
    Data_Transceiver_In(0) <= TX_Data_out_s(0)(63 downto 0);
    TX_Header_In(0) <= TX_Data_out_s(0)(66 downto 64);
    -- Lane 1
    Data_Transceiver_In(1) <= TX_Data_out_s(1)(63 downto 0);
    TX_Header_In(1) <= TX_Data_out_s(1)(66 downto 64);
    -- Lane 2
    Data_Transceiver_In(2) <= TX_Data_out_s(2)(63 downto 0);
    TX_Header_In(2) <= TX_Data_out_s(2)(66 downto 64);
    -- Lane 3
    Data_Transceiver_In(3) <= TX_Data_out_s(3)(63 downto 0);
    TX_Header_In(3) <= TX_Data_out_s(3)(66 downto 64);

    Descrambler_lock <= Descrambler_Lock_s;

    -- Map data from transceiver to RX --
    RX_Data_In_s(0)(63 downto 0) <= Data_Transceiver_Out(0); -- ToDo:  Make this modular instead of static.
    RX_Data_In_s(0)(66 downto 64) <= RX_Header_Out(0);
    -- Lane 1
    RX_Data_In_s(1)(63 downto 0) <= Data_Transceiver_Out(1);
    RX_Data_In_s(1)(66 downto 64) <= RX_Header_Out(1);
    --Lane 2
    RX_Data_In_s(2)(63 downto 0) <= Data_Transceiver_Out(2);
    RX_Data_In_s(2)(66 downto 64) <= RX_Header_Out(2);
    -- Lane 3
    RX_Data_In_s(3)(63 downto 0) <= Data_Transceiver_Out(3);
    RX_Data_In_s(3)(66 downto 64) <= RX_Header_Out(3); 


    ---------------------------- Receiving side --------------------------------
    Interlaken_RX : entity work.Interlaken_Receiver_multiChannel
        generic map (
            PacketLength => PacketLength,
            Lanes => Lanes,
            CLOCKING_MODE => CLOCKING_MODE,
            RELATED_CLOCKS => RELATED_CLOCKS,
            FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
            PACKET_FIFO => PACKET_FIFO
        )
        port map (
            clk => RX_User_Clock,
            reset => reset,
            RX_Data_In => RX_Data_In_s(0 to Lanes-1),
            RX_Datavalid => RX_Datavalid_Out(Lanes-1 downto 0),
            --HealthLane => HealthLane(Lanes-1 downto 0),
            --HealthInterface => HealthInterface,
            Bitslip => open, --Ignored, bitslip is handled by Transceiver_10g_64b67b_BLOCK_SYNC_SM
            m_axis_aclk => m_axis_aclk,
            m_axis => m_axis,
            m_axis_tready => m_axis_tready,
            m_axis_prog_empty => m_axis_prog_empty,
            Descrambler_lock => Descrambler_Lock_s,
            Decoder_Lock => Decoder_Lock,
            HealthLane => HealthLane,
            HealthInterface => HealthInterface,
            Channel => Channel
        );
        --Descrambler_Lock <= Descrambler_locked;
        -- RX_in <= Data_Transceiver_Out;

end architecture interface;
