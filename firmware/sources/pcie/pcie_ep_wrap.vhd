
--!------------------------------------------------------------------------------
--!                                                             
--!           NIKHEF - National Institute for Subatomic Physics 
--!
--!                       Electronics Department                
--!                                                             
--!-----------------------------------------------------------------------------
--! @class pcie_ep_wrap
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
--! Wrapper unit for the PCI Express core, and the clock generator 
--!
--! Notes:
--! 11/19/2015 B. Kuschak <brian@skybox.com> 
--!          Modifications for KCU105.
--!          See Xilinx AR 50579.  Only one bit for tready signsls.
--!
--! @detail
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



library ieee, UNISIM, work;
use ieee.numeric_std.all;
use UNISIM.VCOMPONENTS.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use work.pcie_package.all;

entity pcie_ep_wrap is
  generic(
    CARD_TYPE : integer := 709;
    DEVID     : std_logic_vector(15 downto 0) := x"7038");
  port (
    cfg_fc_cpld                : out    std_logic_vector(11 downto 0);
    cfg_fc_cplh                : out    std_logic_vector(7 downto 0);
    cfg_fc_npd                 : out    std_logic_vector(11 downto 0);
    cfg_fc_nph                 : out    std_logic_vector(7 downto 0);
    cfg_fc_pd                  : out    std_logic_vector(11 downto 0);
    cfg_fc_ph                  : out    std_logic_vector(7 downto 0);
    cfg_fc_sel                 : in     std_logic_vector(2 downto 0);
    cfg_interrupt_msix_address : in     std_logic_vector(63 downto 0);
    cfg_interrupt_msix_data    : in     std_logic_vector(31 downto 0);
    cfg_interrupt_msix_enable  : out    std_logic_vector(3 downto 0);
    cfg_interrupt_msix_fail    : out    std_logic;
    cfg_interrupt_msix_int     : in     std_logic;
    cfg_interrupt_msix_sent    : out    std_logic;
    cfg_mgmt_addr              : in     std_logic_vector(18 downto 0);
    cfg_mgmt_byte_enable       : in     std_logic_vector(3 downto 0);
    cfg_mgmt_read              : in     std_logic;
    cfg_mgmt_read_data         : out    std_logic_vector(31 downto 0);
    cfg_mgmt_read_write_done   : out    std_logic;
    cfg_mgmt_write             : in     std_logic;
    cfg_mgmt_write_data        : in     std_logic_vector(31 downto 0);
    clk                        : out    std_logic;
    m_axis_cq                  : out    axis_type;
    m_axis_r_cq                : in     axis_r_type;
    m_axis_r_rc                : in     axis_r_type;
    m_axis_rc                  : out    axis_type;
    pci_exp_rxn                : in     std_logic_vector(7 downto 0);
    pci_exp_rxp                : in     std_logic_vector(7 downto 0);
    pci_exp_txn                : out    std_logic_vector(7 downto 0);
    pci_exp_txp                : out    std_logic_vector(7 downto 0);
    reset                      : out    std_logic;
    s_axis_cc                  : in     axis_type;
    s_axis_r_cc                : out    axis_r_type;
    s_axis_r_rq                : out    axis_r_type;
    s_axis_rq                  : in     axis_type;
    sys_clk_n                  : in     std_logic;
    sys_clk_p                  : in     std_logic;
    sys_rst_n                  : in     std_logic;
    user_lnk_up                : out    std_logic);
end entity pcie_ep_wrap;



architecture structure of pcie_ep_wrap is
  
  signal s_axis_rq_tready : std_logic_vector(3 downto 0);
  signal s_axis_cc_tready : std_logic_vector(3 downto 0);
  --signal m_axis_rc_tready : std_logic_vector(21 downto 0);
  --signal m_axis_cq_tready : std_logic_vector(21 downto 0);
  constant C_DATA_WIDTH : integer := 256;
  constant KEEP_WIDTH: integer := 8;
  constant PL_LINK_CAP_MAX_LINK_WIDTH: integer := 8;

  signal s_cfg_interrupt_msix_sent : std_logic;
  signal s_cfg_interrupt_msix_fail : std_logic;
  signal monitor_cfg_interrupt_msix_sent : std_logic;
  signal monitor_cfg_interrupt_msix_fail : std_logic;  
  attribute dont_touch : string;
  attribute dont_touch of monitor_cfg_interrupt_msix_sent : signal is "true";
  attribute dont_touch of monitor_cfg_interrupt_msix_fail : signal is "true";
  
  
  component pcie_clocking 
    generic
      (
          PCIE_ASYNC_EN             :   string := "FALSE" ;                     -- PCIe async enable
          PCIE_TXBUF_EN             :   string := "FALSE" ;                     -- PCIe TX buffer enable for Gen1/Gen2 only
          PCIE_CLK_SHARING_EN       :   string := "FALSE" ;                     -- Enable Clock Sharing
          PCIE_LANE                 :   integer := 8 ;                          -- PCIe number of lanes
          PCIE_LINK_SPEED           :   integer := 3 ;                          -- PCIe Maximum Link Speed
          PCIE_REFCLK_FREQ          :   integer := 0 ;                          -- PCIe Reference Clock Frequency
          PCIE_USERCLK1_FREQ        :   integer := 5 ;                          -- PCIe Core Clock Frequency - Core Clock Freq
          PCIE_USERCLK2_FREQ        :   integer := 4 ;                          -- PCIe User Clock Frequency - User Clock Freq
          PCIE_OOBCLK_MODE          :   integer := 1 ; 
          PCIE_DEBUG_MODE           :   integer := 0                            -- Debug Enable
      );
      port
      (

          ---------- Input -------------------------------------
          CLK_CLK                  : in std_logic;
          CLK_TXOUTCLK             : in std_logic;  -- Reference clock from lane 0
          CLK_RXOUTCLK_IN          : in std_logic_vector(7 downto 0);
          CLK_RST_N                : in std_logic;  -- Allow system reset for error_recovery             
          CLK_PCLK_SEL             : in std_logic_vector(7 downto 0);
          CLK_PCLK_SEL_SLAVE       : in std_logic_vector(7 downto 0);
          CLK_GEN3                 : in std_logic;

          ---------- Output ------------------------------------
          CLK_PCLK                 : out std_logic;
          CLK_PCLK_SLAVE           : out std_logic;
          CLK_RXUSRCLK             : out std_logic;
          CLK_RXOUTCLK_OUT         : out std_logic_vector(7 downto 0);
          CLK_DCLK                 : out std_logic;
          CLK_OOBCLK               : out std_logic;
          CLK_USERCLK1             : out std_logic;
          CLK_USERCLK2             : out std_logic;
          CLK_MMCM_LOCK            : out std_logic

      );
  end component;

