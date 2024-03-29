-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 3.6
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : transceiver_10g_64b67b_block_sync_sm.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module BLOCK_SYNC_SM
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard
-- 
-- 
-- (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity Transceiver_10g_64b67b_BLOCK_SYNC_SM is
    generic
(
        SH_CNT_MAX         :  integer  := 64;
        SH_INVALID_CNT_MAX :  integer  := 16
    );
    port
(
        -- User Interface
        BLOCKSYNC_OUT      : out   std_logic;
        RXGEARBOXSLIP_OUT  : out   std_logic;
        RXHEADER_IN        : in    std_logic_vector(2 downto 0);
        RXHEADERVALID_IN   : in    std_logic;

    -- System Interface
        USER_CLK           : in    std_logic;
        SYSTEM_RESET       : in    std_logic
    );


end Transceiver_10g_64b67b_BLOCK_SYNC_SM;

architecture RTL of Transceiver_10g_64b67b_BLOCK_SYNC_SM is

    --***********************************Parameter Declarations********************

    constant DLY : time := 1 ns;

    --********************************* Wire Declarations************************** 

    signal  next_begin_c                  :   std_logic;
    signal  next_sh_invalid_c             :   std_logic;
    signal  next_sh_valid_c               :   std_logic;
    signal  next_slip_c                   :   std_logic;
    signal  next_sync_done_c              :   std_logic;
    signal  next_test_sh_c                :   std_logic;
    signal  sh_count_equals_max_i         :   std_logic;
    signal  sh_invalid_cnt_equals_max_i   :   std_logic;
    signal  sh_invalid_cnt_equals_zero_i  :   std_logic;
    signal  slip_done_i                   :   std_logic;
    signal  slip_pulse_i                  :   std_logic;
    signal  sync_found_i                  :   std_logic;

    ---***************************Internal Register Declarations*************************** 

    signal  begin_r                       :   std_logic;
    signal  blocksync_out_i               :   std_logic;
    signal  rxgearboxslip_out_i           :   std_logic;
    signal  sh_invalid_r                  :   std_logic;
    signal  sh_valid_r                    :   std_logic;
    signal  slip_count_i                  :   std_logic_vector(31 downto 0);
    signal  slip_r                        :   std_logic;
    signal  sync_done_r                   :   std_logic;
    signal  sync_header_count_i           :   unsigned(9 downto 0);
    signal  sync_header_invalid_count_i   :   unsigned(9 downto 0);
    signal  test_sh_r                     :   std_logic;

    ---**************************** Main Body of Code *******************************
begin
    
    
    sync_found_i   <=  '1' when ((RXHEADER_IN(1 downto 0) = "01") or (RXHEADER_IN(1 downto 0) = "10")) else '0';

    ---________________________________ State machine __________________________    

    --- State registers
    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if(SYSTEM_RESET = '1') then
                begin_r      <=  '1' after DLY;
                test_sh_r    <=  '0' after DLY;
                sh_valid_r   <=  '0' after DLY;
                sh_invalid_r <=  '0' after DLY;
                slip_r       <=  '0' after DLY;
                sync_done_r  <=  '0' after DLY;
            else
                begin_r      <=  next_begin_c after DLY;
                test_sh_r    <=  next_test_sh_c after DLY;
                sh_valid_r   <=  next_sh_valid_c after DLY;
                sh_invalid_r <=  next_sh_invalid_c after DLY;
                slip_r       <=  next_slip_c after DLY;
                sync_done_r  <=  next_sync_done_c after DLY;
            end if;
        end if;
    end process;

    --- Next state logic
    next_begin_c      <=    sync_done_r 
                            or (slip_r and slip_done_i)
                            or (sh_valid_r and sh_count_equals_max_i and not sh_invalid_cnt_equals_max_i)
                            or (sh_invalid_r and sh_count_equals_max_i and not sh_invalid_cnt_equals_max_i and blocksync_out_i);

    next_test_sh_c    <=   begin_r
                           or (test_sh_r and not RXHEADERVALID_IN)
                           or (sh_valid_r and not sh_count_equals_max_i)
                           or (sh_invalid_r and not sh_count_equals_max_i and not sh_invalid_cnt_equals_max_i and blocksync_out_i);
                        

    next_sh_valid_c   <=   (test_sh_r and RXHEADERVALID_IN and sync_found_i);

    next_sh_invalid_c <=   (test_sh_r and RXHEADERVALID_IN and not sync_found_i);

    next_slip_c       <=   (sh_invalid_r and (sh_invalid_cnt_equals_max_i or not blocksync_out_i))
                           or (sh_valid_r and sh_count_equals_max_i and not sh_invalid_cnt_equals_zero_i and (sh_invalid_cnt_equals_max_i or not blocksync_out_i))
                           or (slip_r and not slip_done_i);

    next_sync_done_c  <=   (sh_valid_r and sh_count_equals_max_i and sh_invalid_cnt_equals_zero_i);

    ---________________ Counter keep track of sync headers counted _____________    

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if(begin_r = '1') then
                sync_header_count_i   <=    (others => '0') after DLY;
            elsif ((sh_valid_r= '1') or (sh_invalid_r = '1')) then
                sync_header_count_i  <=   sync_header_count_i + 1 after DLY;
            end if;
        end if;
    end process;

    sh_count_equals_max_i <= '1' when (sync_header_count_i=SH_CNT_MAX) else '0';

    ---________________ Counter keep track of invalid sync headers  ____________    

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if(begin_r = '1') then
                sync_header_invalid_count_i   <=  (others => '0') after DLY;
            elsif (sh_invalid_r = '1') then
                sync_header_invalid_count_i  <=   sync_header_invalid_count_i + 1 after DLY;
            end if;
        end if;
    end process;

    --- signal to indicate max number of invalid sync headers has been reached
    sh_invalid_cnt_equals_max_i  <= '1'  when (sync_header_invalid_count_i=SH_INVALID_CNT_MAX)
                                     else '0';

    --- signal to indicate no invalid sync headers
    sh_invalid_cnt_equals_zero_i <= '1' when (sync_header_invalid_count_i=0) else '0';

    ---_______ Counter wait for 16 cycles to ensure that slip is complete _______    

    slip_pulse_i <= next_slip_c and not slip_r;

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            rxgearboxslip_out_i   <=  slip_pulse_i after DLY;
        end if;
    end process;

    ---_____________ Ouput assignment to indicate block sync complete  _________    

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if(slip_r = '0') then
                slip_count_i   <=  (others => '0') after DLY;
            else
                slip_count_i   <=  (slip_count_i(30 downto 0) & rxgearboxslip_out_i) after DLY;
            end if;
        end if;
    end process;

    slip_done_i <= slip_count_i(31);


    ---_____________ Pulse GEARBOXSLIP port to slip the data by 1 bit  _________    

    process( USER_CLK )
    begin
        if(USER_CLK'event and USER_CLK = '1') then
            if((SYSTEM_RESET='1') or (slip_r= '1')) then
                blocksync_out_i   <=  '0' after DLY;
            elsif (sync_done_r = '1') then
                blocksync_out_i   <=  '1' after DLY;
            end if;
        end if;
    end process;


    --__________________________ Ouput Port Assignment ________________________    

    BLOCKSYNC_OUT   <=   blocksync_out_i;
    RXGEARBOXSLIP_OUT   <=   rxgearboxslip_out_i;

end RTL;

