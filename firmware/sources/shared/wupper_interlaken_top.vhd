--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class virtex7_dma_top
--! 
--!
--! @author      Andrea Borga    (andrea.borga@nikhef.nl)<br>
--!              Frans Schreuder (frans.schreuder@nikhef.nl)
--!
--!
--! @date        07/01/2015    created
--!
--! @version     1.1
--!
--! @brief 
--! Top level design containing a simple application and the PCIe DMA 
--! core
--!
--!
--! 11/19/2015 B. Kuschak <brian@skybox.com> 
--!          Modifications for KCU105.
--! 
--!
--!-----------------------------------------------------------------------------
--! @TODO
--!  
--!
--! ------------------------------------------------------------------------------
--! Virtex7 PCIe Gen3 DMA Core
--! 
--! \copyright GNU LGPL License
--! Copyright (c) Nikhef, Amsterdam, All rights reserved. <br>
--! This library is free software; you can redistribute it and/or
--! modify it under the terms of the GNU Lesser General Public
--! License as published by the Free Software Foundation; either
--! version 3.0 of the License, or (at your option) any later version.
--! This library is distributed in the hope that it will be useful,
--! but WITHOUT ANY WARRANTY; without even the implied warranty of
--! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
--! Lesser General Public License for more details.<br>
--! You should have received a copy of the GNU Lesser General Public
--! License along with this library.
--! 
-- 
--! @brief ieee



library ieee, UNISIM;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;
use work.interlaken_package.all;

entity wupper_interlaken_top is
    generic(
        NUMBER_OF_INTERRUPTS  : integer := 8;
        NUMBER_OF_DESCRIPTORS : integer := 8;
        CARD_TYPE             : integer := 709;
        SVN_VERSION           : integer := 0;
        BUILD_DATETIME        : std_logic_vector(39 downto 0) := x"0000FE71CE";
        GIT_HASH              : std_logic_vector(159 downto 0) := x"0000000000000000000000000000000000000000";
        COMMIT_DATETIME       : std_logic_vector(39 downto 0) := x"0000FE71CE";
        GIT_TAG               : std_logic_vector(127 downto 0) := x"00000000000000000000000000000000";
        GIT_COMMIT_NUMBER     : integer := 0;
        BurstMax              : integer := 256;
        Lanes                 : Positive := 4;
        DATA_WIDTH            : integer := 256;
        PCIE_LANES            : integer :=1;
        CLOCKING_MODE : string := "independent_clock";
        RELATED_CLOCKS : integer range 0 to 1 := 0;
        FIFO_MEMORY_TYPE : string := "auto";
        PACKET_FIFO : string := "false";
        CAPACITANCE : string;
        DQS_BIAS : string;
        IBUF_DELAY_VALUE : string;
        IFD_DELAY_VALUE : string;
        CLKCM_CFG : boolean;
        CLKRCV_TRST : boolean;
        CLKSWING_CFG : bit_vector
    );
    port (
        SYSCLK_P       : in     std_logic;--200 MHz clock at H19/G18
        SYSCLK_N       : in     std_logic;
        GTREFCLK_IN_P  : in     std_logic; -- Transceiver clock
        GTREFCLK_IN_N  : in     std_logic;
        REC_CLOCK_C_P  : out    std_logic; -- Input clock signal for SI5324 (Clock cleaner)
        REC_CLOCK_C_N  : out    std_logic;
        USER_CLK_IN_P  : in     std_logic; -- 156.25 MHZ cristal output 
        USER_CLK_IN_N  : in     std_logic;
        emcclk         : in     std_logic; --! emcclk is part of the JTAG high speed programming.
        emcclk_out     : out    std_logic; --! use emcclk_out in order to not optimize emcclk away
        SCL            : inout  std_logic; --! I2C port
        SDA            : inout  std_logic; --! I2C port
        i2cmux_rst     : out    std_logic; --! I2C port
        leds           : out    std_logic_vector(7 downto 0); --! 8 status leds
        pcie_rxn       : in     std_logic_vector(7 downto 0);
        pcie_rxp       : in     std_logic_vector(7 downto 0);
        pcie_txn       : out    std_logic_vector(7 downto 0);
        pcie_txp       : out    std_logic_vector(7 downto 0); --! PCIe link lanes
        sys_clk_n      : in     std_logic;
        sys_clk_p      : in     std_logic; --! 100MHz PCIe reference clock
        sys_reset_n    : in     std_logic;
        si5324_reset_n : out    std_logic; --! Active-low system reset from PCIe interface
        TX_Out_P       : out    std_logic_vector(Lanes-1 downto 0);
        TX_Out_N       : out    std_logic_vector(Lanes-1 downto 0);
        RX_In_P        : in     std_logic_vector(Lanes-1 downto 0);
        RX_In_N        : in     std_logic_vector(Lanes-1 downto 0);
        SFP_TX_DISABLE : out    std_logic_vector(3 downto 0);
        SFP_RX_LOS     : in     std_logic_vector(3 downto 0)
    );