COMPONENT pcie_x8_gen3_3_0
  PORT (
    pci_exp_txn : OUT std_logic_vector(7 DOWNTO 0);
    pci_exp_txp : OUT std_logic_vector(7 DOWNTO 0);
    pci_exp_rxn : IN std_logic_vector(7 DOWNTO 0);
    pci_exp_rxp : IN std_logic_vector(7 DOWNTO 0);
    pipe_pclk_in : IN std_logic;
    pipe_rxusrclk_in : IN std_logic;
    pipe_rxoutclk_in : IN std_logic_vector(7 DOWNTO 0);
    pipe_dclk_in : IN std_logic;
    pipe_userclk1_in : IN std_logic;
    pipe_userclk2_in : IN std_logic;
    pipe_oobclk_in : IN std_logic;
    pipe_mmcm_lock_in : IN std_logic;
    pipe_txoutclk_out : OUT std_logic;
    pipe_rxoutclk_out : OUT std_logic_vector(7 DOWNTO 0);
    pipe_pclk_sel_out : OUT std_logic_vector(7 DOWNTO 0);
    pipe_gen3_out : OUT std_logic;
    pipe_mmcm_rst_n : IN std_logic;
    user_clk : OUT std_logic;
    user_reset : OUT std_logic;
    user_lnk_up : OUT std_logic;
    user_app_rdy : OUT std_logic;
    s_axis_rq_tlast : IN std_logic;
    s_axis_rq_tdata : IN std_logic_vector(255 DOWNTO 0);
    s_axis_rq_tuser : IN std_logic_vector(59 DOWNTO 0);
    s_axis_rq_tkeep : IN std_logic_vector(7 DOWNTO 0);
    s_axis_rq_tready : OUT std_logic_vector(3 DOWNTO 0);
    s_axis_rq_tvalid : IN std_logic;
    m_axis_rc_tdata : OUT std_logic_vector(255 DOWNTO 0);
    m_axis_rc_tuser : OUT std_logic_vector(74 DOWNTO 0);
    m_axis_rc_tlast : OUT std_logic;
    m_axis_rc_tkeep : OUT std_logic_vector(7 DOWNTO 0);
    m_axis_rc_tvalid : OUT std_logic;
    m_axis_rc_tready : IN std_logic;
    m_axis_cq_tdata : OUT std_logic_vector(255 DOWNTO 0);
    m_axis_cq_tuser : OUT std_logic_vector(84 DOWNTO 0);
    m_axis_cq_tlast : OUT std_logic;
    m_axis_cq_tkeep : OUT std_logic_vector(7 DOWNTO 0);
    m_axis_cq_tvalid : OUT std_logic;
    m_axis_cq_tready : IN std_logic;
    s_axis_cc_tdata : IN std_logic_vector(255 DOWNTO 0);
    s_axis_cc_tuser : IN std_logic_vector(32 DOWNTO 0);
    s_axis_cc_tlast : IN std_logic;
    s_axis_cc_tkeep : IN std_logic_vector(7 DOWNTO 0);
    s_axis_cc_tvalid : IN std_logic;
    s_axis_cc_tready : OUT std_logic_vector(3 DOWNTO 0);
    pcie_rq_seq_num : OUT std_logic_vector(3 DOWNTO 0);
    pcie_rq_seq_num_vld : OUT std_logic;
    pcie_rq_tag : OUT std_logic_vector(5 DOWNTO 0);
    pcie_rq_tag_vld : OUT std_logic;
    pcie_tfc_nph_av : OUT std_logic_vector(1 DOWNTO 0);
    pcie_tfc_npd_av : OUT std_logic_vector(1 DOWNTO 0);
    pcie_cq_np_req : IN std_logic;
    pcie_cq_np_req_count : OUT std_logic_vector(5 DOWNTO 0);
    cfg_phy_link_down : OUT std_logic;
    cfg_phy_link_status : OUT std_logic_vector(1 DOWNTO 0);
    cfg_negotiated_width : OUT std_logic_vector(3 DOWNTO 0);
    cfg_current_speed : OUT std_logic_vector(2 DOWNTO 0);
    cfg_max_payload : OUT std_logic_vector(2 DOWNTO 0);
    cfg_max_read_req : OUT std_logic_vector(2 DOWNTO 0);
    cfg_function_status : OUT std_logic_vector(7 DOWNTO 0);
    cfg_function_power_state : OUT std_logic_vector(5 DOWNTO 0);
    cfg_vf_status : OUT std_logic_vector(11 DOWNTO 0);
    cfg_vf_power_state : OUT std_logic_vector(17 DOWNTO 0);
    cfg_link_power_state : OUT std_logic_vector(1 DOWNTO 0);
    cfg_mgmt_addr : IN std_logic_vector(18 DOWNTO 0);
    cfg_mgmt_write : IN std_logic;
    cfg_mgmt_write_data : IN std_logic_vector(31 DOWNTO 0);
    cfg_mgmt_byte_enable : IN std_logic_vector(3 DOWNTO 0);
    cfg_mgmt_read : IN std_logic;
    cfg_mgmt_read_data : OUT std_logic_vector(31 DOWNTO 0);
    cfg_mgmt_read_write_done : OUT std_logic;
    cfg_mgmt_type1_cfg_reg_access : IN std_logic;
    cfg_err_cor_out : OUT std_logic;
    cfg_err_nonfatal_out : OUT std_logic;
    cfg_err_fatal_out : OUT std_logic;
    cfg_ltr_enable : OUT std_logic;
    cfg_ltssm_state : OUT std_logic_vector(5 DOWNTO 0);
    cfg_rcb_status : OUT std_logic_vector(1 DOWNTO 0);
    cfg_dpa_substate_change : OUT std_logic_vector(1 DOWNTO 0);
    cfg_obff_enable : OUT std_logic_vector(1 DOWNTO 0);
    cfg_pl_status_change : OUT std_logic;
    cfg_tph_requester_enable : OUT std_logic_vector(1 DOWNTO 0);
    cfg_tph_st_mode : OUT std_logic_vector(5 DOWNTO 0);
    cfg_vf_tph_requester_enable : OUT std_logic_vector(5 DOWNTO 0);
    cfg_vf_tph_st_mode : OUT std_logic_vector(17 DOWNTO 0);
    cfg_msg_received : OUT std_logic;
    cfg_msg_received_data : OUT std_logic_vector(7 DOWNTO 0);
    cfg_msg_received_type : OUT std_logic_vector(4 DOWNTO 0);
    cfg_msg_transmit : IN std_logic;
    cfg_msg_transmit_type : IN std_logic_vector(2 DOWNTO 0);
    cfg_msg_transmit_data : IN std_logic_vector(31 DOWNTO 0);
    cfg_msg_transmit_done : OUT std_logic;
    cfg_fc_ph : OUT std_logic_vector(7 DOWNTO 0);
    cfg_fc_pd : OUT std_logic_vector(11 DOWNTO 0);
    cfg_fc_nph : OUT std_logic_vector(7 DOWNTO 0);
    cfg_fc_npd : OUT std_logic_vector(11 DOWNTO 0);
    cfg_fc_cplh : OUT std_logic_vector(7 DOWNTO 0);
    cfg_fc_cpld : OUT std_logic_vector(11 DOWNTO 0);
    cfg_fc_sel : IN std_logic_vector(2 DOWNTO 0);
    cfg_per_func_status_control : IN std_logic_vector(2 DOWNTO 0);
    cfg_per_func_status_data : OUT std_logic_vector(15 DOWNTO 0);
    cfg_per_function_number : IN std_logic_vector(2 DOWNTO 0);
    cfg_per_function_output_request : IN std_logic;
    cfg_per_function_update_done : OUT std_logic;
    cfg_subsys_vend_id : IN std_logic_vector(15 DOWNTO 0);
    cfg_dsn : IN std_logic_vector(63 DOWNTO 0);
    cfg_power_state_change_ack : IN std_logic;
    cfg_power_state_change_interrupt : OUT std_logic;
    cfg_err_cor_in : IN std_logic;
    cfg_err_uncor_in : IN std_logic;
    cfg_flr_in_process : OUT std_logic_vector(1 DOWNTO 0);
    cfg_flr_done : IN std_logic_vector(1 DOWNTO 0);
    cfg_vf_flr_in_process : OUT std_logic_vector(5 DOWNTO 0);
    cfg_vf_flr_done : IN std_logic_vector(5 DOWNTO 0);
    cfg_link_training_enable : IN std_logic;
    cfg_ext_read_received : OUT std_logic;
    cfg_ext_write_received : OUT std_logic;
    cfg_ext_register_number : OUT std_logic_vector(9 DOWNTO 0);
    cfg_ext_function_number : OUT std_logic_vector(7 DOWNTO 0);
    cfg_ext_write_data : OUT std_logic_vector(31 DOWNTO 0);
    cfg_ext_write_byte_enable : OUT std_logic_vector(3 DOWNTO 0);
    cfg_ext_read_data : IN std_logic_vector(31 DOWNTO 0);
    cfg_ext_read_data_valid : IN std_logic;
    cfg_interrupt_int : IN std_logic_vector(3 DOWNTO 0);
    cfg_interrupt_pending : IN std_logic_vector(1 DOWNTO 0);
    cfg_interrupt_sent : OUT std_logic;
    cfg_interrupt_msix_enable : OUT std_logic_vector(1 DOWNTO 0);
    cfg_interrupt_msix_mask : OUT std_logic_vector(1 DOWNTO 0);
    cfg_interrupt_msix_vf_enable : OUT std_logic_vector(5 DOWNTO 0);
    cfg_interrupt_msix_vf_mask : OUT std_logic_vector(5 DOWNTO 0);
    cfg_interrupt_msix_data : IN std_logic_vector(31 DOWNTO 0);
    cfg_interrupt_msix_address : IN std_logic_vector(63 DOWNTO 0);
    cfg_interrupt_msix_int : IN std_logic;
    cfg_interrupt_msix_sent : OUT std_logic;
    cfg_interrupt_msix_fail : OUT std_logic;
    cfg_hot_reset_out : OUT std_logic;
    cfg_config_space_enable : IN std_logic;
    cfg_req_pm_transition_l23_ready : IN std_logic;
    cfg_hot_reset_in : IN std_logic;
    cfg_ds_port_number : IN std_logic_vector(7 DOWNTO 0);
    cfg_ds_bus_number : IN std_logic_vector(7 DOWNTO 0);
    cfg_ds_device_number : IN std_logic_vector(4 DOWNTO 0);
    cfg_ds_function_number : IN std_logic_vector(2 DOWNTO 0);
    sys_clk : IN std_logic;
    sys_reset : IN std_logic
  );
