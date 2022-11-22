--------------------------------------------------------------------------------
--  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity interlaken_0_segmented_lbus_pkt_gen is
generic
(
 DUPLEX_PKT_NUM      : integer :=  1000   -- Duplex mode packet number
 );
port
(
    clk                 : in  std_logic;
    sys_reset           : in  std_logic;
    reset               : in  std_logic;
    tx_restart_in       : in  std_logic;
    rx_aligned          : in  std_logic;
    tx_rdyin            : in  std_logic;
    tx_ovfin            : in  std_logic;
    sanity_init_done    : in  std_logic;
    tx_dataout0         : out std_logic_vector(127 downto 0);
    tx_chanout0         : out std_logic_vector(10 downto 0);
    tx_enaout0          : out std_logic;
    tx_sopout0          : out std_logic;
    tx_eopout0          : out std_logic;
    tx_errout0          : out std_logic;
    tx_mtyout0          : out std_logic_vector(3 downto 0);  
    tx_bctlout0         : out std_logic;
    tx_dataout1         : out std_logic_vector(127 downto 0);
    tx_chanout1         : out std_logic_vector(10 downto 0); 
    tx_enaout1          : out std_logic;
    tx_sopout1          : out std_logic;
    tx_eopout1          : out std_logic;
    tx_errout1          : out std_logic;
    tx_mtyout1          : out std_logic_vector(3 downto 0);  
    tx_bctlout1         : out std_logic;
    tx_dataout2         : out std_logic_vector(127 downto 0);
    tx_chanout2         : out std_logic_vector(10 downto 0); 
    tx_enaout2          : out std_logic;
    tx_sopout2          : out std_logic;
    tx_eopout2          : out std_logic;
    tx_errout2          : out std_logic;
    tx_mtyout2          : out std_logic_vector(3 downto 0);  
    tx_bctlout2         : out std_logic;
    tx_dataout3         : out std_logic_vector(127 downto 0);
    tx_chanout3         : out std_logic_vector(10 downto 0); 
    tx_enaout3          : out std_logic;
    tx_sopout3          : out std_logic;
    tx_eopout3          : out std_logic;
    tx_errout3          : out std_logic;
    tx_mtyout3          : out std_logic_vector(3 downto 0);  
    tx_bctlout3         : out std_logic;
    tx_done_led         : out std_logic;            
    tx_busy_led         : out std_logic;            
    tx_fail_led         : out std_logic;            
    tx_gt_locked_led    : out std_logic
);
end entity interlaken_0_segmented_lbus_pkt_gen;

architecture rtl of interlaken_0_segmented_lbus_pkt_gen is
  signal ready : std_logic;
  signal clk_cnt: integer range 0 to 31;
  signal datacnt : integer range 0 to 65535;
begin

ready     <=  (tx_rdyin) and (not tx_ovfin) and (rx_aligned);

tx_dataout0       <=  (x"0000000000000000"+std_logic_vector(to_unsigned(datacnt,64)))&(x"0000000000000001"+std_logic_vector(to_unsigned(datacnt,64)));
tx_dataout1       <=  (x"0000000000000002"+std_logic_vector(to_unsigned(datacnt,64)))&(x"0000000000000003"+std_logic_vector(to_unsigned(datacnt,64)));
tx_dataout2       <=  (x"0000000000000004"+std_logic_vector(to_unsigned(datacnt,64)))&(x"0000000000000005"+std_logic_vector(to_unsigned(datacnt,64)));
tx_dataout3       <=  (x"0000000000000006"+std_logic_vector(to_unsigned(datacnt,64)))&(x"0000000000000007"+std_logic_vector(to_unsigned(datacnt,64)));


process(clk)
begin
  if rising_edge(clk) then
    if(reset = '1') then
      tx_chanout0 <= "00000001111"; 
      tx_chanout1 <= "00000001111";
      tx_chanout2 <= "00000001111";
      tx_chanout3 <= "00000001111";
      tx_sopout0 <= '0';     tx_sopout1 <= '0';     tx_sopout2 <= '0';     tx_sopout3 <= '0';
      tx_eopout0 <= '0';     tx_eopout1 <= '0';     tx_eopout2 <= '0';     tx_eopout3 <= '0';
      tx_errout0 <= '0';     tx_errout1 <= '0';     tx_errout2 <= '0';     tx_errout3 <= '0';
      tx_mtyout0 <= x"0";    tx_mtyout1 <= x"0";    tx_mtyout2 <= x"0";    tx_mtyout3 <= x"0";
      tx_bctlout0 <= '0';    tx_bctlout1 <= '0';    tx_bctlout2 <= '0';    tx_bctlout3 <= '0';
      clk_cnt <= 0;
      datacnt <= 0;
    else
      if(ready = '1') then
        clk_cnt <= clk_cnt + 1;
        if (clk_cnt = 0) then
          tx_sopout0 <= '1';     tx_sopout1 <= '0';     tx_sopout2 <= '0';     tx_sopout3 <= '0';
          tx_eopout0 <= '0';     tx_eopout1 <= '0';     tx_eopout2 <= '0';     tx_eopout3 <= '0';
          tx_enaout0 <= '1';     tx_enaout1 <= '1';     tx_enaout2 <= '1';     tx_enaout3 <= '1';
          tx_errout0 <= '0';     tx_errout1 <= '0';     tx_errout2 <= '0';     tx_errout3 <= '0';
          tx_mtyout0 <= x"0";    tx_mtyout1 <= x"0";    tx_mtyout2 <= x"0";    tx_mtyout3 <= x"0";
          tx_bctlout0 <= '0';    tx_bctlout1 <= '0';    tx_bctlout2 <= '0';    tx_bctlout3 <= '0';
          datacnt <= 0;
        else
          tx_sopout0 <= '0';     tx_sopout1 <= '0';     tx_sopout2 <= '0';     tx_sopout3 <= '0';
          tx_enaout0 <= '1';     tx_enaout1 <= '1';     tx_enaout2 <= '1';     tx_enaout3 <= '1';
          datacnt <= datacnt + 8;
        end if;
        if (clk_cnt = 15) then
          tx_enaout0 <= '1';     tx_enaout1 <= '1';     tx_enaout2 <= '1';     tx_enaout3 <= '1';
          tx_eopout0 <= '0';     tx_eopout1 <= '0';     tx_eopout2 <= '0';     tx_eopout3 <= '1';
          tx_mtyout0 <= x"5";    tx_mtyout1 <= x"0";    tx_mtyout2 <= x"0";    tx_mtyout3 <= x"0";
        end if;
        if (clk_cnt = 16) then
          tx_eopout0 <= '0';     tx_eopout1 <= '0';     tx_eopout2 <= '0';     tx_eopout3 <= '0';
          tx_mtyout0 <= x"0";    tx_mtyout1 <= x"0";    tx_mtyout2 <= x"0";    tx_mtyout3 <= x"0";
          tx_enaout0 <= '0';     tx_enaout1 <= '0';     tx_enaout2 <= '0';     tx_enaout3 <= '0';
        end if;
        if (clk_cnt = 23) then
          clk_cnt <= 0;
        end if;
      else -- ready != 0
        tx_enaout0 <= '0';     tx_enaout1 <= '0';     tx_enaout2 <= '0';     tx_enaout3 <= '0';
      end if;  --ready
    end if; --reset
  end if; --rising_edge
end process;


 


end rtl;