end entity wupper_interlaken_top;


architecture structure of wupper_interlaken_top is

    signal register_map_monitor                : register_map_monitor_type; --! this signal contains all status (read only) signals from the application. The record members are described in pcie_package.vhd
    signal register_map_control                : register_map_control_type; --! contains all read/write registers that control the application. The record members are described in pcie_package.vhd
    signal interrupt_call                      : std_logic_vector(NUMBER_OF_INTERRUPTS-1 downto 4);
    signal appreg_clk                          : std_logic;
    signal pll_locked                          : std_logic;
    signal reset_soft                          : std_logic;
    signal reset_hard                          : std_logic;
    signal flush_fifo                          : std_logic;
    signal fromHostFifo_pfull_threshold_assert : std_logic_vector(8 downto 0);
    signal fromHostFifo_pfull_threshold_negate : std_logic_vector(8 downto 0);
    signal fromHostFifo_we                     : std_logic;
    signal fromHostFifo_din                    : std_logic_vector(255 downto 0);
    signal fromHostFifo_prog_full              : std_logic;
    signal toHostFifo_dout                     : std_logic_vector(255 downto 0);
    signal toHostFifo_re                       : std_logic;
    signal toHostFifo_prog_empty               : std_logic;
    signal toHostFifo_empty_thresh             : std_logic_vector(11 downto 0);
    signal toHostFifo_rd_clk                   : std_logic;
    signal toHostFifo_pfull_threshold_assert   : std_logic_vector(13 downto 0);
    signal toHostFifo_pfull_threshold_negate   : std_logic_vector(13 downto 0);
    signal fromHostFifo_dout                   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal fromHostFifo_rd_en                  : std_logic;
    signal fromHostFifo_empty                  : std_logic;
    signal fromHostFifo_rd_clk                 : std_logic;
    signal fromHostFifo_rst                    : std_logic;
    signal toHostFifo_din                      : std_logic_vector(63 downto 0);
    signal toHostFifo_wr_en                    : std_logic;
    signal toHostFifo_prog_full                : std_logic;
    signal toHostFifo_wr_clk                   : std_logic;
    signal toHostFifo_rst                      : std_logic;
    signal fromHostFifo_wr_clk                 : std_logic;

    component fifo16KB_256bit -- @suppress "Component declaration is not equal to its matching entity"
        port (
            rst                     : in     std_logic;
            wr_clk                  : in     std_logic;
            rd_clk                  : in     std_logic;
            din                     : in     std_logic_vector(255 downto 0);
            wr_en                   : in     std_logic;
            rd_en                   : in     std_logic;
            prog_full_thresh_assert : in     std_logic_vector(8 downto 0);
            prog_full_thresh_negate : in     std_logic_vector(8 downto 0);
            dout                    : out    std_logic_vector(63 downto 0);
            full                    : out    std_logic;
            empty                   : out    std_logic;
            prog_full               : out    std_logic);
    end component fifo16KB_256bit;

    component fifo128KB_256bit -- @suppress "Component declaration is not equal to its matching entity"
        port (
            rst                     : in     std_logic;
            wr_clk                  : in     std_logic;
            rd_clk                  : in     std_logic;
            din                     : in     std_logic_vector(63 downto 0);
            wr_en                   : in     std_logic;
            rd_en                   : in     std_logic;
            prog_empty_thresh       : in     std_logic_vector(11 downto 0);
            prog_full_thresh_assert : in     std_logic_vector(13 downto 0);
            prog_full_thresh_negate : in     std_logic_vector(13 downto 0);
            dout                    : out    std_logic_vector(255 downto 0);
            full                    : out    std_logic;
            empty                   : out    std_logic;
            prog_full               : out    std_logic;
            prog_empty              : out    std_logic);
    end component fifo128KB_256bit;
    signal sync_clk : std_logic;
    signal register_map_gen_board_info : register_map_gen_board_info_type;
    signal register_map_hk_monitor : register_map_hk_monitor_type;
    signal reset_hw_in : std_logic;

  
  signal register_map_control_sync : register_map_control_type;
    signal register_map_control_appreg_clk : register_map_control_type;
    signal reset_soft_appreg_clk : std_logic;
    signal clk250_out : std_logic;
    signal wr_data_count : slv12_array(0 to NUMBER_OF_DESCRIPTORS-2);
  
  
  