END COMPONENT;


    -- UltraScale Architecture Gen3 Integrated Block for PCI Express v4.1
    COMPONENT pcie3_ultrascale_7038
      PORT (
        pci_exp_txn : OUT std_logic_vector(7 DOWNTO 0);
        pci_exp_txp : OUT std_logic_vector(7 DOWNTO 0);
        pci_exp_rxn : IN std_logic_vector(7 DOWNTO 0);
        pci_exp_rxp : IN std_logic_vector(7 DOWNTO 0);
        user_clk : OUT std_logic;
        user_reset : OUT std_logic;
        user_lnk_up : OUT std_logic;
        s_axis_rq_tdata : IN std_logic_vector(255 DOWNTO 0);
        s_axis_rq_tkeep : IN std_logic_vector(7 DOWNTO 0);
        s_axis_rq_tlast : IN std_logic;
        s_axis_rq_tready : OUT std_logic_vector(3 DOWNTO 0);
        s_axis_rq_tuser : IN std_logic_vector(59 DOWNTO 0);
        s_axis_rq_tvalid : IN std_logic;
        m_axis_rc_tdata : OUT std_logic_vector(255 DOWNTO 0);
        m_axis_rc_tkeep : OUT std_logic_vector(7 DOWNTO 0);
        m_axis_rc_tlast : OUT std_logic;
        m_axis_rc_tready : IN std_logic;
        m_axis_rc_tuser : OUT std_logic_vector(74 DOWNTO 0);
        m_axis_rc_tvalid : OUT std_logic;
        m_axis_cq_tdata : OUT std_logic_vector(255 DOWNTO 0);
        m_axis_cq_tkeep : OUT std_logic_vector(7 DOWNTO 0);
        m_axis_cq_tlast : OUT std_logic;
        m_axis_cq_tready : IN std_logic;
        m_axis_cq_tuser : OUT std_logic_vector(84 DOWNTO 0);
        m_axis_cq_tvalid : OUT std_logic;
        s_axis_cc_tdata : IN std_logic_vector(255 DOWNTO 0);
        s_axis_cc_tkeep : IN std_logic_vector(7 DOWNTO 0);
        s_axis_cc_tlast : IN std_logic;
        s_axis_cc_tready : OUT std_logic_vector(3 DOWNTO 0);
        s_axis_cc_tuser : IN std_logic_vector(32 DOWNTO 0);
        s_axis_cc_tvalid : IN std_logic;
        pcie_rq_seq_num : OUT std_logic_vector(3 DOWNTO 0);
        pcie_rq_seq_num_vld : OUT std_logic;
        pcie_rq_tag : OUT std_logic_vector(5 DOWNTO 0);
        pcie_rq_tag_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_rq_tag_vld : OUT std_logic;
        pcie_tfc_nph_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_tfc_npd_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_cq_np_req : IN std_logic;
        pcie_cq_np_req_count : OUT std_logic_vector(5 DOWNTO 0);
        cfg_phy_link_down : OUT std_logic;
        cfg_phy_link_status : OUT std_logic_vector(1 DOWNTO 0);
        cfg_negotiated_width : OUT std_logic_vector(3 DOWNTO 0);
        cfg_current_speed : OUT std_logic_vector(2 DOWNTO 0);
        cfg_max_payload : OUT std_logic_vector(2 DOWNTO 0);
        cfg_max_read_req : OUT std_logic_vector(2 DOWNTO 0);
        cfg_function_status : OUT std_logic_vector(15 DOWNTO 0);
        cfg_function_power_state : OUT std_logic_vector(11 DOWNTO 0);
        cfg_vf_status : OUT std_logic_vector(15 DOWNTO 0);
        cfg_vf_power_state : OUT std_logic_vector(23 DOWNTO 0);
        cfg_link_power_state : OUT std_logic_vector(1 DOWNTO 0);
        cfg_mgmt_addr : IN std_logic_vector(18 DOWNTO 0);
        cfg_mgmt_write : IN std_logic;
        cfg_mgmt_write_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_mgmt_byte_enable : IN std_logic_vector(3 DOWNTO 0);
        cfg_mgmt_read : IN std_logic;
        cfg_mgmt_read_data : OUT std_logic_vector(31 DOWNTO 0);
        cfg_mgmt_read_write_done : OUT std_logic;
        cfg_mgmt_type1_cfg_reg_access : IN std_logic;
        cfg_err_cor_out : OUT std_logic;
        cfg_err_nonfatal_out : OUT std_logic;
        cfg_err_fatal_out : OUT std_logic;
        cfg_local_error : OUT std_logic;
        cfg_ltr_enable : OUT std_logic;
        cfg_ltssm_state : OUT std_logic_vector(5 DOWNTO 0);
        cfg_rcb_status : OUT std_logic_vector(3 DOWNTO 0);
        cfg_dpa_substate_change : OUT std_logic_vector(3 DOWNTO 0);
        cfg_obff_enable : OUT std_logic_vector(1 DOWNTO 0);
        cfg_pl_status_change : OUT std_logic;
        cfg_tph_requester_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_tph_st_mode : OUT std_logic_vector(11 DOWNTO 0);
        cfg_vf_tph_requester_enable : OUT std_logic_vector(7 DOWNTO 0);
        cfg_vf_tph_st_mode : OUT std_logic_vector(23 DOWNTO 0);
        cfg_msg_received : OUT std_logic;
        cfg_msg_received_data : OUT std_logic_vector(7 DOWNTO 0);
        cfg_msg_received_type : OUT std_logic_vector(4 DOWNTO 0);
        cfg_msg_transmit : IN std_logic;
        cfg_msg_transmit_type : IN std_logic_vector(2 DOWNTO 0);
        cfg_msg_transmit_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_msg_transmit_done : OUT std_logic;
        cfg_fc_ph : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_pd : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_nph : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_npd : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_cplh : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_cpld : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_sel : IN std_logic_vector(2 DOWNTO 0);
        cfg_per_func_status_control : IN std_logic_vector(2 DOWNTO 0);
        cfg_per_func_status_data : OUT std_logic_vector(15 DOWNTO 0);
        cfg_per_function_number : IN std_logic_vector(3 DOWNTO 0);
        cfg_per_function_output_request : IN std_logic;
        cfg_per_function_update_done : OUT std_logic;
        cfg_dsn : IN std_logic_vector(63 DOWNTO 0);
        cfg_power_state_change_ack : IN std_logic;
        cfg_power_state_change_interrupt : OUT std_logic;
        cfg_err_cor_in : IN std_logic;
        cfg_err_uncor_in : IN std_logic;
        cfg_flr_in_process : OUT std_logic_vector(3 DOWNTO 0);
        cfg_flr_done : IN std_logic_vector(3 DOWNTO 0);
        cfg_vf_flr_in_process : OUT std_logic_vector(7 DOWNTO 0);
        cfg_vf_flr_done : IN std_logic_vector(7 DOWNTO 0);
        cfg_link_training_enable : IN std_logic;
        cfg_ext_read_received : OUT std_logic;
        cfg_ext_write_received : OUT std_logic;
        cfg_ext_register_number : OUT std_logic_vector(9 DOWNTO 0);
        cfg_ext_function_number : OUT std_logic_vector(7 DOWNTO 0);
        cfg_ext_write_data : OUT std_logic_vector(31 DOWNTO 0);
        cfg_ext_write_byte_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_ext_read_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_ext_read_data_valid : IN std_logic;
        cfg_interrupt_int : IN std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_pending : IN std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_sent : OUT std_logic;
        cfg_interrupt_msix_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_msix_mask : OUT std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_msix_vf_enable : OUT std_logic_vector(7 DOWNTO 0);
        cfg_interrupt_msix_vf_mask : OUT std_logic_vector(7 DOWNTO 0);
        cfg_interrupt_msix_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_interrupt_msix_address : IN std_logic_vector(63 DOWNTO 0);
        cfg_interrupt_msix_int : IN std_logic;
        cfg_interrupt_msix_sent : OUT std_logic;
        cfg_interrupt_msix_fail : OUT std_logic;
        cfg_hot_reset_out : OUT std_logic;
        cfg_config_space_enable : IN std_logic;
        cfg_req_pm_transition_l23_ready : IN std_logic;
        cfg_hot_reset_in : IN std_logic;
        cfg_ds_port_number : IN std_logic_vector(7 DOWNTO 0);
        cfg_ds_bus_number : IN std_logic_vector(7 DOWNTO 0);
        cfg_ds_device_number : IN std_logic_vector(4 DOWNTO 0);
        cfg_ds_function_number : IN std_logic_vector(2 DOWNTO 0);
        cfg_subsys_vend_id : IN std_logic_vector(15 DOWNTO 0);
        sys_clk : IN std_logic;
        sys_clk_gt : IN std_logic;
        sys_reset : IN std_logic;
        int_qpll1lock_out : OUT std_logic_vector(1 DOWNTO 0);
        int_qpll1outrefclk_out : OUT std_logic_vector(1 DOWNTO 0);
        int_qpll1outclk_out : OUT std_logic_vector(1 DOWNTO 0)
      );
    END COMPONENT;
    
    COMPONENT pcie3_ultrascale_7039
      PORT (
        pci_exp_txn : OUT std_logic_vector(7 DOWNTO 0);
        pci_exp_txp : OUT std_logic_vector(7 DOWNTO 0);
        pci_exp_rxn : IN std_logic_vector(7 DOWNTO 0);
        pci_exp_rxp : IN std_logic_vector(7 DOWNTO 0);
        user_clk : OUT std_logic;
        user_reset : OUT std_logic;
        user_lnk_up : OUT std_logic;
        s_axis_rq_tdata : IN std_logic_vector(255 DOWNTO 0);
        s_axis_rq_tkeep : IN std_logic_vector(7 DOWNTO 0);
        s_axis_rq_tlast : IN std_logic;
        s_axis_rq_tready : OUT std_logic_vector(3 DOWNTO 0);
        s_axis_rq_tuser : IN std_logic_vector(59 DOWNTO 0);
        s_axis_rq_tvalid : IN std_logic;
        m_axis_rc_tdata : OUT std_logic_vector(255 DOWNTO 0);
        m_axis_rc_tkeep : OUT std_logic_vector(7 DOWNTO 0);
        m_axis_rc_tlast : OUT std_logic;
        m_axis_rc_tready : IN std_logic;
        m_axis_rc_tuser : OUT std_logic_vector(74 DOWNTO 0);
        m_axis_rc_tvalid : OUT std_logic;
        m_axis_cq_tdata : OUT std_logic_vector(255 DOWNTO 0);
        m_axis_cq_tkeep : OUT std_logic_vector(7 DOWNTO 0);
        m_axis_cq_tlast : OUT std_logic;
        m_axis_cq_tready : IN std_logic;
        m_axis_cq_tuser : OUT std_logic_vector(84 DOWNTO 0);
        m_axis_cq_tvalid : OUT std_logic;
        s_axis_cc_tdata : IN std_logic_vector(255 DOWNTO 0);
        s_axis_cc_tkeep : IN std_logic_vector(7 DOWNTO 0);
        s_axis_cc_tlast : IN std_logic;
        s_axis_cc_tready : OUT std_logic_vector(3 DOWNTO 0);
        s_axis_cc_tuser : IN std_logic_vector(32 DOWNTO 0);
        s_axis_cc_tvalid : IN std_logic;
        pcie_rq_seq_num : OUT std_logic_vector(3 DOWNTO 0);
        pcie_rq_seq_num_vld : OUT std_logic;
        pcie_rq_tag : OUT std_logic_vector(5 DOWNTO 0);
        pcie_rq_tag_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_rq_tag_vld : OUT std_logic;
        pcie_tfc_nph_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_tfc_npd_av : OUT std_logic_vector(1 DOWNTO 0);
        pcie_cq_np_req : IN std_logic;
        pcie_cq_np_req_count : OUT std_logic_vector(5 DOWNTO 0);
        cfg_phy_link_down : OUT std_logic;
        cfg_phy_link_status : OUT std_logic_vector(1 DOWNTO 0);
        cfg_negotiated_width : OUT std_logic_vector(3 DOWNTO 0);
        cfg_current_speed : OUT std_logic_vector(2 DOWNTO 0);
        cfg_max_payload : OUT std_logic_vector(2 DOWNTO 0);
        cfg_max_read_req : OUT std_logic_vector(2 DOWNTO 0);
        cfg_function_status : OUT std_logic_vector(15 DOWNTO 0);
        cfg_function_power_state : OUT std_logic_vector(11 DOWNTO 0);
        cfg_vf_status : OUT std_logic_vector(15 DOWNTO 0);
        cfg_vf_power_state : OUT std_logic_vector(23 DOWNTO 0);
        cfg_link_power_state : OUT std_logic_vector(1 DOWNTO 0);
        cfg_mgmt_addr : IN std_logic_vector(18 DOWNTO 0);
        cfg_mgmt_write : IN std_logic;
        cfg_mgmt_write_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_mgmt_byte_enable : IN std_logic_vector(3 DOWNTO 0);
        cfg_mgmt_read : IN std_logic;
        cfg_mgmt_read_data : OUT std_logic_vector(31 DOWNTO 0);
        cfg_mgmt_read_write_done : OUT std_logic;
        cfg_mgmt_type1_cfg_reg_access : IN std_logic;
        cfg_err_cor_out : OUT std_logic;
        cfg_err_nonfatal_out : OUT std_logic;
        cfg_err_fatal_out : OUT std_logic;
        cfg_local_error : OUT std_logic;
        cfg_ltr_enable : OUT std_logic;
        cfg_ltssm_state : OUT std_logic_vector(5 DOWNTO 0);
        cfg_rcb_status : OUT std_logic_vector(3 DOWNTO 0);
        cfg_dpa_substate_change : OUT std_logic_vector(3 DOWNTO 0);
        cfg_obff_enable : OUT std_logic_vector(1 DOWNTO 0);
        cfg_pl_status_change : OUT std_logic;
        cfg_tph_requester_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_tph_st_mode : OUT std_logic_vector(11 DOWNTO 0);
        cfg_vf_tph_requester_enable : OUT std_logic_vector(7 DOWNTO 0);
        cfg_vf_tph_st_mode : OUT std_logic_vector(23 DOWNTO 0);
        cfg_msg_received : OUT std_logic;
        cfg_msg_received_data : OUT std_logic_vector(7 DOWNTO 0);
        cfg_msg_received_type : OUT std_logic_vector(4 DOWNTO 0);
        cfg_msg_transmit : IN std_logic;
        cfg_msg_transmit_type : IN std_logic_vector(2 DOWNTO 0);
        cfg_msg_transmit_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_msg_transmit_done : OUT std_logic;
        cfg_fc_ph : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_pd : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_nph : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_npd : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_cplh : OUT std_logic_vector(7 DOWNTO 0);
        cfg_fc_cpld : OUT std_logic_vector(11 DOWNTO 0);
        cfg_fc_sel : IN std_logic_vector(2 DOWNTO 0);
        cfg_per_func_status_control : IN std_logic_vector(2 DOWNTO 0);
        cfg_per_func_status_data : OUT std_logic_vector(15 DOWNTO 0);
        cfg_per_function_number : IN std_logic_vector(3 DOWNTO 0);
        cfg_per_function_output_request : IN std_logic;
        cfg_per_function_update_done : OUT std_logic;
        cfg_dsn : IN std_logic_vector(63 DOWNTO 0);
        cfg_power_state_change_ack : IN std_logic;
        cfg_power_state_change_interrupt : OUT std_logic;
        cfg_err_cor_in : IN std_logic;
        cfg_err_uncor_in : IN std_logic;
        cfg_flr_in_process : OUT std_logic_vector(3 DOWNTO 0);
        cfg_flr_done : IN std_logic_vector(3 DOWNTO 0);
        cfg_vf_flr_in_process : OUT std_logic_vector(7 DOWNTO 0);
        cfg_vf_flr_done : IN std_logic_vector(7 DOWNTO 0);
        cfg_link_training_enable : IN std_logic;
        cfg_ext_read_received : OUT std_logic;
        cfg_ext_write_received : OUT std_logic;
        cfg_ext_register_number : OUT std_logic_vector(9 DOWNTO 0);
        cfg_ext_function_number : OUT std_logic_vector(7 DOWNTO 0);
        cfg_ext_write_data : OUT std_logic_vector(31 DOWNTO 0);
        cfg_ext_write_byte_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_ext_read_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_ext_read_data_valid : IN std_logic;
        cfg_interrupt_int : IN std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_pending : IN std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_sent : OUT std_logic;
        cfg_interrupt_msix_enable : OUT std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_msix_mask : OUT std_logic_vector(3 DOWNTO 0);
        cfg_interrupt_msix_vf_enable : OUT std_logic_vector(7 DOWNTO 0);
        cfg_interrupt_msix_vf_mask : OUT std_logic_vector(7 DOWNTO 0);
        cfg_interrupt_msix_data : IN std_logic_vector(31 DOWNTO 0);
        cfg_interrupt_msix_address : IN std_logic_vector(63 DOWNTO 0);
        cfg_interrupt_msix_int : IN std_logic;
        cfg_interrupt_msix_sent : OUT std_logic;
        cfg_interrupt_msix_fail : OUT std_logic;
        cfg_hot_reset_out : OUT std_logic;
        cfg_config_space_enable : IN std_logic;
        cfg_req_pm_transition_l23_ready : IN std_logic;
        cfg_hot_reset_in : IN std_logic;
        cfg_ds_port_number : IN std_logic_vector(7 DOWNTO 0);
        cfg_ds_bus_number : IN std_logic_vector(7 DOWNTO 0);
        cfg_ds_device_number : IN std_logic_vector(4 DOWNTO 0);
        cfg_ds_function_number : IN std_logic_vector(2 DOWNTO 0);
        cfg_subsys_vend_id : IN std_logic_vector(15 DOWNTO 0);
        sys_clk : IN std_logic;
        sys_clk_gt : IN std_logic;
        sys_reset : IN std_logic;
        int_qpll1lock_out : OUT std_logic_vector(1 DOWNTO 0);
        int_qpll1outrefclk_out : OUT std_logic_vector(1 DOWNTO 0);
        int_qpll1outclk_out : OUT std_logic_vector(1 DOWNTO 0)
      );
    END COMPONENT;

      signal cfg_flr_in_process: std_logic_vector(3 downto 0);
      signal cfg_vf_flr_in_process: std_logic_vector(7 downto 0);
      signal cfg_flr_done, cfg_flr_done_reg0, cfg_flr_done_reg1: std_logic_vector(3 downto 0);
      signal cfg_vf_flr_done, cfg_vf_flr_done_reg0, cfg_vf_flr_done_reg1: std_logic_vector(7 downto 0);


      signal sys_clk: std_logic;
      signal sys_reset: std_logic;
      signal sys_clk_gt: std_logic;
      
      signal user_clk: std_logic;
      signal user_reset: std_logic;
      
      signal pipe_pclk_in     : std_logic;
      signal pipe_rxusrclk_in : std_logic;
      signal pipe_rxoutclk_in : std_logic_vector(7 downto 0);
      signal pipe_dclk_in     : std_logic;
      signal pipe_userclk1_in : std_logic;
      signal pipe_userclk2_in : std_logic;
      signal pipe_oobclk_in   : std_logic;
      signal pipe_mmcm_lock_in: std_logic;
      signal pipe_txoutclk_out: std_logic;
      signal pipe_rxoutclk_out: std_logic_vector(7 downto 0);
      signal pipe_pclk_sel_out: std_logic_vector(7 downto 0);
      signal pipe_mmcm_rst_n  : std_logic;
      signal pipe_gen3_out    : std_logic;
      
      
      signal cfg_power_state_change_ack : std_logic;
      
      
      