begin
    emcclk_out <= emcclk;
    si5324_reset_n <= not reset_hard;
    SFP_TX_DISABLE <= "0000";  -- Enables the SFP Transceivers

    --! Instantiation of the actual PCI express core. Please note the 40MHz
    --! clock required by the core, the 250MHz clock (fifo_rd_clk and fifo_wr_clk) 
    --! are generated from sys_clk_p and _n
    pcie0: entity work.wupper
        generic map(
            NUMBER_OF_INTERRUPTS => NUMBER_OF_INTERRUPTS,
            NUMBER_OF_DESCRIPTORS => NUMBER_OF_DESCRIPTORS,
            BUILD_DATETIME => BUILD_DATETIME,
            SVN_VERSION => SVN_VERSION,
            CARD_TYPE => CARD_TYPE,
            --DEVID                 => x"7039",
            GIT_HASH => GIT_HASH,
            COMMIT_DATETIME => COMMIT_DATETIME,
            GIT_TAG => GIT_TAG,
            GIT_COMMIT_NUMBER => GIT_COMMIT_NUMBER,
            PCIE_ENDPOINT => 0,
            PCIE_LANES => PCIE_LANES,
            DATA_WIDTH => DATA_WIDTH,
            SIMULATION => false,
            CLKCM_CFG => CLKCM_CFG,
            CLKRCV_TRST => CLKRCV_TRST,
            CLKSWING_CFG => CLKSWING_CFG)

        port map(
            toHostFifo_prog_full => open,
            fromhost_busy_out => open,
            register_map_control_sync => register_map_control_sync,
            register_map_control_appreg_clk => register_map_control_appreg_clk,
            reset_soft_appreg_clk => reset_soft_appreg_clk,
            tohost_busy_out => open,
            fromHostFifo_dout => fromHostFifo_dout,
            fromHostFifo_empty => fromHostFifo_empty,
            wr_data_count => wr_data_count,
            clk250_out => clk250_out,
            sync_clk => sync_clk,
            register_map_gen_board_info => register_map_gen_board_info,
            register_map_hk_monitor => register_map_hk_monitor,
            reset_hw_in => reset_hw_in,
            fromHostFifo_rd_clk => fromHostFifo_rd_clk,
            fromHostFifo_rd_en => fromHostFifo_rd_en,
            fromHostFifo_rst => fromHostFifo_rst,
            toHostFifo_din(0) => toHostFifo_din,
            toHostFifo_rst => toHostFifo_rst,
            toHostFifo_wr_clk => toHostFifo_wr_clk,
            toHostFifo_wr_en(0) => toHostFifo_wr_en,
            appreg_clk                          => appreg_clk,
            flush_fifo                          => flush_fifo,
            --fromHostFifo_din                    => fromHostFifo_din,
            --f-romHostFifo_pfull_threshold_assert => fromHostFifo_pfull_threshold_assert(6 downto 0),
            --fromHostFifo_pfull_threshold_negate => fromHostFifo_pfull_threshold_negate(6 downto 0),
            --fromHostFifo_prog_full              => fromHostFifo_prog_full,
            --fromHostFifo_we                     => fromHostFifo_we,
            --fromHostFifo_wr_clk                 => fromHostFifo_wr_clk,
            interrupt_call                      => interrupt_call,
            lnk_up                              => open,
            pcie_rxn                            => pcie_rxn,
            pcie_rxp                            => pcie_rxp,
            pcie_txn                            => pcie_txn,
            pcie_txp                            => pcie_txp,
            pll_locked                          => pll_locked,
            --register_map_control                => register_map_control,
            --register_map_monitor                => register_map_monitor,
            reset_hard                          => reset_hard,
            reset_soft                          => reset_soft,
            sys_clk_n                           => sys_clk_n,
            sys_clk_p                           => sys_clk_p,
            sys_reset_n                         => sys_reset_n
            --toHostFifo_dout                     => toHostFifo_dout,
            --toHostFifo_empty_thresh             => toHostFifo_empty_thresh,
            --toHostFifo_pfull_threshold_assert   => toHostFifo_pfull_threshold_assert(13 downto 2),
            --toHostFifo_pfull_threshold_negate   => toHostFifo_pfull_threshold_negate(13 downto 2),
            --toHostFifo_prog_empty               => toHostFifo_prog_empty,
            --toHostFifo_rd_clk                   => toHostFifo_rd_clk,
            --toHostFifo_re                       => toHostFifo_re
        );

    fromHostFifo_pfull_threshold_assert(8 downto 7) <= "00";
    fromHostFifo_pfull_threshold_negate(8 downto 7) <= "00";

    toHostFifo_pfull_threshold_assert(1 downto 0) <= "00";
    toHostFifo_pfull_threshold_negate(1 downto 0) <= "00";

    clock_buffer: block  -- Block to internally connect the 156.25 MHz clock to the SI5324 
        signal IB_Buf_ds_out  : std_logic;
        signal Buf_G_out      : std_logic;

   
   

  begin

        -- IBUFDS: Differential Input Buffer
        IBUFDS_inst:IBUFDS
            generic map (
                CAPACITANCE => CAPACITANCE,
                DIFF_TERM => TRUE, --Differential Termination
                DQS_BIAS => DQS_BIAS,
                IBUF_DELAY_VALUE => IBUF_DELAY_VALUE,
                IBUF_LOW_PWR => FALSE, --Lowpower (TRUE) vs. performance (FALSE) setting for referenced I/O standards
                IFD_DELAY_VALUE => IFD_DELAY_VALUE,
                IOSTANDARD => "LVDS")
            port map  (
                O  => IB_Buf_ds_out,    --Bufferoutput 
                I  => USER_CLK_IN_P,    --Diff_p buffer input (connect directly to top-level port)
                IB => USER_CLK_IN_N     --Diff_n buffer input (connect directly to top-level port)
            );

        -- BUFG: Global Clock Simple Buffer
        BUFG_inst : BUFG
            port map (
                O => Buf_G_out,         --1-bit output: Clock output 
                I => IB_Buf_ds_out      --1-bit input: Clock input
            );

        -- OBUFDS: Differential Output Buffer
        OBUFDS_inst: OBUFDS
            generic map (
                CAPACITANCE => CAPACITANCE,
                IOSTANDARD => "LVDS", -- Specify the output I/O standard
                SLEW => "SLOW" ) -- Specify the output slew rate
            port map (
                O => REC_CLOCK_C_P,   -- Diff_p output 
                OB => REC_CLOCK_C_N, -- Diff_n output
                I => Buf_G_out    -- Buffer input
            );
    end block;

    -- Application to implement Interlaken
    u0: entity work.application
        generic map(
            BurstMax => BurstMax,
            Lanes => Lanes,
            DATA_WIDTH => DATA_WIDTH,
            NUMBER_OF_INTERRUPTS => NUMBER_OF_INTERRUPTS,
            CLOCKING_MODE => CLOCKING_MODE,
            RELATED_CLOCKS => RELATED_CLOCKS,
            FIFO_MEMORY_TYPE => FIFO_MEMORY_TYPE,
            PACKET_FIFO => PACKET_FIFO
        )
        port map(
            SYSCLK_P => SYSCLK_P,
            SYSCLK_N => SYSCLK_N,
            GTREFCLK_IN_P => GTREFCLK_IN_P,
            GTREFCLK_IN_N => GTREFCLK_IN_N,
            flush_fifo => flush_fifo,
            fromHostFifo_dout => fromHostFifo_dout,
            fromHostFifo_empty => fromHostFifo_empty,
            fromHostFifo_rd_clk => fromHostFifo_rd_clk,
            fromHostFifo_rd_en => fromHostFifo_rd_en,
            fromHostFifo_rst => fromHostFifo_rst,
            --interrupt_call => interrupt_call,
            register_map_control => register_map_control,
            interlaken_monitor => register_map_monitor.interlaken_monitor,
            reset_hard => reset_hard,
            reset_soft => reset_soft,
            toHostFifo_din => toHostFifo_din,
            toHostFifo_prog_full => toHostFifo_prog_full,
            toHostFifo_rst => toHostFifo_rst,
            toHostFifo_wr_clk => toHostFifo_wr_clk,
            toHostFifo_wr_en => toHostFifo_wr_en,
            TX_Out_P => TX_Out_P,
            TX_Out_N => TX_Out_N,
            RX_In_P => RX_In_P,
            RX_In_N => RX_In_N,
            SFP_RX_LOS => SFP_RX_LOS
        );
      
  
  hk0: entity work.housekeeping
        generic map (
            CARD_TYPE => CARD_TYPE
        )
        port map(
            MMCM_Locked_in              => pll_locked,
            SCL                         => SCL,
            SDA                         => SDA,
            appreg_clk                  => appreg_clk,
            i2cmux_rst                  => i2cmux_rst,
            leds                        => leds,
            register_map_control        => register_map_control,
            register_map_hk_monitor     => register_map_monitor.register_map_hk_monitor,
            reset_hard                  => reset_hard,
            reset_soft                  => reset_soft
        );

    fromHostFifo0: fifo16KB_256bit
        port map(
            rst                     => fromHostFifo_rst,
            wr_clk                  => fromHostFifo_wr_clk,
            rd_clk                  => fromHostFifo_rd_clk,
            din(255 downto 192)                     => fromHostFifo_din(63 downto 0),
            din(191 downto 128)                     => fromHostFifo_din(127 downto 64),
            din(127 downto 64 )                     => fromHostFifo_din(191 downto 128),
            din(63  downto 0  )                     => fromHostFifo_din(255 downto 192),
            wr_en                   => fromHostFifo_we,
            rd_en                   => fromHostFifo_rd_en,
            prog_full_thresh_assert => fromHostFifo_pfull_threshold_assert,
            prog_full_thresh_negate => fromHostFifo_pfull_threshold_negate,
            dout                    => fromHostFifo_dout,
            full                    => open,
            empty                   => fromHostFifo_empty,
            prog_full               => fromHostFifo_prog_full);

    toHostFifo0: fifo128KB_256bit
        port map(
            rst                     => toHostFifo_rst,
            wr_clk                  => toHostFifo_wr_clk,
            rd_clk                  => toHostFifo_rd_clk,
            din                     => toHostFifo_din,
            wr_en                   => toHostFifo_wr_en,
            rd_en                   => toHostFifo_re,
            prog_empty_thresh       => toHostFifo_empty_thresh,
            prog_full_thresh_assert => toHostFifo_pfull_threshold_assert,
            prog_full_thresh_negate => toHostFifo_pfull_threshold_negate,
            dout(255 downto 192)                      => toHostFifo_dout(63 downto 0),
            dout(191 downto 128)                      => toHostFifo_dout(127 downto 64),
            dout(127 downto 64 )                      => toHostFifo_dout(191 downto 128),
            dout(63  downto 0  )                      => toHostFifo_dout(255 downto 192),
            full                    => open,
            empty                   => open,
            prog_full               => toHostFifo_prog_full,
            prog_empty              => toHostFifo_prog_empty);
      

      
  wb0: entity work.wb_intercon
        port map(
            control_in              => register_map_control,
            monitor_out             => register_map_monitor.wishbone_monitor,
            wupper_clk_i            => appreg_clk,
            rst_soft_i              => reset_soft,
            rst_hard_i              => reset_hard);

end architecture structure ; -- of wupper_interlaken_top