begin

    pipe_mmcm_rst_n <= '1';

    s_axis_r_rq.tready <= s_axis_rq_tready(0);
    s_axis_r_cc.tready <= s_axis_cc_tready(0);
    --m_axis_rc_tready <= (others => m_axis_r_rc.tready);
    --m_axis_cq_tready <= (others => m_axis_r_cq.tready);

    cfg_interrupt_msix_fail <= s_cfg_interrupt_msix_fail;
    cfg_interrupt_msix_sent <= s_cfg_interrupt_msix_sent;
    monitor_cfg_interrupt_msix_fail <= s_cfg_interrupt_msix_fail;
    monitor_cfg_interrupt_msix_sent <= s_cfg_interrupt_msix_sent;

--Virtex7 devices
g_virtex7: if (CARD_TYPE = 709 or CARD_TYPE = 710) generate
    refclk_buff: IBUFDS_GTE2 port map(
      CEB => '0',
      I => sys_clk_p,
      IB => sys_clk_n,
      O => sys_clk,
      ODIV2 => open
    );
    
    sys_reset <= not sys_rst_n;
    
    u1: pcie_x8_gen3_3_0
    PORT MAP (
        pci_exp_txn => pci_exp_txn,
        pci_exp_txp => pci_exp_txp,
        pci_exp_rxn => pci_exp_rxn,
        pci_exp_rxp => pci_exp_rxp,
        pipe_pclk_in => pipe_pclk_in,
        pipe_rxusrclk_in => pipe_rxusrclk_in,
        pipe_rxoutclk_in => pipe_rxoutclk_in,
        pipe_dclk_in => pipe_dclk_in,
        pipe_userclk1_in => pipe_userclk1_in,
        pipe_userclk2_in => pipe_userclk2_in,
        pipe_oobclk_in => pipe_oobclk_in,
        pipe_mmcm_lock_in => pipe_mmcm_lock_in,
        pipe_txoutclk_out => pipe_txoutclk_out,
        pipe_rxoutclk_out => pipe_rxoutclk_out,
        pipe_pclk_sel_out => pipe_pclk_sel_out,
        pipe_gen3_out => pipe_gen3_out,
        pipe_mmcm_rst_n => pipe_mmcm_rst_n,
        user_clk => user_clk,
        user_reset => user_reset,
        user_lnk_up => user_lnk_up,
        user_app_rdy => open,
        s_axis_rq_tlast  => s_axis_rq.tlast,
        s_axis_rq_tdata  => s_axis_rq.tdata,
        s_axis_rq_tuser  => x"0000000000000FF",
        s_axis_rq_tkeep  => s_axis_rq.tkeep,
        s_axis_rq_tready => s_axis_rq_tready,
        s_axis_rq_tvalid => s_axis_rq.tvalid,
        m_axis_rc_tdata  => m_axis_rc.tdata,
        m_axis_rc_tuser  => open,
        m_axis_rc_tlast  => m_axis_rc.tlast,
        m_axis_rc_tkeep  => m_axis_rc.tkeep,
        m_axis_rc_tvalid => m_axis_rc.tvalid,
        m_axis_rc_tready => m_axis_r_rc.tready,
        m_axis_cq_tdata  => m_axis_cq.tdata,
        m_axis_cq_tuser  => open,
        m_axis_cq_tlast  => m_axis_cq.tlast,
        m_axis_cq_tkeep  => m_axis_cq.tkeep,
        m_axis_cq_tvalid => m_axis_cq.tvalid,
        m_axis_cq_tready => m_axis_r_cq.tready,
        s_axis_cc_tdata  => s_axis_cc.tdata,
        s_axis_cc_tuser  => (others => '0'),
        s_axis_cc_tlast  => s_axis_cc.tlast,
        s_axis_cc_tkeep  => s_axis_cc.tkeep,
        s_axis_cc_tvalid => s_axis_cc.tvalid,
        s_axis_cc_tready => s_axis_cc_tready,
        pcie_rq_seq_num => open,
        pcie_rq_seq_num_vld => open,
        pcie_rq_tag => open,
        pcie_rq_tag_vld => open,
        pcie_tfc_nph_av => open,
        pcie_tfc_npd_av => open,
        pcie_cq_np_req => '1',
        pcie_cq_np_req_count => open,
        cfg_phy_link_down => open,
        cfg_phy_link_status => open,
        cfg_negotiated_width => open,
        cfg_current_speed => open,
        cfg_max_payload => open,
        cfg_max_read_req => open,
        cfg_function_status => open,
        cfg_function_power_state => open,
        cfg_vf_status => open,
        cfg_vf_power_state => open,
        cfg_link_power_state => open,
        cfg_mgmt_addr => cfg_mgmt_addr,
        cfg_mgmt_write => cfg_mgmt_write,
        cfg_mgmt_write_data => cfg_mgmt_write_data,
        cfg_mgmt_byte_enable => cfg_mgmt_byte_enable,
        cfg_mgmt_read => cfg_mgmt_read,
        cfg_mgmt_read_data => cfg_mgmt_read_data,
        cfg_mgmt_read_write_done => cfg_mgmt_read_write_done,
        cfg_mgmt_type1_cfg_reg_access => '0',
        cfg_err_cor_out => open,
        cfg_err_nonfatal_out => open,
        cfg_err_fatal_out => open,
        cfg_ltr_enable => open,
        cfg_ltssm_state => open,
        cfg_rcb_status => open,
        cfg_dpa_substate_change => open,
        cfg_obff_enable => open,
        cfg_pl_status_change => open,
        cfg_tph_requester_enable => open,
        cfg_tph_st_mode => open,
        cfg_vf_tph_requester_enable => open,
        cfg_vf_tph_st_mode => open,
        cfg_msg_received => open,
        cfg_msg_received_data => open,
        cfg_msg_received_type => open,
        cfg_msg_transmit => '0',
        cfg_msg_transmit_type => "000",
        cfg_msg_transmit_data => x"00000000",
        cfg_msg_transmit_done => open,
        cfg_fc_ph   => cfg_fc_ph,
        cfg_fc_pd   => cfg_fc_pd,
        cfg_fc_nph  => cfg_fc_nph,
        cfg_fc_npd  => cfg_fc_npd,
        cfg_fc_cplh => cfg_fc_cplh,
        cfg_fc_cpld => cfg_fc_cpld,
        cfg_fc_sel  => cfg_fc_sel,
        cfg_per_func_status_control => "000",
        cfg_per_func_status_data => open,
        cfg_per_function_number => "000",
        cfg_per_function_output_request => '0',
        cfg_per_function_update_done => open,
        cfg_subsys_vend_id => x"10EE",
        cfg_dsn => x"00000001_01_000A35",
        cfg_power_state_change_ack => cfg_power_state_change_ack,
        cfg_power_state_change_interrupt => cfg_power_state_change_ack,
        cfg_err_cor_in => '0',
        cfg_err_uncor_in => '0',
        cfg_flr_in_process => cfg_flr_in_process(1 downto 0),
        cfg_flr_done => cfg_flr_done(1 downto 0),
        cfg_vf_flr_in_process => cfg_vf_flr_in_process(5 downto 0),
        cfg_vf_flr_done => cfg_vf_flr_done(5 downto 0),
        cfg_link_training_enable => '1',
        cfg_ext_read_received => open,
        cfg_ext_write_received => open,
        cfg_ext_register_number => open,
        cfg_ext_function_number => open,
        cfg_ext_write_data => open,
        cfg_ext_write_byte_enable => open,
        cfg_ext_read_data => (others => '0'),
        cfg_ext_read_data_valid => '0',
        cfg_interrupt_int => "0000",
        cfg_interrupt_pending => "00",
        cfg_interrupt_sent => open,
        cfg_interrupt_msix_enable => cfg_interrupt_msix_enable(1 downto 0),
        cfg_interrupt_msix_mask => open,
        cfg_interrupt_msix_vf_enable => open,
        cfg_interrupt_msix_vf_mask => open,
        cfg_interrupt_msix_data => cfg_interrupt_msix_data,
        cfg_interrupt_msix_address => cfg_interrupt_msix_address,
        cfg_interrupt_msix_int => cfg_interrupt_msix_int,
        cfg_interrupt_msix_sent => cfg_interrupt_msix_sent,
        cfg_interrupt_msix_fail => cfg_interrupt_msix_fail,
        cfg_hot_reset_out => open,
        cfg_config_space_enable => '1',
        cfg_req_pm_transition_l23_ready => '0',
        cfg_hot_reset_in => '0',
        cfg_ds_port_number => x"00",
        cfg_ds_bus_number => x"00",
        cfg_ds_device_number => "00000",
        cfg_ds_function_number => "000",
        sys_clk => sys_clk,
        sys_reset => sys_reset
    );
    
    cfg_interrupt_msix_enable(3 downto 2) <= "00";
    
          ---------- PIPE Clock Shared Mode ------------------------------//

  pipe_clock0: pcie_clocking generic map(
      PCIE_ASYNC_EN             =>    "FALSE" ,                     -- PCIe async enable
      PCIE_TXBUF_EN             =>    "FALSE" ,                     -- PCIe TX buffer enable for Gen1/Gen2 only
      PCIE_CLK_SHARING_EN       =>    "FALSE" ,                     -- Enable Clock Sharing
      PCIE_LANE                 =>    8 ,                           -- PCIe number of lanes
      PCIE_LINK_SPEED           =>    3 ,                           -- PCIe Maximum Link Speed
      PCIE_REFCLK_FREQ          =>    0 ,                           -- PCIe Reference Clock Frequency
      PCIE_USERCLK1_FREQ        =>    5 ,                           -- PCIe Core Clock Frequency - Core Clock Freq
      PCIE_USERCLK2_FREQ        =>    4 ,                           -- PCIe User Clock Frequency - User Clock Freq
      PCIE_OOBCLK_MODE          =>    1 , 
      PCIE_DEBUG_MODE           =>    0                             -- Debug Enable
  )
  port map
  (
      ---------- Input -------------------------------------
      CLK_CLK                   =>    ( sys_clk ),
      CLK_TXOUTCLK              =>    ( pipe_txoutclk_out ),     -- Reference clock from lane 0
      CLK_RXOUTCLK_IN           =>    ( pipe_rxoutclk_out ),
      CLK_RST_N                 =>    ( pipe_mmcm_rst_n ),      -- Allow system reset for error_recovery             
      CLK_PCLK_SEL              =>    ( pipe_pclk_sel_out ),
      CLK_PCLK_SEL_SLAVE        =>    ( x"00"),
      CLK_GEN3                  =>    ( pipe_gen3_out ),

      ---------- Output ------------------------------------
      CLK_PCLK                 =>    ( pipe_pclk_in),
      CLK_PCLK_SLAVE           =>    open,
      CLK_RXUSRCLK             =>    ( pipe_rxusrclk_in),
      CLK_RXOUTCLK_OUT         =>    ( pipe_rxoutclk_in),
      CLK_DCLK                 =>    ( pipe_dclk_in),
      CLK_OOBCLK               =>    ( pipe_oobclk_in),
      CLK_USERCLK1             =>    ( pipe_userclk1_in),
      CLK_USERCLK2             =>    ( pipe_userclk2_in),
      CLK_MMCM_LOCK            =>    ( pipe_mmcm_lock_in)

  );
    
end generate;

--Kintex Ultrascale devices
g_ultrascale: if (CARD_TYPE = 105 or CARD_TYPE = 711) generate
    refclk_buff: IBUFDS_GTE3 port map(
      CEB => '0',
      I => sys_clk_p,
      IB => sys_clk_n,
      O => sys_clk_gt,
      ODIV2 => sys_clk             -- default is no divide
    );
    g_devid_7038: if(DEVID=x"7038") generate
    u1 : pcie3_ultrascale_7038
      PORT MAP (
        pci_exp_txn => pci_exp_txn,
        pci_exp_txp => pci_exp_txp,
        pci_exp_rxn => pci_exp_rxn,
        pci_exp_rxp => pci_exp_rxp,
        user_clk => user_clk,
        user_reset => user_reset,
        user_lnk_up => user_lnk_up,
        s_axis_rq_tlast  => s_axis_rq.tlast,
        s_axis_rq_tdata  => s_axis_rq.tdata,
        s_axis_rq_tuser  => x"0000000000000FF",
        s_axis_rq_tkeep  => s_axis_rq.tkeep,
        s_axis_rq_tready => s_axis_rq_tready,
        s_axis_rq_tvalid => s_axis_rq.tvalid,
        m_axis_rc_tdata  => m_axis_rc.tdata,
        m_axis_rc_tuser  => open,
        m_axis_rc_tlast  => m_axis_rc.tlast,
        m_axis_rc_tkeep  => m_axis_rc.tkeep,
        m_axis_rc_tvalid => m_axis_rc.tvalid,
        m_axis_rc_tready => m_axis_r_rc.tready,
        m_axis_cq_tdata  => m_axis_cq.tdata,
        m_axis_cq_tuser  => open,
        m_axis_cq_tlast  => m_axis_cq.tlast,
        m_axis_cq_tkeep  => m_axis_cq.tkeep,
        m_axis_cq_tvalid => m_axis_cq.tvalid,
        m_axis_cq_tready => m_axis_r_cq.tready,
        s_axis_cc_tdata  => s_axis_cc.tdata,
        s_axis_cc_tuser  => (others => '0'),
        s_axis_cc_tlast  => s_axis_cc.tlast,
        s_axis_cc_tkeep  => s_axis_cc.tkeep,
        s_axis_cc_tvalid => s_axis_cc.tvalid,
        s_axis_cc_tready => s_axis_cc_tready,
        pcie_rq_seq_num => open,
        pcie_rq_seq_num_vld => open,
        pcie_rq_tag => open,
        --pcie_rq_tag_av => pcie_rq_tag_av,     -- bk not present on 7-series core?
        pcie_rq_tag_av => open,                 -- bk   FIXME        
        pcie_rq_tag_vld => open,
        pcie_tfc_nph_av => open,
        pcie_tfc_npd_av => open,
        pcie_cq_np_req => '1',
        pcie_cq_np_req_count => open,
        cfg_phy_link_down => open,
        cfg_phy_link_status => open,
        cfg_negotiated_width => open,
        cfg_current_speed => open,
        cfg_max_payload => open,
        cfg_max_read_req => open,
        cfg_function_status => open,
        cfg_function_power_state => open,
        cfg_vf_status => open,
        cfg_vf_power_state => open,
        cfg_link_power_state => open,
        cfg_mgmt_addr => cfg_mgmt_addr,
        cfg_mgmt_write => cfg_mgmt_write,
        cfg_mgmt_write_data => cfg_mgmt_write_data,
        cfg_mgmt_byte_enable => cfg_mgmt_byte_enable,
        cfg_mgmt_read => cfg_mgmt_read,
        cfg_mgmt_read_data => cfg_mgmt_read_data,
        cfg_mgmt_read_write_done => cfg_mgmt_read_write_done,
        cfg_mgmt_type1_cfg_reg_access => '0',
        cfg_err_cor_out => open,
        cfg_err_nonfatal_out => open,
        cfg_err_fatal_out => open,
        cfg_local_error => open,
        cfg_ltr_enable => open,
        cfg_ltssm_state => open,
        cfg_rcb_status => open,
        cfg_dpa_substate_change => open,
        cfg_obff_enable => open,
        cfg_pl_status_change => open,
        cfg_tph_requester_enable => open,
        cfg_tph_st_mode => open,
        cfg_vf_tph_requester_enable => open,
        cfg_vf_tph_st_mode => open,
        cfg_msg_received => open,
        cfg_msg_received_data => open,
        cfg_msg_received_type => open,
        cfg_msg_transmit => '0',
        cfg_msg_transmit_type => "000",
        cfg_msg_transmit_data => x"00000000",
        cfg_msg_transmit_done => open,
        cfg_fc_ph   => cfg_fc_ph,
        cfg_fc_pd   => cfg_fc_pd,
        cfg_fc_nph  => cfg_fc_nph,
        cfg_fc_npd  => cfg_fc_npd,
        cfg_fc_cplh => cfg_fc_cplh,
        cfg_fc_cpld => cfg_fc_cpld,
        cfg_fc_sel  => cfg_fc_sel,
        cfg_per_func_status_control => "000",
        cfg_per_func_status_data => open,
        cfg_per_function_number => "0000",
        cfg_per_function_output_request => '0',
        cfg_per_function_update_done => open,
        cfg_subsys_vend_id => x"10EE",
        cfg_dsn => x"00000001_01_000A35",
        cfg_power_state_change_ack => cfg_power_state_change_ack,
        cfg_power_state_change_interrupt => cfg_power_state_change_ack,
        cfg_err_cor_in => '0',
        cfg_err_uncor_in => '0',
        cfg_flr_in_process => cfg_flr_in_process,
        cfg_flr_done => cfg_flr_done,
        cfg_vf_flr_in_process => cfg_vf_flr_in_process,
        cfg_vf_flr_done => cfg_vf_flr_done,
        cfg_link_training_enable => '1',
        cfg_ext_read_received => open,
        cfg_ext_write_received => open,
        cfg_ext_register_number => open,
        cfg_ext_function_number => open,
        cfg_ext_write_data => open,
        cfg_ext_write_byte_enable => open,
        cfg_ext_read_data => (others => '0'),
        cfg_ext_read_data_valid => '0',
        cfg_interrupt_int => "0000",
        cfg_interrupt_pending => "0000",
        cfg_interrupt_sent => open,
        cfg_interrupt_msix_enable => cfg_interrupt_msix_enable,
        cfg_interrupt_msix_mask => open,
        cfg_interrupt_msix_vf_enable => open,
        cfg_interrupt_msix_vf_mask => open,
        cfg_interrupt_msix_data => cfg_interrupt_msix_data,
        cfg_interrupt_msix_address => cfg_interrupt_msix_address,
        cfg_interrupt_msix_int => cfg_interrupt_msix_int,
        --cfg_interrupt_msix_int => '0',      -- bk - debugging spurious interrupts        
        cfg_interrupt_msix_sent => cfg_interrupt_msix_sent,
        cfg_interrupt_msix_fail => cfg_interrupt_msix_fail,
        cfg_hot_reset_out => open,
        cfg_config_space_enable => '1',
        cfg_req_pm_transition_l23_ready => '0',
        cfg_hot_reset_in => '0',
        cfg_ds_port_number => x"00",
        cfg_ds_bus_number => x"00",
        cfg_ds_device_number => "00000",
        cfg_ds_function_number => "000",
        sys_clk => sys_clk,
        sys_clk_gt => sys_clk_gt, 
        sys_reset => sys_rst_n,
        int_qpll1lock_out => open,
        int_qpll1outrefclk_out => open,
        int_qpll1outclk_out => open
      );
      
      end generate;
    
        g_devid_7039: if(DEVID=x"7039") generate
    u1 : pcie3_ultrascale_7039
      PORT MAP (
        pci_exp_txn => pci_exp_txn,
        pci_exp_txp => pci_exp_txp,
        pci_exp_rxn => pci_exp_rxn,
        pci_exp_rxp => pci_exp_rxp,
        user_clk => user_clk,
        user_reset => user_reset,
        user_lnk_up => user_lnk_up,
        s_axis_rq_tlast  => s_axis_rq.tlast,
        s_axis_rq_tdata  => s_axis_rq.tdata,
        s_axis_rq_tuser  => x"0000000000000FF",
        s_axis_rq_tkeep  => s_axis_rq.tkeep,
        s_axis_rq_tready => s_axis_rq_tready,
        s_axis_rq_tvalid => s_axis_rq.tvalid,
        m_axis_rc_tdata  => m_axis_rc.tdata,
        m_axis_rc_tuser  => open,
        m_axis_rc_tlast  => m_axis_rc.tlast,
        m_axis_rc_tkeep  => m_axis_rc.tkeep,
        m_axis_rc_tvalid => m_axis_rc.tvalid,
        m_axis_rc_tready => m_axis_r_rc.tready,
        m_axis_cq_tdata  => m_axis_cq.tdata,
        m_axis_cq_tuser  => open,
        m_axis_cq_tlast  => m_axis_cq.tlast,
        m_axis_cq_tkeep  => m_axis_cq.tkeep,
        m_axis_cq_tvalid => m_axis_cq.tvalid,
        m_axis_cq_tready => m_axis_r_cq.tready,
        s_axis_cc_tdata  => s_axis_cc.tdata,
        s_axis_cc_tuser  => (others => '0'),
        s_axis_cc_tlast  => s_axis_cc.tlast,
        s_axis_cc_tkeep  => s_axis_cc.tkeep,
        s_axis_cc_tvalid => s_axis_cc.tvalid,
        s_axis_cc_tready => s_axis_cc_tready,
        pcie_rq_seq_num => open,
        pcie_rq_seq_num_vld => open,
        pcie_rq_tag => open,
        --pcie_rq_tag_av => pcie_rq_tag_av,     -- bk not present on 7-series core?
        pcie_rq_tag_av => open,                 -- bk   FIXME        
        pcie_rq_tag_vld => open,
        pcie_tfc_nph_av => open,
        pcie_tfc_npd_av => open,
        pcie_cq_np_req => '1',
        pcie_cq_np_req_count => open,
        cfg_phy_link_down => open,
        cfg_phy_link_status => open,
        cfg_negotiated_width => open,
        cfg_current_speed => open,
        cfg_max_payload => open,
        cfg_max_read_req => open,
        cfg_function_status => open,
        cfg_function_power_state => open,
        cfg_vf_status => open,
        cfg_vf_power_state => open,
        cfg_link_power_state => open,
        cfg_mgmt_addr => cfg_mgmt_addr,
        cfg_mgmt_write => cfg_mgmt_write,
        cfg_mgmt_write_data => cfg_mgmt_write_data,
        cfg_mgmt_byte_enable => cfg_mgmt_byte_enable,
        cfg_mgmt_read => cfg_mgmt_read,
        cfg_mgmt_read_data => cfg_mgmt_read_data,
        cfg_mgmt_read_write_done => cfg_mgmt_read_write_done,
        cfg_mgmt_type1_cfg_reg_access => '0',
        cfg_err_cor_out => open,
        cfg_err_nonfatal_out => open,
        cfg_err_fatal_out => open,
        cfg_local_error => open,
        cfg_ltr_enable => open,
        cfg_ltssm_state => open,
        cfg_rcb_status => open,
        cfg_dpa_substate_change => open,
        cfg_obff_enable => open,
        cfg_pl_status_change => open,
        cfg_tph_requester_enable => open,
        cfg_tph_st_mode => open,
        cfg_vf_tph_requester_enable => open,
        cfg_vf_tph_st_mode => open,
        cfg_msg_received => open,
        cfg_msg_received_data => open,
        cfg_msg_received_type => open,
        cfg_msg_transmit => '0',
        cfg_msg_transmit_type => "000",
        cfg_msg_transmit_data => x"00000000",
        cfg_msg_transmit_done => open,
        cfg_fc_ph   => cfg_fc_ph,
        cfg_fc_pd   => cfg_fc_pd,
        cfg_fc_nph  => cfg_fc_nph,
        cfg_fc_npd  => cfg_fc_npd,
        cfg_fc_cplh => cfg_fc_cplh,
        cfg_fc_cpld => cfg_fc_cpld,
        cfg_fc_sel  => cfg_fc_sel,
        cfg_per_func_status_control => "000",
        cfg_per_func_status_data => open,
        cfg_per_function_number => "0000",
        cfg_per_function_output_request => '0',
        cfg_per_function_update_done => open,
        cfg_subsys_vend_id => x"10EE",
        cfg_dsn => x"00000001_01_000A35",
        cfg_power_state_change_ack => cfg_power_state_change_ack,
        cfg_power_state_change_interrupt => cfg_power_state_change_ack,
        cfg_err_cor_in => '0',
        cfg_err_uncor_in => '0',
        cfg_flr_in_process => cfg_flr_in_process,
        cfg_flr_done => cfg_flr_done,
        cfg_vf_flr_in_process => cfg_vf_flr_in_process,
        cfg_vf_flr_done => cfg_vf_flr_done,
        cfg_link_training_enable => '1',
        cfg_ext_read_received => open,
        cfg_ext_write_received => open,
        cfg_ext_register_number => open,
        cfg_ext_function_number => open,
        cfg_ext_write_data => open,
        cfg_ext_write_byte_enable => open,
        cfg_ext_read_data => (others => '0'),
        cfg_ext_read_data_valid => '0',
        cfg_interrupt_int => "0000",
        cfg_interrupt_pending => "0000",
        cfg_interrupt_sent => open,
        cfg_interrupt_msix_enable => cfg_interrupt_msix_enable,
        cfg_interrupt_msix_mask => open,
        cfg_interrupt_msix_vf_enable => open,
        cfg_interrupt_msix_vf_mask => open,
        cfg_interrupt_msix_data => cfg_interrupt_msix_data,
        cfg_interrupt_msix_address => cfg_interrupt_msix_address,
        cfg_interrupt_msix_int => cfg_interrupt_msix_int,
        --cfg_interrupt_msix_int => '0',      -- bk - debugging spurious interrupts        
        cfg_interrupt_msix_sent => cfg_interrupt_msix_sent,
        cfg_interrupt_msix_fail => cfg_interrupt_msix_fail,
        cfg_hot_reset_out => open,
        cfg_config_space_enable => '1',
        cfg_req_pm_transition_l23_ready => '0',
        cfg_hot_reset_in => '0',
        cfg_ds_port_number => x"00",
        cfg_ds_bus_number => x"00",
        cfg_ds_device_number => "00000",
        cfg_ds_function_number => "000",
        sys_clk => sys_clk,
        sys_clk_gt => sys_clk_gt, 
        sys_reset => sys_rst_n,
        int_qpll1lock_out => open,
        int_qpll1outrefclk_out => open,
        int_qpll1outclk_out => open
      );
      
      end generate;
    
    end generate;
    
    

    




    
    
    

    cfg_flr: process(user_reset, user_clk)
    begin
        if (rising_edge(user_clk)) then
            if (user_reset = '1') then
                cfg_flr_done_reg0       <= (others => '0');
                cfg_vf_flr_done_reg0    <= (others => '0');
                cfg_flr_done_reg1       <= (others => '0');
                cfg_vf_flr_done_reg1    <= (others => '0');
            else
                cfg_flr_done_reg0       <= cfg_flr_in_process;
                cfg_vf_flr_done_reg0    <= cfg_vf_flr_in_process;
                cfg_flr_done_reg1       <= cfg_flr_done_reg0;
                cfg_vf_flr_done_reg1    <= cfg_vf_flr_done_reg0;
            end if;
        end if;
    end process;

    cfg_flr_done(0) <= (not cfg_flr_done_reg1(0)) and cfg_flr_done_reg0(0); 
    cfg_flr_done(1) <= (not cfg_flr_done_reg1(1)) and cfg_flr_done_reg0(1);
    cfg_flr_done(2) <= (not cfg_flr_done_reg1(2)) and cfg_flr_done_reg0(2);
    cfg_flr_done(3) <= (not cfg_flr_done_reg1(3)) and cfg_flr_done_reg0(3);
    

    cfg_vf_flr_done(0) <= (not cfg_vf_flr_done_reg1(0)) and cfg_vf_flr_done_reg0(0); 
    cfg_vf_flr_done(1) <= (not cfg_vf_flr_done_reg1(1)) and cfg_vf_flr_done_reg0(1); 
    cfg_vf_flr_done(2) <= (not cfg_vf_flr_done_reg1(2)) and cfg_vf_flr_done_reg0(2); 
    cfg_vf_flr_done(3) <= (not cfg_vf_flr_done_reg1(3)) and cfg_vf_flr_done_reg0(3); 
    cfg_vf_flr_done(4) <= (not cfg_vf_flr_done_reg1(4)) and cfg_vf_flr_done_reg0(4); 
    cfg_vf_flr_done(5) <= (not cfg_vf_flr_done_reg1(5)) and cfg_vf_flr_done_reg0(5);
    cfg_vf_flr_done(6) <= (not cfg_vf_flr_done_reg1(6)) and cfg_vf_flr_done_reg0(6);
    cfg_vf_flr_done(7) <= (not cfg_vf_flr_done_reg1(7)) and cfg_vf_flr_done_reg0(7);    

    reset <= user_reset;
    clk   <= user_clk;

end architecture structure ; -- of pcie_ep_wrap

