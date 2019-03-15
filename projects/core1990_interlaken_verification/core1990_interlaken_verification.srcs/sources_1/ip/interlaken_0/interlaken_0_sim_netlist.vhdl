-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Mar 13 10:44:41 2019
-- Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/leover/Desktop/Core1990_Verification/projects/core1990_interlaken_verification/core1990_interlaken_verification.srcs/sources_1/ip/interlaken_0/interlaken_0_sim_netlist.vhdl
-- Design      : interlaken_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : out STD_LOGIC;
    rxresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : out STD_LOGIC;
    txresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => txresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 is
  port (
    plllock_tx_sync : out STD_LOGIC;
    gtwiz_reset_tx_done_int_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[0]\ : out STD_LOGIC;
    gttxreset_out_reg : out STD_LOGIC;
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_tx_timer_sat_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : in STD_LOGIC;
    sm_reset_tx_timer_sat : in STD_LOGIC;
    sm_reset_tx_timer_clr_reg : in STD_LOGIC;
    gtwiz_reset_tx_any_sync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 is
  signal gtwiz_reset_tx_done_int : STD_LOGIC;
  signal gtwiz_reset_tx_done_int_i_2_n_0 : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^plllock_tx_sync\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  plllock_tx_sync <= \^plllock_tx_sync\;
\FSM_sequential_sm_reset_tx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"38000C0008000C00"
    )
        port map (
      I0 => \^plllock_tx_sync\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => sm_reset_tx_timer_sat_reg,
      I4 => \out\(0),
      I5 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      O => \FSM_sequential_sm_reset_tx_reg[0]\
    );
gttxreset_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg,
      I2 => \^plllock_tx_sync\,
      I3 => gtwiz_reset_tx_any_sync,
      I4 => \out\(2),
      I5 => \out\(1),
      O => gttxreset_out_reg
    );
gtwiz_reset_tx_done_int_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => gtwiz_reset_tx_done_int_i_2_n_0,
      I1 => gtwiz_reset_tx_done_int,
      I2 => gtwiz_reset_tx_done_int_reg_0,
      O => gtwiz_reset_tx_done_int_reg
    );
gtwiz_reset_tx_done_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444F44444"
    )
        port map (
      I0 => \out\(0),
      I1 => \^plllock_tx_sync\,
      I2 => sm_reset_tx_timer_sat,
      I3 => sm_reset_tx_timer_clr_reg,
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      I5 => \out\(1),
      O => gtwiz_reset_tx_done_int_i_2_n_0
    );
gtwiz_reset_tx_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000404000004040"
    )
        port map (
      I0 => \^plllock_tx_sync\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => sm_reset_tx_timer_sat_reg,
      I4 => \out\(0),
      I5 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      O => gtwiz_reset_tx_done_int
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => qpll0lock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^plllock_tx_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 is
  port (
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_rx_cdr_to_clr_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]\ : out STD_LOGIC;
    rxprogdivreset_out_reg : out STD_LOGIC;
    rxcdrlock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_rx_timer_clr_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    plllock_rx_sync : in STD_LOGIC;
    sm_reset_rx_cdr_to_clr : in STD_LOGIC;
    sm_reset_rx_timer_sat_reg : in STD_LOGIC;
    sm_reset_rx_cdr_to_sat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 is
  signal \^gtwiz_reset_rx_cdr_stable_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^rxprogdivreset_out_reg\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_clr_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxprogdivreset_out_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sm_reset_rx_cdr_to_clr_i_2 : label is "soft_lutpair3";
begin
  gtwiz_reset_rx_cdr_stable_out(0) <= \^gtwiz_reset_rx_cdr_stable_out\(0);
  rxprogdivreset_out_reg <= \^rxprogdivreset_out_reg\;
\FSM_sequential_sm_reset_rx[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000AC0C000C0"
    )
        port map (
      I0 => \^rxprogdivreset_out_reg\,
      I1 => sm_reset_rx_timer_sat_reg,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => plllock_rx_sync,
      I5 => \out\(2),
      O => \FSM_sequential_sm_reset_rx_reg[0]\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxcdrlock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_rx_cdr_stable_out\(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxprogdivreset_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      O => \^rxprogdivreset_out_reg\
    );
sm_reset_rx_cdr_to_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF0800AAAA"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_clr_i_2_n_0,
      I1 => sm_reset_rx_timer_clr_reg,
      I2 => \out\(2),
      I3 => plllock_rx_sync,
      I4 => \out\(0),
      I5 => sm_reset_rx_cdr_to_clr,
      O => sm_reset_rx_cdr_to_clr_reg
    );
sm_reset_rx_cdr_to_clr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      I2 => \out\(2),
      I3 => \out\(1),
      O => sm_reset_rx_cdr_to_clr_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_all_timer_sat_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_all_timer_clr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 is
  signal gtpowergood_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_all[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0FAF00CFFFCFFF"
    )
        port map (
      I0 => gtpowergood_sync,
      I1 => sm_reset_all_timer_sat_reg,
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => sm_reset_all_timer_clr_reg,
      I5 => \out\(1),
      O => E(0)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtpowergood_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtpowergood_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_sm_reset_rx_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[1]_0\ : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_dly : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 is
  signal \FSM_sequential_sm_reset_rx[2]_i_3_n_0\ : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_dly : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_rx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAEA"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\,
      I1 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      I2 => sm_reset_rx_timer_clr_reg,
      I3 => \out\(0),
      I4 => \FSM_sequential_sm_reset_rx_reg[1]\,
      I5 => \FSM_sequential_sm_reset_rx_reg[1]_0\,
      O => E(0)
    );
\FSM_sequential_sm_reset_rx[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => gtwiz_reset_rx_datapath_dly,
      I4 => gtwiz_reset_rx_pll_and_datapath_dly,
      O => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_rx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 is
  port (
    gtwiz_reset_rx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_rx_timer_sat_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 is
  signal \^gtwiz_reset_rx_pll_and_datapath_dly\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_rx_pll_and_datapath_dly <= \^gtwiz_reset_rx_pll_and_datapath_dly\;
\FSM_sequential_sm_reset_rx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F55EA55EA55EA55E"
    )
        port map (
      I0 => \out\(0),
      I1 => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => sm_reset_rx_timer_sat_reg,
      I5 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      O => D(0)
    );
\FSM_sequential_sm_reset_rx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F800FF00F800FFF"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      I1 => sm_reset_rx_timer_sat_reg,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \out\(2),
      I5 => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      O => D(1)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_rx_pll_and_datapath_dly\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 is
  port (
    gtwiz_reset_tx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_tx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 is
  port (
    gtwiz_reset_tx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 is
  signal \^gtwiz_reset_tx_pll_and_datapath_dly\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[1]_i_1\ : label is "soft_lutpair1";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_pll_and_datapath_dly <= \^gtwiz_reset_tx_pll_and_datapath_dly\;
\FSM_sequential_sm_reset_tx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F3E"
    )
        port map (
      I0 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      O => D(0)
    );
\FSM_sequential_sm_reset_tx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FF1"
    )
        port map (
      I0 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      O => D(1)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 is
  port (
    sm_reset_rx_timer_clr_reg : out STD_LOGIC;
    rxuserrdy_out_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]\ : out STD_LOGIC;
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_rx_timer_clr_reg_0 : in STD_LOGIC;
    gtwiz_reset_rx_any_sync : in STD_LOGIC;
    \gen_gtwizard_gtye4.rxuserrdy_int\ : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC;
    sm_reset_rx_timer_sat_reg : in STD_LOGIC;
    i_in_out_reg_0 : in STD_LOGIC;
    sm_reset_rx_pll_timer_clr_reg : in STD_LOGIC;
    sm_reset_rx_pll_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 is
  signal gtwiz_reset_userclk_rx_active_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal rxuserrdy_out_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_rx[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2023202000000000"
    )
        port map (
      I0 => rxuserrdy_out_i_2_n_0,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => sm_reset_rx_pll_timer_clr_reg,
      I4 => sm_reset_rx_pll_timer_sat,
      I5 => \out\(0),
      O => \FSM_sequential_sm_reset_rx_reg[0]\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_rx_active_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_userclk_rx_active_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAAF00000800"
    )
        port map (
      I0 => \out\(2),
      I1 => rxuserrdy_out_i_2_n_0,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => gtwiz_reset_rx_any_sync,
      I5 => \gen_gtwizard_gtye4.rxuserrdy_int\,
      O => rxuserrdy_out_reg
    );
rxuserrdy_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => gtwiz_reset_userclk_rx_active_sync,
      O => rxuserrdy_out_i_2_n_0
    );
sm_reset_rx_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBAE28A2"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_i_2_n_0,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => sm_reset_rx_timer_clr_reg_0,
      O => sm_reset_rx_timer_clr_reg
    );
sm_reset_rx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888CC00C0C0FFFF"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      I1 => sm_reset_rx_timer_sat_reg,
      I2 => gtwiz_reset_userclk_rx_active_sync,
      I3 => i_in_out_reg_0,
      I4 => \out\(2),
      I5 => \out\(1),
      O => sm_reset_rx_timer_clr_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 is
  port (
    sm_reset_tx_timer_clr_reg : out STD_LOGIC;
    txuserrdy_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_tx_timer_clr_reg_0 : in STD_LOGIC;
    gtwiz_reset_tx_any_sync : in STD_LOGIC;
    \gen_gtwizard_gtye4.txuserrdy_int\ : in STD_LOGIC;
    i_in_out_reg_0 : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_dly : in STD_LOGIC;
    gtwiz_reset_tx_datapath_dly : in STD_LOGIC;
    sm_reset_tx_pll_timer_clr : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : in STD_LOGIC;
    sm_reset_tx_timer_sat_reg : in STD_LOGIC;
    plllock_tx_sync : in STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[1]\ : in STD_LOGIC;
    sm_reset_tx_pll_timer_clr_reg : in STD_LOGIC;
    sm_reset_tx_pll_timer_sat : in STD_LOGIC;
    sm_reset_tx_timer_sat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 is
  signal \FSM_sequential_sm_reset_tx[2]_i_3_n_0\ : STD_LOGIC;
  signal gtwiz_reset_userclk_tx_active_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal sm_reset_tx_timer_clr_i_2_n_0 : STD_LOGIC;
  signal txuserrdy_out_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_tx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEEE"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\,
      I1 => i_in_out_reg_0,
      I2 => gtwiz_reset_tx_pll_and_datapath_dly,
      I3 => gtwiz_reset_tx_datapath_dly,
      I4 => sm_reset_tx_pll_timer_clr,
      I5 => \out\(0),
      O => E(0)
    );
\FSM_sequential_sm_reset_tx[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000088888888"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_tx_reg[1]\,
      I1 => gtwiz_reset_userclk_tx_active_sync,
      I2 => sm_reset_tx_pll_timer_clr,
      I3 => sm_reset_tx_pll_timer_clr_reg,
      I4 => sm_reset_tx_pll_timer_sat,
      I5 => \out\(0),
      O => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_tx_active_in(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_userclk_tx_active_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
sm_reset_tx_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBEB282B"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_i_2_n_0,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => sm_reset_tx_timer_clr_reg_0,
      O => sm_reset_tx_timer_clr_reg
    );
sm_reset_tx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0F0F000F0"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      I1 => gtwiz_reset_userclk_tx_active_sync,
      I2 => sm_reset_tx_timer_sat_reg,
      I3 => \out\(0),
      I4 => plllock_tx_sync,
      I5 => \out\(2),
      O => sm_reset_tx_timer_clr_i_2_n_0
    );
txuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFB000002AA"
    )
        port map (
      I0 => txuserrdy_out_i_2_n_0,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => gtwiz_reset_tx_any_sync,
      I5 => \gen_gtwizard_gtye4.txuserrdy_int\,
      O => txuserrdy_out_reg
    );
txuserrdy_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg_0,
      I2 => \out\(2),
      I3 => \out\(1),
      I4 => gtwiz_reset_userclk_tx_active_sync,
      O => txuserrdy_out_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 is
  port (
    plllock_rx_sync : out STD_LOGIC;
    gtwiz_reset_rx_done_int_reg : out STD_LOGIC;
    gtrxreset_out_reg : out STD_LOGIC;
    sm_reset_rx_timer_clr_reg : out STD_LOGIC;
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_rx_timer_sat_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_rx_done_int_reg_0 : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg_0 : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 is
  signal gtwiz_reset_rx_done_int : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^plllock_rx_sync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gtrxreset_out_i_2 : label is "soft_lutpair2";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM of sm_reset_rx_timer_clr_i_3 : label is "soft_lutpair2";
begin
  plllock_rx_sync <= \^plllock_rx_sync\;
gtrxreset_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFF00"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => sm_reset_rx_timer_clr_reg_0,
      I2 => sm_reset_rx_timer_sat,
      I3 => \out\(1),
      I4 => \out\(0),
      O => gtrxreset_out_reg
    );
gtwiz_reset_rx_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC00000"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => sm_reset_rx_timer_sat_reg,
      I2 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      I3 => \out\(0),
      I4 => gtwiz_reset_rx_done_int,
      I5 => gtwiz_reset_rx_done_int_reg_0,
      O => gtwiz_reset_rx_done_int_reg
    );
gtwiz_reset_rx_done_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440000C0000000"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => \out\(1),
      I2 => sm_reset_rx_timer_sat_reg,
      I3 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      I4 => \out\(2),
      I5 => \out\(0),
      O => gtwiz_reset_rx_done_int
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => qpll0lock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^plllock_rx_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
sm_reset_rx_timer_clr_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => \out\(0),
      O => sm_reset_rx_timer_clr_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel is
  port (
    bufgtce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : out STD_LOGIC;
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : out STD_LOGIC;
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtrxreset_int\ : in STD_LOGIC;
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : in STD_LOGIC;
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.rxprogdivreset_int\ : in STD_LOGIC;
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.rxuserrdy_int\ : in STD_LOGIC;
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_powergood_delay.pwr_on_fsm_reg\ : in STD_LOGIC;
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : in STD_LOGIC;
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txprogdivreset_int\ : in STD_LOGIC;
    \gen_powergood_delay.pwr_on_fsm_reg_0\ : in STD_LOGIC;
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txuserrdy_int\ : in STD_LOGIC;
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXRATE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel : entity is "gtwizard_ultrascale_v1_7_3_gtye4_channel";
end interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel is
  signal \^gen_gtwizard_gtye4.gtpowergood_int\ : STD_LOGIC;
  signal \^txoutclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \xlnx_opt_\ : STD_LOGIC;
  signal \xlnx_opt__1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\ : label is "PRIMITIVE";
begin
  \gen_gtwizard_gtye4.gtpowergood_int\ <= \^gen_gtwizard_gtye4.gtpowergood_int\;
  lopt_2 <= \xlnx_opt_\;
  lopt_3 <= \xlnx_opt__1\;
  txoutclk_out(0) <= \^txoutclk_out\(0);
BUFG_GT_SYNC: unisim.vcomponents.BUFG_GT_SYNC
     port map (
      CE => lopt,
      CESYNC => \xlnx_opt_\,
      CLK => \^txoutclk_out\(0),
      CLR => lopt_1,
      CLRSYNC => \xlnx_opt__1\
    );
\gen_powergood_delay.intclk_rrst_n_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_gtwizard_gtye4.gtpowergood_int\,
      O => \gen_powergood_delay.intclk_rrst_n_r_reg[0]\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\: unisim.vcomponents.GTYE4_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => X"0000",
      ADAPT_CFG1 => X"F81C",
      ADAPT_CFG2 => X"0000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0000000000",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "FALSE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "FALSE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      A_RXOSCALRESET => '0',
      A_RXPROGDIVRESET => '0',
      A_RXTERMINATION => '1',
      A_TXDIFFCTRL => B"01100",
      A_TXPROGDIVRESET => '0',
      CBCC_DATA_SOURCE_SEL => "ENCODED",
      CDR_SWAP_MODE_EN => '0',
      CFOK_PWRSVE_EN => '1',
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CH_HSPMUX => X"4040",
      CKCAL1_CFG_0 => B"1100000011000000",
      CKCAL1_CFG_1 => B"0001000011000000",
      CKCAL1_CFG_2 => B"0010000000001000",
      CKCAL1_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_0 => B"1100000011000000",
      CKCAL2_CFG_1 => B"1000000011000000",
      CKCAL2_CFG_2 => B"0001000000000000",
      CKCAL2_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_4 => B"0000000000000000",
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 24,
      CLK_COR_MIN_LAT => 16,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0000000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0000000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG0 => X"01FA",
      CPLL_CFG1 => X"002B",
      CPLL_CFG2 => X"0002",
      CPLL_CFG3 => X"0000",
      CPLL_FBDIV => 2,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG0 => X"02B2",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      CTLE3_OCAP_EXT_CTRL => B"000",
      CTLE3_OCAP_EXT_EN => '0',
      DDI_CTRL => B"00",
      DDI_REALIGN_WAIT => 15,
      DEC_MCOMMA_DETECT => "FALSE",
      DEC_PCOMMA_DETECT => "FALSE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DELAY_ELEC => '0',
      DMONITOR_CFG0 => B"00" & X"00",
      DMONITOR_CFG1 => X"00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER0 => X"0000",
      ES_QUALIFIER1 => X"0000",
      ES_QUALIFIER2 => X"0000",
      ES_QUALIFIER3 => X"0000",
      ES_QUALIFIER4 => X"0000",
      ES_QUALIFIER5 => X"0000",
      ES_QUALIFIER6 => X"0000",
      ES_QUALIFIER7 => X"0000",
      ES_QUALIFIER8 => X"0000",
      ES_QUALIFIER9 => X"0000",
      ES_QUAL_MASK0 => X"0000",
      ES_QUAL_MASK1 => X"0000",
      ES_QUAL_MASK2 => X"0000",
      ES_QUAL_MASK3 => X"0000",
      ES_QUAL_MASK4 => X"0000",
      ES_QUAL_MASK5 => X"0000",
      ES_QUAL_MASK6 => X"0000",
      ES_QUAL_MASK7 => X"0000",
      ES_QUAL_MASK8 => X"0000",
      ES_QUAL_MASK9 => X"0000",
      ES_SDATA_MASK0 => X"0000",
      ES_SDATA_MASK1 => X"0000",
      ES_SDATA_MASK2 => X"0000",
      ES_SDATA_MASK3 => X"0000",
      ES_SDATA_MASK4 => X"0000",
      ES_SDATA_MASK5 => X"0000",
      ES_SDATA_MASK6 => X"0000",
      ES_SDATA_MASK7 => X"0000",
      ES_SDATA_MASK8 => X"0000",
      ES_SDATA_MASK9 => X"0000",
      EYESCAN_VP_RANGE => 0,
      EYE_SCAN_SWAP_EN => '0',
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"00000",
      ISCAN_CK_PH_SEL2 => '0',
      LOCAL_MASTER => '1',
      LPBK_BIAS_CTRL => 4,
      LPBK_EN_RCAL_B => '0',
      LPBK_EXT_RCAL => B"1000",
      LPBK_IND_CTRL0 => 5,
      LPBK_IND_CTRL1 => 5,
      LPBK_IND_CTRL2 => 5,
      LPBK_RG_CTRL => 2,
      OOBDIVCTL => B"00",
      OOB_PWRUP => '0',
      PCI3_AUTO_REALIGN => "OVR_1K_BLK",
      PCI3_PIPE_RX_ELECIDLE => '0',
      PCI3_RX_ASYNC_EBUF_BYPASS => B"00",
      PCI3_RX_ELECIDLE_EI2_ENABLE => '0',
      PCI3_RX_ELECIDLE_H2L_COUNT => B"000000",
      PCI3_RX_ELECIDLE_H2L_DISABLE => B"000",
      PCI3_RX_ELECIDLE_HI_COUNT => B"000000",
      PCI3_RX_ELECIDLE_LP4_DISABLE => '0',
      PCI3_RX_FIFO_DISABLE => '0',
      PCIE3_CLK_COR_EMPTY_THRSH => B"00000",
      PCIE3_CLK_COR_FULL_THRSH => B"010000",
      PCIE3_CLK_COR_MAX_LAT => B"00100",
      PCIE3_CLK_COR_MIN_LAT => B"00000",
      PCIE3_CLK_COR_THRSH_TIMER => B"001000",
      PCIE_64B_DYN_CLKSW_DIS => "FALSE",
      PCIE_BUFG_DIV_CTRL => X"3500",
      PCIE_GEN4_64BIT_INT_EN => "FALSE",
      PCIE_PLL_SEL_MODE_GEN12 => B"10",
      PCIE_PLL_SEL_MODE_GEN3 => B"10",
      PCIE_PLL_SEL_MODE_GEN4 => B"10",
      PCIE_RXPCS_CFG_GEN3 => X"0AA5",
      PCIE_RXPMA_CFG => X"280A",
      PCIE_TXPCS_CFG_GEN3 => X"24A4",
      PCIE_TXPMA_CFG => X"280A",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD0 => X"0000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PREIQ_FREQ_BST => 1,
      RATE_SW_USE_DRP => '1',
      RCLK_SIPO_DLY_ENB => '0',
      RCLK_SIPO_INV_EN => '0',
      RTX_BUF_CML_CTRL => B"011",
      RTX_BUF_TERM_CTRL => B"00",
      RXBUFRESET_TIME => B"00011",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 49,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 7,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG0 => X"0003",
      RXCDR_CFG0_GEN3 => X"0003",
      RXCDR_CFG1 => X"0000",
      RXCDR_CFG1_GEN3 => X"0000",
      RXCDR_CFG2 => X"0269",
      RXCDR_CFG2_GEN2 => B"10" & X"69",
      RXCDR_CFG2_GEN3 => X"0269",
      RXCDR_CFG2_GEN4 => X"0164",
      RXCDR_CFG3 => X"0012",
      RXCDR_CFG3_GEN2 => B"01" & X"2",
      RXCDR_CFG3_GEN3 => X"0012",
      RXCDR_CFG3_GEN4 => X"0012",
      RXCDR_CFG4 => X"5CF6",
      RXCDR_CFG4_GEN3 => X"5CF6",
      RXCDR_CFG5 => X"B46B",
      RXCDR_CFG5_GEN3 => X"146B",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG0 => X"2201",
      RXCDR_LOCK_CFG1 => X"9FFF",
      RXCDR_LOCK_CFG2 => X"0000",
      RXCDR_LOCK_CFG3 => X"0000",
      RXCDR_LOCK_CFG4 => X"0000",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXCFOK_CFG0 => X"0000",
      RXCFOK_CFG1 => X"8015",
      RXCFOK_CFG2 => X"02AE",
      RXCKCAL1_IQ_LOOP_RST_CFG => X"0000",
      RXCKCAL1_I_LOOP_RST_CFG => X"0000",
      RXCKCAL1_Q_LOOP_RST_CFG => X"0000",
      RXCKCAL2_DX_LOOP_RST_CFG => X"0000",
      RXCKCAL2_D_LOOP_RST_CFG => X"0000",
      RXCKCAL2_S_LOOP_RST_CFG => X"0000",
      RXCKCAL2_X_LOOP_RST_CFG => X"0000",
      RXDFELPMRESET_TIME => B"0001111",
      RXDFELPM_KL_CFG0 => X"0000",
      RXDFELPM_KL_CFG1 => X"A082",
      RXDFELPM_KL_CFG2 => X"0100",
      RXDFE_CFG0 => X"0A00",
      RXDFE_CFG1 => X"0000",
      RXDFE_GC_CFG0 => X"0000",
      RXDFE_GC_CFG1 => X"8000",
      RXDFE_GC_CFG2 => X"FFF0",
      RXDFE_H2_CFG0 => X"0000",
      RXDFE_H2_CFG1 => X"0002",
      RXDFE_H3_CFG0 => X"0000",
      RXDFE_H3_CFG1 => X"8002",
      RXDFE_H4_CFG0 => X"0000",
      RXDFE_H4_CFG1 => X"8002",
      RXDFE_H5_CFG0 => X"0000",
      RXDFE_H5_CFG1 => X"8002",
      RXDFE_H6_CFG0 => X"0000",
      RXDFE_H6_CFG1 => X"8002",
      RXDFE_H7_CFG0 => X"0000",
      RXDFE_H7_CFG1 => X"8002",
      RXDFE_H8_CFG0 => X"0000",
      RXDFE_H8_CFG1 => X"8002",
      RXDFE_H9_CFG0 => X"0000",
      RXDFE_H9_CFG1 => X"8002",
      RXDFE_HA_CFG0 => X"0000",
      RXDFE_HA_CFG1 => X"8002",
      RXDFE_HB_CFG0 => X"0000",
      RXDFE_HB_CFG1 => X"8002",
      RXDFE_HC_CFG0 => X"0000",
      RXDFE_HC_CFG1 => X"8002",
      RXDFE_HD_CFG0 => X"0000",
      RXDFE_HD_CFG1 => X"8002",
      RXDFE_HE_CFG0 => X"0000",
      RXDFE_HE_CFG1 => X"8002",
      RXDFE_HF_CFG0 => X"0000",
      RXDFE_HF_CFG1 => X"8002",
      RXDFE_KH_CFG0 => X"8000",
      RXDFE_KH_CFG1 => X"FE00",
      RXDFE_KH_CFG2 => X"0200",
      RXDFE_KH_CFG3 => X"4101",
      RXDFE_OS_CFG0 => X"2000",
      RXDFE_OS_CFG1 => X"8000",
      RXDFE_UT_CFG0 => X"0000",
      RXDFE_UT_CFG1 => X"0003",
      RXDFE_UT_CFG2 => X"0000",
      RXDFE_VP_CFG0 => X"0000",
      RXDFE_VP_CFG1 => X"0033",
      RXDLY_CFG => X"0010",
      RXDLY_LCFG => X"0030",
      RXELECIDLE_CFG => "SIGCFG_4",
      RXGBOX_FIFO_INIT_RD_ADDR => 3,
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_CFG => X"0000",
      RXLPM_GC_CFG => X"F800",
      RXLPM_KH_CFG0 => X"0000",
      RXLPM_KH_CFG1 => X"A002",
      RXLPM_OS_CFG0 => X"0000",
      RXLPM_OS_CFG1 => X"8002",
      RXOOB_CFG => B"000000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00011",
      RXPHBEACON_CFG => X"0000",
      RXPHDLY_CFG => X"2070",
      RXPHSAMP_CFG => X"2100",
      RXPHSLIP_CFG => X"9933",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => X"0102",
      RXPI_CFG1 => B"0000000001010100",
      RXPMACLK_SEL => "DATA",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXPRBS_LINKACQ_CNT => 15,
      RXREFCLKDIV2_SEL => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '0',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_AFE_CM_EN => '0',
      RX_BIAS_CFG0 => X"12B0",
      RX_BUFFER_CFG => B"000000",
      RX_CAPFF_SARC_ENB => '0',
      RX_CLK25_DIV => 7,
      RX_CLKMUX_EN => '1',
      RX_CLK_SLIP_OVRD => B"00000",
      RX_CM_BUF_CFG => B"1010",
      RX_CM_BUF_PD => '0',
      RX_CM_SEL => 3,
      RX_CM_TRIM => 10,
      RX_CTLE_PWR_SAVING => '0',
      RX_CTLE_RES_CTRL => B"0000",
      RX_DATA_WIDTH => 64,
      RX_DDI_SEL => B"000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DEGEN_CTRL => B"100",
      RX_DFELPM_CFG0 => 10,
      RX_DFELPM_CFG1 => '1',
      RX_DFELPM_KLKH_AGC_STUP_EN => '1',
      RX_DFE_AGC_CFG1 => 2,
      RX_DFE_KL_LPM_KH_CFG0 => 3,
      RX_DFE_KL_LPM_KH_CFG1 => 2,
      RX_DFE_KL_LPM_KL_CFG0 => B"11",
      RX_DFE_KL_LPM_KL_CFG1 => 2,
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_DIVRESET_TIME => B"00001",
      RX_EN_CTLE_RCAL_B => '0',
      RX_EN_SUM_RCAL_B => 0,
      RX_EYESCAN_VS_CODE => B"0000000",
      RX_EYESCAN_VS_NEG_DIR => '0',
      RX_EYESCAN_VS_RANGE => B"10",
      RX_EYESCAN_VS_UT_SIGN => '0',
      RX_FABINT_USRCLK_FLOP => '0',
      RX_I2V_FILTER_EN => '1',
      RX_INT_DATAWIDTH => 2,
      RX_PMA_POWER_SAVE => '0',
      RX_PMA_RSV0 => X"002F",
      RX_PROGDIV_CFG => 0.000000,
      RX_PROGDIV_RATE => X"0001",
      RX_RESLOAD_CTRL => B"0000",
      RX_RESLOAD_OVRD => '0',
      RX_SAMPLE_PERIOD => B"111",
      RX_SIG_VALID_DLY => 11,
      RX_SUM_DEGEN_AVTT_OVERITE => 0,
      RX_SUM_DFETAPREP_EN => '0',
      RX_SUM_IREF_TUNE => B"0000",
      RX_SUM_PWR_SAVING => 0,
      RX_SUM_RES_CTRL => B"0000",
      RX_SUM_VCMTUNE => B"0011",
      RX_SUM_VCM_BIAS_TUNE_EN => '1',
      RX_SUM_VCM_OVWR => '0',
      RX_SUM_VREF_TUNE => B"100",
      RX_TUNE_AFE_OS => B"10",
      RX_VREG_CTRL => B"010",
      RX_VREG_PDB => '1',
      RX_WIDEMODE_CDR => B"01",
      RX_WIDEMODE_CDR_GEN3 => B"00",
      RX_WIDEMODE_CDR_GEN4 => B"01",
      RX_XCLK_SEL => "RXDES",
      RX_XMODE_SEL => '1',
      SAMPLE_CLK_PHASE => '0',
      SAS_12G_MODE => '0',
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "Z",
      SRSTMODE => '0',
      TAPDLY_SET_TX => B"00",
      TERM_RCAL_CFG => B"100001000000010",
      TERM_RCAL_OVRD => B"001",
      TRANS_TIME_RATE => X"0E",
      TST_RSV0 => X"00",
      TST_RSV1 => X"00",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"8010",
      TXDLY_LCFG => X"0030",
      TXDRV_FREQBAND => 0,
      TXFE_CFG0 => B"0000001111000010",
      TXFE_CFG1 => B"0110110000000000",
      TXFE_CFG2 => B"0110110000000000",
      TXFE_CFG3 => B"0110110000000000",
      TXFIFO_ADDR_CFG => "LOW",
      TXGBOX_FIFO_INIT_RD_ADDR => 4,
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00011",
      TXPHDLY_CFG0 => X"6070",
      TXPHDLY_CFG1 => X"000E",
      TXPH_CFG => X"0723",
      TXPH_CFG2 => X"0000",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"0000001100000000",
      TXPI_CFG1 => B"0001000000000000",
      TXPI_GRAY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPM => '0',
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00011",
      TXREFCLKDIV2_SEL => '0',
      TXSWBST_BST => 1,
      TXSWBST_EN => 0,
      TXSWBST_MAG => 4,
      TXSYNC_MULTILANE => '0',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 7,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 64,
      TX_DCC_LOOP_RST_CFG => X"0004",
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DEEMPH2 => B"000000",
      TX_DEEMPH3 => B"000000",
      TX_DIVRESET_TIME => B"00001",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"100",
      TX_EIDLE_DEASSERT_DELAY => B"011",
      TX_FABINT_USRCLK_FLOP => '0',
      TX_FIFO_BYP_EN => '0',
      TX_IDLE_DATA_ZERO => '0',
      TX_INT_DATAWIDTH => 2,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1011000",
      TX_MARGIN_FULL_1 => B"1010111",
      TX_MARGIN_FULL_2 => B"1010101",
      TX_MARGIN_FULL_3 => B"1010011",
      TX_MARGIN_FULL_4 => B"1010001",
      TX_MARGIN_LOW_0 => B"1001100",
      TX_MARGIN_LOW_1 => B"1001011",
      TX_MARGIN_LOW_2 => B"1001000",
      TX_MARGIN_LOW_3 => B"1000010",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PHICAL_CFG0 => X"0020",
      TX_PHICAL_CFG1 => X"0040",
      TX_PI_BIASSET => 1,
      TX_PMADATA_OPT => '0',
      TX_PMA_POWER_SAVE => '0',
      TX_PMA_RSV0 => X"0000",
      TX_PMA_RSV1 => X"0000",
      TX_PROGCLK_SEL => "PREPI",
      TX_PROGDIV_CFG => 32.000000,
      TX_PROGDIV_RATE => X"0001",
      TX_RXDETECT_CFG => B"00" & X"032",
      TX_RXDETECT_REF => 5,
      TX_SAMPLE_PERIOD => B"111",
      TX_SW_MEAS => B"00",
      TX_VREG_CTRL => B"011",
      TX_VREG_PDB => '1',
      TX_VREG_VREFSEL => B"10",
      TX_XCLK_SEL => "TXOUT",
      USB_BOTH_BURST_IDLE => '0',
      USB_BURSTMAX_U3WAKE => B"1111111",
      USB_BURSTMIN_U3WAKE => B"1100011",
      USB_CLK_COR_EQ_EN => '0',
      USB_EXT_CNTL => '1',
      USB_IDLEMAX_POLLING => B"1010111011",
      USB_IDLEMIN_POLLING => B"0100101011",
      USB_LFPSPING_BURST => B"000000101",
      USB_LFPSPOLLING_BURST => B"000110001",
      USB_LFPSPOLLING_IDLE_MS => B"000000100",
      USB_LFPSU1EXIT_BURST => B"000011101",
      USB_LFPSU2LPEXIT_BURST_MS => B"001100011",
      USB_LFPSU3WAKE_BURST_MS => B"111110011",
      USB_LFPS_TPERIOD => B"0011",
      USB_LFPS_TPERIOD_ACCURATE => '1',
      USB_MODE => '0',
      USB_PCIE_ERR_REP_DIS => '0',
      USB_PING_SATA_MAX_INIT => 21,
      USB_PING_SATA_MIN_INIT => 12,
      USB_POLL_SATA_MAX_BURST => 8,
      USB_POLL_SATA_MIN_BURST => 4,
      USB_RAW_ELEC => '0',
      USB_RXIDLE_P0_CTRL => '1',
      USB_TXIDLE_TUNE_ENABLE => '1',
      USB_U1_SATA_MAX_WAKE => 7,
      USB_U1_SATA_MIN_WAKE => 4,
      USB_U2_SAS_MAX_COM => 64,
      USB_U2_SAS_MIN_COM => 36,
      USE_PCS_CLK_PHASE_SEL => '0',
      Y_ALL_MODE => '0'
    )
        port map (
      BUFGTCE => bufgtce_out(0),
      BUFGTCEMASK(2 downto 0) => bufgtcemask_out(2 downto 0),
      BUFGTDIV(8 downto 0) => bufgtdiv_out(8 downto 0),
      BUFGTRESET => bufgtreset_out(0),
      BUFGTRSTMASK(2 downto 0) => bufgtrstmask_out(2 downto 0),
      CDRSTEPDIR => cdrstepdir_in(0),
      CDRSTEPSQ => cdrstepsq_in(0),
      CDRSTEPSX => cdrstepsx_in(0),
      CFGRESET => cfgreset_in(0),
      CLKRSVD0 => clkrsvd0_in(0),
      CLKRSVD1 => clkrsvd1_in(0),
      CPLLFBCLKLOST => cpllfbclklost_out(0),
      CPLLFREQLOCK => cpllfreqlock_in(0),
      CPLLLOCK => cplllock_out(0),
      CPLLLOCKDETCLK => cplllockdetclk_in(0),
      CPLLLOCKEN => cplllocken_in(0),
      CPLLPD => cpllpd_in(0),
      CPLLREFCLKLOST => cpllrefclklost_out(0),
      CPLLREFCLKSEL(2 downto 0) => cpllrefclksel_in(2 downto 0),
      CPLLRESET => cpllreset_in(0),
      DMONFIFORESET => dmonfiforeset_in(0),
      DMONITORCLK => dmonitorclk_in(0),
      DMONITOROUT(15 downto 0) => dmonitorout_out(15 downto 0),
      DMONITOROUTCLK => dmonitoroutclk_out(0),
      DRPADDR(9 downto 0) => drpaddr_in(9 downto 0),
      DRPCLK => drpclk_in(0),
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in(0),
      DRPRDY => drprdy_out(0),
      DRPRST => drprst_in(0),
      DRPWE => drpwe_in(0),
      EYESCANDATAERROR => eyescandataerror_out(0),
      EYESCANRESET => eyescanreset_in(0),
      EYESCANTRIGGER => eyescantrigger_in(0),
      FREQOS => freqos_in(0),
      GTGREFCLK => gtgrefclk_in(0),
      GTNORTHREFCLK0 => gtnorthrefclk0_in(0),
      GTNORTHREFCLK1 => gtnorthrefclk1_in(0),
      GTPOWERGOOD => \^gen_gtwizard_gtye4.gtpowergood_int\,
      GTREFCLK0 => gtrefclk0_in(0),
      GTREFCLK1 => gtrefclk1_in(0),
      GTREFCLKMONITOR => gtrefclkmonitor_out(0),
      GTRSVD(15 downto 0) => gtrsvd_in(15 downto 0),
      GTRXRESET => \gen_gtwizard_gtye4.gtrxreset_int\,
      GTRXRESETSEL => gtrxresetsel_in(0),
      GTSOUTHREFCLK0 => gtsouthrefclk0_in(0),
      GTSOUTHREFCLK1 => gtsouthrefclk1_in(0),
      GTTXRESET => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      GTTXRESETSEL => gttxresetsel_in(0),
      GTYRXN => gtyrxn_in(0),
      GTYRXP => gtyrxp_in(0),
      GTYTXN => gtytxn_out(0),
      GTYTXP => gtytxp_out(0),
      INCPCTRL => incpctrl_in(0),
      LOOPBACK(2 downto 0) => loopback_in(2 downto 0),
      PCIEEQRXEQADAPTDONE => pcieeqrxeqadaptdone_in(0),
      PCIERATEGEN3 => pcierategen3_out(0),
      PCIERATEIDLE => pcierateidle_out(0),
      PCIERATEQPLLPD(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      PCIERATEQPLLRESET(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      PCIERSTIDLE => pcierstidle_in(0),
      PCIERSTTXSYNCSTART => pciersttxsyncstart_in(0),
      PCIESYNCTXSYNCDONE => pciesynctxsyncdone_out(0),
      PCIEUSERGEN3RDY => pcieusergen3rdy_out(0),
      PCIEUSERPHYSTATUSRST => pcieuserphystatusrst_out(0),
      PCIEUSERRATEDONE => pcieuserratedone_in(0),
      PCIEUSERRATESTART => pcieuserratestart_out(0),
      PCSRSVDIN(15 downto 0) => pcsrsvdin_in(15 downto 0),
      PCSRSVDOUT(15 downto 0) => pcsrsvdout_out(15 downto 0),
      PHYSTATUS => phystatus_out(0),
      PINRSRVDAS(15 downto 0) => pinrsrvdas_out(15 downto 0),
      POWERPRESENT => powerpresent_out(0),
      QPLL0CLK => qpll0outclk_out(0),
      QPLL0FREQLOCK => qpll0freqlock_in(0),
      QPLL0REFCLK => qpll0outrefclk_out(0),
      QPLL1CLK => qpll1outclk_out(0),
      QPLL1FREQLOCK => qpll1freqlock_in(0),
      QPLL1REFCLK => qpll1outrefclk_out(0),
      RESETEXCEPTION => resetexception_out(0),
      RESETOVRD => resetovrd_in(0),
      RX8B10BEN => rx8b10ben_in(0),
      RXAFECFOKEN => rxafecfoken_in(0),
      RXBUFRESET => rxbufreset_in(0),
      RXBUFSTATUS(2 downto 0) => rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => rxbyteisaligned_out(0),
      RXBYTEREALIGN => rxbyterealign_out(0),
      RXCDRFREQRESET => rxcdrfreqreset_in(0),
      RXCDRHOLD => rxcdrhold_in(0),
      RXCDRLOCK => rxcdrlock_out(0),
      RXCDROVRDEN => rxcdrovrden_in(0),
      RXCDRPHDONE => rxcdrphdone_out(0),
      RXCDRRESET => rxcdrreset_in(0),
      RXCHANBONDSEQ => rxchanbondseq_out(0),
      RXCHANISALIGNED => rxchanisaligned_out(0),
      RXCHANREALIGN => rxchanrealign_out(0),
      RXCHBONDEN => rxchbonden_in(0),
      RXCHBONDI(4 downto 0) => rxchbondi_in(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => rxchbondlevel_in(2 downto 0),
      RXCHBONDMASTER => rxchbondmaster_in(0),
      RXCHBONDO(4 downto 0) => rxchbondo_out(4 downto 0),
      RXCHBONDSLAVE => rxchbondslave_in(0),
      RXCKCALDONE => rxckcaldone_out(0),
      RXCKCALRESET => rxckcalreset_in(0),
      RXCKCALSTART(6 downto 0) => rxckcalstart_in(6 downto 0),
      RXCLKCORCNT(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      RXCOMINITDET => rxcominitdet_out(0),
      RXCOMMADET => rxcommadet_out(0),
      RXCOMMADETEN => rxcommadeten_in(0),
      RXCOMSASDET => rxcomsasdet_out(0),
      RXCOMWAKEDET => rxcomwakedet_out(0),
      RXCTRL0(15 downto 0) => rxctrl0_out(15 downto 0),
      RXCTRL1(15 downto 0) => rxctrl1_out(15 downto 0),
      RXCTRL2(7 downto 0) => rxctrl2_out(7 downto 0),
      RXCTRL3(7 downto 0) => rxctrl3_out(7 downto 0),
      RXDATA(127 downto 0) => rxdata_out(127 downto 0),
      RXDATAEXTENDRSVD(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      RXDATAVALID(1 downto 0) => rxdatavalid_out(1 downto 0),
      RXDFEAGCHOLD => rxdfeagchold_in(0),
      RXDFEAGCOVRDEN => rxdfeagcovrden_in(0),
      RXDFECFOKFCNUM(3 downto 0) => rxdfecfokfcnum_in(3 downto 0),
      RXDFECFOKFEN => rxdfecfokfen_in(0),
      RXDFECFOKFPULSE => rxdfecfokfpulse_in(0),
      RXDFECFOKHOLD => rxdfecfokhold_in(0),
      RXDFECFOKOVREN => rxdfecfokovren_in(0),
      RXDFEKHHOLD => rxdfekhhold_in(0),
      RXDFEKHOVRDEN => rxdfekhovrden_in(0),
      RXDFELFHOLD => rxdfelfhold_in(0),
      RXDFELFOVRDEN => rxdfelfovrden_in(0),
      RXDFELPMRESET => rxdfelpmreset_in(0),
      RXDFETAP10HOLD => rxdfetap10hold_in(0),
      RXDFETAP10OVRDEN => rxdfetap10ovrden_in(0),
      RXDFETAP11HOLD => rxdfetap11hold_in(0),
      RXDFETAP11OVRDEN => rxdfetap11ovrden_in(0),
      RXDFETAP12HOLD => rxdfetap12hold_in(0),
      RXDFETAP12OVRDEN => rxdfetap12ovrden_in(0),
      RXDFETAP13HOLD => rxdfetap13hold_in(0),
      RXDFETAP13OVRDEN => rxdfetap13ovrden_in(0),
      RXDFETAP14HOLD => rxdfetap14hold_in(0),
      RXDFETAP14OVRDEN => rxdfetap14ovrden_in(0),
      RXDFETAP15HOLD => rxdfetap15hold_in(0),
      RXDFETAP15OVRDEN => rxdfetap15ovrden_in(0),
      RXDFETAP2HOLD => rxdfetap2hold_in(0),
      RXDFETAP2OVRDEN => rxdfetap2ovrden_in(0),
      RXDFETAP3HOLD => rxdfetap3hold_in(0),
      RXDFETAP3OVRDEN => rxdfetap3ovrden_in(0),
      RXDFETAP4HOLD => rxdfetap4hold_in(0),
      RXDFETAP4OVRDEN => rxdfetap4ovrden_in(0),
      RXDFETAP5HOLD => rxdfetap5hold_in(0),
      RXDFETAP5OVRDEN => rxdfetap5ovrden_in(0),
      RXDFETAP6HOLD => rxdfetap6hold_in(0),
      RXDFETAP6OVRDEN => rxdfetap6ovrden_in(0),
      RXDFETAP7HOLD => rxdfetap7hold_in(0),
      RXDFETAP7OVRDEN => rxdfetap7ovrden_in(0),
      RXDFETAP8HOLD => rxdfetap8hold_in(0),
      RXDFETAP8OVRDEN => rxdfetap8ovrden_in(0),
      RXDFETAP9HOLD => rxdfetap9hold_in(0),
      RXDFETAP9OVRDEN => rxdfetap9ovrden_in(0),
      RXDFEUTHOLD => rxdfeuthold_in(0),
      RXDFEUTOVRDEN => rxdfeutovrden_in(0),
      RXDFEVPHOLD => rxdfevphold_in(0),
      RXDFEVPOVRDEN => rxdfevpovrden_in(0),
      RXDFEXYDEN => rxdfexyden_in(0),
      RXDLYBYPASS => rxdlybypass_in(0),
      RXDLYEN => rxdlyen_in(0),
      RXDLYOVRDEN => rxdlyovrden_in(0),
      RXDLYSRESET => rxdlysreset_in(0),
      RXDLYSRESETDONE => rxdlysresetdone_out(0),
      RXELECIDLE => rxelecidle_out(0),
      RXELECIDLEMODE(1 downto 0) => rxelecidlemode_in(1 downto 0),
      RXEQTRAINING => rxeqtraining_in(0),
      RXGEARBOXSLIP => rxgearboxslip_in(0),
      RXHEADER(5 downto 0) => rxheader_out(5 downto 0),
      RXHEADERVALID(1 downto 0) => rxheadervalid_out(1 downto 0),
      RXLATCLK => rxlatclk_in(0),
      RXLFPSTRESETDET => rxlfpstresetdet_out(0),
      RXLFPSU2LPEXITDET => rxlfpsu2lpexitdet_out(0),
      RXLFPSU3WAKEDET => rxlfpsu3wakedet_out(0),
      RXLPMEN => rxlpmen_in(0),
      RXLPMGCHOLD => rxlpmgchold_in(0),
      RXLPMGCOVRDEN => rxlpmgcovrden_in(0),
      RXLPMHFHOLD => rxlpmhfhold_in(0),
      RXLPMHFOVRDEN => rxlpmhfovrden_in(0),
      RXLPMLFHOLD => rxlpmlfhold_in(0),
      RXLPMLFKLOVRDEN => rxlpmlfklovrden_in(0),
      RXLPMOSHOLD => rxlpmoshold_in(0),
      RXLPMOSOVRDEN => rxlpmosovrden_in(0),
      RXMCOMMAALIGNEN => rxmcommaalignen_in(0),
      RXMONITOROUT(7 downto 0) => rxmonitorout_out(7 downto 0),
      RXMONITORSEL(1 downto 0) => rxmonitorsel_in(1 downto 0),
      RXOOBRESET => rxoobreset_in(0),
      RXOSCALRESET => rxoscalreset_in(0),
      RXOSHOLD => rxoshold_in(0),
      RXOSINTDONE => rxosintdone_out(0),
      RXOSINTSTARTED => rxosintstarted_out(0),
      RXOSINTSTROBEDONE => rxosintstrobedone_out(0),
      RXOSINTSTROBESTARTED => rxosintstrobestarted_out(0),
      RXOSOVRDEN => rxosovrden_in(0),
      RXOUTCLK => rxoutclk_out(0),
      RXOUTCLKFABRIC => rxoutclkfabric_out(0),
      RXOUTCLKPCS => rxoutclkpcs_out(0),
      RXOUTCLKSEL(2 downto 0) => rxoutclksel_in(2 downto 0),
      RXPCOMMAALIGNEN => rxpcommaalignen_in(0),
      RXPCSRESET => rxpcsreset_in(0),
      RXPD(1 downto 0) => rxpd_in(1 downto 0),
      RXPHALIGN => rxphalign_in(0),
      RXPHALIGNDONE => rxphaligndone_out(0),
      RXPHALIGNEN => rxphalignen_in(0),
      RXPHALIGNERR => rxphalignerr_out(0),
      RXPHDLYPD => rxphdlypd_in(0),
      RXPHDLYRESET => rxphdlyreset_in(0),
      RXPLLCLKSEL(1 downto 0) => rxpllclksel_in(1 downto 0),
      RXPMARESET => rxpmareset_in(0),
      RXPMARESETDONE => rxpmaresetdone_out(0),
      RXPOLARITY => rxpolarity_in(0),
      RXPRBSCNTRESET => rxprbscntreset_in(0),
      RXPRBSERR => rxprbserr_out(0),
      RXPRBSLOCKED => rxprbslocked_out(0),
      RXPRBSSEL(3 downto 0) => rxprbssel_in(3 downto 0),
      RXPRGDIVRESETDONE => rxprgdivresetdone_out(0),
      RXPROGDIVRESET => \gen_gtwizard_gtye4.rxprogdivreset_int\,
      RXRATE(2 downto 0) => rxrate_in(2 downto 0),
      RXRATEDONE => rxratedone_out(0),
      RXRATEMODE => rxratemode_in(0),
      RXRECCLKOUT => rxrecclkout_out(0),
      RXRESETDONE => rxresetdone_out(0),
      RXSLIDE => rxslide_in(0),
      RXSLIDERDY => rxsliderdy_out(0),
      RXSLIPDONE => rxslipdone_out(0),
      RXSLIPOUTCLK => rxslipoutclk_in(0),
      RXSLIPOUTCLKRDY => rxslipoutclkrdy_out(0),
      RXSLIPPMA => rxslippma_in(0),
      RXSLIPPMARDY => rxslippmardy_out(0),
      RXSTARTOFSEQ(1 downto 0) => rxstartofseq_out(1 downto 0),
      RXSTATUS(2 downto 0) => rxstatus_out(2 downto 0),
      RXSYNCALLIN => rxsyncallin_in(0),
      RXSYNCDONE => rxsyncdone_out(0),
      RXSYNCIN => rxsyncin_in(0),
      RXSYNCMODE => rxsyncmode_in(0),
      RXSYNCOUT => rxsyncout_out(0),
      RXSYSCLKSEL(1 downto 0) => rxsysclksel_in(1 downto 0),
      RXTERMINATION => rxtermination_in(0),
      RXUSERRDY => \gen_gtwizard_gtye4.rxuserrdy_int\,
      RXUSRCLK => rxusrclk_in(0),
      RXUSRCLK2 => rxusrclk2_in(0),
      RXVALID => rxvalid_out(0),
      SIGVALIDCLK => sigvalidclk_in(0),
      TSTIN(19 downto 0) => tstin_in(19 downto 0),
      TX8B10BBYPASS(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      TX8B10BEN => tx8b10ben_in(0),
      TXBUFSTATUS(1 downto 0) => txbufstatus_out(1 downto 0),
      TXCOMFINISH => txcomfinish_out(0),
      TXCOMINIT => txcominit_in(0),
      TXCOMSAS => txcomsas_in(0),
      TXCOMWAKE => txcomwake_in(0),
      TXCTRL0(15 downto 0) => txctrl0_in(15 downto 0),
      TXCTRL1(15 downto 0) => txctrl1_in(15 downto 0),
      TXCTRL2(7 downto 0) => txctrl2_in(7 downto 0),
      TXDATA(127 downto 64) => B"0000000000000000000000000000000000000000000000000000000000000000",
      TXDATA(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      TXDATAEXTENDRSVD(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      TXDCCDONE => txdccdone_out(0),
      TXDCCFORCESTART => txdccforcestart_in(0),
      TXDCCRESET => txdccreset_in(0),
      TXDEEMPH(1 downto 0) => txdeemph_in(1 downto 0),
      TXDETECTRX => txdetectrx_in(0),
      TXDIFFCTRL(4 downto 0) => txdiffctrl_in(4 downto 0),
      TXDLYBYPASS => txdlybypass_in(0),
      TXDLYEN => txdlyen_in(0),
      TXDLYHOLD => txdlyhold_in(0),
      TXDLYOVRDEN => txdlyovrden_in(0),
      TXDLYSRESET => txdlysreset_in(0),
      TXDLYSRESETDONE => txdlysresetdone_out(0),
      TXDLYUPDOWN => txdlyupdown_in(0),
      TXELECIDLE => txelecidle_in(0),
      TXHEADER(5 downto 0) => txheader_in(5 downto 0),
      TXINHIBIT => txinhibit_in(0),
      TXLATCLK => txlatclk_in(0),
      TXLFPSTRESET => txlfpstreset_in(0),
      TXLFPSU2LPEXIT => txlfpsu2lpexit_in(0),
      TXLFPSU3WAKE => txlfpsu3wake_in(0),
      TXMAINCURSOR(6 downto 0) => txmaincursor_in(6 downto 0),
      TXMARGIN(2 downto 0) => txmargin_in(2 downto 0),
      TXMUXDCDEXHOLD => txmuxdcdexhold_in(0),
      TXMUXDCDORWREN => txmuxdcdorwren_in(0),
      TXONESZEROS => txoneszeros_in(0),
      TXOUTCLK => \^txoutclk_out\(0),
      TXOUTCLKFABRIC => txoutclkfabric_out(0),
      TXOUTCLKPCS => txoutclkpcs_out(0),
      TXOUTCLKSEL(2 downto 0) => txoutclksel_in(2 downto 0),
      TXPCSRESET => txpcsreset_in(0),
      TXPD(1 downto 0) => txpd_in(1 downto 0),
      TXPDELECIDLEMODE => txpdelecidlemode_in(0),
      TXPHALIGN => txphalign_in(0),
      TXPHALIGNDONE => txphaligndone_out(0),
      TXPHALIGNEN => txphalignen_in(0),
      TXPHDLYPD => txphdlypd_in(0),
      TXPHDLYRESET => txphdlyreset_in(0),
      TXPHDLYTSTCLK => txphdlytstclk_in(0),
      TXPHINIT => txphinit_in(0),
      TXPHINITDONE => txphinitdone_out(0),
      TXPHOVRDEN => txphovrden_in(0),
      TXPIPPMEN => txpippmen_in(0),
      TXPIPPMOVRDEN => txpippmovrden_in(0),
      TXPIPPMPD => txpippmpd_in(0),
      TXPIPPMSEL => txpippmsel_in(0),
      TXPIPPMSTEPSIZE(4 downto 0) => txpippmstepsize_in(4 downto 0),
      TXPISOPD => \gen_powergood_delay.pwr_on_fsm_reg\,
      TXPLLCLKSEL(1 downto 0) => txpllclksel_in(1 downto 0),
      TXPMARESET => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      TXPMARESETDONE => txpmaresetdone_out(0),
      TXPOLARITY => txpolarity_in(0),
      TXPOSTCURSOR(4 downto 0) => txpostcursor_in(4 downto 0),
      TXPRBSFORCEERR => txprbsforceerr_in(0),
      TXPRBSSEL(3 downto 0) => txprbssel_in(3 downto 0),
      TXPRECURSOR(4 downto 0) => txprecursor_in(4 downto 0),
      TXPRGDIVRESETDONE => txprgdivresetdone_out(0),
      TXPROGDIVRESET => \gen_gtwizard_gtye4.txprogdivreset_int\,
      TXRATE(2 downto 0) => TXRATE(2 downto 0),
      TXRATEDONE => txratedone_out(0),
      TXRATEMODE => \gen_powergood_delay.pwr_on_fsm_reg_0\,
      TXRESETDONE => txresetdone_out(0),
      TXSEQUENCE(6 downto 0) => txsequence_in(6 downto 0),
      TXSWING => txswing_in(0),
      TXSYNCALLIN => txsyncallin_in(0),
      TXSYNCDONE => txsyncdone_out(0),
      TXSYNCIN => txsyncin_in(0),
      TXSYNCMODE => txsyncmode_in(0),
      TXSYNCOUT => txsyncout_out(0),
      TXSYSCLKSEL(1 downto 0) => txsysclksel_in(1 downto 0),
      TXUSERRDY => \gen_gtwizard_gtye4.txuserrdy_int\,
      TXUSRCLK => txusrclk_in(0),
      TXUSRCLK2 => txusrclk2_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common is
  port (
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_in0 : out STD_LOGIC;
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common : entity is "gtwizard_ultrascale_v1_7_3_gtye4_common";
end interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common is
  signal \^qpll0lock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gtye4_common_gen.GTYE4_COMMON_PRIM_INST\ : label is "PRIMITIVE";
begin
  qpll0lock_out(0) <= \^qpll0lock_out\(0);
\gtye4_common_gen.GTYE4_COMMON_PRIM_INST\: unisim.vcomponents.GTYE4_COMMON
    generic map(
      AEN_QPLL0_FBDIV => '1',
      AEN_QPLL1_FBDIV => '1',
      AEN_SDM0TOGGLE => '0',
      AEN_SDM1TOGGLE => '0',
      A_SDM0TOGGLE => '0',
      A_SDM1DATA_HIGH => B"000000000",
      A_SDM1DATA_LOW => B"0000000000000000",
      A_SDM1TOGGLE => '0',
      BIAS_CFG0 => X"0000",
      BIAS_CFG1 => X"0000",
      BIAS_CFG2 => X"0124",
      BIAS_CFG3 => X"0041",
      BIAS_CFG4 => X"0010",
      BIAS_CFG_RSVD => X"0000",
      COMMON_CFG0 => X"0000",
      COMMON_CFG1 => X"0000",
      POR_CFG => X"0000",
      PPF0_CFG => X"0600",
      PPF1_CFG => X"0600",
      QPLL0CLKOUT_RATE => "HALF",
      QPLL0_CFG0 => X"331C",
      QPLL0_CFG1 => X"D038",
      QPLL0_CFG1_G3 => X"D038",
      QPLL0_CFG2 => X"0FC0",
      QPLL0_CFG2_G3 => X"0FC0",
      QPLL0_CFG3 => X"0120",
      QPLL0_CFG4 => X"0002",
      QPLL0_CP => B"0011111111",
      QPLL0_CP_G3 => B"0000001111",
      QPLL0_FBDIV => 66,
      QPLL0_FBDIV_G3 => 160,
      QPLL0_INIT_CFG0 => X"02B2",
      QPLL0_INIT_CFG1 => X"00",
      QPLL0_LOCK_CFG => X"25E8",
      QPLL0_LOCK_CFG_G3 => X"25E8",
      QPLL0_LPF => B"1000111111",
      QPLL0_LPF_G3 => B"0111010101",
      QPLL0_PCI_EN => '0',
      QPLL0_RATE_SW_USE_DRP => '1',
      QPLL0_REFCLK_DIV => 1,
      QPLL0_SDM_CFG0 => X"0080",
      QPLL0_SDM_CFG1 => X"0000",
      QPLL0_SDM_CFG2 => X"0000",
      QPLL1CLKOUT_RATE => "HALF",
      QPLL1_CFG0 => X"331C",
      QPLL1_CFG1 => X"D038",
      QPLL1_CFG1_G3 => X"D038",
      QPLL1_CFG2 => X"0FC3",
      QPLL1_CFG2_G3 => X"0FC3",
      QPLL1_CFG3 => X"0120",
      QPLL1_CFG4 => X"0002",
      QPLL1_CP => B"0011111111",
      QPLL1_CP_G3 => B"0001111111",
      QPLL1_FBDIV => 66,
      QPLL1_FBDIV_G3 => 80,
      QPLL1_INIT_CFG0 => X"02B2",
      QPLL1_INIT_CFG1 => X"00",
      QPLL1_LOCK_CFG => X"25E8",
      QPLL1_LOCK_CFG_G3 => X"25E8",
      QPLL1_LPF => B"1000011111",
      QPLL1_LPF_G3 => B"0111010100",
      QPLL1_PCI_EN => '0',
      QPLL1_RATE_SW_USE_DRP => '1',
      QPLL1_REFCLK_DIV => 1,
      QPLL1_SDM_CFG0 => X"0080",
      QPLL1_SDM_CFG1 => X"0000",
      QPLL1_SDM_CFG2 => X"0000",
      RSVD_ATTR0 => X"0000",
      RSVD_ATTR1 => X"0000",
      RSVD_ATTR2 => X"0000",
      RSVD_ATTR3 => X"0000",
      RXRECCLKOUT0_SEL => B"00",
      RXRECCLKOUT1_SEL => B"00",
      SARC_ENB => '0',
      SARC_SEL => '0',
      SDM0INITSEED0_0 => B"0000000100010001",
      SDM0INITSEED0_1 => B"000010001",
      SDM1INITSEED0_0 => B"0000000100010001",
      SDM1INITSEED0_1 => B"000010001",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RESET_SPEEDUP => "TRUE",
      UB_CFG0 => X"0000",
      UB_CFG1 => X"0000",
      UB_CFG2 => X"0000",
      UB_CFG3 => X"0000",
      UB_CFG4 => X"0000",
      UB_CFG5 => X"0400",
      UB_CFG6 => X"0000"
    )
        port map (
      BGBYPASSB => bgbypassb_in(0),
      BGMONITORENB => bgmonitorenb_in(0),
      BGPDB => bgpdb_in(0),
      BGRCALOVRD(4 downto 0) => bgrcalovrd_in(4 downto 0),
      BGRCALOVRDENB => bgrcalovrdenb_in(0),
      DRPADDR(15 downto 0) => drpaddr_common_in(15 downto 0),
      DRPCLK => drpclk_common_in(0),
      DRPDI(15 downto 0) => drpdi_common_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_common_out(15 downto 0),
      DRPEN => drpen_common_in(0),
      DRPRDY => drprdy_common_out(0),
      DRPWE => drpwe_common_in(0),
      GTGREFCLK0 => gtgrefclk0_in(0),
      GTGREFCLK1 => gtgrefclk1_in(0),
      GTNORTHREFCLK00 => gtnorthrefclk00_in(0),
      GTNORTHREFCLK01 => gtnorthrefclk01_in(0),
      GTNORTHREFCLK10 => gtnorthrefclk10_in(0),
      GTNORTHREFCLK11 => gtnorthrefclk11_in(0),
      GTREFCLK00 => gtrefclk00_in(0),
      GTREFCLK01 => gtrefclk01_in(0),
      GTREFCLK10 => gtrefclk10_in(0),
      GTREFCLK11 => gtrefclk11_in(0),
      GTSOUTHREFCLK00 => gtsouthrefclk00_in(0),
      GTSOUTHREFCLK01 => gtsouthrefclk01_in(0),
      GTSOUTHREFCLK10 => gtsouthrefclk10_in(0),
      GTSOUTHREFCLK11 => gtsouthrefclk11_in(0),
      PCIERATEQPLL0(2 downto 0) => pcierateqpll0_in(2 downto 0),
      PCIERATEQPLL1(2 downto 0) => pcierateqpll1_in(2 downto 0),
      PMARSVD0(7 downto 0) => pmarsvd0_in(7 downto 0),
      PMARSVD1(7 downto 0) => pmarsvd1_in(7 downto 0),
      PMARSVDOUT0(7 downto 0) => pmarsvdout0_out(7 downto 0),
      PMARSVDOUT1(7 downto 0) => pmarsvdout1_out(7 downto 0),
      QPLL0CLKRSVD0 => qpll0clkrsvd0_in(0),
      QPLL0CLKRSVD1 => qpll0clkrsvd1_in(0),
      QPLL0FBCLKLOST => qpll0fbclklost_out(0),
      QPLL0FBDIV(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      QPLL0LOCK => \^qpll0lock_out\(0),
      QPLL0LOCKDETCLK => qpll0lockdetclk_in(0),
      QPLL0LOCKEN => qpll0locken_in(0),
      QPLL0OUTCLK => qpll0outclk_out(0),
      QPLL0OUTREFCLK => qpll0outrefclk_out(0),
      QPLL0PD => qpll0pd_in(0),
      QPLL0REFCLKLOST => qpll0refclklost_out(0),
      QPLL0REFCLKSEL(2 downto 0) => qpll0refclksel_in(2 downto 0),
      QPLL0RESET => gtwiz_reset_qpll0reset_out(0),
      QPLL1CLKRSVD0 => qpll1clkrsvd0_in(0),
      QPLL1CLKRSVD1 => qpll1clkrsvd1_in(0),
      QPLL1FBCLKLOST => qpll1fbclklost_out(0),
      QPLL1FBDIV(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      QPLL1LOCK => qpll1lock_out(0),
      QPLL1LOCKDETCLK => qpll1lockdetclk_in(0),
      QPLL1LOCKEN => qpll1locken_in(0),
      QPLL1OUTCLK => qpll1outclk_out(0),
      QPLL1OUTREFCLK => qpll1outrefclk_out(0),
      QPLL1PD => qpll1pd_in(0),
      QPLL1REFCLKLOST => qpll1refclklost_out(0),
      QPLL1REFCLKSEL(2 downto 0) => qpll1refclksel_in(2 downto 0),
      QPLL1RESET => qpll1reset_in(0),
      QPLLDMONITOR0(7 downto 0) => qplldmonitor0_out(7 downto 0),
      QPLLDMONITOR1(7 downto 0) => qplldmonitor1_out(7 downto 0),
      QPLLRSVD1(7 downto 0) => qpllrsvd1_in(7 downto 0),
      QPLLRSVD2(4 downto 0) => qpllrsvd2_in(4 downto 0),
      QPLLRSVD3(4 downto 0) => qpllrsvd3_in(4 downto 0),
      QPLLRSVD4(7 downto 0) => qpllrsvd4_in(7 downto 0),
      RCALENB => rcalenb_in(0),
      REFCLKOUTMONITOR0 => refclkoutmonitor0_out(0),
      REFCLKOUTMONITOR1 => refclkoutmonitor1_out(0),
      RXRECCLK0SEL(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      RXRECCLK1SEL(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      SDM0DATA(24 downto 0) => sdm0data_in(24 downto 0),
      SDM0FINALOUT(3 downto 0) => sdm0finalout_out(3 downto 0),
      SDM0RESET => sdm0reset_in(0),
      SDM0TESTDATA(14 downto 0) => sdm0testdata_out(14 downto 0),
      SDM0TOGGLE => sdm0toggle_in(0),
      SDM0WIDTH(1 downto 0) => sdm0width_in(1 downto 0),
      SDM1DATA(24 downto 0) => sdm1data_in(24 downto 0),
      SDM1FINALOUT(3 downto 0) => sdm1finalout_out(3 downto 0),
      SDM1RESET => sdm1reset_in(0),
      SDM1TESTDATA(14 downto 0) => sdm1testdata_out(14 downto 0),
      SDM1TOGGLE => sdm1toggle_in(0),
      SDM1WIDTH(1 downto 0) => sdm1width_in(1 downto 0),
      UBCFGSTREAMEN => ubcfgstreamen_in(0),
      UBDADDR(15 downto 0) => ubdaddr_out(15 downto 0),
      UBDEN => ubden_out(0),
      UBDI(15 downto 0) => ubdi_out(15 downto 0),
      UBDO(15 downto 0) => ubdo_in(15 downto 0),
      UBDRDY => ubdrdy_in(0),
      UBDWE => ubdwe_out(0),
      UBENABLE => ubenable_in(0),
      UBGPI(1 downto 0) => ubgpi_in(1 downto 0),
      UBINTR(1 downto 0) => ubintr_in(1 downto 0),
      UBIOLMBRST => ubiolmbrst_in(0),
      UBMBRST => ubmbrst_in(0),
      UBMDMCAPTURE => ubmdmcapture_in(0),
      UBMDMDBGRST => ubmdmdbgrst_in(0),
      UBMDMDBGUPDATE => ubmdmdbgupdate_in(0),
      UBMDMREGEN(3 downto 0) => ubmdmregen_in(3 downto 0),
      UBMDMSHIFT => ubmdmshift_in(0),
      UBMDMSYSRST => ubmdmsysrst_in(0),
      UBMDMTCK => ubmdmtck_in(0),
      UBMDMTDI => ubmdmtdi_in(0),
      UBMDMTDO => ubmdmtdo_out(0),
      UBRSVDOUT => ubrsvdout_out(0),
      UBTXUART => ubtxuart_out(0)
    );
\rst_in_meta_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^qpll0lock_out\(0),
      O => rst_in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood is
  port (
    \out\ : out STD_LOGIC;
    i_in_meta_reg : out STD_LOGIC;
    TXRATE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i_in_meta_reg_0 : out STD_LOGIC;
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    gtrxreset_out_reg : in STD_LOGIC;
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood : entity is "gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood";
end interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood is
  signal \gen_powergood_delay.intclk_rrst_n_r\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SHIFT_EXTRACT : string;
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "NO";
  attribute async_reg : string;
  attribute async_reg of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "true";
  signal \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.pwr_on_fsm\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_powergood_delay.pwr_on_fsm\ : signal is "true";
  signal \gen_powergood_delay.pwr_on_fsm_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "NO";
  attribute KEEP of \gen_powergood_delay.pwr_on_fsm_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[2]_i_2\ : label is "soft_lutpair0";
begin
  \out\ <= \gen_powergood_delay.pwr_on_fsm\;
\gen_powergood_delay.intclk_rrst_n_r[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => gtrxreset_out_reg,
      D => '1',
      Q => \gen_powergood_delay.intclk_rrst_n_r\(0)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => gtrxreset_out_reg,
      D => \gen_powergood_delay.intclk_rrst_n_r\(0),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(1)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => gtrxreset_out_reg,
      D => \gen_powergood_delay.intclk_rrst_n_r\(1),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(2)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => gtrxreset_out_reg,
      D => \gen_powergood_delay.intclk_rrst_n_r\(2),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(3)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => gtrxreset_out_reg,
      D => \gen_powergood_delay.intclk_rrst_n_r\(3),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(4)
    );
\gen_powergood_delay.pwr_on_fsm_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => p_0_in,
      O => \gen_powergood_delay.pwr_on_fsm_i_1_n_0\
    );
\gen_powergood_delay.pwr_on_fsm_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => gtrxreset_out_reg,
      D => \gen_powergood_delay.pwr_on_fsm_i_1_n_0\,
      Q => \gen_powergood_delay.pwr_on_fsm\
    );
\gen_powergood_delay.wait_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      O => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\gen_powergood_delay.wait_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\gen_powergood_delay.wait_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => p_0_in,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I3 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I4 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(1),
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(2),
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\,
      Q => p_0_in,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txpisopd_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => i_in_meta_reg
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txpmareset_in(0),
      O => \gen_gtwizard_gtye4.txpmareset_ch_int\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txratemode_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => i_in_meta_reg_0
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(2),
      O => TXRATE(2)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(1),
      O => TXRATE(1)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txrate_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => TXRATE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer is
  port (
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer : entity is "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal \rst_in_out_i_1__0_n_0\ : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => '1',
      Q => rst_in_meta
    );
\rst_in_out_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_rx_done_int_reg,
      O => \rst_in_out_i_1__0_n_0\
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync3,
      Q => gtwiz_reset_rx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxusrclk2_in(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 is
  port (
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 : entity is "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_out_i_1_n_0 : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => '1',
      Q => rst_in_meta
    );
rst_in_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_tx_done_int_reg,
      O => rst_in_out_i_1_n_0
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync3,
      Q => gtwiz_reset_tx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txusrclk2_in(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer is
  port (
    gtwiz_reset_all_sync : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_all_in(0),
      Q => gtwiz_reset_all_sync
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 is
  port (
    gtwiz_reset_rx_any_sync : out STD_LOGIC;
    pllreset_rx_out_reg : out STD_LOGIC;
    rxprogdivreset_out_reg : out STD_LOGIC;
    gtrxreset_out_reg : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ : in STD_LOGIC;
    sm_reset_rx_cdr_to_sat_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.rxprogdivreset_int\ : in STD_LOGIC;
    i_in_out_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gtrxreset_int\ : in STD_LOGIC;
    gtwiz_reset_rx_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 is
  signal gtwiz_reset_rx_any : STD_LOGIC;
  signal \^gtwiz_reset_rx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_rx_any_sync <= \^gtwiz_reset_rx_any_sync\;
gtrxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00070000"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => i_in_out_reg,
      I5 => \gen_gtwizard_gtye4.gtrxreset_int\,
      O => gtrxreset_out_reg
    );
pllreset_rx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      O => pllreset_rx_out_reg
    );
\rst_in_meta_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gtwiz_reset_rx_datapath_int_reg,
      I1 => gtwiz_reset_rx_datapath_in(0),
      I2 => gtwiz_reset_rx_pll_and_datapath_in(0),
      I3 => gtwiz_reset_rx_pll_and_datapath_int_reg,
      O => gtwiz_reset_rx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_rx_any,
      Q => \^gtwiz_reset_rx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync3
    );
rxprogdivreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00120012"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => sm_reset_rx_cdr_to_sat_reg,
      I5 => \gen_gtwizard_gtye4.rxprogdivreset_int\,
      O => rxprogdivreset_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 is
  signal rst_in0_2 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_rx_datapath_in(0),
      I1 => gtwiz_reset_rx_datapath_int_reg,
      O => rst_in0_2
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0_2,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0_2,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0_2,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0_2,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0_2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 is
  signal p_0_in_1 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_rx_pll_and_datapath_int_reg,
      I1 => gtwiz_reset_rx_pll_and_datapath_in(0),
      O => p_0_in_1
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_0_in_1,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_0_in_1,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_0_in_1,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_0_in_1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_0_in_1,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 is
  port (
    gtwiz_reset_tx_any_sync : out STD_LOGIC;
    pllreset_tx_out_reg : out STD_LOGIC;
    gttxreset_out_reg : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ : in STD_LOGIC;
    sm_reset_tx_timer_sat_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gttxreset_int\ : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 is
  signal gtwiz_reset_tx_any : STD_LOGIC;
  signal \^gtwiz_reset_tx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_any_sync <= \^gtwiz_reset_tx_any_sync\;
gttxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FFFFF3F3F0014"
    )
        port map (
      I0 => \^gtwiz_reset_tx_any_sync\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => sm_reset_tx_timer_sat_reg,
      I5 => \gen_gtwizard_gtye4.gttxreset_int\,
      O => gttxreset_out_reg
    );
pllreset_tx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \^gtwiz_reset_tx_any_sync\,
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      O => pllreset_tx_out_reg
    );
rst_in_meta_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gtwiz_reset_tx_datapath_in(0),
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      I2 => gtwiz_reset_tx_pll_and_datapath_int_reg,
      O => gtwiz_reset_tx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_any,
      Q => \^gtwiz_reset_tx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 is
  signal p_1_in_0 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_tx_pll_and_datapath_int_reg,
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      O => p_1_in_0
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_1_in_0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_1_in_0,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_1_in_0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_1_in_0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_1_in_0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 is
  port (
    \gen_gtwizard_gtye4.txprogdivreset_int\ : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0,
      Q => \gen_gtwizard_gtye4.txprogdivreset_int\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_cdc_sync is
  port (
    usr_rx_reset : out STD_LOGIC;
    in0 : in STD_LOGIC;
    lbus_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_cdc_sync : entity is "interlaken_0_cdc_sync";
end interlaken_0_interlaken_0_cdc_sync;

architecture STRUCTURE of interlaken_0_interlaken_0_cdc_sync is
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d2_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d2_cdc_to : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal sig_in_cdc_from : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_out_d2_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_out_d2_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_out_d3_reg : label is "yes";
begin
  sig_in_cdc_from <= in0;
  usr_rx_reset <= s_out_d3;
s_out_d2_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => sig_in_cdc_from,
      Q => s_out_d2_cdc_to,
      R => '0'
    );
s_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => s_out_d2_cdc_to,
      Q => s_out_d2,
      R => '0'
    );
s_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_cdc_sync_0 is
  port (
    usr_tx_reset : out STD_LOGIC;
    in0 : in STD_LOGIC;
    lbus_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_cdc_sync_0 : entity is "interlaken_0_cdc_sync";
end interlaken_0_interlaken_0_cdc_sync_0;

architecture STRUCTURE of interlaken_0_interlaken_0_cdc_sync_0 is
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of s_out_d2 : signal is "true";
  signal s_out_d2_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d2_cdc_to : signal is "true";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  signal sig_in_cdc_from : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_out_d2_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_out_d2_cdc_to_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_out_d2_reg : label is "yes";
  attribute ASYNC_REG_boolean of s_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_out_d3_reg : label is "yes";
begin
  sig_in_cdc_from <= in0;
  usr_tx_reset <= s_out_d3;
s_out_d2_cdc_to_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => sig_in_cdc_from,
      Q => s_out_d2_cdc_to,
      R => '0'
    );
s_out_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => s_out_d2_cdc_to,
      Q => s_out_d2,
      R => '0'
    );
s_out_d3_reg: unisim.vcomponents.FDRE
     port map (
      C => lbus_clk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_ultrascale_rx_userclk is
  port (
    CLK : out STD_LOGIC;
    interlaken_gtwiz_userclk_tx_reset_in : out STD_LOGIC;
    gtwiz_userclk_rx_active_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_ultrascale_rx_userclk : entity is "interlaken_0_ultrascale_rx_userclk";
end interlaken_0_interlaken_0_ultrascale_rx_userclk;

architecture STRUCTURE of interlaken_0_interlaken_0_ultrascale_rx_userclk is
  signal \<const1>\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  signal \^interlaken_gtwiz_userclk_tx_reset_in\ : STD_LOGIC;
  signal \^lopt\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst\ : label is "PRIMITIVE";
begin
  CLK <= \^clk\;
  \^lopt\ <= lopt_1;
  \^lopt_1\ <= lopt_2;
  interlaken_gtwiz_userclk_tx_reset_in <= \^interlaken_gtwiz_userclk_tx_reset_in\;
  lopt <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => \^lopt\,
      CEMASK => '0',
      CLR => \^lopt_1\,
      CLRMASK => '0',
      DIV(2 downto 0) => B"000",
      I => txoutclk_out(0),
      O => \^clk\
    );
\gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_out_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => \^interlaken_gtwiz_userclk_tx_reset_in\,
      D => '1',
      Q => gtwiz_userclk_rx_active_in(0)
    );
\gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => txprgdivresetdone_out(0),
      I1 => txpmaresetdone_out(0),
      O => \^interlaken_gtwiz_userclk_tx_reset_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_ultrascale_tx_userclk is
  port (
    CLK : out STD_LOGIC;
    gtwiz_userclk_tx_active_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    interlaken_gtwiz_userclk_tx_reset_in : in STD_LOGIC;
    txoutclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_ultrascale_tx_userclk : entity is "interlaken_0_ultrascale_tx_userclk";
end interlaken_0_interlaken_0_ultrascale_tx_userclk;

architecture STRUCTURE of interlaken_0_interlaken_0_ultrascale_tx_userclk is
  signal \^clk\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst\ : label is "PRIMITIVE";
begin
  CLK <= \^clk\;
\gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => lopt,
      CEMASK => '0',
      CLR => lopt_1,
      CLRMASK => '0',
      DIV(2 downto 0) => B"000",
      I => txoutclk_out(0),
      O => \^clk\
    );
\gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_out_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => '1',
      CLR => interlaken_gtwiz_userclk_tx_reset_in,
      D => '1',
      Q => gtwiz_userclk_tx_active_in(0)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
iicAuWr2E+ZFnCDdvJHvFDL4TFnCNf5z45GjkqT2djCo5QgyuFZ4Wd4vL/aUkYMZnCeWTwPFmZ58
8kPpNc97iw==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
CJEoRgwiIuJUnJeurUoxj2e/qgIHolzkOGYnN7vAezhe9QN4rKSJqmdv/NMXN1JJzpZ71ZVUlIvH
EyvGNtDKtGonO2/92Z+hcJQZO3qyvnRmQtUNfpZuc/lqqUnsiRh5BCPxRsIQXdk9tweL99zqKcFw
jrvkcewNNuL/vCLppZo=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
t0fn2fEIj5KhhSAcnrkUS662HM167hc1Ls9Tma9dkdAFRD68uRpFgVugbNN0ZhC0rdqjAOAMBxmd
z/9IHfKjHHVYCYSQR7iXy8KvMU+dwzVvz9PmKZmlOVwY+qdA51sB+CHdbEgEQ+0iidiZ+aKAEC4E
98OjTz3v+7WyzRoDq/j26C3+hL0NbhzlkpozdNK6GW90kc6GIxkJOA9wk5Imt+jCncETXUdQRIJr
WNb2fQRCPQmZsyOye15u2lT06QfaNdhBg4Rq0aKB/xzcdWTYpjIIbhKWpTfGRUhHlbRl80FupeCH
4+GPEKlcWrNDoXoywsoJEh5VY1ertGf/PQaauQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
pl/nfZwSAjyPgh1RSwWH++7vC8/WudlNvK4jlJb72L9Xg+aN5DVTVaDMQawwnc1ehYM2fln+UANs
IHCyLqidcCQpDBMoBA6G6SI/Iu2h1BOrKu0vZqTDl4WtvRevlp9daZWOercAlZgWv0Zm663xBDm5
t9HXa29o+rNQSfYaXRn8Lijx6Sy2XGkEzJh/i1jKsM9AINDHFxWVMOLMMYlNob9eUvZ/5Po5b0P2
eK7fhK3RNxhKuahZpEYXPuTHWQiXQCnZ6BQSSPHvuE/BlZ9HhkcO3zFUQYgjTzYuTydCA3dH0CU2
tsTug7/NhLxXzXIpZfLLYapKq+ILBi3+B4NSqw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
p62KL2mU8OwoN3GMQpZcBG81skjkLvZDzDBAYCAyP25fhgm3WW8uyO4hbRtjo2yphcUkv9h3JXBB
In/eAZVCEROMgGHbVJcqjMXg387DLTlfLl9wBn3Puza2R9diU9MyX5n5dPr4pa3KejOux87MQ2dc
FPsPtOzyCTjEwG4oiUiH5ndARtrGQtbWojZTvgupkrKH1AfXWJMkjJ8CO5cva8ssnD0y26M313RO
J4PbgFDQc4meEGYlHkfN8g+NZf9IoOrYiHrLJpg1CBBfJVMwvNiPlo79ZfImyNw2mJaw+m5Jmts1
orkaoHQ0eLtVKuKE/q1KxoSqCxwJk5Z95lVBeQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
C3dniqM4Qkay5OSo9O3eg+me/7sX/UNgVJE3sASrYynzkVZx4mztN+CpTzICQhMsHbMjyJHVmlSw
bKSzmd0R9vAxkrGCpx4mD3SQkajOGsS0NoY6l+oUhepbpZxmwU/sGDBITYf+5z6G5e0O7ntdEnRK
72AbWPf1rynbxL/5r1M=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GOtC5BA54So4yvdk8hx9kdiRqoGXvbEByaw1z7oEUeu7qmtibY9mD1ckTWjhnXtNDuYIk09Pmwvn
tdrxxHd/eURUiFciPSF49Dr5e2Ki54kfjvr/P+fl1xQbvzGLywhiJFXA1O26BLYvFl4jEHz6X8Sx
JeczUDnPBTRP5GC8cj6yczbjTzrn6WSth58alhKUBqMbZZQBTDJbCZFilWux2WW5ilgxNygzrI3u
qQ1aW1L/SEWbfF0hggRqRedT2g2kuMf8ngrQsovXvNCHlcXA+C4LLY7+r96YDGfN2jeht9K51MH+
mIIDXAfSkO1mwPrUMV4XoEDn/gFtaqaE/ggT9A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
n0ViexZFHMBo0U7Sn/PJnIOiCSI+KBHtB/9ydgaMIaLtW8CMvP/FzmCY6R3NiHUKcru7Ri1ocojv
INDjKPXI1cEfrDoiQGQnXzsU42X+Vy8Pt0nBKDcU+dzc6QAovdcQ7Oyx9YWY6hNrwafmU/43Ixct
lfZP0i5P8O5eMMjj3xzb1mLdidL8+pCnOBJbUkCfDzIdmZyvFe+26XkzUrV/u3TvW9KIhZb3jNiZ
OcWC0wHclJLfkZHhnLyG5vPIWlrAPt20ZGLF17e/pel8rOynZgQcFbXJlJG05Jka7w2ZWAbg+4m0
9+P5YoDKel3DjDnUXXM0K2IQnLrjPmpJvdsw/A==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UQEbDlr8p1n2z8y5jkoim/p/6xUp8g4YfGxXOpnRwDLab9/fEVdgLO4vc7y2rlz55FSkkJnPUYO3
trF9Vrs1LWS7c/c4crTYAPcmWueV16PmoWKxFfwNIbgBI1s832E1k8UIcRq0c6pmb2VDV6jztZSS
5ieqIKzq2MCxtQI2Dg7my76AArX7Tydbf7O7sFQB7P87ohDzPmsSa3Rji5pmpZSsq3+ZMhCfftfv
wzmLYj+byevc42C1ZDhbkcZMGgKUP9BWRzPUjAJsQKCUw9utup4+rt82jxk0RVfhgWIB9bQs82nC
E3djxPx3Z+xJ2xzsOUxmG/5cHR+ONo4HSQ5qxA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 134304)
`protect data_block
05+jHuCbq1gaCrQ7O1tRsO2FAsyQ4H0dUkXfADUJa3cYMFa2UARhLuG/Jx/HuBeg16Emcn02r8TM
YPfc73w8zoYwZyOePyvw2MhyasH3C/KIXvsL+mIzSQD5+T/79JDmECo67TpMlHZfO4SUWhx/dwAG
TVbNw//rCBrGPIFR9kk9fmbAiLOZnNLxlEmwfqvcjnujV8oR8L4CaV6rgwS8awywwBDqjg/3ivHx
BbW02MqqS11hxDgV0aXmbkZmxb8OuZz4GLp6UHYSeU+qNt4aOoife0T5k8MNpzuGWmday/V+rr9n
Kptzjf4ybsnrAnrDIgVwvLC9BSuQ6SvDba1w9I8EqmN3kiVp+zJ02GDf6TyTHjng0vVJE9/TRG7g
orok0KdWZysXaXrAOcR6RenvIqXaibQmigs4mJau1uK1nNvk3RuNWAu+zmImQ4B7NeVK+HtpzxTU
Lyv3iYTdsDwr9Q2setd7xxYLpbP1Fb07tsya9pYtV9xVm9uqpJMsnabvvVAQ6SL7orcgTjmIKKl4
t08ZedWKNRc0jPMIU2GGplUuj5ZtW9H4VpoMOv2pog5HCcYcB7lb2ZblPESbZujn/QehKHWcdT9O
DT2hWIZlS03qxQQbzIW4AnBnYOYWiJLQl5GWdlWFwnr7Mhw4ocvm00Q+6ogbA04OHJI3glokii82
IBLDZWuMXtUV1qErE6b2AdobhbLiYPVDXf3eGH801r9zySX76e7g8cBRZNHwlbPl8OZVeZ4KQKXU
HUOX1bjIeES1rHlqKx7SLFVNWw/ILNCbpGeWDMSyy4cfbOIHSw1ZiJbcUzSFQurrQnr86xFbBzID
ymA598HQgZ03jIR4s1ChFhcylXKvsSWmGXfjbKARfEnU4XxkoI1n7AUiqr8+VkSFpXiFnMDJJgtC
sme606AB6eNIcoLq39UHc6eXXvl3IMhxcNw5SGsmYGCii8hRt5NJA5igGHoHoFqjI+RhjIeLVd4S
GMywM56KXTSloN805drWx0dEX5zEphtfHYDTcjCygBmWU7wgUmRkPVJbWbSuuCF1YbNXfFuWBsRk
w0j5ybgYqNS+yvky70Ed9hMzaQtxSpqoSnn1f86NAYHPGKYUVKVuBaNV32AtfQbKlNJWE4f7flZL
faCE2p+5s/A+pKf//BNPysHc/G8zav0K84V9UdqvVgM4dGrWcRBe6O4xWrJVkiQBtSrTD0sBTqg0
ZSpdg/ZehutqhOSxxfi1ZSSOqp9h1Fv5gMSRUwfHBSDSiRBWTWigLWv7hK6TQlG5JVfnLaZGq0ta
CH6Q+xkOZ+jXeZM0L9yVwCx6YDLwMUmVqX652eQBxv+1DT3pFRVkIENacIeL8QVdgsX4i0vjXHZ9
sa286Z75xPaLUyL5RaYLkUbxX8GuMjgW5qbmKMbRAwwwvX62Mqan/0UE1K0rxuMhNZTAX+Qum0dd
dx9q8AuWtzoRnUpvxM1nyFbvVEEpZyOS+wOuCWOJiBD1gnJ6i65uF7/ic6weyOz7iBfpD9ORDYhc
iSsf8NDyBTuoCEnSpuwL9vRgr2PgMXMINnguDXTOzjQTTFWEWzynEYqaUfa22zMZBPMI+0Ktj+i4
rg3+ZSStMP3UdYSD/ICwSL4p+PK6cT/TcqWL0nn89VxoPS2tpx/VBd2zlvHFR42e+giOofUdzeWu
oDImOC5ECZ1qQ0V9/PT93gWQt4YcO+daHcWMu0OtblJFXah+DsDZE3w0PAsRyl2CGgwU7OD0xO5z
KaiQrkQA6Zk1OYh19p1CZ1wYZkFkPf2lohOg+W/HSiDDmAGQOzfNgyPV+Nwfk9aCAabfcX43etJP
PBJHMYwxZkovKr4DcSkOX43vqSHwpnqHHMMnC+75jiOU9JTkVpwycnxINST1fazf0/m/CNQV642k
/dclnku3Ri3LDpqXCgIpx8f07+jPdDK0lw834e4dRaww+dINJQc1K3HF1OAlZz5ELamWhkPId1MU
qz4nEuhVq38vOtPpBEtEf6JTj+LBtZCqKYoFjn3mfuviV68karmCcwXMd5xuTV1ZWKBFRCSJOKJR
itFnWZXToEskcLQ9HVujpZPV6laK369YSiS0eVrZnk9DwxWQE5aW84sUDICexeiWfZjBbeNjjoE/
naMOnMDeOlmSF+iOoRIWL3Zlx6okWbV0wbuI0DD0CUsnj47sTKuxLS/dQbcUjOY6tFfQ2WS3kDuq
h8E8edy4DXnmm9t2xmzKxt7iVl38qToneaHlfoNB68zmUP0RHivz5BnrhXbvIh0VHsYb/688Rd4S
rvh9lkwFrvRjLj4/4BYySuONqReHK2XuvCRhvwREWlK2iynHk3AJOEbHeS1xV20uKU2dijAIpC3Y
xpQqIhVUSrzogUvefGw5lceSmoHnlR7Fyysxdxfn27rw3H4VD7M5zuqSIxtbi9FrhxFOnIZp7PNu
lfgU+7gQMM0vvBigB65m9eD92GuAV8vZmfVYVQ9PeArIAbIRNdXgkxX7OEnnpGuA07Mkz8htWd7w
ZCPHLolOW0F+JwYxtlhyP2rBQlOrzVpMz6My2mMtjPR24DLUBlH3u8Jn9CIJ+r+wJKyTU68KDmpH
mvFxaYp5qoQKxOW2nhMNcNWDyTYwkOHRz42kMDiNvVzQbmzVm9+DZaI+IEKaqdj8vcbGp2p3LnVE
IvPZR/aKBNpyb3XODj2oruoJTnqd2v1p6CfgyJQzXJe1r6dFveRTlpfnxK0VU4MMmbfOVjEnFZ7z
FxfNjvQpPzQq6yCxbjmbs/129kc7YdGbbLQBRamdEMPSd1gFrXstn8BS3AkKDZZBRysMaZUUBrH8
OJAIXFmCWwUmyBRtRIwjIfCxS8JrLOHj0OqGhPwCEOW6Bf3x7+S6lgb2cpDcGXvZJfRnk4sjIlmE
upq06ciM1Lk5iSST7ketI7P19MMryli/4qX6BzuhkxvcPELr+NUqJaUNTP2//9JcnRzjqSWNByiM
cY1FBu00QvXyfNpydRQevI6RJJXvkqPZWmNJjHIx0ZiRPLPyVX+JbRmjk7m40PDp5CIaV+C9YcV/
xiaXl3Eh9g0jDDagpf06z3rxmtxI0CPWprcqzmuq56HPBtDT/ciZHe5eWfASwiSkPdkAMczvjgZo
bvxn/unxnoGE262P5NocJFy14zWwI25CtsxH+SEr+1DWA2bEgoHiN4hrLcbPYxnJ/pqt4w3Y79Za
TeRFe6m3eFIEhfeTmHuXTTJ7bBQsTFudW937+d672V3eYvgVP4moLGjgsWh/yv8Gr875Ngk7iSr2
U0eb65O97sqi7y/u/FyP68M2pBXgGun6K/FdI2s9kI8EMoCNIzGypmu8MuLumCmcscpBRz1+V3Me
TbDi1SyVSeyIdSi0wYoDuyB+4phMc7b5Cn2yHuX77d/RrEfBknoTJiPrgt1GL953mBsylJU1cNnO
tnMB761RdJqavN9hrMlMmMYBS+xQ1I2Mkui0Gnk4eXlIxbZexKHtrABDCSza02wZBa+2Wce2uEaX
WdIPsDJobGFKinYSTugjDcbuOgaaHAWYA4OLnjoLD34NE+T9ePfACk+Kr0/P3xZfT1jtDLXtd36Q
3eObvC0hGyKG5xtoNxeW/8C2MJtNyKEE+JseGPSUDyPUpJhBVVY67cP+bMJoWROI+wCE6wM2XmqS
YdmrJnhFZX6RtpzfOGrbOJx3M2sM4E46FvSShrN/pdrOmHMMWflPpaBIJBu+jiGV4R4a0P7f5ODY
jhD7fRWeZUPEAffxTvRaewMYbMH3nWu9h3A/A4XauUPBz7nNtMCUq6MBBC+nMfH8sBpF7Y6uo4T2
dBSrFur9PBxlF6uj0A0Q0BejTgN3mYfGN5T8kyWqRGWSwuO7BUKoEnRH4ptfatWI46aRa7Sc3sgk
9l3hrSA+BzP0PiWVHomnMPzlXla+avzjN82qEm91yDJXkiOHQJ98W2R1poLe9wU/Y465qmWUQYa+
MPhBdTAs7kjXJ0vDmPXnBm1CNDDZ2Tq1cYezhvA3FyXIi8iUbr4hxTU29n+Bp43iSN0ji5DOZ8by
4kwBrhCeowSJmJiLzVjJdK/8DSIO4sd6EdywigzbpML30ggj+ZDW04b/o99ka39QzkscR0a/n1EI
1w6uMseHKZ+eGnAKIPB8v+sp8Ls/FDhks49qDZkE/Ggzu9VoHciXn9TCwUtYJP5wW9wzJvnLRsI9
Z8kDiDLynwBgwzR+1Ypu/3kBbJw1I8+L2nOAk6+zQKDJOtgHoI4juF2xjTvxdfg1krNZ6is/+D0O
l8lb/qtPwV4+vOuDvsYSEgQGs5vgD4O6YZcZVKBCkl5Ipesp/31qbSKWul07o/68G6nEKVMFLpXM
+lRxGYces3LFVSvtNtVJP3AD/oVWekPZCvvaj7f2ZMdf5cI81oQoq4eeQ8zgez+fVI2/j3drrXn5
9gSZ8/t2/nrtPNLfR65bVdwx4vM5/+ldy+wdAnbk1HHeNlBdNmDysnnxf6xpOAAJziKWkHSFt/qL
JscnWqtHlRV2e8QwHeLJcF+3dR7awTS5ZoVBDwDc2oBSUgpZUyiFeoI2HlZKFcgK3f/AQ/h9T+1v
rJ48DiNbBEH04GxaPQWdPx/xPY0F8neZXB1kL8FvrTAKv5ygAuZUrF74oHOv8hH2zGUETwO4oKZu
XEKoI+ZrIwn7lZhT7+kCoNZiJjbEkDsqh9vddtWm8mZJZ/urot9zCx/+SW9VYQwVIDnczD8djPoq
K5+CLpYdjcLSGLvn9mq8oz2dycniK8E053wHbNR7XDz6x/W2efkD6TGE8yuSl/lIbgDDL3EkCFnM
VZX2xTzQOZ34qMmtBWpotKR5UCjjuPBJx93OHqu78O/DcC1VpGuJZGitu5srfy26dk6NYm5TV8m7
AboeJ4xre2aJSK7URMtNrXsYWs97lRmcRdA+ugR2fGVurAh2hbqXo7i9D+yhbHB+D6j7n9ujAiMN
TOpOMgqPbv5n7vY4eva9Pm7UtP+cg+1pv+fRx25gje0Q3KOUe7dtuYdvsgATxcdmsCkd8TFryRCK
8JcNFT9T94mCyK++VhbBd65mGs/h3khv5W8M6s7TXf14vfD1hZzN/mEa4kXOOlIgJCNR76P7Nc50
B3Rq2oZNHRY9FWHGGpC7SZsBMtRa1ro+ULGBxFGXBIQUTMbX4h8XnT1aPcmMdXjTIrJ+dY3Ufi5N
I362PzkUaIEx4N4FdoxtZFbEMyPQXikuTOibBvjqHEt9FT5EWFO8CP6tIk6Ua+2sNWq4g2OIt2Re
mJXcQ8aZVfJ49fUN4+GgUdAG6c4Y6VVAcSuVZ7aZhKZdoGmA8972P+x80skaVaSf0785Mrdx3UQD
J1Y2ff4YvyAU14rbo2vkP5BkFv/JNvPjoPZgtwMLnOTvduxGbiXTDeSF/iZgf+nTA2cnVKlCSsbd
812F05lZ4o0/W2BZlAH5kBra1OCR1iF/hGgY016q4QJrakHtFx1YoFzkl0uL/PDPpKaZUWxOt6g7
jq7S2+1rAMvKRD0kZo6wNnqLlUhkTvLVQI7EzZeS9YcFwH2Eb2n3o6EH4pBj12KdJElDkPNiaps+
mF2VxLy3sSkuwtHC6S15HYGu2cQJYWl8D1bP3DSnltCK4kwGEg7+MoFGcMX6Swz/5+sTSr5CGbfu
deDGMO7RLsl3hLUO8R+wn6AQPl9rcbwUoMdgM3zGGw5n8yULY/mAz+3/0TlSZEJoyWCQiiATjEDj
hwd2/9EAy4YggCOFOQlebAi7HDlHD4TIU9d4afGKzX3q7BQ+1pHWsqUCBLZ97ORBweGwVq67E0Dd
61MpW73kofwAJLzmlM69WsSdxt1GVUHMGoYb3VH2fpQCxsBooL208gE6HOZA8TcuD0CAZQGhp+8S
jD47RgHPuQFsn/ugrPuNpmakFkibclJKjr02BWrGorwEMa/MmQ3wr2IVOsRLxsic1n6EB9eXHcRD
k7Thg6VhIPY1adUaJTGexhUcc+PgBvNt8quITji22A0VQX5YSuA+dWU9CCVoTE6QLTJHlCiL63ba
ueCAqoyjZbl9pzUA+hdVLj31FGnx6XCC1xgepCv+2KTKjAqbKkAdA9PPDNWa8cyIJdOlkbJDU6kX
8Tu8/EEmi/Q9TAQ5gjyir6qfWiBL33VZn43c2GdbNwGjrF9zvDpz4fWeVIbHIxpwZlXo7rlr+Ug0
m5ChMTs+CE+vpXqKZmV/dAPgPK1yZ1VSz8+jwCl7FgVOk+aYf7mtKEQicId03GdzlOX9Vdi75n1D
nhY/ttPEiSZbxjca7NoyeWOr9Z2PxU3fVovp/XLWwJmv9hYMKkH2kd4f0VhQNPwepoeFLjujjeOg
dbnGFQIe5+KidmdrlVvEE+2xYF0kbXzbRlCRp6T8ziue+MZcE7o+qrq2No8iLGZFPijcVbkkiDhB
dRN1U+s08MkoO0kDBgb9ASN12xDYJWi246LPTNRhfpsjH5kI842Se3YS8A1b+6MUy/yrbbKC0rqT
4Uc6FP1DzFqVT4Vu6vsNHIwpKkAF3+wY73D7TAr9pFbY5VyHt+FzTxd1/tLo8FOI0EwoC8h3jKOT
XPDU0NbUyOLmW4wxKjlAjpHViERD/VUxgnDjpPX13GNpV8YH+Bkju4SdwnbDM9Lj11o9G1729mmt
QdeTsYOnpWFfPQUL9u7YF2k9m4V3Y7Eli60pqVTOeA6PH7yX6BDGONQBwRTkdz336WpXtlxHj30v
CUTZQjcW8ETc1iN+oQHJc8CMduhdZLJy6WQL117/teG8kaZoXiuwNAvTeNFDjoXyqEVL1KDneaud
Yr40cciBD4BVi2i/yBouwLIPl9HsuqAah10Y9msdlGsu0cI1GAbGG+MWjqxfuMl5zWdhQXehsOue
bEYvzhlQKegfHUsFRKBi1mA9r+yzMzSw0v27wcj0XNoM5xfU6OSu7I2ab/fx73wjkCo3b0q6uOvH
sJeK+Gr0NKiqDsVeSyKRm9GeXfANf/O+RA3aDeS6it4Xa0z5Ns8sOjB+cGz+pdJO0VJTRLlXmP3Y
xzFmmAazOQ4f0f4vKeq/jRAHTNzBvRUhmf3mK2RfljWqI2rcVbfrXmdYHUAwzzNDFe83A6MzqJ3K
uZVYyBSMSdQwx/8LfoEnXFKD7mM8sZeDGHn2wQnxf5QC+BAVSWIaB3VPoqb28o3Grv2K2AH/bkkb
nqT6akhzmf7iEmGyX+BWYFK3d98se9kRcFLPzUGyYBiCRADNYbHoBmy1muHxhDR1fugH61gEDMn3
Vc5nlNz+Jm+g+s+fFzqUfVt0EWxRfJLcR3VIw0g6cJpbETylIX51TMuDbzEAUMpTgv2633hAwAo/
NHWQhoa9if7S1LPznYeAJAEJzJujvt6AjYMX9zYVgvpV3t7Gi3FZmDL2rYyDy1IWFR+O5xmyULC9
gDC95Uf7V4AiUbgpXLoZtXpzkzGW26o8RARbviQBDKZ5d32dCiXP7/qL1llN8bYM1q2fVY1YRIo+
dCdC7fuA+x6BtKlEaHMmH9637HeH2qkUXW/u6BMGhDKg74q9asbjGFN3mESxMBlR5M4oOM+fdE7V
4JK1B1XxElBmPgiDLWmEXlrIr6Af0Dzw8rZKI8+PikPzXyZRIGJj+aPCGshOo5Z3ENxdLDmoscuI
Z9KwSjkTiWD2Egq22OtN2nRysyWYyZyRl0jWE1tpCjPwp2WKiYqBEUg4p3FwY1VrGJjKVLt6q3hD
c6k49s1I+ieQi2MwispUziIShHZ551OxxJxJ7x9P3doFaAS61lXBaBEo3FTVteogmTSEeKdQblzJ
KpRayqmGsuftI62OEJ2e5BxTHPk0NucioMeW0qStGwKjFUc6m8GhSs+pdCKp87v0t6g2fpWIvKOC
o4yBBlSwrv5mHa2M7UCUK1AWTAufT2p7KUXeSZXFt/dlkzx/oVZ8CQZJsQ5ZNvgBTrayAaIKueWW
QS3mLqHo3jaykPcB4ZY2ADG7BJXd8mwQNAXDEHkiKsGZ2Lc8aH+ZDELQLTOml+AashS3hyp+CqS+
sA4ue3/iExryvzvBeROr8Rq07jzFO7DXqP3R+MXAZiLBmCcfvKB6rLfQHz35ZQ9s79x2PHXFgYgc
bs/KyTbrDzMj7OF9y0FV34nb1SUfU2Z8MSYhSebd4fdQCMuOgHz1MVE7rd9Wt4JgXkPM2z7Zvh/G
WyQ1J2V6qnNT65VMAGvpzNGpZ6u3gc56tMj3VyGyj2H1mVcKY4NIyX4R69OTWIgaNqXIAn7FDynu
tBysLVlrJiCz0YUF4NLuQ/hRvdR+oyz7ng5dGp62B45iO2uQ39m3YkTn1qdamerpmd4ahie0AwR5
mm3lJx4DOkT7WWcIziWycqzm/QWDCedX1Zh70U6BbiYXERA3ihz2Hkviiuqjqgm5tIS4pcdNam/m
oE7omOepI6WgtKJQCBMHxoc0SuKl+FQWBLsWXImwqdAXx+j1cIDnp0UyL7FcUv6J0ilS1K9X6SFw
/rpmtPa+QhhyTPc9v6bBquZnTd8VBIQpgDZoTvfkezaB9wJG5MQA4xt4MFlhcv4zuQKxObznF6VQ
L8ADSgWOYZQA7nqzIk07birJEQo4X0VLF+qgO671k9jjfaHPnVXzlWJJqc7DHt60Fgatv9cgLQa3
1/8SjAmzUGDxLSV2E9bzMkAYw0SwveP/4gQ63cJkdq09k1u25f/P73vOfU3OaLuN9eKTpWPTg6/F
fV7gmjTbEQ+EAaMF1txdOT4Y9aiaZ1W2oJg8KuaanuN5IJUc0k+C7LDm+qiiZDTIUIwRLYCiFXKv
cnK8oleY1ocZoG/koB1u7iQRumpKLdwmedUkOnkguMimmieCtR1atwnoqEsAohTGRxMt7dR7PGJi
siX6yMQhM9AHyFO8akpE2KWWupCAy4vwcsYGCytlu4lgyd5xn0Of+VGcHqlM8mEMYciRXEABrH96
x/pYWRwYa1wxd4HxappHzIhXilw5knwpwsP6oXsfMAjgLQrPMwrOiomBjYIFgjO1kqGdwbMXyHYV
fZKHIN6IOoZlHcGKVLyWRjhj2VhwrdJaYSIY0ITzc88FGWHMVxFM2VJQOzNJBgrvguN0h3SpHY7M
+fGzmUyUBgNGFJRWHEmy8Sq/EhT9pBXIs4s3/NlKqkaYJi5oWjMmgsl95tyiBiiq+fAgSB1HqwZm
CR4NEU3hhcCLlwt5iKfAwCXS8Tj9wZHlJEtAYApB9ei7UERkRwqXX818rrdit8GKN0ZSlQ0hjXAg
BULzvErveWmlmOWhVQ++W0c5tK+mQDkeBC9ptfMYwIaa2IIKhdkCGqM48h8NzHLa8NmcXF0S17wY
pDN1bx8/7agRF2Jnp5RuxNT4g9xZNM+vdSsZh26SYLUqA4xMC+AZg1cuD9uDnLzhHgZI3p8Ywjc3
zKUuS3tKRaJA5l1cNiJkLAr39CYxMtgLaqbGkbDt30rfN6wF612Ql6vsiePmJVbrsIV5A1qhQFll
XxnaB7BSnjB2pwl7bqnuExbnxAU/40Cc4FOaYnk24E0xewqKPLpm1PIcgG6EhN78lyQ+uMgyAaTq
uEUyG1Ucdpvche/M0bgl40BoNSk0Is4kWsjH0yvVg1fTPJtCKrbP+vD3CaOxl4ZfKLbmYzDZot2E
aJwtFosvYQr0gMO6gjued9k+SOO0gOEZVWieZPXbNiZniW69yTl9skKFGK2FpkI1I2+C7aT2UlxV
qAXGbLoJXTGyvyR2Em55QSV3VOiiEToh7oumGsZA4GKrs1L0xgT7cfSr5pq176yPYZKmOzFqqhJV
Jy9qUXlJdBHOTDD6n3Zo9xkoXd9hNoO7MnovnSv+eqUpVyaQiHRUfxu7YNcdCEhHu3zZs6HtsD67
YZF0rpR1Q19sGycU3FLA7bSLSbrdDeewtmpdn1fzH9EbQ+knk3B6VZZ5bG8gdiC2L78v904+XPHG
rkrYxI9o59VYKeQ1bkZfwLg8xp7hS/V9W5xnA7jih1KInz42rU923kO3E1jcmmp+efhjp+Hl2lrY
YOtdiAEXCmmJPBVPoQ0QXBU8frM5dNBe0Zb082SczWfQpiCs0lziWkorEhRuvDFC9KePUHEMQx/y
SOOi3xI8RJL41cy0jDAXQFSEyR/H1ra8dwgPAeMH/ThOuM5mWU1Lervc7s3lazHZx26udqM/DIgT
d9vB2TN1Ro7ruGEUMOSMkHDOVfp999q3EHUGxMO/gpwhO1uz/9enIiFkllCz625D85lQWT85WChO
TKHnyvbD2KoUB4fZsS3ZpA7CfbJvePD5R06z9Iv/L1o6RRrZDMtHQl/Kxvd60DdNmhA0UueuBhC2
AvSkRRjtX3G5p+6Q82Dc0k06+OtZ9hiBLxnqpyr3TxcvgkkBgC6fwuo76C5bpj4kg5b7Xj4YEp/1
82RF+iRaa5Uv8LFDe4e0t+OhO8rI6m/3T8l694uPedpu4ewmhy3QBuYg9VRJ5xmucXIoC4NJpvbG
UIyrF091GDBGY15R114btIGu6WQZRGQij/WDHYJlINZkolZDYttTwGjcWsSmUi9HR/etQNAWamb2
vrWy9rQsWXJLpZSJTf4l80Ct/dwOuf8lK+ly0qXFK6PC+d9L5rahwaCCRn0FANc/h0Y2KR6BWNZz
IRcZ+8V7ZmagpCdSoBQLgNcLFWGNERxnOmG1o/Yk3VX2SRKCqp7dRWA+jyrh4roKq24lUpmZoQ3K
PWE2Klvp/+6wCs+Hct12MPU4GKXwhg/16T1j5tJKfdARGyDQmevPTgdhlZD8XEHZ5MHuVATSmZ5L
cvnyqfOpn8Ug9THNpg0BTx6EVpM4ElP4jARHjZHNv0/U77QKri5mJbo50LJtN3SOTFWY25Zq19Lr
JE7fpDl2hC2c5CZhsWiA92ctegWy0M34xMkfeyg2l1ZKA/Cnf8sLY8r7Fb1F8ZzT/bLqqL1h1pNu
H61+KkRdLnc3IDOFCWxbwkPKl0+Y63GS/P004WDWnoZS+/Eo7HlJXpihrZv/hKl3Jae6QJihEK8I
qY5ZOoaH3tsvlfGQ9jO82fRzhxFEi7bnpH42T96Upyf0UL37gCUVbxnHZVzgD5XGEs2h9gj+xSAM
WbY/zL2ZHWtpjQdw0YqPUYaKSCT0T77TSrm9MdKY4NC/z+JflVqfhLUJp5BlwBZINpQ5BmdJUU3H
zQ8bXLlLA5kdVQvMOUe1mzG1HY/U62il1xECekM6miOqUSGoF/LkKAPJToNGOMqZGAzHC8pBA8tz
R9pLCTGZCesY5waHy00zqK1a9+3cN+wRjeulYZQgH6ZgirGr3NPuxmz59MQqXxvoeHgZZqJbC7vq
EThmuhJTCDiZrLHllwTtXVxdFBspUAM0oe08MLtJ2JFRuo7BAHDoQD/kAhXF0LfOox3sOQ2n8AqD
YgnSTNYxOxY14S47heNoISjA6p2vZNdiWaR6IAcgKRhPZyUUygSHDrw8mHDuiNO4EdQVCPKefaDZ
zdh7GPzhf/ADnBxbqgE0ApCWHbsrP1eEgMkJjpyF/Y/iQ4c/Cd0xyda4M4jCFH9QBZxDajIPePEn
ly6jsdUumrz+V8KZw6S6FyP01UtirnpY/IgG4L56MJzgV3swpUZ9962JN6OUyo8+BQPcAgX4aAqy
L+azJFU+UWSogkcG1jJrebBfqWo1M8OXANld0ZUnc0Zxv/iqcBHZTOrJfaSYptcpuagmRoLJVyFv
aPEy2mxlSMNXXOHG2Sgu3CNJnvNr5czHpb8Ge9JbH3Wsmoc2MW68CXodymwosF+/vC0USp0ZoTm0
bJXog0v6LpmL7kA7D+qnrnlCzvU0fE0RReC1NKRc/JMpgPCFmUVX6SiK3r0xLN1OaXES5fgG/sRl
QNn3CzCu0rNvO1CmyYEFxOIGMwCJy7c+O+XSDInuSw7KBS9TQ0PyKBBVhpO6tkU7vMDhxPVlJiGg
wkNsMYagNLJ4Dbk1yjCIOGjoEh7G4+3g0WRoeenElkOYoJbSFrRgEqv9V+yNk1S7qMKL1ebvSiWB
/2t8Ejfjb/1m0nDHOfgCGPHevD6DHHPjkr59nqg7Mw4G0Zd78F2bhcTOqk14T1ZqtycGTSdAG9gz
1nFWkYUe2hKpjwzOHm7eQc2uDGnWfjDB0VBJI/ud8vt0g1z0eIr9ePoVqgPq1jromFi8Y5p5hFLp
XiQHQFBhJ5lic+6KRRcnIGI1A8LLwXwG+TdiKqAJk1QupGRETmHig4pDadokyD35dWmUWONp3Xsb
VdC02mYsA/ZfSAsZfvNeappx1RuzE/mSuERvtJaVp8SCiHvhBH5iqOlCRs5EaCXCBn4ihjn8OrMS
VbfpnAk8s3Y3khIkY9Cimx9wmGAfpUZhzzPUHjwmw11eBNRvSv0oAy1JmaGoqa0ZX/n1eLIb/qi5
phVplaUHF7KZtke+/+Xhp/ZELIv5NpawwySwUFJFoUVnLq7fZfbW2rSDUcL+f57XyJ+fxti/auvJ
Bky/qI/VpCGBWu0GaWv8i77LZsEq896fu4BLymYJJ6yRUb/RpT03TrtLYinxsWlRT5VNqAW4dek5
iEo0VmktyE21d1OEYW6AizEQhsWm4VbvyUDKvrq9ZraYJ/OG3dUzkR/gla/kQiT9QDtHxHGpQQUi
AV5Mv7N2tz4sn3y7D/V/J862ljqA7OAU16xG0aa3Ixxg5YXiCIuSPPVWY7L4ZvozRbi21vE80/dU
o6tkhs7p3ZgNVr8IhpxCanKRHiavS3ezVOBNWNv2bBIAc5au0bu8TETHrIWwAMJ0b6HvWt/MpBtZ
o1HHAMXZnKrnzqF0v+fTpqMMqcRbshemRCo++bRosYKCoUqZR3jCawpHhNrFsQm6RNOcBm1/EXLQ
o0xGUFicDmubCrBnhNqR9PhZr/vQXDixpa3hlZ6y3NmwYoK3jEFPACuWCF3lyjz6r3Z1+hkcu7K9
WByl8CudT/LNMUZW0PWrxMCsnJmIQ3SDK2Bf4wmphRUAgvXAdLupMrT78n49Z7caYjiyFwcSHKl9
b12q4Z9mQI7TPf1Uj3j1jvhm9DqEKQD/Z19S5YF6WkKWcnbyJScqq85gO4Jr5FNbxpVcEUgjfe79
KU5uuuE8l9j785DyjUci08838931JNV1WT10W++DcRPk2svacJA4u1c1OzrHHIbWBJGXk7bn4X1w
rt//a11ggv+1W/sCZm9q9yltXjAXSEmOOwLGxQ975LOwvqqFeBuiSgA0OGqHNqUO/BjBUKUFKVxP
77GvyTLsOR6mNyZddjgeE4hSFFFwJr2KugwUiOs5I6gC6m1J7qSs4ffzEpsUOxn2TDBE4JWJg33U
1dSMnsdi6rlqKDfnmD/fg7PUzYaLJrGjg9W5K/AOBOOEqqJCWn1lO0s52/YabFkUkWl2c7adqPZZ
SP/N2GGgG+s/i1jntjPuGmQGmlyOOeBuS+8z408EamrkmedsIzguvCvOosvnKXIrf70iROf7wwzJ
eGyPoSRfO6FswEmObsriLNS4VZ4Zl6Y6ry6FgbJ5bk5p6jdiJFXoWC8uC6usMddUNHwi3u9UlxFP
MfV2DJGoQuLzXcQKauE6TFmo7JXPyB+qmO4hCNFsaKvAJT7k68ziT9894Bv3zfS92PoOAW6a8uY8
kgKNrXpkwbXyq12MYteIfmMj1hyxTK9UKkIgHpdrIPTbuzHuefq+AY8BexLBySnAM7swOapXcu6u
0hmTuvGZyXSe7pKhQOxKcGvCiYy5BUmzxN/fwUARmopPNGyrGqHp9FCII+nnLUs0T27xWXU1B/7D
c0W9B3RChN6f3ZupxGpyJxdRUVBpBX2B8QRY/aQvysCl6IGF81I+pnaODmJH8NValkCQvgxRz/PB
AgTah/xrDnR3FjXmWNmQjN6RgekJzXQyh2nS2ykP+vrWyNnCECkm7f+IV7e/cuzignmq9++55H7t
lJRFzcDNU+mEPGCK9C1AKLE5r2wuuC9JFOd46livC/16O+8BHAu4ylm+4NSpfx9XE+BrGkl0RUT+
ejtEAiaAdMiw9rnz0SPXiEYn/NPuyQCl/pSTOrboK38cLktookYAJ58mVfu1KjnMA4Q4TZz7YoRT
iBW5kKiH+lSO/cyQcHqVY0237tdc1YqFpp2O3ii2a09E8YgmbmPQyEzrF3O4g7H3YjoAw479vb0C
M9hP1VIivwxjDHxPDfIxGd3mRoJV1dN5s+sHLcAt+uVz+5H62s6VFFA4HdcBY9xO5HKWRjFm0BJl
p3tWIjYzE8FvhzMEaF4tt7xRfgRaXMsXjJUpBi4H/BCwmcUXzScwaAWejnQyKBkYkQbD3gv7vit7
UCFOmcJvun9Kml/DHeI2AwElikIeqYvQ/aXXduqIADiet1MZzmiNRdgsnOJ6x63XNp7/hGLOR4Ll
+mAEnS7Ut/rVQoesj2c2zV9QT/y0iRZiORxQZLJ6/q1GX2zGb6HGbMh3T9NCgX5OLgq4x5E6F3OM
65GBHyE6HXJtEQ8H8PCmhljKD6JgDBaL89ZNhdqFch6ZFy6017FYmtszBx470i0/VpVYWuNIiKmX
CAGO3qqzNcZPWRRVvXIiY7NO2qsCUXuSxG82jjXtGSo27CJSZXd3msnHyBo+iGDnMM5Ml5KYMiF2
VgpWXrhn/9oDjMnXbNvc62qkL3kwyFqI71MWJkv6LmRRLLY0Y/g/VrgfdB/K8NCc7OMaXPtyrv3W
qU+WrnvIRMuQxbTsQrvuidxYB8t+3PCZixPYyR8NvfqeiK7hlzpWb5N+0SPd/DW7+koeAi86Cis1
JBoef8sak19goJ/jtPOXgCyfnf8ZlPFjPaX6pdVECc5QbUl/i8Nq88l1AifvYo9Tz/ssna7twnOl
CTzGDMeCfNMujooWr0sVEGARqB2472sODHHoDHYqQrzMI7pEgmh/NMPbZB7ruAzghpXwuzagc2D2
sTxkbhFITmQFcnRbnRjAcaf60jasp8YzgXvIwpe7hzp2sdVKNljE8hD27dT09trh84thQ+flokLL
xVNmgpMgnROoTeQAepQTesUkuLo58AZBxvxiReueAKoOrQ+/nWC7TVz+G2zdjEGiZDfy8Ou/757Q
YPnNxoxV7MtoiKiQFRSA5Z1/xxJe9kd7HpiT1TzyXJUTZLMRdsGxw6Sk2yLTAapDCjWQGWrPEaiN
Wdhew+7v5dbA4fpVGHzraIWlhQEXaliTgR5L0AyRkhtsAdcL9a31EP2f7wkG4xuHFIMZV0eG19wo
j5J6vDmEVzYUK7P2019aWsAjopPYSvH+/qUaOruowvyAOf1dRzdzi2PKN8/XYIrHjelsdgYcxYFG
DumQPmDXLfrr5K7tunEBsqNd9jYnIWC4NBiznWAS/4dlzdXSvmdUg7OefHVD42hb4gEaud80AysP
gijhBSJmNnFKFdJsJBPNFKJ+RH8tcMijez4/FZBJHrqhobMMQDQfqEK/8a19D21MLoN+eRnw+HAS
sLZgo4ip2T87wgbeoKld2JswQpiL6u5xDGFtlj9XL+HxOLInH4XdTT3pjwda+gkWXj80oUJGrC1u
UfOXaPFrZYrm+O587ifPnJJrNluHXbYJZ327L/wnRX22Fo9yYfYAlzWOkzH5FglePIJMDN3rdMg8
1PiTVkyJ3eF97sCcwQ7krtYGRPuUi7cJq0tyE9t56nKaFs7zBpgx41Vd3e3Fxt5n82vjhrx6RHQj
nwybGeti3e4/Dv4Do8CZGEy0EdZyhU0oswhiSiuC/DBHAOKBlAp8k0mGbqtPVa/F6ZOkp9WiIA7b
d5ui7ZsuNgkVNJo8CMUYx5rgiU95Y/iIxzXLu/acge9O8gATQE93n4+0ZRaiYnnL6+c4f4a/kxw3
shhUmO2ICT22GQN0zrtQfukUypIzUQ4UFiB7CS6rvKMJqxenS3TE9cVuebDaTVhWPUv/WISMnFl/
uFXlU40+WIBliUTZRwvDJ+In1/OJV/ytkFbZbFYUqoQfu+ztP/CYLBi62qNyAvPGfNH/ho8Twk4O
xXEpNWKt18Ho7GOz/URzsJ9qNoWKq0RpCiDOmo19gazBsJ64AMT7lyD+kLptkjepB2r+6QmS5LkA
jtJBhWamU68k4MnL+xLrpZKqHurUZOmnPYqqP+cyWxwgZykDya97vvSd2FeL1SL2StBuG2H3/463
Rz9G8xIo942I5zrU0WuBH2TQ7xuCLo3HdRf/5ggnqb6gIv5QiauIEdrj/fFejKjE6va0L1FIte7B
MdtmuqBsgV2pGd8oRBYlhUT6JY+ljqgClKicTXfW5B2oLwRCm4eMdq6DZN3aw6fBsPRj5nymJGpx
SagLQpNAqw2Sydxsc/y3zuS1+O8oxl0hAyKeGsGyjH4FT0fPriazYom75PlNEhE9VLa5IBMMmbF6
2VI/SBHPGI9/ef3JkDQXkizupEO4hw8V/YjKvWXgKKJvf6xKCxy7l3Drtn8DsoffgnUtN2ZvqLWG
yfhtCjRJ+DgKVOzmqLLtlFeR8FYXWhfjLmqO4stbSO87HZVWxYkY4BwF5FQono8d6GFuCcqdg1zP
ZNVzx9J7Zo7UNUALN3OnLFF60NScHVRKdd/xjghIrL7raeUtKZeebM1Z5ewY+YQx1ef98cKyeUK9
4SkXDS7QeB9QhMcl+vzvPTVOc7VmCotmQ4Zh2+YQDHPRVMoPZdcLfxsQljXabVvpWncQHBm6j0lo
x4s9seP1xfsMm39n0Vgh6Pvfzdkzz6Gh9qctI8q7N0TVW0HC8dPOYPRVNUa5yraho6gst6mtF69j
w8aF9bqhcfsNx3SQuS8SSgpr4oX1TZIdGKZiD0wWPXk/9aX3f5CgHdQb66S9i+IdRCWxRe4NTdPR
biA4zY5EVq9ph+cNzFXoxtr7REkJLejzgC8IXSDeqOtNb8FnIv10T6PscEuYFyxGN6dQn8xKpPC1
orXQCG3EYzYkfo7xjaGgbciUtTUZyEbpt4H+Zn9/WtxfFMt1hfaI0eCsiRi0OD0ee58Dky87oD+Q
O25yHUWchMv4EresBWzXTERWbgKxRjbKyJiI6LWaJ+Jb83eOkwPIJNysOtZe2h3SmdBoXwUdNQ4L
JtFux2J7WdsUDjb7HKrFM6+t4msD1fxmECfZ2KAzXW3slAfcWKUTHhvJZiljTInmUUDdYi59G95L
8XW4iQBB58/w7eXAC0qZESnfCn/zN5MQQ5r7Wmu1gRwV6TleXeGNoRlTAJF+DSF99Pc+bezY92g+
cq84ld59GUXQ6CwvUcNO7eK2PqFfPko2bPdVmrFY0cNP9Kt1LUwJAE+3KSAy4AiMLIgcV769q7tS
kgXwz0scUbkSXgZIu+hoN05mrpQHnSdtygI9+tUQKZacGZc8MSobP7EuB+3lJkhuQJdxH6f0gPGr
pVLdfImHr9IelrSC4kiKBiQjIagrHY9Eig7kFaCdBBFJOT0kwgYfTdJhL4nVBTYAiQuJ/AlZhjdl
+rWxAjpHuoeB9OrDc7eOTyMg5rTc2evb5u6gnEv8alB1baT1K1m4asDScvvpfhDHjSyoM4FR/cbc
4ysmJCyBCLkKopf/sziKOnLMdIw76fqVVMVYuscJywvSGMX7qYPKpN9zAhaS22ZNJniEVKKd5bs5
iRWVqvqVOhY5anFp8jl+22y6aG22EZaCH6HeyXbR+JAJC5orRukHunkOzUdGIavg7mJ/j6Qm22pj
GdkuI0XzIvUxJTlqXDRslQCG1X/m6I/hJddKfgKIubt+rhflbgyqmPzq5gjxkqVhSiDmzgt9cGnR
ykaqposPBPdHgimM0J+tes/4OT26DgwdDAJvVh4mIHpvu5B30TP7bGmIDUGrWh9Tki95wmsluvs5
MOCU8Wo+6DpmSXqGR7JMNl1Cogpkx0nlYjVZCUfyuH6lFFgejZMN83SxzKqV/+a6wph+o7fsC9gk
q45BtqfohML+U+4TgRNyyrurd9xaEIpvfUYF82y9h97l/bo3lANTPLo4V6ISjx6DdGEVgAcuB0fs
3u+vn8/uevlV3ESdnKHtD+1VGeYrtj98ytcUxeQtNXds0lu/Z9HjUBANPjsC+kpzUBKe2iG2CXfv
o/UkoYzhzA5LzuNcLTETMLAQKNZWN7JS3XnfTAq2OFZarJ9TPngCpoW5hv2pMkiogmQ/FrPFY3mZ
3hshqgFfy0YI4nQmBvBsm4F/2wikmnT7m3ygmsJ9JztEtV4lE6Y31zoeV+iRzAawSrT79Lt7VEu5
Dx7vnnTj1HuxBmlUDR3451090RXqrJAH00CEhiTAO5+D/lgq/MNgkvDdruh1EOx5eWP87RDXw5fM
erhxi3VnETUzu+g89kU5iGYAnUJa11t++MxpewhDhAwlUMRtqI5j4QwuiOQBgwCAvhnjMRRHUxg9
gAZABz+kbMZaHtYbrucnmyAvryHK8YAavx0VrFIQuReJKKCEjcN/jRCkwuVSIbBNDbH49KCnKAwr
tIk6FLZTVsTfx8PYHvKc3XVKXxlxP3o1c4p4QgTP62eogvbw3bjszxZObtvzzwCGJABHJ+j675B2
8ng2JdFxebdBUEj6FKnOmVhNXiBbhTxqwHqMXXlW7NHm+nouNfogdudEm6KQAoqzIT9rrfQaBgQw
UCttPQZ1Zj5KgI1nb9Qvf7pJbh3nrDg8X/HARREUrVPo+C7oYObFT2xjL7pE7QFUylw1jYT61InU
+yprWOUiZ5eokT0Aqxfrt6BTe0WOBPHMqkn/lOkw8yNtRFTSU2tKIcwXnqt4Aq+rvYzRF+KxEa6W
8mhcIRjfa/YWANf8mk5uZuIvM4HllNgIpJ03qSjpWmUvoOQ8XTCj3nN2+oZO+yVa8c+rNSzBqrxj
CDdeMQdhd6ujgaudj8RrtcFETIXpkRgiZnOeIFCDYtPvTeIFDiyALcb3HXGg09t9YB90wKTVeHSv
XerjnCdAMRjglRAH7eQ/oMg2o3axEc7077AZX98U8IvfmSVCODAwsQb5GWdXGVyj2ojfeQYm1pX4
8LcUA55OpS1tjAxn7NQa/DS6T7YvjrP3eImIt1WFPL5YLwvYaGLM905afiasF3VtWz3jylACaffJ
oUj+t3Vvuy/+zFRJl4RpRFDpAJ18PZW3WP5V5IK7+Onr7ayMBUUdEJoQlBP6aZwOcg89FhgTWINu
CWzoY/qgtNC3gub9vg4f+oWIY8BdHASW7GwQtr3sAuIWthYtzs41WIgKazjqejE5YOMU+lhjvrPe
S/BtLB3bmqYjAkUBZyV5+xVCNoEP6uV5PR1YZbZXRYYIrO4IB9+85NTqP0su21+9QLLjy4vfMJye
KZrZtbFeB9oh0d2Yw8YW3qKWZ11lYvkPW+3TYfjWw55FUnhzel8ugSxRm94kQ/uj7x2kHuEIAYDx
9NUdFeRwJBkgC7QnwljtM+1Fw0ce1wtSJjo0wO+eMl1LKweKzLmiAcXCj0WY5wHTvl6AAEeq9WKr
NMd0YgqZ6IxSpNkjJUxavj6FldsYfpbr9gs1/zjoxWu/3Rzeg8GHFfQrNEbJzwTxpqJP1KoTdMld
EMESEFS2xw8jxz10hC3caYofKI2KyDrdIu9lLgXQRZMUe0bIFxyKHRJpNeeu2KoP/NS2y0jMpxbX
pHhKbIK3w05tVxSm0ME8M/EllbDxJ2aKIK3dF/S+S45wZFmtx9q0NLp/ZBtoJwyiw0oxag6IvdBi
Lc2zAcO9hZs5UXhLZ21ehkP7nz9jiEIff4e649gXsGlqVP2nz1QpXYSiOFsCtRtwXXqZLqk7+O+K
zJ6XLPmOhcTjjJVrJ6SZmpGTuAxpLGmV4zO9ASgTF+XpXeOv6jNTcEDrKKEZn/MMaKBfCfdcdd6d
0cwZ/2a4V4Pt7JVI1F39PoB7o9WsWhhDHbfAaYEl2rNttUV5r5U9drQq5B3nC09tNvmD6hVrB3Jo
P6YTGnhNDCe01adcrGUANz8esER6pFGWzITxQQBIZ0qyE/WO8wfjifIdkquxcTugYddNLg1v2Jzr
FkiY+xweSt506sDWwxd2RFQT3SK5395J40qjvmhqIjhaspMuihh0+AutpAi+B/y5JbICXhOYkI8C
vRqpMz97V5luGtlGQ9AigYqDR158PHx1mVzZx9Ui8U44ThlCY4DMxLnb3X1yYIkqdbqvGVu90i0N
Yxmq2vVKw73YQW9NvO+IhD3HQztT7lZVWNlLDdCSRIAMOF8BGDZHqNFTuGGVwaudBabanLnQ9Lji
22q4zD41huEyonGkpZvDjIiZFvOi319MSJrSjBN8rRUlk1DR+9XqC63BP0gdXQfKhGjxHXste/rI
E7V92lUBS/IeDpuI4Sd+RmaWUD7yZKlYa35IAiWFu7wT8bNLexA9+Mhg8fAq6BXaOKJDB30TLRdt
5bv+1qLGV7fG3PX5AltPIgg+IboyfTiNMlMcC0hYdrz7g/Auec9jfmVkYNqPdQ/mxLDV97pUonO4
g/H/SUuXRdYuTW2lQjMgPT3ADtUitZAtUZXIaSROs9Alf6PDgUQH7Ywah+MBTBwHHst/2raisqbp
D986n6gGzAgxOmC1nesBl0BQC5M1660GsiX/XJvpe+ZTItuqoAT3yZ0GQ09y3kI0YUXEizjWDamV
wZi50NBRbbyUOlmlX2TmngbCgIt7+MCKEhzEFh9iCOoJgXZ1coUBi5fNK2UY8782YxjtGOZ6j70a
EJY3ipa5GAuvCxV19AZ0MyWbgyfCyM9toraX3KVm7ab4+yJJYtXb3wJ8HONpm2M8hnOSIUJNUKwn
F7+pN5W0JN4je8Wecxj9e62WTcu4SK+SyGp1XJaDHvKiep//0Iu+MGTDt7BNurkghQZxZHiHV1co
g5RsVV1X3AjyKo23yTEUmXgwRu2OHf4ZdrKSllZjqUkysE0Oz92lrVQs9PEHZ1cTAxBIbHnODBbw
mBk81ZLMaf9uPQ/E5dYegQulX7FvV9h55Cxf2vZroTn75mt2Bq5opoE3bWXhfRbd2C9ZmVzNJgsf
Mbfi67jzvpG/YBIN2stIbCb9vlNeUg4uDtBNXTYr0dDG1QVT+kHlmTAuSv/W/H+BYwzRzPqUd3m4
u7pN4ftn6XWcfxZoqm+TiQ+zSv63AatP3SrC8TpPTbM8Xa2xDDKiYXoywafJx0c8JUrBCp4I0kQl
D+++kln95AMHogd28+ETJoKw5e7cEgkmdaAYtmfU5a3xENLeO9TW619IxpF761ouvCoWeWkM96sS
eHx7coTJEpxIt81b2cD/ht+niMNm/dMd+LXPgZaQm8Xd17uXsvMiJQNbtWqc66LfWzVbaDbOvAeL
mGvugFBjSX7HobIKtRc15nBqo/z6f+2OfLBGsI5kQ0aSXABFHhcMAE2djXljejN6rEtr77XV+P+p
9Lxa6OEVWquT6AL2Thd6AA019kvAlBnBOH8AYgeUGaW0geWSAQwjWIVlVpcNhi//568Zs/XID4eM
fiU7RRAzVCAPk4OareEbJy8UwgoUNds/4nsWBN1/NTWlUisjWwTf/VTSAq61lGSfyTVbzxjVDO03
HC8GFv/v6MAFQP7UwtlH09txsHH9d/mBaw2/gpeKqTurWcc0CerKbA89etCSyIxsM1njaZOE9ssp
jUMTdQ1LfRBmUefywzvjgTXFlOSARm7ZzKNCUoa3lor9RNAoDfKjXwk+RUiVPp8Hzc35xHadRm69
JaS7kRPEdmazuz1BVsHJqAmWBWDWgIk6Vb5GpMKGpsyeQf+E2AzAkmn+LdNcM/lt6lDkT+tcl61n
ZcanrHRn2Fl8WL8r5lOXQEC3HugIhTRu4ILsML0HVPNDUA9N2nfyoSjlP6EECteEJjp6MQDqtxtS
QZ0HghCeQpx34u4+9rx6VNtdPSbgOiaiDqGUeG3jaTumuY4KPoUGiFPKsoRM4FR1WZl3Yj0LjieE
BknsHSiRLRabvxwp7sdqptG08xlIUs6mxYpwxgEoMT3YgyGvMdjnN3zG/CcQ/Bh1sZWuUUSICQ1G
5qPXObOGda8YKuYz2N6IbTe5raAioQ/gmDe1qkKPAGyJZPdmrsxAfzecwI8KLEppUYXlBbzS6Xxn
igRgctLxrPDUldXvo+iGYelXniVmW+uHKbNWH3DL4qN7dQvgIbs2s7anBDPNNlmitKmYhF3tphvk
PbPtYAJbINo4yCEkdyiKUUw10Y2Efjl/Nb6DFAuJUGhjUKs/bu0WuGKvUUOMsPiKyZu+kNzzmLmK
ayhJ1r8hlAOCBthM5ED+wWnRJpD4RiuCbXQu/2YCJ1j9HXH6iPUxnpuBnVHJVs2OpdSR8kLo3PiQ
uLnyS3MUSCfTzJ4j7pN57YK2lQkgwEq+KlwPC/KBOvskyXClh1ZG2jnKUjgaAKgEepGROCrZoFau
JUddbigstZF3FyqFBUQAR3NmnDfctcV5HEPlZ9UyWar7OGMW0X9Ka4vVdE8monXTWfZoiJgJu/r4
qVNdKVJ7Vvst8OLP65E8v0UXu/Yya4uIq/se3Lh3A2Nde1LIlgiHf0B6sJ034Gsb/S5/btJiTQsD
iDh2b5lPvoDyrDCoyNBKZqHXOZAEEJPUMDZt8kd2vKD+rxcstO1UqOYnDAXJkDHlDaNwapJtqQjm
bQfOxPkaoMlFZ3M4zosZsifqM/LdJebd2wFRPiPx2x+3RSMlQil5bhw7aDpoubaZpkB47sfUBTvx
BHqfFi1OfDdQm+KMv5iTI/ZUc0uuEYm6aNGttrG3uBgvTV4oQ5gXQFgyHNQVPICdsfiGLDPKXbRF
9BT9ML0yH8BBObWD2ms3bYpu567gehNG4sGlQd6FCL/qfl8N5G6NxjRFHOmZwmaguqwXNlUtLElX
Vj2pSw7nIqJMwQmhhFn9u7eJyF7GRu/T46vvbqzDJxO7zGeBfHrxN7oEdiuL0XtAAXZvUtQ8vU/Z
zIqUrJS09SUnHh1owCRdg/uTO2Jh3/Ia+cxkEx2UFiHn+esA96KEAuS2Q3TF/ZbLmAEQoVQbvyjQ
rCbnRf0uB8hrAzdud5vQC+CiDtMfL0Fvbxme0xWzYUI2g+E8Ild7NkIEnwSh2juNnFxNQlHcCgvd
X3idSBArZ3ogRNQwZzC5Q1dYf3pW5bht5Jz/d3n/NNQkQu1/FCCNm6KRUS9K/k2WJYA/Oc/yTW4+
LMp5zcaP7axA0GO5LcpJQvWnY+lZO7EoaIYXfgSwUVhtAIvTJn5r8FfV/cpcU9+IqGb93RQsMJO2
jqAJk4c1l6zuFBZjEkZ5By8MeHRuZcaSD+VqtAjiAfm0Q8/aU630LZVjwF/lQmXk+2JyFs1iePl0
KnbnUs3Ngdd1VkXG73w1Pz7BTvErDrIZbZkRcauGTEWlw9lb5vpz3HwKcIOYG+CF52yh+g2+4QVY
LELEoKAhDlp/7vvLWn+UkLq7+FyBWTZmr5oCRaCbL737DLRMroMEgErQlCHcuWHJ6ybkhUOi4e7F
HUOQi63P3XBmnxrHBFgFKOrus4tGV2ZQ5JlO2Y5oXnS8j4r0SDzXKQgfZepvMG5SL1ylPJbVZHGH
Sqk4b9fRfMTFBR5b/+BW0Eg87KlZ13mzpmp3MtfmwAsvcCwScT+IFy98Jr60VErdVTO4p1DVmriD
5awbjglIGcOvRsLFSJuk4D9xsyR/ITbVrdZ4Tr+k2IZdqcREjsn76reKGjoBr2+Skcc/rAi8eq7z
D5aMtSycwB8iHnyrIB56aW/vqBYCYiRjH8yek8OaB442VlSGgKCp5Q/bI5HNUj8Z/YXP/BdGwVOw
85LMvmZXqm33J2bTvcy2k7GHREF1S7c9/AxLZMxsvrcCcHl25t3oaCu7+LvWIHUUrP6UO1s7ly5a
kTXL3SLQdGdk8lRomrzfA46bKy3rwqdR/jYeziwU2Yyh4b18ZFGZgiinorB5aeww0NvlXg7Zdx13
vFbrVSyOgYDU7o//rovOGSPRy6RNehCQV6wX3Dku0Ilmh5uvcsU7kERvulxCPPmKcV8m7Yo6wS0/
Cl64R5vVo8b/9bV4Oyqve6q8YgXtOvi8/gVA6kAFlRn4yhtlQLlKqPYputnLeK/oftUUqV4Sw5Dz
+IOXAHe7hu8kD5mVY30by+sjHMAlVfl9uS4UmsNZv1yVNPKWeg1DSCrLXWIuBhjVFY1gzikZH02Q
SRdvLGcbzGJIOXEEebi5sbOtoW3+sJQhnsMCciVXIHbYbZNYET7XQ/lD+6+OqJ+k3flnCRIcmUjB
2IHqJcHI4Bv2K7e1jzy7/Isn9YFUPQzmAd3MxMmhelGbGIVrqT4KxL/zvBI/+7g52igtBiTO5MQB
5iiP75rYB4/ECN96FCv6xKuXAf7lgkM/ZJKogXUBkcrp9cjT52djJS4JcG19ONgnjuIuvasvi4X/
c8B4eAH66FOvnlDLkn1Cr/mzf6HglYf4UaC3Z4nQMUIaFrCC5vw5GDwBhnMo6eUZrUjqNzNJK/V4
/iZGuW8gtwBTiGRynXbvfd8wz/Ww49UsaEx9Pn2Qg4T00DSGEGBShWAxXkEivRGNjXPvJdTjMi7f
uoLFkOCdFuODORX6gyJayFvB3fgzAyk7nqPG6Ybm1NHJ7gcjS7ts1mJfz+zKEP8EQ6SqbcSLC+Cu
Rrr9zXwGpIVpYR2/tiPrcQNszT3wkw0jKcpViiuvoxZIVugVrMo5EUGK3WmlnHNh1X/FbJCgAFvd
2c6eSK1I00sqb0VBvLlrWCOHMxCOKcLtd0Vds+G9qLcSf5MdnAfsbvqjKPDct0H/1wuV4nOxf5+6
JtvEfwnGaxxkaJdZDUgiSL1z2bWFTKNrYwQL7230tIM5tS0U5ytcZtoVMWGrf32SYYHjPLiPb0Rf
rHMbWTPmHFITvp/LuJXRN1nE4sNxH2dm0JoOee6bZzPwubPnS8DiNd+nQWMc2Q8Wdlb1DC6DvAl1
uF6GMerxocBbdCHy0joHBC6m4wc1D7Snin9UIq1ooxZOZLZj7TjLLcskrxIRxzbb0BeMLUbDfrR0
kFkG4p/Ht1AZVXJmw3UnL1Cc5tjKItuAyD/id8QhkKQ/dP+bHLYWFqq4Mv3p8uuZB095CgzVmM1b
LEx9M17i+4yXsGZqTOLk9vdEPiqUmNXdKwSph4zK4GfH3xK6PsVwtwC9DTTHPsEW19o1FHj8KORk
y5wM80GglTJCtfDHvGAegSYztOg8UhZJIjhmeYQCgU18Gi6MLbKzd+6ttgQMpfzyZeyAG2HMkGOT
RPIky8SIYxdm6550FycbJ+m3qRC+5FY/4GGTuzuow4VMBGjMjmoi/9EfaCsLUV/1ky2xTN8eNoFx
yDNFmQYdSeW6k03Mv3Q/zyKA4ZEFJyPlqlRKxGxViy589hPClL2WyC/I3RPj99lurLAgUKd+8Uzy
T283YjVcYK566EBQ63rEknjopNbrs/9M9vv4BwEmC2LGSa8CZSfZ7Yam87OjqYYxAA9Zu1PIVucf
tJDttxHnn02AaZC6oIlFEX6cjU2Gu3+PJ3j7bCRlPlTq+2OUmkqQTMlIkNm4WmOyfk9LturqXoK3
ZGb+OEj96pRxI2o3Ef+84WhONjNsExsM7T0gzChKlGNvhvl5QsLqa5fx90ImB15eNOaqwnO8W37l
QoGKFBd3cGt0StRs0fjuonA0JufAz5AdYmURbDg0Dn35iYO14tqZPWpH8kv1vR1Zt/GTn79/HWae
Euqjpi6xYWUi47NaYNA2No7ZjAnbfUi0XYvS//Bk2oAk8zkt/Fu7ci1ksInDrdxYuTnU13SQ/zUg
Zxa3AvzwZAdUOEU2nNMyffe+dbRihWDSAonxnkYX12rKXWQZF4XMQKMglodgbITuY2LO83NWGZgK
mq8HGYFMs7nnnC6sQZSQhnZf5YCrnp1r+L5T0fUZL2bfqaQgcRKYvtk9o1TGOwC33vb9g7jpesLx
18k5rDcFJ34VA7P1GmBEDByz2ziAAB+LSf5DPEy7SVyJXQ6QDg9J+Y5rYh90SGkeMPMGrnp+r7Ou
P8Fma+1hMMe+LiZtet6QDFBsSlVm54K7WO46uze+Cq0blcfGhJLFcNfoW9NJlT0blpy/5KwWyeC7
CriQNgSnILNfaqI8R5AtjEntIj5/Xi303Vih4J490k6G1SzAWI6pU6PZb9zQAPggfAcJBARbt1oT
xXcQM+xE0FjBKKp/74mTL7ycmNz21/iMGt1yR9MGTdKwbMzIeT7nosBRJiiCFXgd8hvGipz59j8C
NUTHmeOl8fl/gnhy50vvoTRwFWOWyEwHajJ0riIYGJCutrJpHCImhtigYx7s+PKzebGGqlRk4uHN
WzAsFPwbwJbynBog6tid2Sr23TEJtArcy3WmuaGxe+iKHHweeS8OsY27Za//YYx7+6MwfDHaXdm6
+qbWPaLAAKiKxgNo31ZYcAtfapfqiWybAlRmAzaJ9eR/K8mPllznA4RfAi/KkNcAD7GL5t0lqX8g
6FLM6O93uYDop8vd6WeezzPNL9dWu99lgFx6jxVbJPyykryxPCWSwNcmAKm0fT2Ivtjf3kekHRzv
A0KT26pXTsjMWTDsA7ksmsu+9ugKBIj54SVDW7PNWEGWjf9WnNViZSKZR6sYRSJmQxSCA+WIPK8q
JyMXCn0oTFv/reJE5YwrFLC4z9Mu18ZfZlyLghy+MINfk4UhRZV2aEOordfz/Srgytmi3xlsU6sX
Gom4rHwD7vtCJ1DAmXCeBymuauQSngtlp2CeBxMFjBEfRtTl52NPPxkNV09fp+Xvi8LBc5Fuh2uC
haidU3/ne9dRkTlCRrDvb9XLRHMvy2gF7pCAJyYylQJ2NIKZF2GOsNMJhqddzcYbqmWf2TLwdUmJ
kMudWmvkAoFnBYt2qV9PNrJwh5bOVMIqYpQIxN3Y21iRbaArrs8Tydnjq/3vsbVg186OBxRc7xH0
M01y6hnUAY6GUNn3FKNfMCabP97v1xPK5haoFZh5mJGuuJG4KZprE5WQ0HO5/zXh/+cDYZLd8UXT
+GpT5k6+nw8jK8pEwwmk59LvXTdQSgawkB0T3C/FZjyyk92HQ1gagQDNqHmeoTf+qGmrQRpUCDVZ
wYYML0D/hTLmLc6ll01d7fiom/DT6pGx3pTs2APNeEHEeMZghdEXXkjdwtTj2er69t/mW05gL+Os
IVqZ9G1rAlDhlO/UJOupcTqxaOMpjF919rbynWuzvyNNImaWfUjb9Y6Znju8gFvdkpZ+ILnyx6SV
MMbyD223TBeMq3RyQLohCaSbwIPTGTAXoq+KeJXGM4vm0Cz44kauePa6ZTImH7bW/wVs1SS6+pkb
/bBUwuhprlMWRRXK9aAfqT6BsVGLcB1XcCGQCmjg8I9bgsIutf8+Auc+BLt6YqV19BNTmIu/bxSQ
yjBc0Qr50E6D5E2VWOLu5IhdhypOcoFkY2Ff9d7vrbdco+9vUMZWrNQjN5fAJpJRJ2jDf1HZv6Jx
Ukhv7NWUpRLKIt6qEMDeFgb9pOqJLxPc+P31tg5mwJZPe3sMz/lKEOUYz6/GiqRXlj4lDa9O5Fu4
e4ymS887FC2/gyzLHAIxTGCy/tPq9cMJkCl+H1bl2QfJcMxr7wPQ8l/cURed5zYhJYajpn/TjtBI
GfL+1dEyt+YxIGRcQ5APwJHvl344Zlsj1YfcUwyiKNiTinc4aq3Cf1calL9HOTfL+RqCRGVL2YSO
vV9NeM7YnaFeEIw/SArIZ8dOb327i8oV+nrnJ5nTjhg6oBET3FY43yjMoN4QvKpwq3lV8iWk+iAg
1ylENVTAgUMvsRhSGzmmNdmeMJOzo9Qd3MvOVwUaOkciOENTZ62gfZ7FofAycE1SMHr5j48k4UP5
2xwG2i9Ju677mgSe6JqDgGQWeVvN5eGgKi/m83RoU+krIJpAabnfj0DICdF3q2VWHAmZTsipMpd7
49mWhY11yDpLAexCKCBH4RVc8jin9bCCG02jNe9zyfhmRJCT+gQu4pDirU1Up7AM83YBbPriThii
ZSmPs/cifUNa88ztZkLgoyQ2ZBlR+VXJgrQpOibTNBJUOliEUWGaqEfYdBE2jH9Qa+pCFMrFp71z
YBSbIJdQUOom0p18Pq/faU2sXYJCpMM3myksGVt26P/15d+UGGtUPtC2FU6W2aXSMWbc2Q66rg2j
rPbZZ98O7wHCQkUqbcxoyHWu5SkSHHlMpYCVlpWDXdI2ytW9+6SpYQZyhWaJSRuTQfByoTwMa925
iGG8Hu0I8CQUkYifT4zTi2wcchKxuD0Bcg84/qHsnrtZkex0b75S93qeMeKm8Q+j4VBgnJaslWVi
eBhN9GU3DkL6JGk1Vaz6U1tGHp8xzgg5MlbEMAYAhhltGyFqM0cMrRGRW7bGlaD2xzLyHxIP9Hkq
Tcy7v9X1Zp0usr5CXnxHC/7sBOtUUZtH5FibIuNXPYZG8THr0LYs+5sxxs8rzwVZxe7H3ezCW9mV
5vDtNJEqiDSbEpdM9B5ZW6pJFxF1Lq6vzuqPoE10fDActF4TrMCb0FEa+X43MMEqo91nSL1LGa31
3wi2qob/kbwPBrv1nwpNtB/hToiIqVRHYNgWng+c2h5ivQs8j5fhUoSzv1aQscZCasnyC3rLIS0B
6In2mm47YPwtA87eaSV9sa0c251sMgLCgvpbCI0UVoPr81GJeXf2DVoY9+o+hTAMwZ7aSwypaye9
Q2Pg+CN1KIGad8MHR0ZRoGuc8xVCSOWnYXpb/ONyk8n3Tys9xA3eG7HBXdRzX25oUJiBIm/NMap5
VGih1dV+TBqqdcif9i12JmD/aRp/3lfTZ+AjCbyTG2zBp08d3vZycNjNKeQcR/8VynBC0de9T5Jn
USQlkT620G0FW+LJMOlTgqrZkOnLVH/QF9AFV7VxfdJK45c+dGED3eOqk/5/3whIVMjZbTl7+KJc
EzgC5mzzaAD9gLgEa90CBAk/Bgr3YafHleIwl0H2Insp1rKov+6GcjqcXaMvA69zMBaGynGeSNTI
rYxAV2g2ZR+gn31NdrSSZ9RgawYO4hZtkZE9azwtkCu2IIqGRBt18kDXrWPGFG7LrVwctxKF7giG
mU0UQei7f4u01wX2Xu5HhM3F1CtGoKTskm0X8pWUaSPUpiguZUkJN9WJg1XHlhHgv1jFtiD9zbzX
korPUjMdV4aU1ogo4xVRaapoaDWE7krFCrdZLh6SakDeJrbc8eCuSUiB2TovQf/WoEH/6qtk4y2l
+svsY/job5JdBM3ZAClTdCa6C3KhDMkPkFWgy22a9q4O7/GoB9OF5FrcJgl26i5ofw9/eeNqnx0S
noAlrYB0vu2Oy79u/T3oYV/cW004CDZ8F24ZrMnijHyLK1ey8PNDk0TwE/eeCWrL8OQfiYZPhss0
2dADZY/wB8FmEh+Bl2p7PLYMmENXuzh/XyFqfVwbR8J5Bsyp9yajHHIF5PV/qzNEE9DeKSs9T/re
RYpigCTDk1Qwv8qmkuQGTDt+R1uf5Ss3te2LAsAH/nED3Swb6whtg4RsjyIrIXlW5nBkD0AaEWCw
oJSvRq2cpAw/+jULVTY8/r85l6Y4tSLrm4IgqS6/+fEE/o9isOng5a8/XgI/7nQe8TfbP5l8ydPC
hoDy3sAJiY8NaKocdRBIVSk4GSo4aEeCuJLMNshYPEtYTd+s1KYRzW//0urli0K2rNkI6NJazy6A
8xohb56+1BkRqAXCKg2ohg1a/1vL8Q8Z/MqXPkOnYSpiOUfCNoGOWcZZIghwdBD5fpN0FBdTS3mg
1pFi1+lRtxcjNP6WJLzdf9ree+3+BtRsNLiFlFz7fI7qTgapJIKqG5aMQue0f+BOp3bgqiGv9lYy
xZ+BVBBaDkRT5+uSakEnzzACEW9t6ha4KINzSHQGrL0lIiy4Q//OBlFTYYOqeN7cm38eAs73hCaW
Ctc/0WDF0eLaAHJELqCqRuTsRifC7KES8bm5oQNYCvZDQvhkNd6EHW3PACdxEIRbDOrDF+EpoDeV
Ulsor0K4o3jS0siFL3lah4SynsInYku8TLeLWUGy3XaVY5PCyye4KMHzzH9Lt3zOlPAdHr5Tt/1j
wTRE9aWVbfcfQ6v7aEBfk0hmQtVHgCZmotx+T0g40EK5Mby6eEqSqBGqQ4FPF+MkKPFvVe9Mvby3
AHtKiE5pT/7+CdHFvTkIhKfZNB11qDCC9luf1fmfSopSJ7hWFTBcBeBLeO8HTdrifDkwtNUF4A1c
uiAJx6R2h4saiR8WXtt8hLQM3NoNL/O4xnDGtYWFbbuyw9bQAGsFr0Uod7s2pF28V6Wg/+A5sF1E
tKRxEMLLmTjo5giXAe6ngtilxrd+fnuQNYWV7Rm5HfyCcKNVdlN/x5OI7hkqOeJsG2Rdmxd1eTtA
QXK3+F0jeL8KybxP46pKWrelp9N7FIxeDvOWPWISGVWvX+BanQODcwBojktDHMbjP08cqd2db6Kf
T8Dw52Efo9/UA2sn8LhXYTqQDiSs5OlTuMkH2MXtBjKIySfFMOb7EJmjWLRtK8x9kXUK1SvRiEgD
H2apjdMdXBHO3Tu7ZHSv7HsL/znE4E3Jq/uGr3EoeWXEmxTUDq9D9JuaxK1YjC2gcabFSYxykCQU
XAA4dpmP/ZgKmEsor0bC6EtCBXUP4KF+WTZ6mnIhHHvrsDyDB3fzq9cE+Qg6MXmL1sYe7InKZ1Cv
cUyjMNZ5fjbu18+9TyasK74SXaxMeOhrfDigHdZFyQmKUrfPwbCaFwzH4oBBxLBxkflPmo2P1POy
/yjfUrrcRf35nqjcDGnFGchxBQSKBpGZe7tmBM/DRNT2PI2iLPjcGB9G9KZvcBA5guvZIiY1mI/p
bljZdZscn6lLCKAfteRvA754+Gj7DxsNrRTTyvdJxQKbG/Wb31NNRPr1qONSJq4hDN0mi4nNElhc
C5Z7J3xhhXC73gVjXiRpQRqNaCmtozOe+i1G8qmHrrwTQGXdLKF5koIBsMQ78hDyj8pwIfbbw9/c
peD67I3GAKg831S2mRQj56yesDVk/G+Rn3tbCM0R8HtXhEOnRzXLJgwb7BOuRuxZuL84q1DhBK49
01AZTGfLJmtgCKRTLxQDe5sK5IXEtV/07NgajQeDDNX3vREv1p59cUIaSTemY4474EFkEsUjAbW8
p2mWUSj9FJgjpXixp2zy8QEb/8CaR4wM+TW/V2IciCavalvKVAl51I1TK8HcTtw2ghcy508Q6OKo
7bZGlJHnOYu1fP/Pe5dH3dg/sVB/VDlsiPYBWj5Fmeu6HE0X0D8kcJ9pekn6S8TAJVvARhQ5Bzyh
DttPmyBCmTYL4ziRpX8M/lwX+nqRWZjw8Gh4zFybyOO/iu5wv7wpVABAD+Ylj4cFGIwaqwyiLIm+
+PGnR8cwtxF0Kw+hoVnLdEAFpxj+o/IOYAm0BL/aLGB6mB3V05aHbkd8037r+0t6IGp1YGC2/I5D
czvKTCp6Fn+YTh/VwSUnYrObL8ihH7nuJuKFcnze8R38yhejBqiHYXhAt5HZUg6AN5frI9/3A97j
Z4koiXibPlhjxa1v/dzD394+OC657DRnu2Xfrkt+wtvAYo9dcKpXd9THMshxcsUsyKM0I4s5hW2v
qWUG5G1kO372GTkexFXPyotXqjSekwQsYzC+S5mLQbVcWBrKEsGKHFcps7LRcVUUBZ3/DlHYSCR8
ipZwlGhLh4ToRAvMX5aTmFISL5huNU8taqAvVRAMZtdqi//RkyP1smh/Wh2v54xiiubyfBhbJrrD
KyRsL5mSl/V0Wi1MgPrulQIRgmzf7OnbILv9rWAr/Fc1MmK2UnGBwmAd16uex52cv8a2Tz2RhmQ4
1Ggq08KL1qza9aPE7qSiKAyCpmfKho3/j6GbdXyCVkYxTmr1BLDGVXNxbFWRHHRdfl1k+sHdVUJZ
ddHDs4o7PBMuM2ZDjIpupzhior192XE0hDWuuWHxC5Wnr5IsTzNtzcvICtrTEq2YME47vLbrAjrh
/jiMnVOovOGDQg5GgNx+QHBU1dB389yedOiXPtbvd85nDpMm3cSSh3pyiYWp6PAZpr9kp1Sqem0N
nch/j9xuaol2H8XGMV2XmNX4iKrBCHq91XwxLaitRiTj0wArA/1T8MR88JzFcgRAUerxnQZZWtsL
UuemvGSf8VA3fOUG8ru0OVBAcQTJ085ink3vh4lc9HAdbaY7AUY6gNjIYdTcEQTgRVVNxS5/7ohL
KVAy+y4gtIMIkX1fm3KYV1K21vyU450ri3y032un6+jpkO+fwsxwtlnBj5OTAXJgduPqiGvWh1vM
lfb1PNbFaVxJ0wCgA2BCw1aHTf6U7mTJY6RiLv/+P4iwUgcOizDQEeSKcwrsJSaN+jhras9cM0yt
/v3A1wdyEYz13UM3s9ytELjOxQ8XswP22N9Y6LwNc3JiX4lQTjsAhSNwzggiQcPaq/QseAQqbuMN
xeq5zDN1YbFI9impru2KMF1byGgPWNyG4DO1gqRn6a8IDsa1kM3pRW9EDQCIhyszLqWVuRSgZq9q
I90oLnzPTrK6Mad12kWZF2S85L1wCQI5yGNBsrbHg/GUlqgasiQcKog4dHIbAzUkf0giZWWsCQJt
M8hd3ktPJWRbKvBS/cNnWN5qGSYUIsBfqdBTEw1aUD76JwJGo+7uNjY5qSSWVnbNRmia9Ofxi7Z0
QuclspSkDsXGvJAuzKbot0rI0/sUsMm5FZyRfB8XLHYK8anLjf8YXKMbH6JCp220vE3i9BcVrIfJ
JtaCoT6WaWMh6RGiqwwfFlDWjutHBGzik2nBYMIX/CwUodDxSjUkl+uOVsR2vS2PTQ8oRKSmiUJf
MUDag/aRk7xgq33dR0aWK10tgIRMOe504+mFsKUTJmgUUhclC/RiS+I+A0DLgxTSrXH1HQPC94z+
7XuYgpEWcWfOlJZcAhu2kIHv8geis1YiTD1RmHGIaje8iPPAw2mE4gem/zDdd7IKicZRmfVCc/TB
6+JqYJkwwl2Q2lU0E04PFTsjrlyfBS9zY2balKYcSZ9ibtCL2aH9rTq7DpWQdAEl6sS0ppy+bnTp
Ye4e8xPVhh38vk8/edlD0b44cbuqnH0f92pAYpBtIA+jIZXmxaKvynYXqkse980Eso5bGq0EZ2it
2yqEDoU0YCQ1ygD8XooVnK5nB4kSXwDmtcnMAW1oIs/C8wTjmLdbaynQwR914TinWYw6DfF8miMt
8uyFUgDFjeG4p1b+SxjkdXax+vfp4qvbDw5hWgEIxc1Ha4ip6BUtFyNxAznt+A01WW2Uibcq0+Y3
bId7zj3NuL0WxPPotJRlK5ge+xQ/bN3a5ErzSZSL7SjYNakUKiaKl3JoC7qrapFuP1TEpeEfyTcx
OgTXhdAQoUkoICSUNCgsBL6ltWvYEwuKACZU/c16CGYiUVU8sESCk1DKevc8rj/+ODtbLxGjjm2z
hpAdF2zDR1Ue/Lt3pBCZ1M6gTmBvsV4mxHTPUnVX5qLav+ruM2uboUaLreZiKh3I3d7/BMLNAqO6
zIJ6uFhsfVAxs72/gRYIf5rBarhIsUEOfeJubSHPcGHdY+1qUhA2ds7Ofw8/ND27BiNOcb/fDTko
v+oK/GHazGd6b0Fz+QHcUBmT5ye1X1Tg6LWlKH1mJKmQdLtAkLQDdXJxrzVjiWxb5+Q7hFq6c3Hg
bwfP3gr28P0CJxeYM8JLo6uhk9BkQkrEdp0nltaAXaUu8n2gZaPELkdAbtM3ZiP9JQCCncVmh4SY
4nsivew+Btn3AtpC7bK2rvB7/orbK1JI/tdzzhSVpKIrEMfdqk/moZcycZ1o40C1QEscuS8MPTkt
E1J0+A7OgVgwk4mYrEJhu4CeQoxcTDiicvR9pGWME6IanW/rxdA+Af22vsX4YhzFNRcmkaltTErf
lYCTF4O6TvpzzvdDRAumP3jcmZr2QlaK0n6n2U4qECxBcf5e2yh1ifDEIiE/Eevf7rxqGhMVnc/Z
iODGf2tBltW3h6NDpqU1KZplA9TmWisWJnU5UvHlReWBhdg9zB5+eyTgjBRQj/MS1zzQcNKTxlmq
CzaLeeuhHLeu/xp04GrtBpdbz9TI4PpVJYAwSBW48PHZuTNsjlFlt3Y526FiP+r/MRib2GHsOCD3
iwvm1WTn/s0Lqu/96IumXTJMGS9WFdHtc+eYhWYplHUx1z0dhHWgCDhOKAAIDSCg2fuP2FMUDGkT
POVd5d22D+ZKMHy6SFWHEOjNZo3sJWDqRYQrG8mh7f2RF7klr0+K61SlPGNsBRm2E5NKBaFc3hQG
o/lInMA2PvxzB7v5CuSG10I0mHGwy0e/gbLKamon5HsLgeNU6Y0eeMlraosQIGcYP1giRwjByR0p
k2kSs+ycc8VKThWlp20gsVa/hyzlxDmmf2RuYh9J/Kk7s4y4KxH47YlrziT7LmHVERDyMP1xZp0e
/HajrRtjA0Tl30D2eicktimK5Gd7/h4CEnamcQs4TUh33V5cOvxCVABLy+pseBmZzeg77woUD4rS
T+M4xRlC8nEPV1ZNp3wnH4HhYFJ5RfciySoHiany0CKpUocKurxcmuo92ugtzNzmTc12Yis7t2ru
5OldkWIICOzNJe6DlqFBulVoRH8CcJnEe/JiMPwKQmxk2IEIdBuEJkDLj7sUmIa/lzJJUqiEsMw7
VTD54IeIoOipbXxlmecNyDvUlbV97PQfFI5KNYOWkvs6lPNJoHvF2Q5iT613K37UizGPgbCQLS0w
Xz6QArUou6yoixSbkncIzp2pNmdO/7BbV2o0FTz3xYFIyc7T1VvQhDWOqrK8ByBV+ehu045C3ytV
lalYRAHfKcMnZ8tAK1S9u1GttM2TlvAjMagAs8Fgz41ojFCslFzqnnHj6wP6s6c4U8px1LR+sbYu
nTXsJBjbTpAq1ZXFd5DHJ5cm2OyD1GNQJdtttQFwP+3AT4hRw/ja7ImmgYQobLHsPAb9bqQa75FU
ZaCICjk0cOFo7VIVNKq0maI0YFEaKrk70795ZMNYdoZAzi9O87F/gzcIuJkbajc7vsS34B823XUB
rndT3dKwGZIxcdrBKbQJ+38qqBPc4pzSrN7GbJmKMuc9kaDWYgsZ/aEvobqZsaVRDuv5DC38X1sv
IPZ8x8WMf3yoex6MwJUf8hRvijhpqwTSFEn/D8I9KavpPNYItOWqY8JMNjmbPIogmd+ztA0/284N
ZfHhN492bDOpbb55W8MUBeNB0WacILNSMKccLZt0pbL9wpb+mhmY8HAJ412vjgGUcv1wXIQG6J+D
LT4JdFyN5oPZpLUsoayGEk6TOT2v6tmpRyJACoSjmztgbCZkeFqpa6gGRS0bz1TjwgABTu7aOQVL
gfhdItVFX3mNyMQBO4Ye74IKxow0NqTmmOgtuJTXUyvA348BYQ4LwwWefReud7C9P68BS7/vbhDn
xLRBdnMlLerePpGuwCege/F3PVqQOxwV8kTiPFDUjlKx8p0u4pyWZXzbvFK/z0MUkvmhdsqx9knG
uek3AG9LElVrNXs2HP82FzAL2kyU7c23I450RGoUnDiAd2LU4La6VxN9K3USQtkKpvW2GJ/8yOH2
QcHehITukb99GJ5jxXE8SB9uoMRDfAEc5bWInjQvKhtvmZ3BV6mkDDS2+jZYl51CesrEl3/yI0MS
pHnmuAui1PwWyoKd+Qj2MHVDELD99L7DsKLQaOZqR+4OohVw1jELvaheSFaor+1oRz35cpi9aBGd
G4lHJ77myy8NUTzDm2f5Pnb7hmKOKiZvqrC4QoGeUyE3aS0AaJexc3HBYKS3i/lJC8Z9xQsApKq/
AEy9Z1Lu3tCNbGGdVwWRCEzdGWluPRFsac0Ofe0hHeVvUVWda5gH+QFbz/D/tSbCoAmRKOxn4BlW
Qjd2IEp2V/63epbTAk1RHQcJNzSxxuKdwnCaTMVADuSVUoaAqONRN0BmohVBuA9MbgrwEPO/wLne
cVv8KwBN9OKVJhcsoTKC41uMODtacafbr0PIJcnetyRkptv4Rt5vcGmkJQccSVbBV+dr/Fa5d1tJ
gfRgD+2KDJNdNK/5JjyE+c9KgUPUutHS9uTT8o1stsMa0MZmh6pua7afTjHerOcAXANkaGDejEYK
gSNtKhzuhTBRETOLBh8HFzk/zLqdufUtKsm3Iafu9jKF+zbsRnNWrxih8K1vFkzjzlcymaL6+BBC
ML/oqXs2c/oHwmOf1AmBTplTCszubvLz9QvNItkbvNDR4lbJBe0DVVU4hFPs44PIjttV/zrGtRZV
qmt/cXYnvu48MWyzRiIyHiykLwh8waI7EJKdUSYUuymflRTrHLNduy9sb6wIDIpgqCONn3jvMo9Q
bWBOZ+2/yXQcn5gAwd6EjsnHoTCxy+gekxRI+PFXMX8posoWdGfhc5jCb/JiHPj28nplBxBie3PO
lJYO/4l3Z959A+kfFFJ8Arlzn/Oa+nSEPndR3oT/oscBgKe3ljbx++y819SLEkSedJhowApqfvIo
y2msGvBbDf1LrG6RckiMulw0eR3IxtegygIp8eXwE24cphMhjfooRpg299acQ+pP4hA0SkBwu3u2
DNH6XIx7+DguBQMTeq4gbZDybVzO+7GuFrsPraNIMees59PGoqj/NXUkodn4kMfyi2ZPy6rDiabh
BZ0t2J9Xqc4jLFZM2HHrmHAM5gg3FXNMeseFJEe1lETxcSsGhGBRIQAQ6LrKbFgXivAu9+/B5Kx6
SI7t/OHWDXEJpQKDu/GnLJKWB36+8fkvu7u+QXwcf60xZ237tBmBodJtlC1DttfyRE1LfRv8/xJs
/A9J1VHEOrSjj2vNlwBXbbENCbtu+47gnsZNexJXsLZblbRtX9337K6IyLsgwUFBi/iCBGtSxPIJ
Q42CsjNLsd0W4iI4bHXS+b0vC5E3ahfXRkIKDOZOADQ0Ir2dEDdZS+dhVFBcypvqqNFuqaiRUyzO
o0Z/O+P7zuZ5ONc0DAEYTJJ8HQ8V8GbYUK6aRNRBHeYFMWn60uDQBMiq4zgiFklZDCIeheiY2SaL
GmhYgEBETfCMUDtoyxQwLjc1ETmxOGzgtT0ADU5iLO264yZu4FuqqPzPoMdUnUZterK3MJgmXf+a
r/AzVnKNSdKsLB3BjWGOB61x3k0TEKFLKBUU7rXTb716aZbmiLCPQmz9nv5yi+TagfQvWoIJ6Hqk
TlomPkXRoK59byPFAXGd0StBRLvWDP+QSHO5tiQERfpeD7hhSDgXySWqHt+RYf9yqrx2wuVRdCYW
dQ8SzHicfQWxi2e0BEgOAwrVxLNYUMLbMwJbY7NXzQLuFA2zp/gXeaaFrBhVNaVQBmOxiNL1dkNu
jz4NnVyHo1snvySrLJf4XnPw3707dsJLAwVX/vEVTMV4tDLW3sBnSokuJgOp+n6B/z1yDJWXlqut
0vfgYWCrs9O+vss3r3BgIXonyxw6vU1hSBHJguiE6vZRVCGHHCcRs55xtPRS153y8LmZcNkQbKha
/HAtYZynVG8E7YvY0RYNoP84Mqi49BmYUoBo6y+xldasnPkuvjjOM79h0cN0ZO1OCitCa9yRdIBp
2kXwe4nq1uYnkSVZxcjcttmStJk1RMkI1VJMoi5FcDbTREnrCOZ1h1J+/epi292MXq7XSP7vvHxt
YL5No44OwxZgy+nQtbWEOO93Nh/aGco/lWvK4jZEO7jpi+p/if4MJd5oPusnIpKVg0bEppk0+LI3
AASg29hqh+N6F0yEMqIW5N2tL6yAv8UfqppFH9+syOf4aF92hVn3SGQ1D9JmcanXw9ri8ptn0+Vy
sJTDpx44jErbDa/BYIFfsxPdBh/85ePdvkafTqY4kxvIEZKfcUHRwyIFVxsVFJxvZ93ibGAvD6d0
sQTnCt/oQdo6mTMXBKEIC2XT09zUDh7Xy0nWV//GpsU1JeRg/ZXvFju3LLbdyHCaqQk3S6zyWN5Y
WUVm8ZluFZl3V20EriXya6qCTysBtKiv4JPUC3YjxeoBAuSl8cf/bLg4X+pC86a3pMWjBsA1bWUM
8humrLQLBv6uMtfcXvIR3jKmFN47jdwkCPlIy1wZUhIWRjfia1AcsmAKJIjyRBGFFaKHTAlgABl3
r5Ye7svCd01mxsJUDjQaJu8dWxFoEBeOJh5eHsVbd2VFjmGhhKkWIM2mH0lTe9iQB3bB+/iN6Ryu
NtyhORwK8YpPlCw2yOV2f3Y9ACeEFjkaSVFCX8OqD1dVtILqX8QvGvB+kT2WfEbxtZJINF/s9QMb
X3WeJy3c0kP1ZK9nqr5nzX/LCzoEXGPWJ9Ru9L09Z3I+r3fBStV1DRGiZFGpbxGFe/Fp9AyvE24A
eTG2L+TpnzuTvumTX0tKjZHRCzzORUrNqgHA1ZCPJoT9b/hZ3jCpNE4Wjw3vhF60/udYIliUc8A2
lWB7uaHyMPQXagUBcU9y2AT4zuLuNShc9Om39qIkcEPZE4YyhlAE96RoSyuZA3Veakijq2/EZtlq
N0Q0hXdMVWq3ReHBkAbOCZ8QG4t3MNF4xgDHtEnBuJN6pO/hOIByEMwipHLdhCJ1i0uFQrMKN2Hb
S/IsOtClPb6m0ESzzL/IBSV8lUmoTIZh3H5vwsZ1IUSvL3Gxf2o9cXUyGT3/PJlclfuJSCQoi9wr
GoI5ggR4SMoKWUYu/RC52cfh0jR8m570RdamY6ziIpcWV1xPPLP1oDaSzvOUxiiCIYNg5mJBLYMh
nuRF2k5Uy24oD+1yyDrm4PHnBQCRofFeLZ/22bXsBUAQ9iUvQFKo5SyVlahhlCVcVPV2kqlqC4lS
eqAJIPnsm64F6jriecEWmH9CUicmeT/8APkcFcADg7VRAvgkC4L3WRg5AESd/JwNB+60HaocY6g6
5EysAesFJV21F/Fija+aAAoYotLUSPsrihWGhMJjDNh6NLSu/i8EkZv/+YwR2ulhBJANf4o9xuxp
3wAYlW6nCJNLPjzPjOJiI+VzxpzFxgRzAkIRIUP1acsOp8NKMRGAIiTriZD8o94dvCP9EQIP1Nu1
Riz1wRT0ml63dNrOeXQLs1zSrYLwSA9GkulGQ3xTJ/LOksCnMnb5yVgY6gUeFU4J/XeuZR9g7oJt
1OwLMNf/TLMEmjabTNkAcGLFCr2rAyLjG5yJWIgBXzxew+h48cf2+n83ftClh901VbM5aLeOtAca
u9kAMQ77aEh4DKxMvh9pm5G8xfjpvOlgcUTb7lV0Gx4w8bn4FEH5v8rfYfWqm3gMWO0XaZRHFq5q
DTrYF+/aPCGQfrst5eDnMLYKI+bXHGtlNfIpozFfpSEyvYXYmp8HeCG8GoQpZ0HN7NLkfzFLTas7
wzoyPZJSKJFaBrFur7tySS7zwA3781QJ+tOsEjII4H84oJlkbsGY9jstD0+3LDVy9JIUXaVoRUlY
vRQxHvQESizFI5P0HAbrVcsBaO69EhR9xmYCZYrrB6SOhjEGWKbhAnHzTxFSL60kAnbKluVDc39w
JOKcPhFVDhtRdH38yNW9wxlMPG87Afcd1Y+7TJ0nFrdeApGnsYY8URqzY3+fWa0phQOLFckpqyYe
Wa9zx0hKIkWlp769rfLDcaCCZQukD3DYE4btumvLZGAq+Bt2WEzX4L1SNTq8VHFOkC4ze6rxONhQ
hUkII3JTrNOmxoqmXbZOJ2BV+WuMmnNSi827P7Jnb15H0yyqVyAzJi8XxfYhjxWp57a3MyID4Ucj
vq+BaGXpotpgRgw2vNqKQZ3YXjSY+iLigQtRdQ4EYHY7pg9YjSbC2K/HcNxlZUHoEQoswQLVXPid
f+rHcEbGIFbg/bFp1YjvSMdYOnAd5IdPaOH3U6zmBE0BsUeaJ2aWhcU68s0IghvWOgjCCJBXqL9v
+aHpCPPDSmaCPsMyT9VsH0xgLY6tvTeKz1eqkbFYM7w8RfoCX4Huuf5g/ATEfnpGYadZTCVhXAGu
eaOTJtL8ZyoGDMyvKKcEfH8R8/feWA5jMSe/t7Oztd6CS6/B1b+Nhy3oybESzAwWf3QAQmukrmJr
tkbl9EGddzulUPj3hCAy9FABcncRxx6UuS5m/7U6DrUCpHiRYRWUb6p5rrMwS+U9fo3tRVl2q3Wn
614eSYS2FKhJx6SgXpcyMJfgB8FYGSHUEBSzNB/Aqtw87OVybk5d6zwqT18IvoFB8yCWA45gYk8B
/xU+4xEJBP4FptAEnEoMByACmWuxggTXHIMlMUp32B/vGerOooP5ibDgtyUUV+yrD8HzpXTP2Uhg
EmlZFiLz4MTUIIdDaadkPxtmL+rGXWfIGMDVikwnkduHT3ERXbyZ5tRo24tK91PRgq3EabMmZiK7
G+gvIqI3MYFa9M8Iwp2htRoya3R00a6O+Nqs1lqaZuDrvZqis6p5AzVpF3n6eVCtv9NjiLCLsu3x
TxSxa0HtrCMJYbHOPD8if72yGmjvJ7s2tsTUB76zn9CXOUhA0w3VwO+TSegU0J8tRVlxqtLvQfXy
aMKJWf6rDZQ/TbzGb9sNorLZBqLgLKTYrAVHOlHqoIJ56kbaqFsBSyyeV29bWFh5jMJHQ5mzIS7p
0bayVsufCheGodqJ52KGiX7gvJeNtzyz2KfFRLlVJGAT0dMFd6oCzbvuTbk0F7R+WoAYb18BK6SV
lJNCnvOgQa0ZBGwUNj2bIMBS4jxk3jmZXoj3FiUtOP3YGOA6NqGW6qJ7rVGx8NfDvqnI+3JEjcfa
iNdOM4PWxG0pbI6sLPrX7TtcVt2I8axmUWOwKNmOTAfuSKjb4552OVKNncra13xWHna9944/vRyd
PGLLq2lHjdFvtwpSB6gm1hsJge1WbrjN8S6rC9NnvKiQaZKK+4ea0SeKgVbxKei6L4483PQqdEFC
+r7Zl1vq/HBKyX0lHTa+DrM9JHkWLMqu2S7cX588+jX0aJpS5H2WC8UqPLWoh4awrO08MCkCY/QA
IgvRevNO1e/FWI9dOAxhhki7TAbp0AxcTtrUfFG6ddEUZWhLcKITtBsoORWgndy528/TrpzSxke+
JaQhuIj4VDYYDfeJc5ES15c9rkMlfVWMRtStACVHP7VBhUsppwRhPffBYlHLw6TPzG2kGJ1+Ixzw
MvME+YZbvajuDM9yt84VPxFkVgfK/QErr4QTeND6IQNPTDucJHg3YIUUq1FPxcEplr2BbiNo1y5h
UtTkkCmtnRjHg52mqdYsU+gmOhpkBtfi9zvpd1yKC6lNjdGWLOqpAYBUFVjwFNgyLS4G0zwa5p3c
TvxeKRydMdDa6hcd232K4M9CBQ9WZlNO2YRFY0Fzd0pBL2kpfZa4yuWDXMLnXB1eg8Uc6C29YSyh
XKSyGUYTReeDhJYYG1AFGCqVsZ1hcwmbSC5pU+gYU/RiVxIPoD6Yjved8J4pcWg+2xMK3w5ujYz6
sjSGmCVygUUhlgCnIDT0JEUGlxhcbu8Vcdiej43PQ06g/ezWrhe8HxmUw8FxMqFPjSh17u24cfvR
WRJtw2vjQOWrs6t+LTaz+aBAPEJ1V9XIGp5DxbWlzvpB7B1EGY4XrAThYwOIx9XFEJaPmrS3S1Au
VvS3R4hUKtYXDF+r6RnsDzi78XwABT+Wu3Ao+TMy5/SQH+bqeh5TBceLkjCOQpVGz0IoHzJn58X9
VbvQDDVujqhn7sX2crB4HWV9G4TMYaTccz/YU3uXxjkAtAlIYfEyVugJBrQoDOtJkGfUWvYu8ci2
UTLBz0UTUC8OPwJUqbVn8MeXOhbJqSOhHcvWQ0zymIqk4asV0W8WuTOgOwBYKAuy+SbKgXuRNGOO
VXt8AhygImTj91SDk92CVKe2Tev5hsES5QPwUnmzKy1pHzwiPuy32nUR4PTDbfmtD8i5r1pV5H2b
hTZy6LmtWpScXQWkbjVDKDj6qoIgNgGCnw+znyYwkFpWwJ52jUtJmVNtB5oHiKk+v6fLJEcsnzFU
Bkw0f3uz9SSfMVyU1frAlUwOPvUoXYEjlPY3wzROlHBHZjpnr1mpry5Dz04WElLPGnt5HWvYloT2
d7jBwUBXsBuKzJlV1TB03gxmzx4UfwAcqqdoP/v6u4jgPaHuA9Jp0UHwl1NiW47Z5nnb9e2iwq0G
ePQsOPitijgsMyrxBWbpd+LjsP1nvFZH/HLZlItmIvWvovrP9R09sKyUiq8arGRqs/jak/qMzhD2
/ytxXAbOdw9C3r0Vk9fNK25dZGaWDJ6RxH0wAHa/lzQauVrlmc1zx8mVkZYR+M3mkyGMGHDSVYFA
QcWCFo0dCg9EMy67k2VK/8DZdO0IMuGgG1kAzJ4HbwQMphG8+i1WcJ6YBGJLJMx4aRSbymOxGTtB
Fvx4P4HNFIFWQw5p92qn7jVIv05uaE8T+JU65Egk9blXJQhPIX1VmT+QDjU9+QbUyv+cWF/px0mZ
OqDl8QJlq2RO6ERpNaFI99Fip3dEzAOEdMignelC8B7bDI9Rv3O0eS+eJVKweYFAh22R6de9W6Th
J4Oq3bXttWXX9gIGCBj4bSgnb0M3Rokc2gpYq+zoHkXgnPsaT5z09MDaBRkzH1UlTA2S6ONFiVXm
AFqckqtcO9y14CWrHnCfefrGKbgzrWbbk+TX2VmTBGwhsAU1/EHBrq/NnX0ZI9mksuSdAUVN0drS
88bBI3EcqWPoBjJet+W+1YVg7P8JvAf1CMpMQ4rFOdCi9LxoDhJDoOfJh6GSA/XJWdG/zyN0yaF9
J2a6YAOL0CJ/88G3XwgULF0YL1Vr/OzXGbnY+DIA56m2JfOXzgkyeBu1xgtnJACHK8CJHO7TVkDf
p54g8ZfXgUkNQN9UktBkdQ7qnBsAReXUQgFQBIUx0j2vSHxl3+qPAR9Nixnc91z6coOqoXlhgYbZ
+4COy1WoZPdKqlqHXWyCGlXyxVr6Bu2k+D3zWw5ug8SODERwAnUljZn2utVz4p2TOGKN+3BRRiao
+uBDJxJndak5aZFFFLHYcAWcXXhXcyOZiFe3pQO6ZEDll3Ml2b4+muVFdCf+H+IXweG8CS8MCjIz
6ZA1s/pJcN18YbmNxXxaNtx9ATr2pIRI1yDJ6vXScejXFEJTmzEoeQ5kmBhj27izfyhtIVng3BMM
I+0mqtvhllxb0QBnLCBEFDQswUab61YLoW/zOm8MTmIy9VTTHtbyjgpEhS9j03yP5ec+YS7wzDMn
/N7a5xRTGwFJydXYtR5eQNc3M51KRO+Q6OcwVisvoyOs5esUkaXzIa4LWqqqPk7VGFwbhO8Jck5H
INF5t6ZzmyJI+E3WdXUR3FasrlbTFIPXL+FRoSMShVXkJe0SWPfc44LKk3MKjKAosphBuu2MUt1q
7V+CZhnFoZiJ0nNwxSd+rrYnstVf5uDXyrAazDpqTpcweBGZxtOwTdpWZSehGdbFOvEG3mCb0ZD4
utldaeF6/MR+EKzsHaHpY7S6lfy8m/S9MYXLAMoSHEALwYa7SkN+YroQB0xF0Jf+9I6JddC7jHxz
XNu/dosRrAtmL9a2O4PdkJieCNdFhjxY1nYbipaQ+4A/N93n5uonO3vj3iDuqt1SNzqyo6vixo5W
GfNVhHt+I9U/ldv29Jq+hLuoBUwThB6TPnbtHqZ6yEQ8uPc188klyRYDvzmG6kmzbfIuJJTDtAQb
j6TAfS7hO9dmWlSBBtCZZnK7hElbxoQHlXM3LwOmInwDmKXELUxmxuJnokzRLP34CFQme0FXTuKx
YSXqszweYj2zvZfNlv9Q7PrlweSfxnFR9aT/SUOC0jF06Zheqtpjg4COS0oIbQOBWiJNYStCohT5
U4vz6Dk1QZZVLCQf4l0XsPT0H2AR/xbfctXpNQsVVaz5VSsE5/OjRrzlixcn9U2YKnuDjf+SaHiB
JYFAYsGpVn3JqdD1qS2o2zbpubWfiqk3OqUlVyp+JYjn2y8azKHC4fsx+PBjqEAA3/HVTClRc6U4
gxxTIP7DoVsZSyvIatFLFcD8fb+zE/KTT4e0h5sLwzntWZdKZ+T8ZaSyycanzgPH/nCFwf6RoVMy
nbhytAqJBLTHoEUqPSV1Jen6A5ByJMCdTRJtS1O1/oJTSleoigWBbCzOzsXjZtanN0xzFyQ+wVHW
P560N6d1umGff8We/3TQDO0QRsM+RmxJnnwqwa4Qw6MV6BZzqgvhlyV/MUh3RElSXju7jqpHQ7lq
hFlqRdcCZ/ccLkyNHKd1PzVqwcxbABWWykmR8jTyKlWw5ark3YyB/TTG6jJG9uOlF8pZ9DcYCenl
1j5HrsyBRn/K4YONX8fk3z6+o4npCNXalagQM6Ako8gaLAQnDrpGMB/W0DEqW0Zyz22DUOnviEWb
jik7luOVDlIBDm9HWWdnf7M8erqimn0l/8gZ6grOKPLx0PqzCeW5et+GWWwrb35BLPprb6FnRGEY
Swjnxo3p4kABfb7Np9FkNG+Htme0skybqMTnM+wSNYzrGEACV4gr4Nu36hYjgcSbWN9H8oj1d+rk
UNnRCanFL3PZlE+V8hAL87kMux+jcwp6L4q+xgVjZd5UETcl0k0T5uSKPITsP5xR82MJ050sDAHd
We6K3Z/wSHYdupFwmrO15r/p2NsvYp5yoQ9ToHKfUTwdN1CdptKNLHlOS7eKKzIouhWR4R7yF8TY
FulaL7tFwGI7fpiChOxNC4ro5WkQnEwwg+GnPOJr9qBqKl5UfQyGmY0U5KGxFUifg2RnJl+7XTuR
/Ex6L6+N+d5esMbXmresa4O9Aad3MV8/BzOVmLyL+0PBAOCe9M/LVBlAQhYGVCDhovUOz92a/BAM
KI27zpXZNciN3H71cqwO3VuCHZVUKQZwxYAoq5ScGM5yjnx3ad+fzBd8U1uLTlXlPrHwe+slERHM
vFlBB+H/ZLV4B4JcOFkV2vHJ8c3dycdEG9fThd5tF3nGwKMgsfgr9ifGziEmZV/rw0/j3OTVybaj
gAYBaszPvJXdJh5j3kUZyy04otTnpRk1Z0qUm+iku2I5+Gsw3Cw6hYqCNealXdPXRU4VAz2+mOZR
mZZOYWSzmM0znc4hN64gGnPFbk7sODuKmAeDpo9Ylvrcq2bsncO3ECj++e8zA5ODhkp/mlqx8d37
uw2snM+c8Hbb3/Glsgt/qLOsPhAfqTo2puDZF5JyMixsrRUeEwwmpCiNTNdbEn8hwp3hiRpPS+F5
G7YXuFW2tONStRk4EByAghpZTE8NrpS++6Da76qFhrz+vGRCAWk/EtSG8hgpV8HBoilwPouhtBfD
ue+Bu5/tcpiIyULYCIzQIsbHCoHbZ1nAs51MzCq6jsZT0k0G9S/bHyvaC4a0CO5IgiiKdGW//ocp
iB8sy+avGuCoi9N1NFCtg3xcPicC1KqOTAuK6pT4//lOUpofCr1OLIJkR4Am6Glg+b02NxMbLlgv
xCui+iCl6uMJc7gLzc7s7+G418dkTm7o8XoK8hRMrM45Ha8uxyPRfk2iLA1w//KTfQ/Qv3HW6tCf
oJUA0EQB/yp4M1RedFq7Wh0E6U5DsbUAwZIy09RyTfB47ChdnxVYbqzzOaArMCmPSjhkcfUIRnU3
zcXUPhHwrW/Vi2myNjbUQ3Ayd6mse4OabAe0pdsqTE4Pg3l1a+7gJnmkJ4ERLVVcxSlJrK0QFZzO
YZzdcWrC2Ni84hTCdMapXX/CoNOzClzHBWQHs8mOj1omwkPddDiGQA+7VDLlkFni7x7ds9IUOONt
7hPblqcNwJNXJmlAVox6bgIshaEHV/FmAFujiJAKn6UQ1SENp7w7k0SMTW3yn0zb1FdE2atDiT32
a4g86nHkMCeqOGrRQl0EtsBQRwqcYGMT8kbtz0qA36Ntwp/MBnPMSIAzws8GfsZmJ/3QgxR5/yhv
WqwdJBVCkMRD2GJpalajJz2L1gRgkf89OHdCGgvXgKqleHge+sCO+WFBWB2/P7pkwKIqCIzfjWth
49GzgbJtUwPJ3VETsdUpuzPeYAbRUTnvwalwM1/MCS+Uou34qH0R51bSXkEcgOz539czTKQ6bCwo
cwhMKiTd/BhxJUziZA9VLgm1RhS5HdL0Ha3drxYncBJY5tV/TXyhicoEVhKiiafPMwUQaABySAx7
vJKFsdYJ0oBsaFXUKXhRE/MV7fERVZF7qh+mCLUUc87rGaGqWOUjB2SjB78jVVoNZBZmWh2uiy1h
LofDM8Tcqvr/DjTA0Ys0q3SWIBRisLZcbhmj4SbPAXxP+pxSUlRxfkQWTDNYws6OqabTi1EIyUFq
3kRqtv32imb54CXoru9403Z7Hm4VRxObxVljQhjyZxTj/y2VmR+EjKGcI90e3f8WQ25mU1crNRL+
D2dPgprspAMMEz1relYpjmwzuVPgHxW3qz8vpxDj4HXIaR7kxA8dUAaNt2CXliE/q+r5rbFJd4U2
HeO4ryMaZme2ScAELboNjwG9y8aQ8kKlDh9SgIazOkj3CB4i1D8Ky0uV9/NMC01VyuAzRjkpnlWE
h1jJmsmWJ9NUcsNm2WbTjdZdf2xcXvX3JgJf3kNbIxC6+cAzQJxal8OHMgJ4u+VNbODhTRH9cF5q
mDKzjFtxgVaAzKJcHfsV9K2LttJZfkhqXuGX9fyY+isnIKfl3MpCsRdZLKKhwP7eQlPQdS6qs5iw
YMTmoXHuw4lnmAGgA7CVylOmNl8NfYG64XFSP/XTVInJwPxXMcG/lQW8h/LwQGyI1cw6Vq81/qOT
qbQWHiPHueKXzHvanR2jTirBMiqlfWn8+0pGNpfSoQew+L6j1sXoAe4b690CVLKOF8XqY2ulM40r
jYn1j+wHNhxs2jGA617quG+TkdWTbm9Bvd3AL32fB2SilksSegKb0UgA2t2j3kxgO5D2IYcF5fgH
k2Qgj1ZWgfCEFz2wJv8zXB2uO4RklpMHQEX8+NVyXu3fNKZy6bBnWh2p1Wo3jex0HKKJAHo3ch/4
TC/Zr+/sS0hyWINWex27UQk7ZawLG1Eqz5ivxQJMCHw3PUufosKdlOWRz4t34CHYxJlCEubJjhPN
DinIy+3HbMVJexvY6Da5LBHqCJ1/WEmVh4vaVW3Tq3K6k+Z+ciFgj3qlpDcCM4UVn2nrWIb2YXUJ
HZowZHUVQ/pukmBQY9mtOxvIkkUKdw/DyU493zvO0suEy4y62OCg+K3QTpU1+nTJ+6SPCaUf5aAq
pxYkwPB7f+cdX+fatLRUvcl2AetvZnk6pv6ZSdH9+Zr5ygeEBZFn9XkjHAnRKHwiVV5y3OX5f9nX
zniOZ2myBSbvky+hWusnDbZ4AmrxSNwDxpj9IWCU1kKYlD9PRDANVHe4OHSDPOd2wv0I8DXSeG3b
EtnqBgjajFceHWnaQWERd8RVyZZ63kksmmO9LRP+YI3unFkFRfGMUEAhPeK9oVYtvYYtKVXEf0Uj
PganUO8c7zkh5gn+LfEjfjy8pPix3hton3R4PbUqsTRFq+9efPzTctpxjP0+wGR1PMcB+OLn+jfP
Sps3m/td9+clGZ85gMPq/VACv9O+OuxaL6NglupwcmQGSFUv97zFTUCnHW1xkPsq8evivjF2Wy7H
gXioEb7x3Oc7fUffyPO6Ii9xq3AccKa/Mjbbkupum/E9AhXZerk4GcCxo20dQt4rRTXVrqVlLYBz
uM19dZmOEcBhk5tgl3Pg11jYHsjmF0VI/nwWwm6GHWqGAGQbngeX/hT0m5vHiCNyRSZEgWhl4hud
PBFcu7hAwHTcN1DRxFICzyxeP63lrplmDO1AKsIOvnPJScgO2rvwKsjsPrq5+q09Xj2oSnt2ZuvV
Uf5j6Osewp+WOKM+ZoQGYjgHhSo0GMAdYQFjf+ZfnK4d7WSO/lUwNwg14iGVbD3/ieA5okqCiXC2
ZjrSI4TSRe0aJA3ef7wIQK5eYto3PufM1sC/67gZ/TkyszUx2qVdcQMh9NaTq7I929MbFtL0rFlN
HQuq02/Ncmf2GZtIvU4LlxkOSfsT9A0WvrYLjDfKNBeX/DUz3WRxlLnGzsCM8hCbjHBD0svaYSNx
VE6y+XIm/YohtwSIjfO4TQ1FHEsR40lLZe1OCDRgsalk3XkOIQ7SBloJDYzXyiLQtZL7kni7jOZ7
GmvPs01IWLNqDm5PdJoSAQA5uyePC6PUlinHntWl4yHeN5wkdHVL075HpY3vtR53ma8RIiscqHUR
0EdMNhMXa/bq8PIUgovc28S8Q7MF1qo0W8UJ6b8YppNcn41Nz/2PIOhtwMpBfczj0nnJZUXzhuQV
6isnkNQBO/ghOBQ+EtrCIHL3WXR0HqO4wl9rlHf4vtFkfn+Xk7dkEFSEEsnR66oaEju0fkznJ9p1
85S6qthS7LSODygFeTznO4+NUhXciK9KY1ixAXYh9zylpY3kWdx85L+PnFwfO6HbK54BaPomoA+O
qPmjTqrviOLUVwuyjK3sC83R3pmr/rtYXzQLLsXROHAD/ejfThki4oguMxfRD/Y2xu9/VDCA8mBY
J07090dHVFF6HwdWpLJVbfUFRGLgvgprY1JllA9UtqTh3U4Zz890EjBMN/qj3fs+nFlKVUPwHNiP
2Iq8dZn8ORaZbbPP7BumIxTuMKLPi6WtL4jROyY6bevnsI0Y3Pm1BTIKfrdR6NaWOGZ4Knnq5VFy
MR5mao3/Esc86R5Xn7LgCUHJ59wEvCDgPf7ynjPRZthqSwZ9P7dhkCWHsW4CB5IUQww9J3/c2dgx
jVCkTEJk0FOy9aFczoDUgVzcXQcgIhUS3sHi+oUujMNJOgCSX73Jacof81pV0Hod2GyrTcMsXpwn
4mmunW2Csz0SiMbrKuOHfvarrLoaV3uSJCgekQ/sWs4Wipx5lvEM9Wm95S1P38tx9k48Oo+lVVB7
dZ1oIjgXRej9tl2oWk2ixCWms/YUv0HDQRK+Pq0tU2Yo/hLp3uZJlKEXXoINEcGozmZW8IspCH9Y
Bud7efQGwrwsqB6UkaCDZzyqEcgMmDDsEXg8c5Anw1rWaRdMYK2xG3dd4Gke0gYqCHaOf+lNuvyy
xSxW9/DaqoRlXqtp8vtXNGqFs2+3L1DHVcL0QJPLeUY9yRNF2tykzDn6qHQf/LiFtjFx65AkOJrs
wd//WZPhTmyo7V7T+pfr2r4KglhBt+f1J2Baru1xOTCTs1DXLtr/atl7HmlzSHSUjYSP66SEasrq
fk25zipu+VHzXHzkutEuZw/MYXk4pNsoF6SITocncvXONHv8xmRd9nON50ocE6mcMEQVqpdhi4pJ
m2XJ3/lnNsV9cKlXRU4fbAwbdpa3OTLqCST9rcC1aJg+6JmNdXmrxQB7Eua9eILfzD9bEb5JUtgL
i/O/fi1EqC1YC/cErbpWU8XYiTPVqgmPJQsv2Bf995aKKj6tO0jz1mA6VKJJYd61vuBD4BI8ne6L
K0y/yMe4waZD3pHp3/L2nc5z0ZP5FG+G09Q2fKeAlu3sbrmrdSyZfmjuKhBZvrkrsWTMdzXlZpuE
w948UgsM9kcgBamI549S/OYRmC9t663QfVx78+B9Za+Afte7+bBxraBlm12xgpCoHMlBI7W5uucy
coLz+QxBVmGp1ypBU7ASfJsMhOmEJNI7tQ3Hn2kOBYMuiyTy/BzzPgoloj/eW1s5YPsSzrjrJw/5
oR0um2ljbDvIL4d3amA5FvY+NyXiv6wiK39OzI2c49ZPWGJmJoAG7Ct7ie3QJN9Co2ABtXBqCLPx
ZsJBMz/5UP2jmvroNI0Ty+hHyDmMrdvXDw5HBsUyGGsNE06k392enTOmSGUhJM/7jOoxj8MKoymF
kSp7FWb3rmOnebUTj+CHyYjYp6Sgivpi9ZPeFiyukBMg5LxmmYo/oXkGYCpcPwBPm5V6pXW395Ng
8VJ5eLTwsXWhdSDcHmtwwznq4KbujZLr55I+Ybb2wYXKRwN0KaI6b3nQaMViUHVCQeOdT1ThjIIN
aGNwFTMEF/zmk6Bgafv6YKLWMgiTBoeR/bjQDiOpZTgbN26DF/r1yvugJxroIPBOpta+xGfh0xPo
4bEEZYdkOO28Z6du7DUM7vb5hQ0S0fKat/wkehQahNLkZZVbx3UP+OpQ7CtH433b6wIpYFPQASJY
/fYY88cII9F/1YewolH0YGgbRTW2N2YcLJZ7wQHTS6W2kJg6AO1GLIFpjchp7bEGphpqlabTrpg1
ic0KE3aTkHWGI63IDHQOtYlubouY68fOjPfFv+/HYE2KdSVTqDkDq4ynjg7PNvsNWTq2Ks32Pw9N
1lEN5tphLLDXZDmbd+INrMfYxuhwijwS6NTSsv8fMBzpEjcU4Vbq7QMhH8YenXqVcM3ncf4e///c
7xx0m4x0EMnCis+1H4ncJQHklzCflJ3Zn7I1PpJazitufNL/10IMLaY2xz/hL/kirWhM8VLzUOZ1
7aNQ9Kz09/gZGxm8E30mIVFFqnwjy+z53maM9D4KNI5P/t5xHLcBVtu5Mj1vA83r1E4gwNVhvhJ2
r6/zkFPnaHnhMjtDm9pcSXuiE7PEzRlf2KuVd+bZBEBGbMZZ8D8oneyOIhuzWxlvTXIVtWXKgEbt
07GN1ZE4YFX9gNS/K+gPoOXqxxnQMYCfHRYTQzw4MSCmHTaC8xnhYt8CTB1SaKHc6UWahGN/os5Y
PG8UOewu5bfGwiRcM/LfDfmrSriVl5FH86nKXekq0S6SREH3zyMWDmUDlMh6lcV/btjhxuZ+S7Ij
c8XeWRpX6wDTzArBkzbhg20K5LK+jaHHwWlBPSHCP7QDvWKQDpoKAVF7hJQkEfdkm1DA0jQtuezS
jQiaL1MaNULAdE60lQEvCy592WSkFcKpUmF02T9ptrn6qb4/prlCrAgYkLU/IN6dUNgF7+W4GD/g
6zH61MygcsMTpMrtR+P2EDvAP0K1mWyHfyfgwiOYBEp3MBfkSjWOLGk1XgFg3uLFf31x89CazEtt
Mk7hucwsOxLMhCnuyDA8fnfVbS+pI1Q5P9aNE0lFkk5rYl44Fdy+PfliY3c7fNtvqak2U6zPyH8L
hv62s0NMb/g3jhmXe5gothAI/n+glhuzYHQcRtsiSsffUZFeunoebF2nxZ7WeAsz4jOCL7J9WEQf
97AuZBg+RcWvU6fa2duSN9crzpznYNxXV8b5y8phQFtYt//iJB9OU7sABNt28luJEpi5Wyg9HdrK
UHFQLVgb+RAdUWwAk1k+ZKMwcIOddpd/VfYHBl7KHhmDJHWNF9k6mSdolMl+kG1oUaC/pzhC057k
6tVX92o68sGGvW7whXGaJ9e9T18vqqiuBQRSavhk0FctE/VWrtIo1XhycLEo3gtNzxXJSA52/THn
q3iczjKYqp8lsEXa6qQ9kCOcymYxkWpuVsukzibkP2ZHkucnKmBGcU8p7ukTcokKatCrxefFqpuc
siMdDBYkmOuYniIhPOG5LvgStPzhpceJc+XmOWO9WJKWNCmc10fuvzXuDxZ9MK0SgMsVTNUeC86h
P1Ku0XX3QBKSBn16UiVUA8y6ZDn3Llr49lfITOrJl8x1fnM3LGyf11Cbs+tclJKajshpcoGca5aX
nCx1yCc5qVJzq3IEY6Fj6pIEg0/GM7NFMKufu7WQ0m/cZ3zRekzeCZAIgS+/IebnicT5hDT6ml4P
CJ1TjnMp9Qp+feDuvGcJfmNrL1cJXZ3xlQ2JNIZw/COAFxxB5dK2DVQ1NnTDwiUVA6QuXEr8wadU
G7XKPgvDPa6yFTwEkrBO9Ns1xHBBfbrMBkcgqGziVHG5rFl1Ek/Iw8D4pSudIP0sl3eat3wSJy2A
IGpuWrVe+3KHilgKbRmmGndN71XhsUygth7oWZZSlYwx9OyQ8BEr32k/01kKkAsa3wm0HRv8iZz+
rYqoz5JjKSIbnfLZOETfkASne5iTs8zVZuD6z1D9Jzwqn6OsH6QTEo2K/+LZu0BHhUK3dPCH3h79
+0zpHhV2OSIASMVC//m9OLlRcqLe44IXuqMlHKXWCur88KCcTyvNL+VHSTnR2Lc4qCK/4Cn6VRI7
rnpXMXsArrrtpbsPzQ0qTlCOCvqKl0ZMPNmqQ8VxZmoehip0egBipazF1NR9xJdHncz7iG3PzNQG
zFNKlC2KT1eEvsxLaBmg7FL1LHvSKEiMH2E855x8exadit3lNBdtt5+Wa0KKH3aAtjImMMcpFPa4
FvMY4/LZutR3k6hyWYH+CBME2fl5RKSTkIj7FLzm+nlI/bfrEamE8yZGEtu/xkl5Mc1A2cFSyopv
uXYevpkPWFfI9Ygs5AUVF70UN+2hg8A23DNvQ114uZ+i6A9WP2Vvf1ZcyXVJI8MaK6Wl0aTs99lP
+EeiTHaMjq6iA38oLQSJzR7MxJE9jLl2qjLkSgmA8dEp7D1mPXTeI4ROalAWsO6QJip59Zt/KlSP
CEyUL5orLLs1cOLfYVMaMShKRGvSrg5pfy3BFJjABwmRhuNIrq/GxVK4UV3fRZQdswlcldHHTvxc
6B2no/LEVwonlHIt4wfLPrvaagbum8hWq/Rs04AkGldACeyrOhEd7rdIhU1UXbiQ29AWKuiWrPzI
NVh/k/8WxZF0lkHeo5yPaKmACWEINMUuMONOXv/ic+DSmOL7wPQwVIhD9jv0JI/c6S66h7h3ew7e
0G80t2SLfGs7wcnuobEN+ktiMXCZln6n/INRSA5Yl8dzTzg2DAQ0VkkgaLQnSrvJkKKtpiLYEwcx
o8XIF/sAjEo1guLPXpvCfL8oXT0LKih+rer5E3ilPOH8i+w1mSSnJWQpgvzI/uAp8d19kIjxxsUR
Odde+h0lG3DzuFW4zSrWI8CNb3y3FVggMBuuabUa7yHX/xBSirW5g1kfTc2qihYMGIEIeMWWppY1
QP+/0gzoOhFn8huEltCun7hWTrkftNbQQLhkXvZAN7NoQEP2FnTPzuNMa37D85u9VRZFpLzW8pXN
dx4mXi3LOEUyW9/idCoeIgU8fXP28krRWNzSZaj8dx9bPuR2AaQPhbOMbYbMLtFDiUAeroIConvV
n1JnDMdErRNIiBvN6AQ+wIgE+QdyOEW32Z4ddGwsXK9zv+NtMdvyAkZxnOqIsEBjELl03BnCPdpO
udJ6QC9Mj3kUtwptxk9GHlFGSVlKxK8x2TRA/rtKYI7i0n5EXsu0HWWWlhZDQzGTJv9Rgx1lOSJS
fmtDOsvYbUzjrbVdGdWq8GvAc92tyGw9P/anfh722BAI8BHKrXvjEyQ5Ry7TJRi4cj1252/g+eF5
k4+79WFNpLpJ4vOUzSw0EHvs+DHVCl/Xu+bXFnKMXFvReoBBgnqQikODnhSw0bCny9Hq2QzrwJY5
A9ol3e/Hbh5GV9uGfrmA9PfD1lAfx3LkR9pHSVu3oO15B/th8gAogTrWTcubha1kuEerxgE6TtRV
h+OZQiopNSP2I6gXPzmHxiqyKa0JqHDvUGuBtuGwCMKVhLsTbGQYmiIkzKjlKpkxPiAbacBb9fCe
pb+rDjitcgErWCVNlEFRP23EQG6ToVOBJ8wdAd+JCpKYWE3K62sZhJYmSRfZCSqOX+ePWwwWbhwi
8jU2iaKi+imgjrAR4e5kDnVf9M1/zYapEEpxFUKHs4tVXBVxwUAA9o9qS/0xcoQJJ9oh774hrTsD
4gqvrh9OVcejL1yxASCnODtF8bpCYqcnwmDq/ZX9NerMXEuiv1/2oeNaFMwLQjzE+mLun69w2YRM
w6xQccshQ3sGravvOAt0N+5ooJnm1SMcmMDZcI1KbVIfPytuII3O6wsJxcBPM32O9145spVwXOkj
uEN2URY8nfebf1yehL7esAvwpYvRlCqUwClapxUI+59WucB1PUU+XXQZweiDQ3cf1lruiK2dCB6u
UIRf9QIeKRR6In5xcJoF7DLyuGxh/o6pkHpqMNhpbtkayaBKKPJE3zLjDtTN7DGC4sgV3nKoe1A2
mZPvOX+gPf1dhnM/jPAR4K/kil8zSJ0JAzCkoCuHfi0zlk3s9wulGBC9HkP4GS1L8kefG971r3X3
UPsUCU/4yIGHNCkcqmVVN2PwBjsLT4PYHuLV7V2c1GhCfH+eA6n1d/ZYbty0Kb+CR6Ms3vhCRTL8
0/8U3a0mfgRJApNaRmUHo+YTYqIy/tKKuuBbxlFDF7WLlSL8o0GayPqmREOBs2ady3rvR/8idDW6
nGJyDWidM1Rz8OO3LBJ3wU0Qz0yT0FrW31MrVAkVk80Wb3QWqTBfhE8iEIxt4aiK6MZIgFqYY4aM
pEcqWR/ZyPhlk8xnTvaqULAgHUnN/rP+MuIQyc0W/cSL6UxMWpgT6O3es3bJfgympOcgAyS68qf+
udE6RV//7KpcOeIZziEGfhst8lUOti7aydnyxUP7WQ9ot5Xr1mtsOqsjZIOKvEGnEKcWnGuZNm02
T2O0t/KZ8v0ijnnvE3waNV9jpt08Zq81XPH41mtkDnvND2bkeTIIagL5cumvwGoQpRF4+pkjZSlS
INEBYo65CkMqa7SoyAHdWlkahZtMPK7lV34OWmqsFo2rW9A/uuhNvWKRgNNIXupEtjEgsQuIguZ6
vC4VafLokQ/XlhSs+cmT+Y2j062lsERQzk96O0Q5UGq/EfXJTNVW0jjCITCCASlkQ8T64EhmelV4
vY9JFJcifcq22uJ/RsoTWRaWM7Rpej5IvrNQP1VYJ93lDUIukxYqMfd0VizzWSaOtfrovFpGwt/W
pM/IGooTzxTUrhsFMiyQ26dWICo/YcpbiyIOXDpjIrzZv6lU2irSB14dSjYvnNyPPX2BXGQAkKuV
s16T54VbrB6wwzkSO/7v8apuNZTi/T35ciJ4tBXMQewRfDnyylFi3+G+Bta/6Y9jI1LHGbKYQeMi
7HR6QcuHeW6+r7o18j+96aqETDYLOhuknm2fqR23XGlOybO+j7MEc76l2/h+MlYeIIjfn52mHqmG
kRj+ciH4vZK9zSOL7JhyISE+GRg67wOem5tr1pmOyfqp8rg51wHwQtsk8NKnsmIEJSNchbpcyI3s
xXmswumxLqzqi1lQBaM3izApLJEHEUrmal6XAwWO4XIKnKB/42mh2ycWDJwBGZBU9BIwvabu4pFE
nrcHwKpolOfGo3BWphSTm0MD+jLbPo7dcJ0Fhg0I4Zf1vI2rQ/jORMNZpgQwKREo7eplJn2r1upS
7L3yZUFvPBuh9okyV6r17bvdSJqE/dx++jDx0a9113Ln9LIFtUQgbxMhXApqfNkiynlfXD0gy5ll
GQSDeabgdb/QzEJ/GYlKgM6pjLagk4RvFwM9oN/rU6UPTsl0X0FxH9IgLd6/Q8/u111+Koy5p5PR
L2t234x/peQ9Jlo9znS7qtsafBu9VcM4BYTlS5SwIp08rhZGNT8ogp79BvdLb5dxdaJDUvjQpubJ
38uwVS8a5DeEc+8l9rhDV8tT5c/KfyNFV7a2cfts6DxiToZNPXb4vyjQp/btOeYgFX9iG8E0tux3
BrH3TOFdXg9+e7lya/cby8QsS7vpAi96YUhDW9/IQVKJ3yjHt7lHdCnmAEE/O+Q3QAHAF7XVqyj2
n2V9Mg7EU3MST9QiUemQHJmCK3XlP1E9PNkDz932nges/+AE8a0wAXxDMTD0oYl3ltnwQyCqQh4S
vCaxwQg3leF0OE0mt47+esfK2d37ipztRvmP2eonWGsXuYWMeyJ7u2gc2n316TfaRXA4n/fUEvSY
i8oQ8BveWRoXMu44meEDnsrAIH0tmLBkr/q8QI9RVCoCkkcS3Rfuw8arw/G1Ncv7LWI16E+vJSyq
8f93XoAmcCWuI0todkO/XGp5aw87TbdAw2oI6yyqDzxsXJWpt0g2+WIqr7Fdoe0ifqqOrZzTme9W
JXl4CbZJlPv50cwcYLc8foenW3QNSRjHQRqiDZp2+YrXHnHns5GVOHxvKvFwmq1o8akZ1Mh6rMKR
bxSaicjSFP3a8T3jef5hwOdFAL3aczgI/H2N/ZVpNHikFOp+gmaZjuW2oVAx51X/fjQoW+t3bRq3
x2UPIDiMUfykh4YJMUHhyUqaf0LqFvZDKmZd4boaCy712FDmQZ1D4GA6EaKgJleWWtFpZ0Wb1hZ+
3WBg9PRdFheKSG/6pkKx9YVs28ukZ4SzMna/nTpHrs5s8mzYKZAHjjHA8ksXQDyolA4mzLt8lv13
ugo3qbTY0MseV9QFzA7B9gzcvd9jvmp8PxrylN3Rw8dX7e4vhTUxJDwFrezDz/RbnoXsEZtUOpdz
F3ZBQiMS/4K6lBkI/+m7g3qFBsM4JxIyvc4bmxiqX4BiEC6WOzgtbfdC64kv2PSjYGmV1mALFhS3
ZpRPYcnYWyUDE0bGbLrn5fxfN/BF8Z/FVD7GGUgRtASLTobja9Io0ipDY4wjDSgCI8sJTtFsB1AH
hD8pRA8UwdRPMe/pQwWwh9teMAbgpdj4U0hzn3g+jZ5qWXrHoKrQKIaFZR3f57mBv6EGO0x87dqp
tG1xSbz5aSHpLybVSovSK25ZmpcvPJxrgszjueyAxs4ZMS2YLFR7sUVlYl9oUfa3V/9l56qUpnFS
obrK1oyoyMkiXLiGE9rSqyW5XoR3lkAitDF8KG+FYUEDpkCFcaAtN+mxu0ZZVzRVrCVVxWfZ4fm/
JD9kIpoCCA3V/i6OmRHqrRwxS0ygaj+md6JmuhMSe2ssBMKz63PkUMA+6hU/EKyfF9QHsMbdq3bj
a+s8Au2+NktSfZAuAPeVlGHC/a8q/xqWri0WTcY7iLOufpSR1X3ro8H2rK2RBJnl06QkaOXmwKqt
QHvmMStGhEAeCNcN6C2gi5wo+cXDLWCqpryu3sepWfXodqysqC7CxihuOqILn7v0OXPh3atwDce5
eoEM+N78NjUfHqUk8wdyXgTwMMGgADE5gvFL96SFQIvD3KUaZ6bgMc8XOSRJmzl37UvJhdtvQxbs
LkmWuI8KisRq1AKSnGMDaKv1ZQ4xAW6m/zLVSYIwpDxdDDgMWFk03pyvLYPf6vK+JN79ybb6IZmv
boii9S4dXBfPtBV6/dX3iIqfz2ptaerjM5KWLhI2/9TADg5uQeNu7bsNRrZLfiQXJlBvs8RXZ8bM
ATJogXiGIpqdXu1hoOgQv2XuCwmlqg1LPXUeXKIAuEYrf9jiMpNH+KQRfPvVW8IY0Z/bgAdOoZL2
QVcwUyjDuqg8JEgT0xleVOfmV9ptpUjJPZlSZnrcxO1ARnRDQzqHscGT1l+SnGjatbHhu+jRXKGG
noII4a0dDYi/rElwWe6oSsRQjQU6cydgiXq+juMXB8JGfC20WXM3fxwr3OqQokxjyj92IRtS6cgg
GKvRj2PcEyYjKlgoAuUgVe3kYHL0Kmn+x6HiHAbou3RD8u1YOAubXu81wU3dv2g/3jb85scZK1Uf
u3bCn7GJee8xKKoLmptKs7pbvddhcrE4zx8ZfvRp5bjzr4ItkNyJFFFQnx+pEjfa45MKrWTFvibl
CJL2/XoNXFAdLZafkdRh9VqHZkNRcRlDk8nfxOsuVZvydGbceJNf423maKHl7mSu0HgwCA9dr2hp
uiL0evJiuFLaFGY6x8OMP4CyyiCmNEWnioSPpi4Gs1dqAT5GeolWLrGUHh69UssTSHo0ur/FDdVg
wG5BznHBhXUB3vASWBAf3dO3aOlT+Ez/IVVnqc5GkNOn2ncavwckzeWwrCTfyaz+4/A2ncvNs/Ko
t31dNLSAibn73vLh78zgsOIxsTQi/SppcYB7m5ayJu2OyeKfLdImcFb+8f6La8+5beJqq+Ior1ei
3HLNjlNtyZ/T5pdnfxuOxiNhjV247uxxxFST41AmDenQhDdJNfRRCE/YyZCJAYUf+cZgADgwIjGX
x+lB0WQtaRtgDT4ODtDKsaM3E3vFj5kOdObEUUUUtVgJpI6FYEK9GGhlbor7nIuMA+5DMrqT13rd
RZcjmpspJ6YIqoor3u7teuyC9XAhyYKu80NoG+E8bIpAMWy2hUrSTUkuJ/4NhQtd22ooBLC3ufek
6Siaetm9SvftbVUge957A+U2+jsMRKNXuZuK/5Ufzhps1ht2UUpDz7J6jDFc8RqwQtjmSkF95hCF
XCKPYUwshd3HMjo4gdary4YHXPVdfo+fc0k5XdnX/uAITKog2Fe99bjWjV0Yb0NFjHkUNhCh1+9w
pQBcKnnNQLEd0NMqDU4mVGmF/KiKUrnsQB1AtRTvBd62a3Su2OBsBJ6JVsb2+MOdHiZsq6HMmn9X
R8+kCplffUDgA3kZqIzlpqHMAs3HN8viOuNaln63MJOghvJOnwXndYfwvPrjpnYN7E/lyPjM4i3N
aSKEyAE6OM6oC36naIJBT9y7glDHTCMIhcSM1rlhcNKzHW2JuzmyvnnbXidj+YWrgjNli82LstF4
La30KXA+CNWjarb70BMa7ZG0CBW/e0fAvs5y1Mstae4IR5LPj0Yr3widi5M1FTPlwkC+92v/srxh
/Q8rFZ2NVJkaP9sUgsfNzpy+G4W5fyYVTn4iOsj3IpNWfNKwXp/GoI9rvsZ6J/pep/LXE4SHfmCL
oyWqx/0n5nc+qHWdEQrU2/ONli67K+H1MUUfA48vFN5w1TUkBjGr1gIoVJ82SXIltQWekYvlQgF7
jVAi0WxRBvbNfWb9zNSpLmIeWAAGwrj5LKtHqm5cG476rpgTcsel4/uH/dLvo1XuRfofDC3KF/vZ
Ia/7SbqyzsMKr169i4BK2zFXU+agM4Ty9D+pQGVMGIrPR5ncMsr3ayolacycPhRctHNW2FJCV9Ma
fr2ZH0TokpHheEhp3X5u3ATM8TJqUsP7EYDhxnQ13xlpYMFkU5sEYfy6n1UzovKcg+cUSJSVBJvK
XiuWjPiR/qZhBtFwfWfQJw2acJ7OnQU/4vun3ewxm5TK0aCHJ0Bjn/jdY9L45bx3wy6mtOYpNf2o
qxNa2ik0/Ap0onDuBywRBu2uCMNTgXnPbJ5MGj+HgDUlY/dvqCntdGXBK89jiL0ji9hdT5W3g7Tx
bXOA3xuT/YjNbGUzCMryFZUOdYeQPJrN3XYoCgrY97jf/6CHlajj8L8z9GJowp3wVb6Gyvgfyp0A
dHNw2Hdiy+PZ07FZOe8GZVazrDJrygvvBQewB7UTnpKZkYYD+ujXummksF/GcsXYHMTlBMphlwve
BMQHt8QMl2DVfRUGePDDMlRQcA2k4qEth5DgyqMiflEiZjNcx1ce5NuaagFL6uV0yMwhdzfudoIB
FKdUe/GfoqP081Z52WTmMOpXpjTH4Pfke6fNW7wWF36L6WmmM9+BZTuyQjaYV8J4X6BV6FabGEjn
FCC5QyKgBD0YXphW7byCaJEkapDjvoG24/tJSBejf8oXdZhu57ivMkDgzgHWMgHeyQdCe9f3sn4i
mRaxEKkP+ZEo5uusLoi9mPr6TnQqn0ycwMbeEQSqCBjegg334Yn7U7kc+ibSdc1gWZ2f6VbsIMAr
CGywJgNms/bwKVm5LyK17Qje3NeUc9CRDpKuue7xNPE8XafLCN4vS9cdcijHZv8OdF2Q7HeROFxW
wn7lAx+boKiud0L6zT1dznhhLS0++cHP9VG5SP93qPvrt4hHDtLHNMBSVkMoYVLA8EbM37XMOPWi
9w9ziRXso2x+i9rr6dp+EoreRyvROxN0yu9YdwFy9MXg4Dyk70hLPTXGNXYdWFKOFKy8HimpsF7J
XwOVR2MeUQEVheWjOCE5iWPVaZnV4DqY6m+AI3WeqIeynipoTfsgpLyUGehVSeTynEm6Z0bD16ym
lDx3YtOuBhuYm8/4bhPVa9UvSYT9kSuMToeJj3WC+g04c0Mvlr0jdsJxfsye19u6dwEu2jNBUl4n
rF5rlC/2Aa8Myg8ha1T+6p/I3Xxd1CCe/OT4/8P3WxGwLDeg+HdV0ZdCyxpwYjpMRcT3nVlPbZJE
tOEOEfqtoS8aw0NdR8IK5/GhiEK95mbPz6we4YOOBYFPulIX7c6AbGAsNAX7XDR7HuZaxMpahUrN
TZgk0lVPRS6wccso2aMRwvU3GA6W6Gv3sUI4BL+FDSB4JYswH2JSVWksMjvGQlAxDkcDHcqVqWRI
JjntsKIK8Ixrb8D9i8nmg06wkXIlYRvjP29/gLgdF7o7Y0tOgm/oqZe3FycPzYki0p/zDn5d2J9p
CD/XI0yRmnII9tKPLpMrsxi3zWp+vWvheWehraXYif8N4AasPMkTYpobnzObm4ncVo7a6yWEPM/p
akGWnvIDS3LdileqwXAE+eLSSGV3ycEhboN0zFLhNWiK3ayJy3MglFsg+6e/VRiiIuDFHAvzHEwE
ciw3bHDa5CXgFgL0micvaplXxPRU0awEnOexczZQu60j/teOQkFRmCz4N1hUfW7ykpn2OKtOxay2
JPByAAXMoMXtnFNI4TYMdHXlQRT667beMgtGRAOmuw8ywfp22lFDktdP5823C0PRz0LN1YolYUo8
YoY5Io81zQA6sBQipIoEzfALOwX0jgIhFvUJMtTmGygObxLR7DOP0m08zjPlCVpk7aQ3ONcIWGZT
WNAP8SAAScfE9q2KYTunLp3tqQKZoEmdT3D32AIUygOwUU+ydEKl57lKIaLQTGTh3/uu/TJa7Us1
NxvWVroNe6Q62kJWUHJpiFpLbq7DsfL8x1JYrJHtdNVURNu4g0gSOMZVX1T7LdsBqN66lqQIzSo5
47iGu4RL0jC2q/l4/6vax4+tb2yhmpyaip01snbTzeytsyQSuaU41ADx5DdCdaRaR6CL5zbdR8Yq
+ysQrAyYaVxYCmZ+boTcD0GVOAr5BMhKFKATlPCKOLfdYioCuIOoZ+61XhRTodUrn8Gnia/0shcH
XeIMJ7r2g6bFQRSkiV4QR5bFJoO+MT+FDrbs/EuA8i1XUx/ccjWIgNg98+mybRETKaiBga+xVYzg
IotAvdwKT28YvNujnLJxRVX+TvvjoW/IVHTxKmF0kQgmmaAEKY0X3Sp4BMIhxc9cv0IFBPtK5wt8
BZXOZhU4AgTsipanDmJgw+YkFgwumjpqvHs9e3+NWKhenTPoKYAvqYXnd4rvNLyeOCucm4aRWEEP
o6ETmxFkGVjb9lojuTujjaWKw7e9YQFsx9l/Zf6ZXQ0MUFe1fnLeeYIs/1mZQ1VCwH7Iv+YQe/La
39awMAZ/Qa6xhAfVMKC67JaA/aNE6gfGfb0qFAHJ9WKsYrAq8NalP7yJXk19ZsG/nfQkr2X1FhN1
6us+MmS6ruWayCSIpxuR/kPEALVSA4azit9J5EVAlRn060vCVwN9IAN7P4LeF1oSCN39CCNiNyZB
TzT41YQX/VMHyhnrubPH+gEIDS3qf3wl64p2XQ9yYckLNF7E0KQaXt5qdTBgyxBwpBeEBIHUE9pm
1bkWeccFoRoBUTaDQBx0qM3AAsuXVJUm73wwV9c1XICfXoqIrt9VODgaf7jB1VH+Bg18ejv05Ohq
i3qCrzUS1pRxVZsDtseLJxMrOrKl5WrKaYsvq6HRABeFMI3KX3RLFy0lMmax2kWSge2865U3AEYm
pn6c+kCWbiZjgUQzndGD63VNE34ue3TKG6HjC0qPbajrGUGkP89p1mlyexJWolMaFwfRSbk0yidV
swFoFoH0DNwmUgLPfCZdPq+R0CPDlltKFvdANYF6wyFtNzhtJjGM0zEmMKlEBYcmiIhxfNzmAl0q
ILUz9pwUNpaW2/QBXUG9qxAapxlQyOIxzox/bzt7TA6n1nUhWBxksDw08GOua1EqzoD1Om/1px28
04MUXDZ1QOzU4pBA7Lt8ehl4RRJEIHOs8Jspj1B0mrA1RnAVAuLd1ue3gnvYUcI0I6illmBOoDi9
guQNMB94HSkHFfXOjNm8TCBHjpHi7H1q0cbupzU64tKUFtDAOZqyv4xoENeSGplV6ZFXuX9+4OBv
2eUthzfiVerP0hb185ZP8B9T8VDaOlrQLUWgIfR1bHYz59JKAmCzQ1ciHQQXjOJHxfCC0qdtwILB
dbNdzRyZCgDbhMqx7GAluvBQ2W7KrQvwRZ6odwkaYnNmQEOAWR0uQtp+zlc7leUMMnY573bI2+EI
Db3YIayMZVaWQn5G8sEi8Kpv/BGDdEUpU7Kc/3H0EMecGMwKZJy0360FjqhSERv7rerUBdCXbJoD
Nea2BBtp/Dv/TMML8vrxXnE1MT7vTlYCOFECKqDXZ+M4qBh9NejTNBz+GmAOtjPKi241mvhvHgAD
c8eaLf0hhuwjKIMAi3g8teXB1jsy3y05+EDbwc76ZS9Zw79Nu1r3pr1wdu3Km+ecaaWRGxvao6PI
RDL+3VilSRlkXrgDWslK0s3BQnCJRPUbTuG/Zzz2pdk54GQDfmUxUouO3zTqXUfa9eUIL5pZ12UJ
VzK159UAj/ROYJTjIggaFKeZIIt5zpvnKHmlTT7QP8yhIDaNpxESkIjMMcrwXY/ptxnd2IoyvbbM
NJ55H40Ioe0aj5WY5XAWI9zEf3vnsnaijwLAcfNgVIxgyIDRAtvFG+kv1u8CmhX/DmwyWJd79MxY
2hFkwY3OUnjcZosoZM8pWjU/bC7iFehl2vmoxV0YR7GGFpkR3WcISKSP/SOTbre6s+ApQQH02wUi
zH9U0mNoLym75FJkBLCW4RH0DWDtbXDbtNyE9ATgFUnrzEdBBVmU031wVKCPEUrG1b0pyvsonczT
LxVG0L9VMlCbc8PFjs/dp0qoap+FMpFVxMv+kdfMDTaNdmjvg4OpolTy7xCH2zvc3dOaQwtJT1bK
zYGjk7Anu5Tp6MU/8Gx9WwM/BDwf8qT7mLbcLSfsFfbD7UuqxQnNZRrvAX3aczdmfUNRZgHRnb31
eTXSN+sn5GAdxTUJDYERyQ6sgiMWohMeiKU8ibiB8reRe76jKpNqAHjWXTUH0uUMNWyJyx4y0Rr7
3/KgFMt2Tmsk7OUS8XmLWZhRnjWA3mn/wh63TJVxk22G0EsJSvTQW+Am6PrEC1uvPKFUgh9ElD9z
M/XAs9/wvNrojRuya9ZUsdiatB8pra8n12j/27D6gfUXU5Hh06VzZFym/xG8gmRvzohQ+Y+o2xh9
NzbX+8PVKcF75Y8z2d784uihPuZ3jDUAdoJq9iK5q9mxWnr5hyls1q+uTwTJGb5G2LETIw7kKcwO
2wxIfK914Q7rbwIC4eBSUncRXxDUBA6O6G88ArhJKrOOfELNQOgFxh2Iy+yBvKVK8wAEpwR4hn81
7fiT18pDhV+WECtE5MPr2CkZmPs6xUEQElJAPO/91d0DJSdwkLey/lhIXwy5Yhz1Dnlk+YcYyqNa
2G9aMsdRF4+xdxZbVKlOe+fIfpqchmjFqTCILtB8EvatHAWn9IUrEQjDxcDreuH9E/B5vDYR+r6O
hzRJuxY+PkgAttp9l3Ps6JPU87hVSSB5NuvUgNEbHkLcnrVfAVH9/iLOe3SJxToIAkSo9q8Hwq44
eQ4TWiqniu44cO6h6YymEWQSyKINbd1e7PfBFSxEcWlexiHUPGNA1ldO0X0zMGy1KxXFo+78vAyM
4gdU1fNya61SmeroVTFQoRGdcv1Wm51wH+nlUQzbZJ30i8akEnryxLXpArKPj71wR2msbcFDfpdv
vIFa8ausAaYXyr6/ZNwT/Pp/q45WDS5x8iXjii5o3ZQUtwAA5CTgWd0DCiIHoCHCMIXEtahAohqE
KchK6wH+wr2Mox+66o4PJHSac3xNeHY2XNNazTf9IT95wURpaBVpHFqz5CtiV8jUREFEiqujVgmo
eHKAHb6pg37WeThGIwSY2W8C73XnyFgR/NRRzrIKPZ+JW0E2Uvp9ueoWFQ9xWekJOlkBtQyKqjkl
ZO7iCMJYVApw8m1uBVRrRtXj6r5xyt3f3hAHdToys/a4mlSArzlcQ6VOZT35BisYxNeoIeW3xxd0
9RJY1XzcuRw6FEP5b73sgVsEbF4ic7V8lcxWyuWvxDiWi3XucBKvsRergINUUIpVT0oxHFm8NFTd
6B4NFMrpFxk40gSNE6eS0fsjMpZ4ZYtN9ZrMSvoFabDddSOmIp0Vc34RcBSZqFxC69frb23sjkfg
9jihbvkrPhdlHmE4E6WMnOAelOhSK2ebv9Ra1jcjDo4ZiIvac9HTiKpQ0fbAfaSM921lMcMKV5RG
dhATF19pzn+lstXv/EaP8n2Wj/A2VRJwUJYdTYlcAHhL2Q1laN/65XsBaunoVkRQIttXqyNuqBFk
dqCJa7/Ji45VZElGmoW1FqdYscJgydNlPsCPKfz8NGLzSQiXQvmfxhvgSJi+QlwwfMqRsTQZf/6f
3TRAp6wo6Af+YhBlnZ25XV0SfK75fC8lKGWgNiY6assj7ZWJCRUqduP44xRw074y09saImYLP+Nq
VjG58ABoZlzCsKvh5SeSYwK83tHyOMd1qaHpNRvrTdbOybGANLDSWkThm3hvGrcG25pUre28qP4A
0N7yQO2Alvj9Pw9D3Th0g6erjRKF2UwdFqhjuRNFPEZ8eQRj2yZxeNhQIVAAT6ijoBgV0BWHaoVJ
KqNzMvbxvfQcWZi2VxExDtH/cynwLnZRMgoATfqXMavjkdEHlV7WX1qLVnGfuBCzcWdQYOMJXMa+
YmI+pSlohHRZtlMQldqlXwgpYFDGT7K93nQcvJorgEv+UkKds7nXo49Cturtx6tsDeivPIKEMyvu
2viz6bc6b7WCRxElhAXFiq+waGQ/XjgnNjpL3+Ot5PVcle78YT4foUXY2wxWReaqWXoJ4H9Sgn9Y
2mbK6R+O65WesnH8O2jiycQF2SaMhP9c4sTB8KFmOnkm9TLsEALm/UiKDpv9wrqMfNNYz0NHcVTL
i6yHugKpomRDePVdKoZmGQ7U7sC6p+hWerdBFexUx4lQbELqy1CafhYouFnsaGgFnoMSG2QDyUXB
RlZEyaDiI24aC96BN+m84qCMJUe9a73Sk3UOsVxdjTDrPOqDcSyK29NLKaSQy7zwifMYMjQHe5I0
fd0ttTOgyKu7wE/5PSDqERoziICa4No7LqeJuDdNXlwqGRCmMhtVKooilDC1Di+LB4cyaTY8perI
xWA/qsGozIvZa6PEghxiEDIRomv8AL65QIWHUi/fFM/kF3rpxeCxSUXTCCPCKDk+W/mEvHKT0wmT
n9tzYGxQOBeV16eGIWi19CU5MfyxaAKxGJVdaDLSx2T9g6DXdtBshnv1T+otWB/mCfLnofv76AxI
rFYMsymyOaGnSyepNjH2PzZSCYQcwpD9sQqgrKGOKBTstIcNh8S4IlorkcQUjL6nuxC19bP3pGq4
D3LjwTXwQlCacNwijuzEUyV3UQ+V6v/wo66X19P603Y+e177pZOkqct882MHvVmnMCpmQQd7rcY2
68ASGBt/bout9x9bZlVvjkAbqPIQbJi27BIrCESfHTDanRUqBs5qRxIqEUx1U79QTuztCl6ibI8+
NYssaTK9ncbygmCCiMuUIt3/ZTnB3RustNp+q/VKvzITY1rY6qS+HkX7SeEgSKyn+j5n6aHRhXJ8
3bd+rkcGzta/CM+oaDdEtbOtzQbpjsgsXWwz/+FsDVYeMPJ6LNXdmnZb4/dlBNUul3xSO26y0g+8
6G3tx4yvgh2ewzoTS2Fld4UwjnqoWSrT1N2gQlIjbDWQL+FisnggCa8JGqXbwBdPM9aOEDA2MMB9
NdYeYGJ7CvLG0pMRi2BrWfGfkRbms+DN7p3jaoQdEHdN/s282iajenEFEqbvIFWbPzRMbVVpRfLK
RZnQfUlbvRhzPtrx6ygcf2I3F6zWaPo40ICavcSJSMhOmPqevnnbxm5xHSOwzeNk9Pu1A4hx1H4h
O4dxcGYvRF5aaW0e2NIyyIBw8mWqYKo4HzA02iCgAjRpjOP7I6pdb1XtHfYd6W+gbv0HUr/kHisS
8NjyDriQ3yDGLoZ+pZecSpy4pvgB9ls6LNVNX58OlFQKyh4pHWJORVrSXW/2f+W5dsDZHVye7Erj
XiwEJvpAjyjQFJJ5kin6DMyFuF6DBl6o+ch3fvpwqoVkVpco9pE9VFceVonrVCLDqCvL/VhpJXNu
C6HWSU9Ux6PIhaHJ9JUrrGJr1iKvvt1k9DfMkxX3tjqfySno7Pufc4YykVtxy3Hxe+/ubXoxW9PO
OSaGkj7o2eCHYEAZEwk8mlYGCnsQeLdZA7wC8dhs/2/QQvdDHCzeAG2+shKta3bUV3APkEDPreT7
GxtWQyqSeffM15IeLPhJRgF+Pln0RK6pegnfdt15GgBZiq2hVUuEy++Z1Ln0g9hUJg/0J1dcgoEo
6xH5nZhEbQEwdrDSPGV5DIF/NgFB6TSso1K+9eeMUrh8ggaTnrA8EBNQkzVIT+3Oij+BU1D215W3
erzzRNIw/xL4EsE4BMMcrMsfrnrS4Y5rdLLFXEGyUgKhYSi6TikbTtn+mE5xjJN0jcCzk4jCrKBl
WSDBKTl6sW0P7l91T0UEXO39sxpNMxyGYonVpAOp4xnO7taBaOVe2jIqNLTEuk8aetp8bEDPRkyi
5yzwt8AZkEYLocTnq8d9EiDAbEAsozFk9IkZOgh64BZStRxWyvGHbdadVDf+NfsMaxW6BWvQJGUe
ASWgS7mrxXcJ2tFpELw8yYI56ukxryomRrFvetVAr3DhcK2SbYcB17hvsNZ05t2YAu82iHd/z4V+
K9NtUynat9X/JHtSe24zp8krpD+cmhNRrt1P6s1aWwyTQm00lRdPPXKrFgOJWPwl7DG7upGg1g4K
lMSva7X3YPeLHeAlnSQ2Sa3Ljn8x5/Sxt9O1pqMKx3SRsMGFGpgu0IgK/nMkCqkdbKczV9OcU0Jq
3E1PDFp6erAd04Mg6zD7h/YGW2I2XYRWVVQWtYTcWSc+YtSKQz5qBlPD2wBiGF/xX39rXYqQbTLZ
vZ4F3ecKXo3puvKleBchTAr4Y1xpHkBTIigwhXDL5oZnT9hIwneLZfF8kdgZvomFfckjkhsiz+LL
UK7lgojCT4KC/yQ2m8tOMBq4qFD/oAOvqZnPj+GSwzax6DyY7nhTTroH4slfK/tCSOWaeJGmWNPI
ugXdzhkCJHySBWXawGcXKtj+ndFdwEcn0benC/GNM11E7+kdmpT94IcLrzL1MHo13p4F9KiQz9f1
bcA3TqUqEu2ePV+cnzqIPsIzRjBEs89Yj2PcONA3w777HujDN9qpXP+H+ujb/uh8gfsXS8wHuFrn
skSnBcr1ubfgosf29PKFvuwO5OQ03LC/cGs8KR5sxBchIzw+WJXoKz+OtQb3EsX1jtUDAb6o7KPd
qCv1+x5NS4ngqPOVA57591oCTaZjqFhwkGZDV1Os7fGT1O+oFw+z/ZxoaSjjthHQFFPYF+IeO4ua
bOQnJw4uWBlS1CXYytHl+fuwVnxl1gHOjd2aQa+zIHxD0JkXplS8z07jbFF9AsKNUjaRPCe7FNkl
Vqc5fwDGtRaZocuFn7fDbZPRr/X55K49yM7G95uL0LsNNKdRO1R9ZSqpQuo1NSA3kdeioFBpW2Hz
8ddOAArBGm8pjkY0ke17OZijnGwhQEmkIFtsUC+i1VekW/pOQCK44YGrTUbIP+2q+kWypvKtCnyI
2iqZyTP701QHdZXTBhZY5Vp2O/zv8iDmpmb3ZJA5+iCceavjxExIYE5ILmfjyQpmh/4gjMiaM+K8
Hw2gmcZ1IxX+kHOQKrWOuRkM/P2eoOODxuIyTXrGHGNCtdolL7fDA6uXSwqIpbdSMKNAntw9P90l
6kJ3fZqilIW6OxcOAXEK19Sf67xfj5lkIChJadcB2RG4LQtO57KHg5gqIDbKxO4VEWo+nUqBeezu
5XmUOgwWOLYs48vZkJn/bs/ZKUW7Z+RT7Dw2RntMWPxrRUahaiXmNmw8CfYTfaXwhz/DturF4rRh
84rPGuL92jNYwYh//WVYkHgK3zuu05ZO3d2l9Sy7tV0TTN2mC4R+awNLW7Yk1P58tmMq9MyqQE1v
Qj9q2aO/d3oJXYj+E82i79k+5LgVccN7mF1s2at99SkVU4ZVTKh8t2DCXEPZoHQtqCrBVikBf808
R/CBK3VWZDLW4Z8vZerc8cgybUMLz+DcKk6NzVgwupqxSQm+3Ra9fclm/x3oHuEVJpiS2li9RnY8
C9RxwSwu6nZTidg04OYm1VkdEp3NyWQZ1qTwu+eJTUNsg0PdPpORpgAEP8WAnswhN5vbVXp5YhoI
Et03FxWRxYiR3ec9TAjfGM+fSdXxDNDdw/39RDMrCKEXl9+flmjf/MUY/YG0YRaguwP8MNBuFwxW
uzcPnIQC8nSgJqy2eKY6nb4pl67qW7LXNO0i5AbXClVfW5T+GthPnEUPWLssz399/TctrZcjzxQe
+tF9F2cV8PD5qnGKVJsSif+K6uBydzokuQyfHYYr1mFcOTwKYBoxo7bo2gtqJsbVdkxb8yOM28xH
2GWiNsNJK++vxZ0p1Rgt0Ku1dWJGDhviOFkz4ulb0ZpAmjjTWH0c+mZKA7knXkZu/fnf4l4L/uqX
UJ+myZC0BoBg6l5feVNkpGmFKuLzlbFCSd/fTRmR+V4jgmN2yzdJtpd3ouE7lhuf5h5Yormzth03
ST6Y48cWJgOorXpIM1emzdvbLjhX7L+TfCzy1UzOlv7R1PpwGkgtd6C5E1agE8VA1DtahuXmBqRJ
N16kf4NLkKt8SnmiKGRxbAA8HlQ4ldtL1BRvvnPo4G/VJr380ZuQilBCD+aCo672ZeZF2RF6X80t
6m7b3Z83bjf6VVvIrHB+P6hk8avEEi28WPZIGw1bF9sR6dSS8+kM++29rgJYdOQVhPlki8dSfp7e
GNGT+uzBdbdTzcAqaqQKWSXZgZc7qukh8gco6qxKg1PNKDbirbcCPLKCFRRIma3nQQWOsaAz7A4y
5CE0f6rwVF5bvfi5P7EK02FzCc/xtvQnVKnhxJb62nuSTkYs3WYipiXOIXb9Uy78DhgdkxXgOvrN
fMOMN40C1oCULfS9cYUuc1UKEGY1bE7QT15SZ69Ygvw+R78AFqVmZ2g8/CuSnytDWrpMIY7Uwf0R
BcGBZciYXI9BeT2I8ws6Wkh1egM7ROcDQ1cQOR/ksy5uP3eFoIhKWxEoioJbhVzcMvEUbeALewDW
JynBnJoY0VFhM1E69CC+jnWVZ+xJPMV10Nl3tgh9GSoMw9pTB95F9ckxGe6nRTqm3aCC2hc8pOe+
et4s6A2z6DPZXn/JYQhBGGPoZkFkwA8ZeBPIquHFv+D6Z7BsqLy23EsOt/jxMc/Oqtb3oz7YKi0H
a+PXLlp5aQblkxLlyFlbCgruH0dibAySelO0ONbOXuM7EDfkvAQYPbluIZanclDFs6qW/ODxu/iV
SQs35Dt0h5ITG7F/ifmtwdez75PrMRLlwCaOoVmn+mlE8uYX8lz+iCcZjEvjfTeYcwjm7FTOoHsa
BeUuP9J45D3SD4mCPPD/0dYIImTF52zBTIGYl3o15EBzAnwrPP7YnjRuOIJqaoYtslXrFTn9j9QF
iYlCNy28yIdeHW4NHJNUbfWXQnR5Kb3isjoymI/2Kcn1Tl8OGveF4NYUmsvitvbXL83u7U2uTqPo
dG9QLNs9az8uFVkzlPO0U3CNe66VOXfvcIu/YuEaOrEYVSd6pS3Af2dBBwKzww+Fo3UJqpkDB2Sj
t4XEU4JK4csMTjmDPRL9i5Jy6rnb4FBP1xkmcAvmj1DmhEOsC4jNcnsPyV3AQ9BYooKmlKbQbXHv
Be2iix7UHd6VaTE1H3Lj6rnAClWfaTuesNL3CqirHnuip/vllk1YX48HlkNMYZ+OEv3N1jLnt8tv
NGPtFBroyHM/rBhUbOy/mnJeidWfHvoaVwM2k0YsX4U4JlalTx+z30mOd3PSGfKaoLfwJhizID/2
QJiwVbpvPRbF7Dg+0LbtRvQmyIKNdjuQZXuoFVi8YRBU2Wq2N7zkf8QRMExY5uRzkVHIW5mEqKO8
fYctpJBPbkz1i9mKti/eMSK85qChvfJc9Bf1j4axiryuiclTa76TYwo7wqG3hwWfdZb/Q7Q+NLSB
iVoMj4KuFYsWoITOHQozybJVFkZucWnDHT8ZGo/XQSbx73QvXWZVzbmYA/73V9exdClYP88EUsgh
+4A66TnRdCMsvVxJU2dG7ixGy3Wu9ClUvTmYW9ujqfGAfE6v4mqYy9aK9dA2cC45IdSA4VLKN/ts
7leCton8mKRQnoSVeCA2alPK1mgBvpo6mjl/faLRNvj1qCGkUnIGQ0scOMCkVTycAG/XBuBGIYIP
Lqho0UMu3ijFzjfjHy13XhDBpTB3rTsRnSWnXrhj4Qvac8dQreMpsBwk6idD9scQQtUXy+Aa60nr
UHYJqlXOl6Roj/bl9u3EYL98iE+4qFRKzwWoxtxB738qt2iL15APCgZ1unojs4lOaNidAAmojcwm
u5Idgys5t/qmmF7DdaQtzvajZUblXMld0nPK63sWUcjWWR7O7HhQNDXDGmdD61BnwFXAROjCA5Ro
gPG4CZxlAWnb5Y0mMTX9IfDb9MTTHM4pD3wt+QtmfFhxAawLMTbp2bP8PGeU2qPGBQUXd8phcg+P
Yb4CFcTUGuebsHMU+LXmDChpynNTMj9FAdj5WPnQpmpLJH/wPbJApP2UM6jv6cq/CR62qOQIUNzQ
JWZNbVO7MsB0kQcYTHTRKUnKSM0qAEjI14EhlvJxNhQsb5mS2lBbu9j7rqPWXnfE+pCkDtMZqjsE
Np7z5OarfuVfY9qJ35g+IPVDMBbPXnO4tshTjZ7lqiMaXQAee7Yu1sV20Bn5pARwmSaANfWYpsXU
jRgKaBCCmmnd54ldl8zpaWEmDG2+m4AchlLw8tdvvw5CbhIOdRZ2Oj8D8GAKOqICo2O6DgHGKrL+
IFEf9azYaYEkNglCo2RSlYpOV/RrtGMPvXGbuOD0AsuAXEEsVJuHZ9VmmR7+rfwION4qwHSNiOav
ovuDdsYlVbnFrWNTxZM1LDDgBIemvdcKf8M2JWM/dJrm+OcKSQoewryZAneq/NunA6VEujoiH8eT
w9M/kXmE12ev8tTMvVNOgAmjneLCD6lGr9P6TuMSljYzzeifr+tpHp1rQY8S/qKGzM6bujUMqGIk
MueXeZYRu61lc3qZIqvuFqtz9pEKGIfezTPEm/SJuUurfTz23BglpkqcVQHt8pk/dtJeCFjy2kZm
Ys+LNuiuIW4y/CkDzeNvpjmGxUrrKodu96RXUv2c/4ssrpO6aMUx/aYvF9YSoneedss4eVaTz9Gy
mhUXXeY4eT/TOTKlDqi9M1qC0T23eqZ6+hADcpjTLxICFhAnVXVkX3XKyEn2iV5fwejnmgC/6yS/
jG2pb2tpL0gMgQkUb7SyIfOc03JuJg0ORtEP216xndw/ql5C+HqIguiD1rDc8yF902LV+wcEHhp4
drdjfk5MQPSSbWxeq3ws41pSUSWWS2vusnX0cZ59n9vt/MEemW4D6BzhiBFadgEQyjxOCawWnoZf
G7DDPZYvfJQPi/vPjpKK1pIP7Xy6wA06OGZqCGfuE1GUZk+9/n8+EdGioWCRoiAnQaMdZdIOzjmF
fv69I1AbR8rDceNZw1wzjTngmM6DHEdYtAEsPgwWfJ9jZWFjqFMjB1WGaVmezjvHGgg/tIpo7sFW
Cgvx1iPr0WWafdtb9xr+fuoLNBiGTVMTgeUJsvmB/yZz3vXqgr9oZIhuMEJ3/D3z2Ewp6ZoxNZNL
VAG6KQFso19OYcASEnjbrwTRIZd9atyewkjd+K36oR0J7CyAVHxorVoB/QX13smiLafKNzPK1Cq3
QjRd19Di86O/my6rCEna3gaJAOfn8/srdkg96Zlj0YHs2E6fEonHwUigoPnmo5pliuG7ksaWlbis
XcZzVkI01OsujqrqIhqA9i4cLUTzuk5MK5ui08cQMdIM2ifBIRmwkk30btTUUv/GXuIQOTdmsjt3
TYdUCcPV4fJk9IWYCyfuCK5CGCU1Mjx4AC4CGECHrQe/1almHmis6qs+lYb8tD6gfOGrFCQnWZ5O
HrZFUdNUXjO0mwKti+bwLjlG2QZH5CO9ZRi/NZm82178qVcPWAvfQGX6/UBOBGTyypkRWHvaSepx
WAvwGnDUUQpiQApqww2NV72VlLoULTERuBR1w0jlcTeHdTMj5WoMUP68vY5dMSXEG95xWMBNDwMP
0IMx407zME3oP6Xs8rTBmnlet+UbYfxLgUNJJCsP4A1owxgs+oVcrkVlqK3H1XROMNZ/WgtA2lXe
3vIRG/Bk9n4eq7eKlIKMb9cyy/xq57ItmA75FeG7Z+QLuIdnAy2Cl/j7Zbe+vPhRR2tmNpNLJbaF
jaK9uwkByuIyJc+Q/gZIjYo6JAgk2K98YQBVIsNFoOXS0fT9JssWhwIJZBVwGOSoX4dTk9BAYA4N
chDO/OKjGm58lfBYCh8ZQHWelVTTZf/kj4BRBypAdhiphg95V/LKx5mS+a0zFPagg5Bzm58Ad8Ge
NGypIxWzoLFyi3sGokW2LEISOFEBYtUPtRkFcvDt5goLI0jabuTYDMWW9frEEon+pwZ5IsLzWDqu
Nd7trDXvB13TfAbrLT0pRIbkWqynf4V8jS1BXYq1x2fdD4SFYJBQZ62cWb8fDn/g+ceg3L4TC5sP
oXJ0lmeOv0nS9tyjbCnB0JE43Cg2NcBobwIn2U4AHWi2pY9KufuHLGINNtyXFLgo+ysEaiFAGunt
4eaTeCkDUHhYu9Ub4UU2lPagsSndMH+CgSF0Q0jiRvf9rjKoiA9DXOEHubjkmq8jH1TMWv4Ot23o
qbIAmD4JP51yYYazyCLVjcWzoA+ML9Gia3pvjNsQm0qH2nqvQrVqOyN7B9cDDuqc4j2CcIvJyoJp
H4Tgig37eOzh43kq07CXpPUJV0UBaBGrPbOKHklddeFzqJjUSjv+TWSuZOdf/9tMyZpMbAHBGFd0
gHzoQ52i/Y3bZSTm7Hjz8nlhH83fCbmPYDFL7Yf8en4iTZ4N51MJOzBcRgvzywHQYChqXIAq31dC
9QmB0zDX9JLVDQM8KvWgdjeLKMDA3bp2KpZcmK5ql/pbmOy0XoNG+l9TcbCQC2BfrtZOinVigSqV
Lv/op+XFHFpaJc9vpAP7vvHHgMBp+fUvLJoVnF0xfLRmRMAvlQRRoJgqB3/jVQn5WSRbidcP9drT
5yY4x/k0zU04bwKJ5u7uDmCv95sJrXEDTN/X1QE+qntzMA/2mieIEv0Ji7i8YyuOsEzDseMwYaq1
I9PmpXeeP60xZG57XXwZpNdgjW2AvIPNqzwGjQ+TPp/vAW4htL6MrEQjWcN+WpcrKOjcneaJrE1y
ePp2g3hDtKYd4fuM8bM5ImZ30elLgku9IS12mIgvnqO2mC17/KbCXKxtqRe9aF8y4WQyeTP2AePG
fOabONh/VMOoTuvMhTxQ4gtuDZ+Vy5mC7Be3izfSQz8Ej0VuoDqbxYmDCRu5jplPm5QTGDS0BceP
Do1Qw3WKOrEE+N9i2aWm4Sb3DcWnliEXxZD0qofFq/B1JYTK6HTBQuoKiMvuu9089nvcCnLa7fe9
kT93gBnm1+3vERKVZ6P8XMrns5JL1aS0MCqThDkgnlnvM8HhFA/OEFXh+tZqeGF8CACcMESdReF4
+8JjT/uVq9e4g619ZoxHyZPgNDwvXwWR217d/1ZgodQQS86H77PnAzlR2/TJutWvLA3cusZy/cx3
1Mm/F0Wr7KMMlap1WjDtI6Dn3Q2wpNQrfcdxunwnO1Rt95I9kQrGTJOQPDkptgGJLAjNU4TXJtpi
UAqwLSUz1ottWHNTfD5r45FVmaiIgsY2MTertsnRE6SYhOUMhTtzMR4tWgfHQu9qDxLHGZ4pe68q
qHYWyGCipt0MLIW6CWQmSGx82sz7r1MSfNmTT0hSp6XeGiwoPBBKHQ5YDoLSpTE2Baq8h+c3hgyg
3Kg9BpDTDKtfzGP0bbks4xNyl3qMrk40ZjAJfRJ3w6H8ozJxTSYvDto25Ctkpd5XAsXxHQ8/h2hJ
an5SLYuqArswBcAXdCFyZ1lu/RruX6syJ2SwKA2PwkMuN/OnDKUNeMmq9IUWhHbblfysEz45FG1r
w7CGloESBIH0NRBf0IpRxrHErsQ5HDwbmwplrfio6rlwv8WyyJjOQDiGMfvih8jsmiCwhTm6zN+w
7tyWpsCgWoYjxpk68ET4pcajbnSN4q+PrINJNWe+z8DSOf7SMGnHEtOsJ3qH9L8VXhJxiN5WcQST
tzJwfDgRZwcurtXhIpZR5f2amY4U9n4IlN8ZcZflnCJZW0Zj7DmGctBa5x3o8mhMqPqxqTNRPN9U
buLyvQQz8Ud1MYNZTaV3MF/UwoCjLtb/RfQnn0k73ci5cX6OSI6p2DDUUbgioRN5wJJRI5TQwLEe
98KF8VrTj0VKnLeDLYHqYA1P3rz7rYbeeM63Cpn7mtFaWzme0Ef9dAL2+2nvBkwir/sNrBxPm/1C
ab5kKFXaYZBF52fePJNsa5LfsuJD3JY1zgx3T3o1FY6e5jv08Xe1kI/zbRsZrNJ9bzrBYqyywume
8QfGsrmNe7YDdMuOdDcBj/23/A+sX/GCrbvs9W0e3Kf4EVfTMDrQpnIeB48Mznrih6YqXi+JrBiJ
0bHbvzyUZcZgfj3t8+grFp9pNfFquqH1SUYm5CM05t9k7NGLCj+u/zPhP2W7Zfi8/FlMfb67Yzw3
EX1QJseyXpYgmR1rUOQijC84Eg5HbUleCtzddsYE978NOSn2KfR8cdgtXhpfDQOq0L3JyRGLdGqH
f5WYya1rxN2UAHaPDToXghYz6L/QU323lLW4l0uM21utth1tpm8v+ufIrFsk4BQEdYoBMjw/HPCp
+XiyuJcqEu2jhTG3iR4KZGmd8GMstiivF8bUzXqW5c4fc1HaYaAryyhFcLkfnB9uxaVJYdTHz/X1
cSvbycDSkL4M/AftAWX5wmwInT1XKOE31P4iqof9qVmnNjQDf9etA2rhfCvCn8P9YsXLB7PCkd1k
8TJsW7TZ3dQAtKZUz9Vm7mGn49DxB+NJ+4iMopbcQLgHOlSgvpZaS4u0zeGUAHioN4B+Ydl/lLrJ
KJZAnnVLPN/mFkJCJzb9FkI19tsuLDqv/SrFwFRcsRn5u8QHRgC9B+VlkM0wyn+O8wYPuzZCk1sc
2uMq2WSpyJ0vtbgqwCFYQkNnuSpacpx5BFnCeR8Pc/NpJb0uLjj8CNaQUUBiuJGaCUgg0aEM84Z2
GPy/SfqtzUHqSaVu0bR1ozBgjZfCDBAS3FaTI/uso/siOLkW8DV0CeYeXVovco7dLk1pntvUa6Ux
OhwwzvyDjnkYUXS3ft01R6ok78ChBhxgmYSjbO1Ml0XQSCH3GXHOlIisTg5F4GeynwxebbG/XnaY
tnrds8ZkvploJwjK+sz13zDh7vVHjuyJQxEVQBltWbzqhpVXcojoAFeRLyLwosIKC0BApWCJiI+v
Bl6oZnO1La0STuKH0Xj41TKBkMmHOH7nZ021Li6VeIydxa7FuQAcVHLFpCErYBvMfdoAFeHv171a
xlzAY21bdhtEGBVcn2YEC5s7Us+29Wct0S9zJMKz3hT/+qMkErk2DagxSUwDLQ7c5lo2M+qVkEWl
LjIxmjHQze7DJ8Z3KMfm4+icP0IRxKsD35OxM2gYjh9deK0bynYcxrZKqk4x3kiqP0HfCOA7lzON
xYKfpWEoqVm/bfq1XOGbd0ly5dEqtv857NfAWG/pDymfhoZEPhCo7N3/4Ma5ccxk/rDv1BnzXDHk
iyDuzZOnC/mexr10wMQdeE3YFg6Nq7+OwF59fYVbHezpzfaIzQEgx9pGyEU8dWxX+KJRAk3JlDgE
5cTB8m+ulqXe/Q5RZyAjLK30LUpS6Afy5plmk0cmyDeuT80VIti4c2VWczOmZ9d/FpQmFCr+MebJ
aCWEdLppgtbSt1sGrkJw7Vpi3CQjOZ3O+7Zgi71k6unRsEKdaelAP1CJS0urIMiWH85ZLhQ2hWoP
mU5JCrUwBmDXWhVO9jFjeZh5/tSjkQP3F/8AEM0CYgLQLzIdRkjxH1HDVWgS7eZbCDKq0YjeKzmx
itGVsJvwsAfH0suHD8/vr1KqUoDKG7B8Hl6jn2J0kCr1SwGVGfJj1FvFkzPCF7i8g6wHS2ZCkJsQ
vsQ6A3YvP3DYTZnSEJDVLKoqU6jc3dnzikAiD5MrBfGiesNbyRIJhAUJmm6N1zkAz0jXOh8guAi2
mMRhzq6giN8OUUvHfsrZxNS7DmtA/7ZEABA2p4dcYVlvlsGH6AXM0sULsSIFJqeAioCqV3UkeUr5
yfENHtt7PhYY0PB5HZHdudWDsR3aGe5daz1IBniEmqNPbuO28UnLkyH3x1xr45bjAGVLbe0P/RPK
obzsBrrmEl5C3nrqIfzGngrDWz9qYJnrMpCARb0L0r3vYp2JVVvU0dj5e8tYO5it7TZxQR2rmICP
29xDyUMNNYhr8UbhRlQxl3ePcFmyFX8AlcgHKJheQUgvCieyuEL/qL7IJgWLSljc6Ulur5+bU1CQ
oTcJ2Ydo72R91YIS/mHl+LjdXE19rSmNmlzkrMiM51Z8T8mIqJZyqqxlgwuff0R+H+WXZtuby/on
qge6ErwbnzbIeiLTppvAL2CqBL0LYbHgU1mf762dl5FcjH5H7+zbHouJifoW3+rGb5DUrcVX6L+p
YvR4mVzYNUl+APWez8wC0fGxJquk2Jv0EdtdNTAzCQqPgnrc6+M41tbz4j7TtClgDxQwbGO0TyTT
/5Dkm5UYqkkVqDjNAokF2bsTkv6DTkq1QH6r6cmIEZfIlAesDtD7aR7kd15DOJGuAzME9xT0bJCp
zNIsKSDuA8J4RRMI2H0kb+JB3/FtwOxwNqGO+hAd0ZJwg6+IuAkKMFoaTy/Dvf0pxCXqU+XAn8+F
iogaJY2KrhpdYdVbzBuwaIq3ZlzmEgS7ubyWS/Z60idTBtVTmve1JXTN3yuz2k0W0JDhxx77alJ3
o8qBXmNFB08PwGqUbeT8CSgc4Z+0lvPvz09paRqINDGBTIYcyFe6SsnsFb1pJ3LQ8zwJQvdLMx7a
l5lo9loHV6JSW64pSWYjp7bxjyK7BZj7jaW2nUnVK0Qvb6YAWh2C5n6yqKT8GPpp8yRr9Xvta/mp
HRklaB/z7JdI8qs1jR97iDA5Sh5MHln+kZHGIMaez84IdrB+/jbRyHajkENjyVXO2efqQpp3IP0w
93hD9pxeSEwO3v6F148XG9hH/ME8U2Wse9tRRd+tp+aN0PQwIdfoLFDkpVASmof0/ucL8ji+5yhG
COzs2rEjYi+lolhR8ItxCDe4p/efaNfkAoBG/ov97PuoqW6SFfn5PG42f8D7zNDHxkYe3y+PilMN
LU6jLlToG3WAmt8HWnWcWvKlV9XV2OHe3jpBcD2vKa6q/mW0diafYeqYH3Adkxo8t9X/i9PXPAWB
0G1Gfyq9w/jnK9omN989rZEWKA8gdqVSq8AuPr0iIMtfYpPnO9xUOBLXtfcAtVr77mR95DtuzIJe
vEwi5Deo80/UlGVPVE37zmhwE893S+c+W5f1Z1E7VGBrjMeQEpYXSi3jq9MeCCzWQjSBoCP1Tzoy
xLSHL9WPk0TTyW1ILC5ffQUSa9Nu9YtjHfgb0Xok/pzD+Sz5VeuwjhTmD0s4dS2HkZ4btLXsVcZr
cY8k6M0xybDwBNIFphysb4IDb+srtPuBYrM0xllyZdqt9VUcLwgs5cnLfxlhSqHNX8c9Q5YoOPtT
zZXQeAlhbp9nKCr0Y4F5JTNYW+XtURRZvziv2LKIza9KgihySVLqiEIBRRZ0laPRwwsrwxFjMvjV
oHVZ3Aqf2fV7wsFYWuh1ewL089EkpmcpVoQ7pmq/RHSfxpgHSOyVvDqr/TeetAAN8iTk3NS4jB5b
meOQ8FFmwxpMsb8MXgQ4KmXN05kfSJkswDAx58iXQHQQw8W3NHDvTi/c8X5jMM0FhZCWn7Gjdo1C
eaQqgZeXLFpZ+lcRAy3HKSNeUOQAaDyrNwwQo4879T88Znl2azNQ72CJVUv9nvAmzOuUKwr+29tS
HSBU8mlh9ZWU9NI5cKxCkaLqjL0e2gPYkEk+Gt1QUv+hIqIyKDl4eV/a64M8mSC2MclNi0d29P1H
FZhdMA632+E5flEvdU/aLfGgnBgxYSwiSiYXEpuy5rHnrBRiemMOPHqyf79ItNRISuCPp2BaqFAk
ztRhFSayQDfJ7ukHRQ14UqAkg6oZnASOBNwD7D4qlvY1cPxflqdrFjZaQjh9KuSlIXWEU/rSQaGP
NEpn6qI7E2an9OaKTsBzITNroiXlRdXZQjaxngObnrkIbyg5lA6K8YPML8YO9l37+FLFzvPHcudX
LaDYkRk+DGnsTnzSyffqb2NNeDA6ZnVjgGadekaOcq+6ViCsHjqL4E+AzrHb8t9VqWhbBR2G2J/q
fJYC2kwn1cj6Addkoh7a0v7LHSDzkTNCKOuvRmFJ97ZoNKu1j5ULeZ0h+WibTn3Jjfvcc19k2UrG
BFo5Cp/xm5pOeSDY9P0RZ72qJ02eXd88w566JhB7DTknDZg6jmGWcELK62S3OQyS8+t0tKEBj4tp
LhZDw2vMX3HD6aCAsJTuchKtdoYZJPhwJkjgg7xQbstkcLVyMI3yp3F5DeoB/Q9LLMLmrk7qU5zO
GhpUE7zHOiWzANVEqJQBcBBxk8XwDRRaOGlhj6bZLxs3H1n5KwAf0CIhLuuoDhmfs1RIYdGOw/et
S/pNUqNFrXGuMpxOzzLxmhMUgE/qGgsRhKOAdrTIPtGs1RDUVA3S8Gycn8/HckJ8qIdEW8COtQv4
duwSlwFPsGAlQpsPU9cHFIKcZea5prRXlrAq9J03MdP70YoQN0Zx2Osw4xE+B//gdOkZk6+efMnS
YpAVMkl4MPE9/6TpS+wx+0W77PpQoRp5BAtmYvF3zk+CyGvRIwflavmeDMgW3dxc+GEmYta08rmG
2EgmUarXG+jIinYwc5oSTs90RkVmXRFPB6quhHDQ8bhtRPP/d/l9HVKCC6L85lGLYYQZsma+uab2
yFlg1B4WZj7Bur1ftcUg1iNrVfiGmhQUuQXSa433de6oSGtsCS62C7n6S1JK+00Qyr7+gvts93I6
72cUdLUztzzWUsZccybBG4k5RDzSW0imn8YXnbrBUO6vItY+OQ5hgGUsaCYNB9DZVN+pWmsPpbuz
hgrVGh9Hdci5poeLflD3tunHq/XD95tZyE6Wo+AIuxl/MgPqTvPEP2Rm48hLYFySnPOzEw0crITc
OChsteTwOw7RWyMMtktmRMZ11Yzf+irqPoN5flvXbQf3UoD4gZXdJ2hht4sD1b7NvtosWVbjmyC3
rIvvg1HevWLd628OUioaT7ByF3wZpsnFkNs/mo8LbYbnqy4vVDw5zLFtCtC5FIZHg6SnON/lyC1A
cYPaKGQqzG0eihhBy3jwmcqhxBFgIlrmXuaISZwplw4W++lG3OMlu4FstJABHRXGeczSx1Nwo8hb
80XTQz0W40W0FgkvBUgTXhR0AeWLXzCBz3NCePS+u5ZOIWm3kuly1EFPAuk9FYAJCiIkAoyF6PyM
xQlYpd/LQyyO/OjCDg9PYT9zlZ/YLEwoOkKKBFYAXawTYiXbJnJd6aI8pGzoUxzwDiNmCwO3DIBO
BGxY//Rr9rQdv2TToII6ko0GhK3iJEtDyRmSiv1lAsqhcm5QOY9zSTC5Ep9T9h+OOPJBbai93cQs
Lb4NBGorvaeQHz/7s0+LR8bOhbu2zluBvhMaWmlrdwkha5LhLspt2IooK+IJZR5+mKiUvCQgC1la
QZV3IAU3jwo+2VsDee7fKeXJl6UMnmY6NHrPqOAXgRkv/QMYxo+Q8qJ7oamC6kmm2hDs+DpeBW8e
aKwnXS00FKYZSld/sBQnKn61LoSJQWqwgdfhQku1qVc2ntsboHBX2SlrXi1qhK6Bk8v94ogkjk7e
2BvEYWiI/fuAfkgtSAhbc3UD1OctZWsOwjrbBzGN0bbgShBDtfd6vQNiMAs7YYO/vpzbxBtzdRb5
wAAST9ERRrtlVk2RHTfoDjwQKB+XQ85Sgd7fKbEuWNRh4kN5SPKSyNaSSRsoQiOiYk7RbCi1/lSV
oRuc2FeM3jCrOQjHSVcQ2t/JwKkviFDfKf5pyhg6muW7FYymZb1Aekh9wJhEvdlBOZu57aWTCHHj
Et1UwmzgVT4v+/nSksMF0pu+wS3nUdgCqUnQUhWJ4YN3lcHWj/n61X2Xf9MiVgtIShsvkNu/KT10
lTk9pTC6fDN4vtl2dwb5eoQslapSUJRoaemydIj07ez8roDKpCTjX4gjG/9jN7E9G9oPBJ5GN+N3
q81wcJ2SkEgR0NBTgqCZTXUZwH8KSRr8Wkd9ycqsJg6puIZnb98vaJrrtMNiIhTwWbrRudjLtC9+
agVDnI0gJUTkI8IJjaHpbS+zqWBkgOIu1O3mtG0xhwcHEWIV4W38GYFL4Pu43dd25cDZIkpMA70Q
fyZV72CIUZzLhAL2Miviohjeu4G3z/T8AvehTkKHe7hi/zmQz3IZzLOy0CfVEwBt9p6dTqHhSVGN
P96Ht55KSKVqz94Yf4MdaYL5MtNXYPOvuNm/zBPvdRbvgJfCtgtC71bJX2BWLs9s45oxhqp2eGrY
8G3ZyJU28WfYsbAUbcpNTykcS3b0mWGmRcJEtoTsqCSlx8SoStrjJam3jiUYs9O0qeo4NBr+jFur
c3ZDYaUIyZolEnJPEAW7UxXf6T7hU5ovzv2rt9JBdNW6lwEQtdNcXYG3cY7EDXeZOjD+hPkL5gIi
OUB29uNH/MUI9zHDTtIPXtRxRzWJGKUyRp49Gotab7Grb9aj9FVJ5BGN449aIJeEpaOIVwLR70OO
EmlquQAh92ETMxYhaqiPQ2L7BLrMUi4m1usxcA7RCqfrIO/cSgiMkoCEJtqk/beKcllo/TJ4tsOw
XyWNchMooIgGD2E8CdTXZ+y9ZkUaMdUxhPqtM43xPQdfyxQXwe+LuzI9uYQ0pbUkdDtSCXilAZnT
95061VP1+EfJ+5NUgGwPanXZ++o3ItwxYN6wyrl744TzLHvNhrvPetaaLXz/BoKMKykOXBOXFpcS
hT4N+VCSoNWcIxqZYsSXPsKU3OXG/2JQQSawL1ddMBWMUO6eqoWpgAPaIYUw8mHwKFFxJvL06eiu
13W0XRxUoCorWuK9xt43ptg3+3AoCLyWu9T9vGRh1aRhdyPzvT2JGmP/86mRiOBtT9365jdYzpf3
6tZE5+vVQHTBdl0Mz/d0zWaxFlHkwBTNOZsFHa2HAj5d+59nKKbVpHpOhm/sp1agyOic1HLtTDm1
5bMt/bNjyYEgJ96TEgbwJa1u3WIJdr4o1y8D5kPZTPdhA44U3b5JSLTmdkwJWC72fDcJhEAnkzT9
zGFBA1iI5l83pfAtluJ8ReDMx9Vu2mwKs4LP2FdFc4cPhItY0WX0YMQMiNRKkLpAw76MvERToO4R
/A6XoTygy4nqkKW6LhCuH9mZBMt8hTQwom1H8x/ni65GJG5cPnjRW4m9DHgqP5DugjZyTdUklSFu
x7mUSmRumRii0FcTlR0HvDNyjamEckL5lDQIjBq/n7ugxdw9ccs05wyjF7Ob62znnjer65vlTNju
uulXZuZgosvs7A9viP2Oex+BKKMRlXziDE6VQZUXI+tAUfPDK/fjVvlaV2qPj5BV/KUpOI3Bc+iM
Gj74A/1V3yCWNHqrYOzMdCx8Rn50OUEPRBK/RlSF/4n5ED2Ev2BDDWnT4zjYTMc7zP8WzJwLKHrM
RaZ+hJeTqktESFSB2XGpAD5+30c7viGsOO5cWi5WylfVbWdnQwzVUjZ0KL00Fj9BOyuKOdp/SzJs
ABLeGIV8FnyZRmn+5vvYw8JsRoExTzpC5SPZH/6akIu121+A/2+6bg08w76106pl/s8L6e6uI7nK
I4oaNVl96m045EmyRhml2FgKTWPRqUeWsAsZQp8hKFWF+XVmoTtnJc9aEmtVLeQg0QU2/o4+u9JI
s4pfm/S/HABrJOkEY3HSc+c30Cpxb1V/zp+m0DCWIi0Tix5d4azchJI6x7a4IRE6r07o76LC2cnF
c+NeHO9gj9dtsEjU6dZ/VRLi5Z6r92bSEnPVr9YFP0wvjSoJlTq5MjDFrp88AXat0i6bqynhJUg3
rdvGoVoaVqkBjm5LKXAcJ+3W35PIpjwwOycjpio/X7sx3PFT5qfOXVscGQlH9CeJka+VaNiovIAW
j4lsdOcse6ijmo2y5xg7fhhk4mMWjz9fl7fFN3LtqMEz6H3Q698qrtwfN65eUWFv3lMw8017Lto/
GuNjqRsfl3ybzTRDryLGZrDXRJIqq8ZSKum83C8W8KDiOpKePXL+aWSVK2iBl70IZIR4phUWtG6P
Wed4XYAuBcZF3Mz0FuqSwu/5eaos7EMdwWkVtotI1Cx84/ev0jHa4tQFzwulcmc88mnXFe7+b88n
1mSyo9/LXs4UedJpSK2x/+sd2qcrB68wNHxb55hz4G1W+1oiEUxDBwPmkptnwHrXjlWqhA66tgc0
7ybeilaSQpo0XUpHaYQ46vmY3updqpOX5Tmxeht6PQDUASIatUF4KsluSS52wjWFwDs+BkG/f0im
L2LUuhawKb8MUBL7Td1/oq2c6WfvPKsfO/cvvlCfoWhiNSEu13Huyr2Dby7GfK/5z+bDFeO84b8D
CCBtgFrDluPZlEt90N0YETqljTzqkwj+tOqoIBt+aeA+43TMDtgcyrYU8u/AOKNmEn6SPMOIt0IU
ZRBwVC9heMOCeDgG/2Gl3OlyeRf2h50LVqdxOgZemTiOYRy6yGEv4/NbP2A0lotMRH3DnN8LiaiY
4pWBQzqj+UHggtBixwFjdmkha0Pkrv4NVyYoAHSAqW2Y8veI47vALsZYhjsfWrE0eg6Pao/2JtQQ
BXddpcC7GxIE7esvO37QSjTyxpCY74a40hzj0uTVH2t52k5HdD+zuwOs93OdCegL1pO1oc+iOnXB
UdCR48+D5Ii2ksWWoPqY0s8nFKxIKyQ1PAhYwuGlADaIelfWXKEJyxikAaN+Rp7/UhZqHWkBns5w
pQYm9fNeA/IsGvmJLG28IIr0Ozwge+Kr//6n9Oh4fCpKJZP+MZ8dHUtFEMSeXpp5dNRSfaYsoS8W
GuJplfzw7V0CGuNksy9T9dgAcdpKEIUxwlZXjZoOteiNLOLJfsUNYO4LfDhDjJWShhiWyZ4oT7ex
ccBF0uyAJOW0Z8OGuk8wYCSahkg82DEDAITZKxA7z5Efp6H0vh/XctXJenmlLMXlnyfyFCu/ile4
wj1R026v0+QIE0jkf1J2vkdaiNwj4C4lIYy7NQuwEYyN+Uw8xb6GCKtFgtXHKBqiwrW9Wd/gSZyL
xo7UZ2ZkIWG8nVe9rwahJsjqV6g6zXig6QOeh+s248FxPu0lOtGMUgLGXeQakj08Vdu0DwNJ/HHI
aIugv/59YI/WfjV+/KYVuCY8U5H4Ys3Vw0gftAj8UxspmEJyUP8aUdi1ZV2Nmuj+NRKXxRHqcHgA
3PbSlb9MzqvN8H67eo9/97BIA3ZoZx4okkaoGoofxW+M1R9DgCN5dMiu2a8ej4j4JaUsOUxDqaz1
PpWyUNFcDA3S6n3ZQIw7oSt1DTaJdlEfMKhclI8C2y/CLm0f2/N6kNX7JyNdceQu4AXZmT8gR1/D
tEQ7z4DAmIBh/KHumTKws/qZgN7slhwa2Ek6msz79oy1Jy3arVbK3+QL5QReA/7ZUBP1fdalzryz
YnmDprEtNYtuzrKwJbWcI6g7p/rqr9w2r9bcL9ks+J59ZxQtitITvS0dBHYS5V2hNMtDR9nsYSiP
f6gTT97DEx1NuGNn4pvnwX2V6DJFwGkNBIgtJX9Z5BbKyJ7fUhwF4y2pBIK2uRKn5/VrWFrjczEW
s5QCXKWhHpq76janQkuY5xSP8248d92fg1j6M7FWdMhvLzdKo8RiHetv0Z/v4bvOc8WijkVt1j+C
NHYk48njlGfGM5lXUMrNZqDQaPPzZu7mQ+svoN+2xYJWVygVwHuv/pHZVoRnSL7/TUaG2luXb9H4
8IW05h3I03bCoTvIZUii8+qboBNJ6KUvXBh6JWDpBPpJkOLoCe+XpBa2TZ7fFOItJ92MbjhGxaMe
/IMPr1lC+njHz0AKMnD59RRreJpf1MC8maEA479qfRTTJ+08R04zlT5O1uH4EycA7mtEym9B3rwp
z8kta8kzsw4vekqureEQTiiOJENhBn706fH0IH/42GmoMS/TNBoCAqv2dD0mv4hzlibY+K6pMPvN
a1q/R7QEPnp5xmro044jSZKkmhU7/4RI2nacPjrdia5tq88z3+o3Wn3V+FMIUnFsVvwTlZ0ZLWbB
uR10AAN0JsCQ5P4m3402L4OebamGe1Sh8Z6v9mMcl0TRzFowdiUtW4//xWyEFS59X9LsvQZ4/cCA
FIKaG0MRjo83hmkrFDDybCGygf8Go/OH8gNuJU/Q63gtmwPK7LZ7pzUcYsXT3hCt31CSvyoDSlI9
GzTMw17RDt068O4OPv051t7FGA3TruDXP/CooOb4t2TKMG2NGJf3Cr1tINld9wHTlSu7DvZAmpfp
hiFHqU3biDDZCI7BHENFwkw7J27RT1++4zR6WQimN8w1NuTMPCDx2eBzmfeWPdSVhFhId+h+fiBO
IXdA3s4VbNMzxJPS9C9egsPnXWWR+83qfVCdHCpRTBM1gznNV7hYLC8Oo4cxWR5ghr8G2Bdjo87K
y0NAZYXApwPI5X10mbE8biUHABPI++TJDhCk3A9uRMC3E7SkuibVrMRH8+lw03z9DpQLLRg0U+oD
DEKjRp22AtgeJ6bKBVGER8z99O1a56BjHdDaOVHWoxKwOZRQh4W6ejuUkokxBx0ZXlRUMYX0oc7Q
af1603b0w0y5XsijGvvKNdRV7xvH8fN8yXl6yDzIRVGnp765o5k1X/nsqwP0vRKwp/hvV8JD4zg4
r+SNWtI/Ich6k6j90ZNEP9r6KMpWPWvOWdM8B5camZbuSMRq2y6+JSmux685Km7KoyQCy+yIHBin
nNgg2TTHQR5nAEotzGnd3nDN4ySGqVvcXK9L0di/Jj7J9tyGl1mPw5M42HGcqkT1yfHqjG+ZMQuc
Gwrl1m+ClIiQkGBPFy6xPsxQ/Zl37SfmYfzDuXhOG3JCVcnfd92hG5E160z/9L7RFkGPY8Ivm1Qg
Uc7qAnn34Vm46wurGYUf0q+I1eT281+z5GerDbNk1eo7RA+KsOWDGedPjgDnzJuEeAeI8PixrNdd
tRpESPUgT4qzUre3etpeIBeUmhz7g3ulXy3ajtmvtxkjNpQgJvh7M+S+jylzm6XY+wUDkfHMGvIj
etQVO8F1jiGq/r8QIlNJbonDWXUd3SdYUfVia2nbeQI6ZrnzQhIAhBD7xjOzbIMlJtqM3ekqY3wa
PctvjKgzM/Jt+CQ2gyAhoeOd4xX76cGPm1RgDNoMZtyCXVBbvYas5U4GecyrhFLGdnlXDNemUvOl
UoV0AP9OueAwmkgjwC9C81XnxeL4gL2k1iSfkp+ynKDyD2qpp53spD+mwNNq5Ojp/SN/qU/j9qWx
XJbrGLqnwOqQjA6iBe2JhBfF5x+WhQQUyqt79BmGDYxzOUfBvxOYGgMLSo09z7ZCoFc7WWmPl8Te
lyhYXLdLqULJiLl8CF7pgVpf0j4H0N/1/4xE95Bw4IS+5EM8/M9TSnEUO0emnGdmHpB+V1xwP4f3
0SsTCyBjssxYDdiKZ1R8cjbl3SjD9wcpIbOy+dMZSiKi3DKgGS3DYw5SuT4ezqIgAgRBzaAckmvQ
ePx0XWbqYL+BbyE6vsFVLCWdb3K8qsoBgUFAnt2e/ibtf3LEZJ0YzTKX93r9+mAgYIplrqSCi5BE
cPsFKYNYdcnK7aKxc40XkXm33k/5vz7VdXTByr5XE+Rlnj6wnHFUJ8qMuBTvuSTWgA1Tm+DX8qap
8h2ptUpSizvGm2Ste9S/VhIEZNjGlvN0HtSA4zL4ZZOR4EclSVJLhteDq1DHO3DHkX1bsO+L2sgU
u1njdcQjsSlkP6kQDbHkfzdsWE7B+kkXw+poiMK8HyuvaE88HTelnn5fyPwhKx++jtDJ+Xc2Ozdr
ch8gouu7eavzSCzSurnl5yJzj7qOBUUOYq6II8xERVO2SiCSjrWrcH67xY7g7FxmQR3XrNTI0Y0Q
FlpxLPP9FGbHzQXTuiJL/AqLvHtIIePIbNSUpmQylBuMnhsoHaahFaBUIgyKhJ9cOxUDbNdZkQl9
IBy8p3/bhLskKyQA0WIOJ76OurRAfkjV7nzTn9Lax1GwknVTYfPPeqzXfJDUNcvEmidus+kYDxrd
Tuw82HLREEATsPnYT7s37rL7VQQfTbcoDhZVHYtuAleh11hZDawN4rVAoXW3LiaLD++cFoubZoGt
s3x/9M7WvlvO2Sq6BtVRruqnPL0iPJz4nRUB1gNt+KjTbWTLuOXhoQSjWMiYsS6dytVlJp8Cn6jh
GrS+HkLEFZmEiIqB4lQKyi7W0Tifnllg39qHEkhpICqAwMhblcW/MzQyqtbsna7kfa5OoDJ6f4QJ
lZzOIVpOuAwMztcPU5tWhCuJnFnwYmtnEDRwXPNW0eirgNj0xIHcTK8Qzc454gm042fmswDIyOGI
hsJw8pAEZrD1rWrJ4KSIy0PPftXnh6xJo6z44crfyimdZ4Y0gi7TMZgA8rV6lpEKgDjgWGS8sUDH
0vFk++jl+htSCHRavyyp38IhkN9hnlYYqsqOjHp6C4VsJmjKYmuqmkNdazbHr/OYx8F0JkvwPcD+
myCxcvuBl8DHSwpqtzUQr5HPpb9oZt65IZxmBB8Frdym37EmiLHygah4vH8EhScuscrvOS5X6GC0
MCO+NpSgd0KRlC/fj0JK0ClC6eEgCiPPwxbsfl/XyMngH3hb5gIb9weJ9MC0Idzg+mOUC3db6DAU
rqqJE5i4OIMTCH8GzNixFIfHl71Ron1hyN9dFGmh3iocjUy8GS/8hedM9pS+OUgzBxckgNYUqp5G
uGLYaskVE9FkSDOGC3kVescrqvq/UvEKx/EX2TRJ9FbCrWn5u+bGHc97a68kdoZLOV1/uHGpHk//
Xs/7s3nWkAwR1CCAIi/pAsENGLrAGMntOF7CcPHayNZ4OgJCodeH471pB+gMFtPByYEyi8yF2Zss
0Dr0pcLbdpYGqaiZTcIH1uZ2p/r4fsPdC4TBDg/SPjzNHH+XchXm1EfnIwBcny63lXKSl7mGchp3
nMXyRIuXdHJX6au+AxpzTo/3ln3mJf1PYwpoZKsgnGMZY2xe+HvK+ZF+E6AW4rTa7tJ9jRi+xgnJ
jE64+hAaAIwzFCbtaTIsvw5RII/4To+5FlzC7b1mpLuZa9cTjNQ40d2nhdVxAR3huEteZ+7gY8ek
FNRhFfbnrJOrd3bsnPVedswtVxqoWtJiFYzcCrZEzd+0Ug6Q9BDetuS3M0g91lFJEnEDBv9VwBnp
2PHO2bsC0FVuLkTsGiwsFy/r1houzkEF+zJCLbNKJj0ELtUe1PBY8S8NvByAI6XYuhKQUGtP5+Rq
dEzACHX0yj1rukLdhdT4AEDY+jccZtJNj9UllzdinKtsAjnyL1asgT2bznYSIbtX5MqoV2eXJnoQ
6mpmurzDDAbs/Hj3fQAZpyrRZNrEftJkAxISDJ3sKi8h9oN3QokGGc+mwDb5q3k3ceeL9l8jKuEo
Afz29sCc+IJk1O4+fWRAObPrPlZEvfmlXZWdPuhVQaBvO6tGGWZQjl5g1I+XUK5kH0IqY2mToBbf
85JLCVx1GHD8Vi/Q+t51qcG7nENsrJjKX7UYHTZJtP5gCHq8TaUBY25Qk7MEKyyJbmXgK77vq6I9
h4VNmXT6dcpmmbqzWZDdt+26LX+qHd6RquK3TVZs3E/PonlfhQkGvKdUYJkWS4c2uWmYYVLFTZe6
Wx8k1f2YAmdfWVPm7sgCmRf1qHJfNvWvfgaq9Ku0TSXEqfRGjdC81VYfyN7AmTT2usu2Ib1T52Sk
LDE3Pgn04oZHn0tIqXFLVkZ20ZayYJiAL0vTErNLscsbytJ/Nr1wpOOCWUB1Vche7+AGnTxklfBe
q76uXiUcm/433noaE9Tl1VcAF5EObE7CvFBTAjceQNJy+Zf6YvcKnoswNlpDYPp4CSEYDf3uQKid
tBqFZe2J/xXvRzkFn7MSOZlfpwyiTq9LtbyHglPBqF8IMN4Y8ayXiGyX0jc5oZmgqnS6UO7hJLjj
bVa/a4AmF6CDWsET4vS/VVwqCFHUdAyatgMcEHS89f3OOlcCkZeEx+y69GguhAJSYJEeTBHKVw7C
0uQz6FO8zBNddnCiaGnRVCFQhbZ+g1jNkKgaVm8eCHyGgEXwRjUha0Rs4S21L9nAv6rEc+WFk1mK
37L9cY+zKNxc1oqEwstqFhs1TS10fX3f/Sbdc+a6+MGZo4x4Kpspf+IqT5SvF49Y3Uok0MaMUXtO
dsDfbOzlBc6ty/S0BAln8yHofhHmK1jR/6jgET+X0zKWNonLN+vOVduQyBAwLoEzpzy5yns5UCRy
hkCBUIfaGEZuvmNFG+lBaT9ADVFvnOP2gTK80qwgKV60GXXBSiBOmGUgQUyJ1WcFS2eJMRJXE6xW
CTPJpGrFMykaLtWzjaoQj9R6rIbTVAcJ86xZdjv/6bW557zqUpH7Q1am4cUky+jI0SVpk71pyVXG
L2JPJyr/syVQLt16Rw7wNNwOyQyME4/EPTMykdBsNDX0Hh1yTa4NacdsvlcMVRSoc3cCw9CrPczc
S4NWhlsaDYPFPrAj9ESEBBTCaPWhqCovtXU1Ku5O+6jv2NmpqoJaq4JjREx9P2GZoEwFDPbZkwM2
8Ef+W2j6FLNov2myuWTcFfPp4y0IljWxuMnZje85h8U8EbIiYaszz3yC3CabGyuNKSj0bhUPBLaH
mYGKsFHvsNyqQX2mvD96HZiz1X2kYFcoI5IklM75ryghqxIKlryej5zXtT9RPdE3bxsSx8QKYNF8
azRalox6NCATP/WImD36k6RQIPY3hPCknoiTuyJSP/g/g3G9SGZCKupK/+wBmekb/qRpxmLAv3U6
5837ovh7na/Thc60jnEd7GO1E0D06oqskVznf8e+8PfGMvcBT5zHBsZag1VYuA6y74y4gBppbjpn
BRQMlQ/NJAHshD+g3m0l2I5DRqwEcrRjq93CKKd8PJ8/hKgPWwpPlHqYX3nD5IZGq4dbToSTf9gg
nVSaS7Fc7ZaegZrouL9XajNzv6Gj+IBBy84ILvzluMGozImI7qeGWUOSpLyacBv0n4FORiUynXq8
XCGPLn9RPjxUiBtNNFj05Fh9bOnKWIlC/ehLzDbmhbX0Ulj6cyKFayV8bO02SEVcFx4IMLNetZuV
F+jwlYkFbtXDbqcHJYsgyQrrQczr5J2WwALMhuQTTaoE7qm0kpsJ7QqIddedvuf4lXDQd1osAgXv
gUe3YU8JieUOz1l+KhP4QAz4ewZCUaf0sQHwG277I0YpB+dG/eoBHZzDKTuLKQYRCOL1rXD+6exR
s7bdFkxATc/MtGTsZ1xKBt7R3xXhIUc0dYyTnLSRJRgZEaJ/dChYcfFbNpyDkhctttasR14rt0Jl
uSDVNgt3crjxLmJYQuPvOYIrZSXebJS/bLSAp4riFm26wxj/CUc97+V5yUy8jRMU1paiYmw9z2kY
KlLRJeEsABm5A0q6Gftel/FHbNtCtgmswZTOmr7G1xJHzS7zAI9a5VKn6shQdZWKp0UV295+hdoa
U7Kdv/SccCGmHHBnGAXEpEYMwJvfBXWk9sjEhYQMWvVTUVjaGvNWoPiSCihRfAPrN3f1C5O7mAKw
zXxWZa8lmx3pfW/BebeXq6aZTLGN9b9konAamPYRO7ou9kJbyEN43OXcbqoCfS4qk5junGtw/lAC
0y+Dc8RlVcJkR6GXy23shSqHmNhW2l/ejPIpSGIsiZRy3REQTLwNhPhlS+zHqdQEsBrfSS+KUPUN
kVvf4aV5Au0bcPx1nFmK83D592RxgriryNm92aHrrT7fhJIOulnIxdLnJC6sgdAXa5RSu60H6vQQ
Oz2+vlFjHxEBs7jZaDbVvOzc1H95zIDeAPmswPKOJHOxg8jgexnx23GE9M1eck+vDwzpk2lYsE9/
s/kA0usHsI1cl4HxFrnD49gz1KhUpwT5aM04xzMDNt1CkXL92vks1aiezNdVpxzMOZox4xG7fhW1
bRw5v/5Wjny2LcHhwleW8/0kD6xYFqwhxjfUpvTiskFhaxvOgDRk2CemyhvkWvWyGUh5TM/S4Pdc
xDM/LT4SSI+akOKbRYmKMelNQ4FgcxAM2Y9E9V4SLO0bSfidr4yDgT5GNJ1qMQUUIcch94JLZurY
JsWQJunhyDm9KC3qGURVGZYbRzMEHrrJod5b9ORxgQILLkQkcXRjGeba6DfkjCSAopxk2J5dF2TD
P6d5SGWvh/ae9N4MWwrX1wvZ97a82VAuB5hXNlmvQ4gLthq8XTIDrAkF4UOD0rDQ5e54LmEGoM9g
pkJjXR03wSCiFf7zDDaSv+GwKahAkoSyfwa0u7xNGWjUvL29wSKo52M11VFWXu3OZhnVr9V6A05h
T/ZQqp/MV142gb9fxAB2CUANoMd+bP8vL5HGq8u/OABdwk1I64kGkte4fE8HnSDyGOFF2XRdT+mi
6I5GulNHxhiXB8eTxHs5wE+h3BoDhJK7juMFZ6bZwKX87jJizUdMeBE1yXBeLrgXXdkJ3tIHNDx1
a12b2JwhuPPHPAMjmXbMKCUtR+Dl+Q4uwZ9kWWKRdQuGA0ACLA7qdfkR+Kj0r4XEA7LrkFW/0AQD
P87zAXGf54cThN286iTCnRBqHNlpehRL6PBGhCv5SKx2v9WDnTLpP342x8IKWhOcJxrtgcAFfh/8
I6fxVdSS8Ga4U3VW9aPCfBQA0YMI7yUwZhuZ09nGzf13XBBDFLN1WzeSDDnUhGXwL80dHrBWI2I/
eNw7jN+zLTdyrsr6q6GGPnUwoSHIwUHC42htEPz3/wwvlCvwYkl/zLy4ILjxVuiDR+KfGS6pRe2b
SdZRFIipiSd55jcoIHSQW6jC+ONIBiQBj1sbyiHk6LpoSPZNV3OeOCQp04QMYSgbYDs6RkN0dRu9
/e3ld0JZKfX4pGcV/ffLBiEEoLBi7DXAJ3hDbZAboQeOVNfCLuUoeORGUtPJqiaXjZT3MW6qvDhC
ineq+Kww8/ZLXseEiHGKzvhOyZqdoOdYFQ3OVZVmJGvFGRJ+8kbFZ9qPsQtOtkCvJAPzBKQMhLUx
pJ/Y3wRW0g5Qkl7fbPIfk53s5wP4T17t0FCyhKnYJwIpNtIgPwWmR0u7h8fpV4Axr7xmAZr0XEm1
RN/ZfMTHapw4wtyTEqpkseyKwYhQgjfCWUNIn5nioDk7r3i6m7DM97PX61FRyItLaMzygCfRD1U7
DdZ3HxV0jK9MQEzg6JZOg218+RQ9XGgttAHVN+aiQU/uUU12kUVDg89A1BDpSTOLQq2ljT8UKpMn
RyMjSKneRdLGRwq2YsqDy2yM9CmLem84hKH5dgV770kr7m9Mq/pHwcKEZJK2BMyO4nREuZtnLQWo
GGgCBoWoDIhSey2aNvRbOcpIDqLNaKK/3E0R5DSPmgaCNFZpWTsuJmYuK9upQqeemY66l6cnN7xk
yaRZZ+oyZi2k5x2UJSMXxPR+8WtmJFn77cI5v2pEQDGBGzUu6uJagO+P9JcZIe2DpzP6VJzV6CSK
P77CLjcmiBE5qihN8tw/Bjq6x6pd1abzXy/ZlRrIfMVqD7wL5xV0zW2mYSGcPXOR0mHufoelWEcd
IuXvyOTK2h2HUdnION8Cvi3s9WuARuBDs/j9edRWGFjj3yHpsLWWW7c6hl0BevUhP42/i6a8m4u+
6lsmCG5OArouAVIk/TdNozyCv2+rgyl0MNTT3D9W/WIVZM3epQCCI8KK4W7aoYo1np0/lNIm6HU4
VjtsyNvRRW920lAdq1kzSHvBXbGT1yCxuEEF0nv3+Tdd/2mV6JYDVbF/uBtVfGVBE+6zGaPWFVue
QIuHn7enB+dqwWI1xtArU8pZn6vZYcxGSuGvqMU7K/nEbYu+YoYOhp6/RQYyv4pb0Cd0NbGuV0CR
m4t4mFWIVLFgNicGOiPimRS/GF1pJr204w6DGM2GsSnqNPUnfw2A2X9LCKn6TFzsg8SwTA/Zt2qS
tQ98AlpWEO/11qXS+pMTOOjk0t/8KA1m60Qm6keP0CC/ep9ppaV2QRDx00ngsqi/ZftGZ0Kh7v6H
4+NFtcDhMETXcrESJ28KGwbjVI7xUuI5EM3LHMyC9iCG0QdfbVbXEBOf4Z33UGsHN+PwXppBqEH8
m1pEl2I0GLGEYjniCxpdRh/lp/AioWUM8khHeVs7r+LIKj/ibndvxEaUdJEcm3ZiAq9SlGnmSQQw
vQbydd0r9qXj1HOSRLYNohVHO1EItbcmEs2IIKjPQAwJvFj0Chwk5p5huAh9zzSw5m+twPU+kWCi
iacEw5mYNclhgAi5Kwd+HUQLZdM7g/AQcoTqaMLCg6eWy350WRWhvROg03E7YeZF9mjiFftaXJLN
zu5Hm4fd5xYDb0nPnUFcor+mlDuY/w1TbYbddfRTgUvfMVgfgv/70L8yjLBxbRVeu9gVxJtX/2Fw
xCCfRd97zPU5i2iZ+qzVlt4zFH4wAouHgXLMAr5F8a/dV0B6AkDHa6NYKp5YTiKPmVlGedns4yHg
sIwp5nbjbq563/KiUIFUXjTiaXMnney580txGhsn96HrgRxIQhxKFZFn6QsA4X/hxhXSyNYbSWXo
Q9YBO4+GwM3nrfEx9uMacVE9KARTwkGwuT4Y1QXMdnrKFDSqjy5R7Z0GCgAgrurphJBoF7qqcgvb
aNv50ZNBVHGmlG9Fxi6UFJzXQmuv1lzpRt3GKp4oJFkaaliiog0ErD5K04EKPbtfwjT+OcWfz9d3
q+0mmVGTHvQHg1ZO1vZJumJo00KaSOymhJCpkqVGigmAq47qKj6sstcWo2ZJyC4ApmcXNC1fihzS
ZlmWFbSIBVQhHm2VkaP5bJSH1AASfKB1xRCYDWGe1PZUKni/Hj+xBX6z9q9KAoqtH/8pPwb0Xzvw
EP3vck/XUZAj2u4qdQlk6pgJou7GxJ3clYvRUA+1LLDqMP63skZNF80CrQO/H5BCQ/RpKu7zVEQq
BCSU7NgzdwT1hIel1umXg5fDkJa9wbLL57GRjsBwsESmKH7bb08iTJF/XiVJvfv7E+R2Fe8B3i2e
rhecnX4Soy0LWOk7UQcLn+zqAeXm5e/VbwyFeJgdLyN3aE7d3yz0KyDIPoJyUN8Zgi/b4TF3KeLo
hrv2yfZOJoJfzh44/CbDmHvETqJRCV9zFYrTuPifaDIGZA5VhJhMYsMTyVI7oTDrRsoEIdNKrYeu
SfITpAN4v3Aqy3ecTobwei4dEJi6byGRXk1vceVqJH6tAAXBgpAhdiZjQDCcrhTUpoBKJI+0Pts+
iHIvjqIxvXd8dR8eHYTC5tVG/dbHeD5BG7HoiTWxzI1y/qeZ9s9vHcQFS3FcABVKjSkwAMmxdaNW
/bDGXXEEBZonWAulBs5z847yo8punlNPdDpEFm9N1YIfw6wFnRNfLFBan+hTCmiy0dZEyUktnxMx
xCR4XAEp40t2KgKDmo9ZGrWoi0W5kwLmzfkbc8MAVmg+OxoCTpoAuQBF+Hfit57B9OWZOF+12ItS
RJBenoqim8R+zxVVfcDPFS2XWrXPZm3t/kJiXySleDQvmR4SL7fNTyGlqhHpZqatThY8KcqJ7vZj
0NBM/thAJwtMHCpW890EnrDCaPUY92JKFmPrLgJngdSQIzcSty5VLgZVcTmEG3SXsfHO18pKOEWq
OUMQ8JolsRmaEmA/Yd7NflkBgr0Gf00BYz3x7fvDKniaviNh+2s+iglBkthDzub7gv6MGN7AAMub
MaN5tZ9htGfRIX8/XcLA3AhR2mQ0rr6PqRf+dqNMSpCi79liTKhhFxwMlLumgdh+6M/QSJq4jyL5
l+gPH1lPPGiU3F0BbrZ4fjLKSeZwWtNAX4ivKmC1UmG7xc01sAc6u9Ceb9/14l1VEtgGHvM8vQua
OflN7VptbWY0uYsPJwUStSjHxiM0NSMyTQ3gulQrxQ5H+6CuBL0zOlKNjp6dLzdyyHtx4R/hnt2a
M0Vne19ybtIlm6f3lLIfh8vG7l2qcVyvfFHykEyjrQqylaptXdagILqdvqrNzeAfNjHRDsaOfr4X
SmKdooi7W1d6rZiWa+5MuQ5tw6g3igVLzgbyIPFOlD+VnzSl133e7xtNIqddeAkCUcpq9h4rWeWW
asx1rPrg7gNJXI69Pp2fLPJAIjMw9deLUM35kQ9YUzM/Ufa80mxe5UY/TbzNYdJFsVfnrtTljQRR
35Z06ydN4eYB3qWx5F/osaTQey8z6ue3ME7xvGuYMtVHw6BEFWC1Yyj/M+/hjlSN+ycK0rfvILe6
TEwwL6FdylWRberKq+a7pUkOvplz5qeoEJhe3tfRpCCPzrMDlpSd/rzRkYQmeNmy7sEYKTFOr1Ff
lY0p5Kv0peCtGUnkYe4aqXVKSZhx1FEeMMjZssmXRRsX0eHd1VkO6//A9kXRyKAPkIOc5x1i5hGb
7W2L539OAtQ6QV2Onhq6UMoFh2BsFzar/jed8E0i5j2m6DDq8IXahbpCm2FX1pmj3aav7p4NXSlI
FsEMuigSfyVgt7Ix3bmWuPrsBlYWVCOz/AZB9EX4vLQ2gMVh0mVsprb/XIQXW1qmJmMj5rHDoBuB
tWIAfKxj8B/p3c9VvGjFQASpSeaoYvM8LyWxDxGDwwSeANjFaY3R+4w6rDAfP+NOQL9uDq1TSnfR
m0S9gDdiPxNaehJs5Wqaa8u2aYqeRc4pZdDIlhOZZ9fMih1zUh3rh0qM+7HBo709W3woQCIZU+t7
f8xGQVBPb1SZjS7hoVCQYQeYjmhbGx3CHAO/zTcqLCKvGL1Gyz8jblGEjzx2ydxz9Fb6QEAcYNge
wdCXsbKF7uLM7QkdSdfuSeOTUVr2npSY98hSqqpOhp1MXR3q/rZ7qkn5JJvEUOqwNAziDr7gcART
7tRin4KAHOCQ6JfqTRjorIdnRPtEWS+uC4rGVp7EuDr5qSfSpeEQFzgEfmSpPsgL/TzMtJJsh7Pf
Do7Xh1vI1ejJAXw8gRv7h58G8qwR1DtM69sGS6l4aW5t4mZm+CCWFOLjwqlfo3ujI/Jrm1fhb6+3
MybfrdKOA7aL0EX1XWI+N8doLBuNGiSaFaggisBqm9eqJhAi/ATPHeiwdDNlhvT1M1FourHTmrFt
rhX9U/dYvxxdTPm+UJ7jxL3bci3qpVpBGLiOJwXiWJkDRPzYODo7Nbc54Ca27CoNISDTyH0jiOsC
pOBhg+FsTV5Ny1cgk8YNSnxWsYaStVEkkVycNyO5Rokq/+83WoLlQ6FOJLeGfa5Uf+TxKfhP2V0O
ghvqir7iG1mcPQMKe9EGjpNcumnhwGzxsgaN9Wz3cdTLsICbO4F2kP0sfc640bJmBSAm4HsmHVzn
I3r/Yxjdl8btYsLmhoLqOtt4NcQRjN47ZI4N4BwdYrPTy34GPd8nleI9ZIGjaWBS5wrPKb+Z+jQT
YJCKh6Bb7ptjdNsPx/nhA90MheYi0hvNMjvDmTse3fltwQAq99vz/SneXCB51TqVY8PdbGi2l9OT
uUZghHP2QxpQj/oPs5OXXcvnT7ltq6dLHbeH6JkiMM1Odd3j0uQoCwLzwost+vS5UF4k4npPH45f
QbEDQt2gtH0jZ8ZYJnyw+wSL/kjQdCS+DfX3wNhNSYTk/NnJuY8X955otDFjZs59TYso4iDYoNzV
SMh96CsM+4WWGn6oxslZZrrsjPggoKIvBCxO6Ll8XvWM64AsTyCoe8cfyVB0tBg8roVWv5Jbm9CM
XsH0RcyfSgGxwdluKI1MRFbA9Yk1D5R/7ndPP8ukzliBKZwzmmNUJMJi0/IvW04fFciczD6Gr82b
JVaS+bN98dGkA88VxcUfmGqLyMsNWzTWsv5NiQ8gFRW9GJdYvDhBc+GuFdiIvZg1ciMYrh5brkRu
VDtGEehuS85Gtdx5WuOtfKEa7Byc8Z8IU+pi4JstikurKO/4qesw0Zru6r/TYhwJB/iLyUCCv7X3
DfaWYF9571nz2+j1CP+dyxFPJ7s8w9dPIBZQvnN/Ns5P5F6O787bE6BQJCokN37856ni63EKcYyo
JJp9I5xt9C/bRpV8OFn5rdyTqvoY1VkkXuUXoiz9Gx4wtbH5C5y62QM3zx0L5hlyUHYK4MrW+SRZ
PzUU4nVcs7HnjmIJk6O7+ksvD+7/u8w7LmK9a98Dl693PG0tetd9aUBruc7NzVjEybmjLRTwqrzL
BJIOX5lVE1laKDjspv0USUR9RPSF1RsQ4QGtlfRd3l/fMTitw7fGahAFL7gAQeL2aqCPMXsNnxnm
5+iPgrvm3aLO/+E9tNQLyAttU3YEC96D1N7X6NWFb0I9OPYaEiq0o6d/k68ba8zFtRLXgsr75m3r
dmvXlgR4nJIs8fRk6s8VNowY6Gn0k1tim3qn4iHy4do+wKvy3D5EVjnHZwujzGtC4QAfvoxxIfA5
KZPjN3W11q945LnN+iK22ZW4TU2zaIDWlmlUDORcPZ3uT26p0gmZsTZZfgKZ13DF+cFGyFy4pfmd
w/ePXGvdR9D+Luy9MWXV8Re/O8c7TtuvDE879Bjv3+BvCxKMP64UaRobwsgjXX7VA4ChweF+0QfI
8wu82IFEpANa3zmAqax/iABuyxFcs2Gzc1hTUnuhSo+n22ulDXwSOEQzisqnoRLzyCZluQkVrMZo
RBSlWjMtQkmNOXHTZ1pdRok+cWQroZfLBIQoQbg8k4xlaPvTXpTxpm7KZW2geZ0p+/x7J1yhJ+Kx
1R5Q/5/gSQAyNt2FGHOfjMnRkmj1Y2JYOul/DYknwE4GEIL7uF26dEvyDGxHlN+mDIhjvi8Z1JrU
Yu4KHt9ZkWICNK92/b2Kf1tF0rDkJjfHHiFKNT/6qMqQvP9JwQa/pRFLW/wIUPpK1tbbmS6JK7N7
DDaxW6330XE0dg+XWL7587a9K/zNncLB05G9WVE6w1Zj4KWPWmLfiB1xxA+55TnaKddgqExbdec/
yyDEBsaTgLjuBPHFElN5GYAq3bPrnfGZjP6sP31xCC5pAv0WOqQipTUmjzFTr5WzRmffG0gQylkT
04gz369eoWVMvtaLjv/z+4KUSBNNVPMBIkW+R1GbqGW3PxTQEv49yjZ664IqF9CTC0e2MJfKkts0
Ecoy7vT+Tt9AuJGYt406hbSmE+w16vkD8h6sKXZ5VLCCA5OcEy7OzqYt3ufJC8QvXdsGN+90rIQL
S1gM8UJ7Fhj/ze24P5i3vwbTM2pG9zQovR8szkUtuQWa2Lrl1NraS7gxAnaVfsNtJijnZ//IHxJg
LUEPBykMNO4NnuRfpKJJcEiqql1pqTG8SCscjPMvdRHOag8VjF9/L3stnjZqr9hq7Yru9YqlXKVX
dQbIVZEq2exPv3RvYbDU/NOsXYHA1E5l9KHXmLyYLxFFCC8EDcjG2BpXs66VASMMbgLcDhZvCRmo
o57Bk2BG56O6D37U0hKVv5MdhemWxnFgMhZX7k2YtIy52fFaOnkWfiIdJas0iBcxhu1Tqe2DfPwj
Wu/A3CjITahLOFKCHFs+Oxrztx+a7rIctVHbO9vu0AyiYyy8YLKNtGICwOTL7/1Ht1HNH9Le5heC
ra5h1AXvzC+Vst15l2lOvUBGTtSHkhOVXlip0860saFQebsqmyDEcIoCMLbJQs5vr+M7o6GNHZlT
PS6cApGTrlJ3CQjvI+aSpsdHnFtQqKCqNd4iCocL3HHhKwcnjDTFVzWR4Ie/6VleO7Smy4CZufMU
OIT1eRNjYIKgE7nEcItVyAXPVYSm2/leER/H5l6NTD3BWBfeKT+GrfgBgdtMF4woP6p8nQyxWMFn
Km2cnZXS1Gi4EsWcXqusEDq13jmhdnwLu2gL0q41YIkcSt5iGJaITmucl+LNhc52NdBUkAPdICXa
csK2ixNimPdkEjCwiyQJrY+tGmIuoktnBmvpyjB18MabQ7aZjLPOIaPoM2ZQO/WmWEsFTJLp1ynT
236uR6K5wRTTV84/DNcWq/AA/Cma6Ur0fw7zY4R+lWtM3+VTguaQ4CqM3r+lcRL30nkO6a7ScnKW
lwB4wGcJb35S4Ym4nqj3KVPrXe7/9h+Aze7mZ8thi+zGReMeOvSCB7p5zQHiwSsjik7F0+slUhH3
H8lLTVRXGxTcAbiMIClt4JJOFuWfQ0AQjTs3OdN20QwHSU4Z4mgR733s57IEsAF7VzQXnFhLTko0
DQYKptPiJBFYlClZzSBzOBUMrzs9qXVPbC89ngpVfXA2f6iUF0nKw6JUtgPWwAf7nXDp86wMu6T4
WLQO0tG8UAOFaDE9OZHMy/m8aHK/QNz326J8eyV1Wp1rcMLlOVXLzEbcxFIDpG3GUwgATlQYPSfP
AJBwwtb7I0jBoIcs7OLxsT+6nSTSUEPodl7APzL2QmJ8qGql0YAkvsWeomGKpw9FgFbKSqNyf4Xq
yAlzGoq5mHYh24C+pO7XWcYwEPe0oGA1YoX5AMxsRDl1fGhrCKbv8ev8ERhG7mvsZSH6A4bZ52wK
iMU4csO3ZAw+BBBHtMqn0r5MAn3tWP0OzGXYktpSgkpsFlfQW20hQVN58DsKjL0Iu3bdGq/UORcN
VYdHt5363zY1XshOjxFPTqTSidNsSl0xfS8z9NPF0U7j7ZaEXPeWS8hlvJsQgfl0u7RL/q0DHSLd
a7qDY4zgaBfBHZHubmdBnO3XLuo6CovotpUKsbIO4VAmhGvPVA5B9plaqcM6Tr/ULRPLAsPQ55EH
wYXtUoFuIo2anyBO2p7iHuQQTrGQOfolWOvCPmN2pSh73aYTjKmZjCawxW4EKAtCqn9cTGkDI6Z1
puM/+L7uuodz2HT1NiQ8InA63tm8Gp+9VP15Mq+pO/7IDzDWd7lWLLv+RedUZ6a+S1WIrKBkZmsq
dUQcD6fcg6CPNLABlCs/tZ5W3AlYPz6sV7pUHCSsZqgdSGQGhpOxIssXtHlIpuzghzX3IEc5aE2d
GJg7gKCNc6IckCfnvHrpWH+7HaDHSSybG257e6GFdT/+YkaUjAfeS45FDD5fTu1Wy3YphaSc/7j/
LY2X7JcKphS+birUEcCBSpQqKQgaTV1S2/dMH9YUqwwnEEM0hoQfpq3uknuzfAePb+pqEEJrc9rx
iXDDm3AXzmItFD8RoUrzyn8jtct4kVCZxUbuvhHCbNEw4F+dCe/UKsS0MT7JR/iHLe3YF6w3IELg
txoyl6161sWD5MNtDngnSKgyEfvQiaQxcbGXPisU7FX6kR54E9l7ei605Bqy0sZ5tXvWTX1FlQ/N
qkvKaenNctL4kJaFaFVOdHoWvTxf9aAPuGTyDxP4BsHS1JDNz8Au7NPlQDwLK0sEBbOFZaN7O+rC
09ztJTse/5NJPeZmAuscVh6QFgNbuFJD6oXDhLOIT3pcrNNZN7s+vV17cZYXFEB3P9Dimb2fOVsC
dq4oOdyOnOz/8QqQbDF3KSFe4tdjeEPOFshES2OxubYBqxjd5dO1EWXokCEddP6MXd17HePo1V05
0sta28PLH9T6KMdKfHt2NyLNjjGtsNSVPF4iUEDchdoMPSooh1oxyJpGOaWFnUmAhcYEz7bHZsmD
9QMahRXWNjU74XvIT0HySvBf2A13QVh/y4nYVqvzGtdzvUvax/FhfmTv7hatkDBv3kpkVRkTG2Hq
BYgPHXTcw+nCsf1+kyGyIcY5+MErebEg/86IivhNfO4o6bNDS0I0cR1k+466wsekrus5denM5XwT
IuEqtVXQJzM5/vUMa+rIypFsU+1NhdhI5seuIWNmJOZO/Dfdq06v87A4NFH8tQEKdrWSfN5UfQGb
pYAadpkxpeTvVfaR56L60oQfm9J1/WbVwNZX9Fijv40hD/m/+V+M+7OpLOxNc8So/Rhox/3RvgiB
0mYaf0Zjp9kmNF+lfzZh3W97nKQy+EN59OjBvMVTj/LxXUas2gs9JR+56lWqq2h3pDPwy2wwwcxb
N4yHfMaJ02lSrCTv3tRq+YtOI82/rHDFUWvY0K9mIJRiozgOOvW+gzwH3+ZBlE47j4o/xunMEwqz
HuewwGAhK7YAM8TWwZp0S+mi6YGjgPNeznM98hcgyWtQi2YLUl2LRSuI5r+Q/TxYn1i37fYGn3M1
cf9fMdDUbk0MzDbwwFGWcC6+TYYWRc4GjCmjBYjnFXvy4QrAq8tTEdvrZMt5XSQ2pPIMNRj3dGN1
4zGudS6Y1OTDjergP3AcVArKmS4v8y3NC2CnSDukj78D5DtznqM8pvcPos6nVRcjwCKQxw/+iqXm
SZnMvnbIxrfd7yhdyaaeBnS8cwP4vIfz725o33Urmfkxx8wyD+2cIfjWUgM5XpZ6BxV3fP6vl0lT
aKM6CsbPkXmoC5NtegndykNiWJFKfqdx4SYge+T9UCsxuFEiVDeSHAJyaOSJ9JKI8Pn5CABvfVQ/
tucdOwaYRR+Jp7TwAEKGf+5XVotbeiw8q0NKwfZYOrvdEr6KbJijO5aD7EnvRHeRg0YWej5V4cLz
VrlcxcEl5rJxswAsOhnbnudVz3n3JhhFqIVdq5vcyirNfepyqWYfGJQxwoTWUjafxQheoWjWZ10T
nw9gniOYDg8Bs4TLL+YQlpyVHyr56XEgUw4TeDEso0Sj9Dh0vyUGTmV2w6TCSkMnn2iRYTxpinlp
iRMMojqss9qNLmpT+g1A5GThmHmrwfFJdxfDhRsjyCypdCeji+z3HH1YmQ5rJ2T6oDA5BfPBGfa1
iiWJLV6uansiEdXCEsfjM3QzJCA9E7YOHdXZHuoq35rv919ealZ3w82NhQ4U+hxLJJeFoyJwt2Rw
7dOodGp5l/1lA+Rn2/68T8lDvL41A1XGDNZ5vE+FpXIcL4ujKCZPdE/IWSnlNu0uCYBCShbLmgx6
00B/PUB6zicEVnPEUhLI5512kGmziLnbUKCUXOrW3biPMUoeT8spiJm/btx24PJ5/S9L3omMbKVN
EqeutWty868jhLV68eJWEZrgJ3v+V8hm2lfnRztnzVLjMVWXwz85k16jPVcNqYd5s8Twx1sfFTy7
a6G/T1Q94miJw4dT6Cki2atKnqcHSzbKKqHGn3EBUhKqHI4LfMpP0ePm259uSR/Z1oXtp+/GZxL9
n9VZz4e5CtkMWeCD1dY3bkpFDng7MRUeE3J2DagnTaF9rEmGVCpAYi4wd2t8H4ln53aIqawaEz8g
W7LhGSCCllfUIANZPAggRWBUX+aUgVrRh0SwcjdJHQFe6+3gD1SWb/oLCjX40zpOHknSztsmOqtJ
kRpAd/D3rBYFdSnXnOrSP2lZfLV9m4fmVHnvHWkitZWO4/wfh+jq75ylaVnXE3sn8WW6hZaYLTOH
wdaC+9t8XWkRKxpyoBw2YsUMyeG6/sMRjrIJTH1C4ftYCkNl5e8krRLHs6BAXHf7FGqFDkdrGKxH
me1/1j81ut1ILMLm+adDkG2dZtFGWE0BGARwlct/dMQqgSMGifsnGJmE3nl4stH4BBbEDBbTezwo
skA0MINea47C4Eotn0YUT7KQiLB30ACFHLFXn9nhpzvDbUjMhJb2+7jj0VORautaPR48ZQ6t8Fgg
9y6POKmVt5HLutt4KJubiqLXBk0Zc/2vupMNdPJGn7FvGC4zgSInCu1HhnK5a69yNxTLVhFuaWLR
jCJiP0jRCzjVl8QgFfNsPY9ne5eYqusfRra9UXTej/KqAkJKu/g5y7gTXk9JgT/m5KA75kK52wKs
2PDShpNIZDOMCfxJPfS6sNlyDvWfO7nQ3oaGDbGozR9zGvbVQid7EMhDKqlvc/brmK2yJYM9gsbT
jDqyF5UHw++XK52oOnYJcXNx4pC2s1EeF8xworERreObGSlDD0JKhA+gd8+cCDyJHqec7QsUwu3y
fYSqHdfmcQ/+cGZByGhco0/RwqHYGv0CRbWZ783uzQ2f3uDErwLQt3BAJX6dmYQGAebLXZbdqyzb
06r+VG78f6N0cKRT00m15vQoq35iDgKmUV5i9Fzg+SZ/6CSmM16yDFVNmYxOYZR3q0IRlbK4hEHi
UO+5ql5usq6IYJ9S9gfYlZC2nmeKwWN/8mpy6U+d57BM6XwZEVzSa7ywpx4mWB4itZt1y93uehNo
nOH+cfRHSMbehSWcBqeMrNWJKRqO6U7HCzxv4yfPfKK1t4pN3SK23v12tbL0lt6hcWCE0bkEAXYo
9TIn82MDUqyPnOONl/0pij7FnMYPzZOR/QOHGu9ne9to96165dhRy6v95EBg+whXYxxuCbjAxhef
S+3mr1ESNFG3sUDuKFci5M9zlZLoBl6/vmAfE7BMbZsv/zYNWxPh1IYp9oHYnO0Zmf34wrmi1D8d
+T35gADfbCfsya6s6algXGOiezvmZMfyDJ+YN2zXBqznjQUPxGrdCqU53us814NznZnZdcZIRItB
xtjxuTPHfteswWWBjM4suu0+U58sFk7UidXoNXM25jHl2dQyrH9yCQZapL5e4whCoMdXH8UyWglw
XdSx9MHUSHrj2remiRPE7m+yhCTh3sfODLBvj+q+2rYby5VuoLsuqI9d+wBY2s8VQSDPUL+Zxzgs
ZxL/KU5phj+K3A5WnSZSsFp8iShPBXSmoFoUbq0wDfJw9ZCb0dyvQ8F7OdofhAjgGA6bqmxLdxiv
UV4OESgx/Cildls+kL5eZIWSp4VC5nddUt0PJ9CJ/WwcJlxukD68ID2mAioTIXCv80b72QUeIuuH
M8gIaSpWnmVCRT1AgGxgEiUT/C2/y29uBKCKBJAMSLOs71i2kHveEeiAh2NSrhvFFdRtsLW48QV/
n20mRfp6kLdmJtBU6TLLGu973+mDkQQV4HANAF62IrllGCgcWXGOgi4BPRlU9bOezzQGhnGIhkiJ
w//AQ5GTEQcof3DD5xv6ppVgb2tLNIHQB9E7eS4JbhceRhugKNm67ed3kpjZjn/wOXlJmzHWosw3
lxouq4/k2Bg+7lQvZp1/T6rTRc7twjgmiVe1MySa+9PWYyPqfqAWOE+XJtGy/J3qlIGVw7ojF0/4
NuLGRmLW+I1orKe/XpOpMiEpBSFqfak9015uep4eNmh/k1JFLIZYJIEtuhV1X1xCHslNmlsBkw1Y
YQDWB+HBbUa8oMoXDQvG/VD65itmsx2VlThlC1iYOUlG764700iYv5u8MSILL5F9JYZaFdANqXLd
cuHFmYmuWJLTBuI2ZfIIyOxR3qFzd7TQbkJ3MBJuSwzg6u5vy6PCh7sLcOy9KLYOySuLlSMAp09H
wkiHqO6mgW6uGm0xyJaJseAp8Wx//n0jvnhtsQZ5JdrJLapnXEca+/X7O8cF8IsKMEPz6+Uz/oPD
Yoj+rA8roh58ieg3BK3OUpVoQ5pmavPp+wzbHl8YmmPnbANgXREDtAvGg6+j2OGK6AOKant18WTM
uyKAMic94wg/AMzmqFErdUAC9NeGLLypnR80kshpap0alKTwbEnsM97E2vPLvrGSB8XklZbrCeob
qU4Mo4fYdWgMQll1oj/iYZXThtYvY2B960ec3Txm65Cs0BW+eNUysEmyumtOiCsbShFqwv88KzvH
EqLj/TKVZCrpNt2U99lktgDjT1ULwEr0l4IPSEUnA0LvJLBiLvKe6gmtyha4jmuooZDnJ8Ie0/1B
+JZ0VQKwNozoDG/uQQ8r6QHsX/sTRX0119Tr62lXf+fp2JiT4/AYXdvzMLJK7yuwV4HMSBq11dUk
PZNYIaXPVMeeRyb1+Lj96j2Cy/4MLGkPUFYevN91k1WwNb+Wac3CAN7JGunp8yBwYwhrroH6sBOD
WYHc0JLQVnZYJLAmRbDnsP7UIOMb68o4CMyA5cgU57dvjZ4UCm9IOIfoFYAR7C56bwhhlBroFeDF
hLkiJkcgPAHmNVCKIwdL+AsXHhyTwHSYaNuiw82/W8/R7qnTIqQgIxCx5w3JUuF41J8umcxvI/E0
AEEF5QdGEDtT9ftiQOpsGCwE3hGCPuQGt5Dn0MV5jzD/S3ZWVHeKcbVujpQ1yUw8T//BUSao4pVp
6TKuxjFLbZeez5Ok4ZiNnCr7dCJNUIy4scz2ZcpGnLoIlmBygBLK85zHz/eqJI8bb6wh0BhLB7kb
OJW4Re6QNiOmZxFhBPXsKC2Vm+V8N5WhM3m0xYyz7iRlw2zLyUqFSv+ZH7JEVe+XI+WAlrEvCcRK
xGB89RjeU1TRgugH11lNIQYDj8u0rNlYKUyxHpbMbD/OBODyLzzbL4CQhfW+xt6RoNZ35T2lEehu
CCu0jzG29SygRRr4/4gDGQMLi0lBSPX3YDH44tgnOkQcGp3Jnel7oqD8ztf4RNAKYtQ4D9fWHm8e
dWeMa1gjag/oITSpPtA2ols4Nu/Ca5wQdqWpLVjalPoUTUQs48JDlYZIU05MjZFkSG0fHNeED8XZ
nycpD9z49jMzvXwHYqKO2hsXkUuPOk/WDvheD4TJ/VuQHNqokghcGvzS90eRb0AJGc9BvzzgFPv7
p5F+LyBJ3CytX57DTpKVcNJ06UsRkOYGm/xYySM5DnovP68U1FTe+2Okumn25mcqPlBqwq6iFAvy
YZdlOurSf5kkiq6h2xpRMGY44Pem8tFfFu5wUHtUXLNPZxmId3ebiQIVp3QDi7mXU0wxPsgkf+CW
ypwpGVkX/BSpkBqpzE55PE3+UNCZ/oXIx91K1/L7dHjjZSwrnQrk/OiG9iNT1doxbBsZ4ZHUR2Wx
8Y25NeoYC0Ensxd3fiOxMIfLiazDp89Ie4xy5Cxvr6FiYaSJHv0uZk13DBPX3DBQkY2Q4uxWvalp
r133OGSXInQDj6hiLeJ/sA7R9tDgVZ3HTE7MagCt7ckXnb6q/gd74qU+oXbGDYl8RX10CEfgDUlt
1dhNLuhrerO13Kl43cbeWdlaWdkgEnv4YLXvppai4QKe0eZHESSPj3DVSWTJZRfAddEiwLkKcLCh
tW9EK5BMzqjDhcRXaJFs5ct2I8PIo9+iYS5/deRsGVhZdtYgEtRluX4QTS8v54E9csC/J6GX1raY
+1Z6OJK7Co22YJ0hg3A9uDpQM9Oa7PShyJ78UFm3/7V+shojQWGxEaU8mGY3K+RBXRM5VdoQVA8w
6CuIBR1OjN+TPUOgVObBRVUDibKmgCvCLrl5u2UCGR/erwWNh6jVSjt9iWYVvo9xDWMw3bGYegtZ
Org7dNskePkpqwA1vsBx8WsNSuq5bDZivJ0TzcwGZgozwiZrTJBm60IRea0W1FTdPfuN76fk8isA
LQ1MO7KBl8BYs1CP8GwnFjR4FXX1hu6hGKu+5Vm84bZ7mizaEdlsp1l2EXempxe7VRS3qBQq/vw7
0ftDZAxg+gZ1jMrgmm5Maj7WynQ6L098NobmtW3ui+XrYu7xp9HJb3Cc+lG4bXwbYH1L2BM8VN9l
BIDgxl8ptTlvsCH8z0d9bvdRATMlcpuQ+6418EuP0d9d6ZEqqWdTFbXmdyTo+XT2+509zGRx6HXu
UGpCdD4dXEmIaLIPNT1xGVQ7TK0YnTUlU9bS9fv28tWZDaxr5Q01txpgzd3Az/NqjzMqJ5XunI6n
0VZ8NzW3WXYLMK5gjUk/IgN+iuCRzxQsRlAnF33dEkNPUa9hqYLXXb4eRsGQgi1oXuZeG97muErV
RpHQcP9gB503G690I6gLay2lE7vthHxyPUi58Tl9fb49ccR17ad20nPBOh0WAVDy2S0zAU6//DM/
i3yiTW4k6q1bjXDHNCxC6vWECMMYL/1eXOqjmevZodY1KKQFZQAZ9woN91jzzsDvlXhE+/cx1qyI
i77bS1PGWdRd+Did8f5s/H54D4WRDkXX8pxZSrn3kdbccuXo45Rt8qR/A2bFrqind/hkKJPU0oW3
NGEz40IL2thGqalc0Ev8bJcU6XnegvlxsZzdyTeXAz/Pw+6LhPxFTRXGAne7lA2wmVX6uiePqbLA
V7VRjbsxVYVBr9eEg+p3CalyMWxKGxb/ai3D2Sxt0CAiMKuQadooLHC5djjE2Ii/Snhihv2vWTBv
FDHkwYnSABPRebHiKjiQ/3NSQSKVzNtXJZ12OM3p5MML+Gvh7oC0bH0wGFEwH5PNOoGbMY1AKhjS
LYXVEJRxD3IZAr/yYIggvlDPmJzDemQ2zTaEeBSJV5le2+ovoPi8NyE8B2N9K7pDlLrrFwCBb/BI
KigcTMPVmvGwLk9CjMY5LrozFAs40R0DyyH8o/gHW2D1CQdMG9+OM4cTPxf6LPG2SNoTow8bD5+V
EjyAHuvFhTSauC5qakeRl+8VZhG/ZHum5ZszPvvBSzISP3eAbyxByOA/p0XtBJAuQ6EpPYddhFb9
G05eSlnQISdHhWAeAXslFGVRDAggxeS4/3QLGDC5X6MTE1WGC8enN5Z6sizyXsfYbhBkM2gnz9jY
q9qnBoulkQb8Q5iMrlHE6YFrztLLdX4puLbgpbdMcqPwFEoPMy8imLrydMjas314ZBITasszAkAx
stASP6Kz34XjdQC0OH+4C0+Ov9FnJnhDcQvEeBYZjXmP1JmFvZ2vBPFbHjwaL22nkdEJLkWwUfra
vTwWDiJgv7AVP3Gzb4dWRGbMexjQLYqfmPRu4VGv83SP7BkDekmcLRfHmf7nBZ3LoszZRN2yzSb2
n/eaMpDZxT269Krz3Uzxn93Vbtd1rIcdWcTEaYR93B/kTvq4LWCb8DD7sVdRhB9jzQlzOjuyDsLD
36wdZfOb91ZuxcFZQ/IsaPTrVebaEZS4FkBuTx3uN4mfyLPuKZ3s4zFZ5rtca/4hzRfYqg0UpvKN
eZvDrGvE1JRnBodKRIRJTqqEGR0WpMEJ5DHMeCK31MMorNDo1zRqDPn761My6mRZ+jnxgY5UG182
1YnBEtlEJKWeCpnvbxspNB5ls3MYwU9BCnwhWa/uI3lqQLnt26sbq5qlC+lry1y4kZf5H3sfz1Yh
lZtOkx6S34t6/VeMx0y4+c0hg2RjpDzGbyAJqQ6u0IQYy1Ipo5TWN77P39WhhzxNQb+PRDO3PNwm
U/xz634S1Yd5wv2OSWbSxkinXsF7lILZ9eMO8YYpPb9TONQtFYCEl9jm6Q7ZDngCyfQOmukRKSVl
Jm7nltm27pFOJBeMM33P9kgl80ppKTTgOanSJ6Zqa0vzP3M8LAwxDtMg1SbNiIVgqCLa5rAUlhbw
j6dVm6ih3QzznHecjW7ABJABizl/4f8KV77t5axmo1Co7gStQXlpOkgS12yaNzwK1yreK+7keuvz
Z8hLipQT7r9OYY3qczbl2uUNKGkePnDGT17tQLySWcXRaVVPjSv8CMPzPrqgHIYgpoxCvctEQxK3
lZgK5hQYjG5dvrIC0Kf3cHq5gOqjfDoEi+V1Km7sMxHBDNJzZbdOPyC8t8nyq034xyWZaz1Dqgx6
fg5pH/UlEhIYYmia16FwrpPtAl1VkX4DP+q4+O8cC8lHU1XH7G7xkUZmkicMQoeMDjcJAzr34wnX
wRBLnUAXfZ5oSJjpe5rmxzGITEGIYWlFWIZ2v/kN6QJaKIfYq2WHahjtGVFt6djr0fPy8ehcwMM3
AdewFWRko1omu+hCZBsxecFWQ9wL4rRZm+/rBpT49wrtGQcQzrNQJ0ph6mjQwspv4mgVuvg3erdo
jHyjsIp0iStQCYeipBjy0RndsKfSaOuSeOfz4GPs0pxA7Nin6KI5R5rWuvXvtLTbajOrXTlI1T7c
tBEcCnx6aOLGvMLs8K7x6GPwFB6Ve/WkIMJRajyZqAe4Fl37NYQh239Tjb61bCtrV9ofvztR9zO1
AZrbtwBkv+t05a121dGj1qeLPNjIrYZ/11orZGFFGFbhEEVPFpXuNh49lAOKwpuq8IlfSgqabygb
psDuYuNZbRL39Lx2QqF1nUTTRWTPxgnGOWn6P+zP1vgpkLKRbchTq24eX/LBLsCOGgRBK8cu0XV5
PUwY/RGvGsmm4+WleOS1PH9lIudkuMbKFm07FL9MXLeyvx0pM2dWNqvhDoMF0LSHy3PdQvnxCIeE
kD0P1Zrqy64n0rVrnL6gSEQ0/NyQiWVHLDtnd1ZEarVmgEw47hiG2gLgEe47jnv4XWM2kqDcekcm
UN31VuEfnu5xeJwcjwVCvz9ec84FlHMz15/qORYzpJEAttwJhob0kl5I2YV+TfTUnHGW0Q3MoiFs
RY0/FNPlg+fmK+OqmMzZAQAn2EjjIcqYMWEfBGHcHO4G9adhfJxop1GQRAsx6B/zvsU8SnDss5gi
LRIp1XaTXNszctzfMGPHoHhui9DPiVhyHCrE3tExmJ40lOu2Ro+7kaLlX6po6w/MszTRk3jlrbaW
+DgddIcvZVdEuBBlLhL1/WWwGD6vUQCuKbjCMuh444RLVkFX7uJN+Rd0loocGSVbsiEJk6CpgEEj
V1nTX4P5B+lBDcfE1v6RFuzEsAsPcczQFRJ2BY09ZCGXFhpyZ5aZqqNbi0k03E5w7H8zL2CwE5tf
fBQSqvntbPmOtiLy4SpzoswaSRrD35K8ZiSf9HabnkaPEkNlb/NSm6gIez9VsX4lZRZlU4KyPjd0
FKrv03x3pCBEwqSwn/KCj9FpuN7v93575WmLw/lTvyvFYsSe8g10vRmX26zEcvvhcxMw1ikbSjd0
cpN04JQFa1yjzVqrz7hNbf7aVFxtM8FR7dSvkljnSj0zM5WCdZ0M3Ks1/A/co6w5y0c11R3uzeZC
tuulawd69nEnw81jNyKAHpnf8FHvVF89OtuVXP+cC7Iwk7prV+FVmyDVEYA3UVEtEU7ZWcdcNbgS
va0p7jyzakg1gGCIpE5ZGTqjuGGpi6/PLb2KArYFCThk39lRm6rACeKOcJU8n3NYlOCg3F/1jdJY
oNyrGglvC/p6xkx8ntvNB070OmmfYvUl446lN9roWP1DSp3a2rsSDvGFCCx6nj9VmQaviqWvvA87
VC/UOGzhYw0nKh7h4sOlzgnr5mAWql0MEa75lrZ9wytcGOHnIpgp/JXr1Wz1bchx8THmvVq+QWQi
ehtUOfQgoo4ditTCsEYnN6p/rUsAJB7o4K62lm3qlPlB98Dh50cME27PGsz+hu2zesjRypWyMFRZ
KaWMAhc0/yXbFfRxe0L43T6HY3A7XEFrQTSZgbr7qNREfsGvmmPT82DW6ZoyeF3D9maR9q6wqyXI
U4L7bHU/lBVHCwMfJSCSiBSaoz+G1equtrWg3uC7YF5NhB9sQDSdidvnBSx2ZD6PX7Qn3QnrS7z9
LMS5Yc8U8Hwt/hxDMrDH01Ha5xA5pfTnPYprDVZhIEZPxb8EcGuR3jBlgDf9bM8NqWolqJoz5xV/
8ZiYmPsngUpJpIya17trpEHsf+5MB5oBZyDAkcfd6Y2pIAOkWf6fwkbrmW/W8lzlXjQaCzhhzV+8
v5eU0T8Cu1d9wVJ68v+L69vL9xIbCqcDRLzf6w5HkXmGGmT3cVIQWKj1nBNNBgBZ9usNwOEjpEHV
NQl6krOV2mamu+ORQcfdqQ4GDXb+DIVEg5IBlEXWoplYy3SMa1MZQUGwP8MbYt8nv+ri+vomeIcS
Z9SsFULXhKOc1b1z8Jqjih5N76vgJkfZa4g9/dLyClxtOD5gvAJBKv5fZx30oVe5x4aaW+CnjEi1
QdKVMPmFfT3hmHSW0yss1r3Y2po7Vcv5lHp+WNzU2jq5lHAJs0i04RV2ANCX1TyGCCggRFpNbwJg
bkmPhjw2WHaKi6s8zV9YpUeTkwUQhPwO1qTtVg1XQ2qlT/2nNRAkfc1ayPbwRY/JBmQUrLYxd2bC
kzZO+y81FYfBnbzrwJp5HatezVIRr3OjVdubjeKzOVSIRjska183I/26o7sIY2R3X4PqL0Kxr1eH
mg2EyBMkgACU33fECMIkCd5N3ZR7NMw6n13EyBJYqd2uKTRsNXQ26e7/MsiTpGEXvfL90czyjncy
pG2kla0E1EyEU4p2TY+a9Mv1aQvRMuOBxIlX9qDFhWrztZIB8nyzjF2+1/3v6UnaGC3RtzJ0a0b6
LWufv9Hj5UdE19sA0ARq0twS7ELRyLxTgn3a5uVlY5cWqbe4XdHBIk+miX2wrTPKQdXaQ+7B2Uki
l7vGyDwf9fnUlSVaOrMSANDiAnvAlbTVz+KpAjhM5l3z26ArlRFnt5EakH2m3PUhf1aZrGdCdPTh
12F0OIunU47XhkuSdktVj8SvUYNe/Ik7t124e8ajnBtbh58F5jRZ4CgW3eLV4mqmvaAeqLUv68UM
xaSTn8wIrCzCt0cpRfTCRYy1saICEzbkJFjapAV12+P9uZyptfiFu6Og6Dw84fo45Cl9NWmcoak2
xo/8dOQPXe3thnYaQeVQOPVn0/tsUZ5Abxvvr2FMCWo89mx97x9do/Ckb84JAP9ZfIxhYnQ+5sNk
PrVWm+8Zkt746YgRgrNJtVtqtpQQdi+j1mwHJFme5+W8BF977SUhc951TL9Y95KKdf5MnR8Z/4cD
9n18N3FS8mUcq4htxIzw6RhjJEk803JeZthDKmnnEEMUWSTLPVj32r32I4y1vkm+kH3b8HYB8fYO
dUFl/+wroYfU9RCKzdoVPMtkN+55hy5p65dngJ15BidfXxXN8TySkYDC+DRzDQkfPQOl20x3MdSr
/llray2LI8bzJwFG4DuHcM3+8ZkS1Q9gjqjl1APaalVIgMC5yCedMpzSeEZIsrHt0e145+Zl+ETS
/MHSAl81r7LK0pf+J7sLZCx6qM8uK9iJvsvhd9feEP7/ROuTofh0zBPYhcOHOq0s4VetleHQRAyR
XAh6LqGgk+fyGkcTvYGkzLHTAbhHo9Z602yUM8ZUhXJstu78C039svSWK4U415JAfTYC+UhRqinn
8aUwPqfgVhTK4SUI/caxqLjERn5ZCU4EqvWj4lSni6ppvCZqet/YQHpUSTgmiwP2O+FxQi3gf2EV
uiN9OijfMkiQ0Ly5kyKGEJb4D6tWJczlznaW2XJaW7hCkZOy/47FkNNZgLNPeFB7h9mj3amudYNZ
AhbuBgZoGNEGxEgpu3AgDBe90TEPVxgXrhurfvEpJZKGg+z8aMMVOgwL856Nw99IBZ68xFqKV5kx
FizFqCOg6QwIeAGvLZq0fg9pXTIfZsLsVHc+mIYH+Prrz3q7dk+Mcq/3gUBDJbd+X6gIlJ5Cew2b
AS73fIrBdF/p8lqniG3Xwu87wYPrQ8MzKjk6mHcuEI0v3xzp36Qxa+CUzZQ4+hPHbQuHtRHtND7Y
fdFcN+5mQ6N5ywDc10VvdSI1qw9NBuptqU6Y857ibTEBH5KovWw/Ctyie+OxJCEn8aDMPSizmn1n
X7EA56AJ/lnmtF9juKg8Y8HAmTE3emXh9HweHliMm+XW1QdZ9A33xJRsYF7gJ7M+D+Kv6WfG2Hj0
JDtF0lz17CozkbGYfnADPmA0WyYFiS306K85O9v9PJZ3ZQgUCNfz75DBor43ut7SOiZ2s/9fJ8P/
YhOygKfQc2PKq7q7OqT7xfBXe/0h+ToAQ2ORK1EkOVxaEXJw0YLInEFS7qJgrm8UXAoX9jMyMF0R
rpXdwI+9uZtrZRfCBjFgwEXNiuVrZrlJUJT3WTDN7eVs37oYf3oNIo67swZZ4IuTAsdkyh6P4O3U
uqvkuTNSi61+KVd5Qpqi7zoERXzriU2yW0sBRkHdo0VWtDvhbe4XzgpdYtLJV/LoJzO9aCCoMBGh
N15MTEQ8l+pEghnlXKKJa8xoOHms2QwNujbnbdNHyzLwilUMfGZTUPOIUuKaO3rAZNagoRbSXEdp
Iw8AoSbfztuq4zLPZrgNJCHS/h6fQFyo5au6VyglojDZ0H0VHVRusTtTVCPgpXMnyVCdv+5HJFzH
q6gpiPyXNMSY8YGBxl/9yFg2B0lXitJdvCeAxFXxfp7u+m5T1KKGMpi6dDarxSYFOOTc2C8U8Nxc
0ojOY9sFx4MiXUAacWJfk2YeyYfNcbbmhqkJN30Cwx7rhXt7kZkCzwyfvjZuQYl7Qshga29J1nI+
nvgu4gebS+3NiqZ8DOe8t/iu/imOfXGPB9f/BXNjjuyySTD3nsOCSdrTduFG0jUEpEI6hvO8ls73
KwQYxJhvZRaIBNxMljpq7v8gWaO778Q9Tc6v/8rId8LLTbPFnOQRCB8CcZOFAYEdgi43qkqpstan
sMr66HqktLllliDw9KQqPm1dnOG3gQCcY/5GJTa0zZ5t/99sI+oXs6MF/WfMH0ZdvjSLa660mKgv
MyG2QbXiZ+vJXXfb4oV/H3nz7IOiPKUTYKBqRVz76AP1Gi3pB6uixiYUSywCOO126Zy5Y0O6XJ0K
UUQT2kl2r8gV328qte9E+yHBNoEilDwwB17CL+Zufjs3MKun/VfZd+4I5q3eIe10fPBrG8taWQaH
cchepuKTdgdVbHpd+OAJEpAAccFHtsmxFQbMtg7KG4iNTbClFZT2B6py74+5nknRPl4Vp+JNx7W+
Fvuwk6P1bD9GSRp4twCv/SqaibkMkS+FNnN07jsNXijye2Q/mdGACGJaghE71O3RkXuu/jsiwUx2
OzKawn+tIvvVR0Kq97pwI8w7wj+IEmEg/7IVk722IJr5p2SUhJoPjsVja0Aeln0UyMffybEnLRS2
RyXc3bQws3jtiqqkyKHSBzMZU4q4i4q0dNFWNjgmb1yAHrEzgMq/pszuChiFsrInXdvirO0q7R3W
WX/BgYQ6oUcYAGvA85CL5YF4Wfe+ZEyQ3rgyIErfNr9JYQJhV2A21wpecVW7ZQDOQc8gaymBxQVT
Za30/T9lZOJFTZfj3CzffARF4m+X3O4hEaEy3UF3jqbsJPz+E57YuRvVmVH1oLXUsrdhE2KpwCoF
41BOd/8qhJV8UVXDXZolfHwBlrbpGT2n24jZUCOFrSq1HZzQRQ5sOJ+3IFRs12EsFx6to1d5Un4q
kEHS0GZH/DHTpqnTcHk7nQGDVPToDaeIgWLEkwyooX/vuh0hTFKTF4+S2rSOOncYT7VrHpX4t0uA
yf9mz6P+0koHEmyl3BEgTVxxiQYlLKhjPOvwDiudvG0VvsLp4dqMGKozid4uXM6moADc4QI7aqPG
hJ/Jw6CNzSSGuEkT9dq8063Ng2pr7yJgAr/sU3bd9XdI/oncUzKuEbP8gEP0mej0u+DVc21MODfl
yvBJkakWGNlg+Qm6kjSWSir/QFVIKWFR+7sM1Niagd0DDgv4D6W4dhJ3aTsyCdlrI40VWf9Nqpgl
0gCTOfkkOxlhdcHGBclaJvjGNGwIjJBKz3O8tgGZSlsG+xgVbe1PL499sir/udWR3ND8Fw0i338+
fiT1M16+SgSwisUP3DYnu/Uy8Ql/ihLPlioMZCJ/ipbDrV0BjQoL6XJ+A49AttP++lzW4c80cxJ5
ZNi/P4ORvWH2MZ/XgPis7UdRUp7N5FC+qHlNJ7EyHvzeB1UjYKEbKfwTqjfm3+qYlg6KTs8HrV9W
K6Y5C0PzUexTF7IeTqNPsmUI1sTa08+AywNqoEN7tqhJXxqd7MQGMohs8YTVkOhCTQdMWmxif8yg
Y7RT7ThwdhBnh3Y4ftbqKmGV/dVFdDd/VWTrAYKe9Z3FLuN6W7LiSUPUOginmzTgEdLfoa9va9Q4
+tbHxkcj5VEzD53VvtG9f+enzt1dEyLa3PxETlvImhcjdbNou0ZAm5PSpjlY7kLi/W9cXCh+zivc
uNZvy5CjkS5Sj+Eli7hGtTC3rh7dgx3QO4UMLQn8gcQZpEtWeGDmG5Fgt/SO5j24IGbhMZhRDbVm
kTStYtkFiBhW3geo0lgbJxZiDMUH1EPkE+DPSaYluq4py7SztMmAaxK01cUXtLBBlzRhl1fqXMFe
I6cT17EKxbenbZYgOIJSdDw5mpM2N/oRaWLgl31HIqq/pveoJB0jMENw4bMpcuzAB8ktD/YmFfF6
2lPJWF/CF40zQ5Ftc6s3aydg/vLwRPvdJYUm/IwJVpEj+flVzYTQkTzihj+0jPoiQ7Zz3m3ZLUiN
c1j+PM7i+RfmD7E8FiKvcHi3ak5Zxm83nn1W3vBImA+h5nHBpfBghzK0eQ+JrxUW0kShEYllg3tJ
yBY2s/ItfRimLeGyB0/Y3wgm9t9BbU4/0Y8HOG1ILp/N5VTFKG5KQ+N3ITrd3dxIWSBdBzOt4E75
0D5qv9OpTK2UUY2v28uB5A5Gl+mPUHWm56dqIXQ6rUkoCaE9jfXzCEiWIR8kSkukq1FqqTFT+Ktm
852IeX0CL6AHKndGN9CgEXezi77IZtfgmA+8E5bsBnEB7YgYZOADu1+g/5fQP2VPjSShw/CPApGT
x0qe25VNCnnWTyjJEcK0ZEj8SymTLRKMgsc4PYJZUxx0YMTW+53cLFDdiJ/7Oj0AoI+c5QujMsw1
AWBbrJ4s7fLT8Yv479gTdN5ppAx/KFpJwzt3K4IlRw+gYsxEXHRK+Wiz214Etls//8X9soawrIeZ
fKFa6bWmMHqVUn1XfADusVuL75VhMKExzMkJuwgT5cO8QXoScxRUS7kpwJTAML7oWj/sJQ+F2GOx
LYgANDVNKWcc6eYcKRmEGgw6ozCcGbY7CX46cLP7Jw6M1ZelQ6KaEIO+4TNJ9dp5jj71LWeAPb8K
N5NQTWDwoLt5URoB1Ci9NYd/qB7BsAFc2c8krx4Wxt93SJ+ta6gK//Q0/nO7GRlA3MfHz1S5s7c/
ZZcpbTE4l2yxrx1COHmZLoU3+8ITjxg8WtHE8+fLMLbGOQ85B0JhnYknToNJtLlfsRMpPkT7nxQX
kAziH9/wibvCLNHIZcK05KGr/epem/5d35ejJoIKp41ZTt9M8L2kbloPpRAYIrBpUinwoVJsBt+8
+fzwwi1cSQly/on8rqooqN8cCeCZSrIOZdYo+W1CiwE7IXPTmYOs77OH1CwNFG2EyfHa7Nk877Yg
fzMHlXf1kGUxfFFyAHLVumEAQ1E1I5i7RFkjoj9qivhpB0SbDTM5F0AuYVeWBa3DU1z3mBH9zsfQ
bAZ9BL/k+PJEErear65YNeLyG9gNR7kRBZVg8lNsTCZ6ksJA3I+jzgNHW5+nQYy1yST0ql182piA
mKC2qXtdv89umJnXyH4lIK0DrqiOg/ODdK841EEUat1ivauTXdxaYuTvp8s9LZDSgJ3a2bDlOGlT
SoObzpfbjiQc7694weDR2Ch92WlFRuIIzgn8sdNPBTL7L9XL8vuBy0BGCTNYO2m498GY9F0ui9Qn
snXTAk//Eoo/8WozJI/yky0bUrqrVWHm5PdyyW86GpTrumDGrIEtdll6UREpS1YQNif/m8DSiZua
jIwLCB3dv48mj4LThsc3BYzq2X2JXHPZ2u8jBPnY3hju3dSW3YcpyrYlvsBqKKBAMKeEXcet8jiK
TCxJmrBPXzW7IPLTQgNSZw77UCq0DctO1fqV5cTC96J6VlgloM58bYmFFCWNbBpQoSiQpX9tEvuB
zroP3Y8400oMyq446uq3dQlnIC9zQrkKzYvRqKAk82rt8EmUYqSHXsZxEt6+KQ6SHA9PEQk7vFWC
yY0P6Qz1nnNc+fJUCrDp/ElG4YdQkqrzhlI4xD5KA9qtwMvYoqfsIi9kqYtMu/Y4A9zq+7qPhIzC
nHlwhyxjhYgqDC+IRES9wbRtJwUkyH4OiHZUoq0LmvpuD/6PkOatpPlj/0QHfqtBqX7BVD5UQ59E
+CcdaBLPT0TeUj08dheRVMQjn4wulLlxKNcI/zrAdH8NwfVdBjtxvyU6liDLe2Zk/aS+n9RPbL8E
3PpxbXJUn8gEmkjAzVLj0V+QWPBXjzL/praQFlP7jmS4lpJ0UvQwkoHW+W8o7QW4P/eTR+xg4qcw
edkri7yzah3prDju5oCc0P2mueFmCKBFcn2Kh10KwFgiSmE0dZlCPyHW5VKEot5zUbd28zipNEBQ
vgAGJKa1+kgJdqAaAEvB6UgPelQndn2MXgtmURiUQ8xZsDmYV90awHKI/A+3t5zsHseW+Gy4B6Ni
zdRBMFICh4a12lyyEySQnHcyAHVZeCCFBEKKcZJFdye+CAM6k+m50kVYk+2x20klE7mHoq6yCxhv
F9FUjdP1MKkwcmH7dJLhpF4A7wK3Rv42lG3SKVefOAnH/v9/0IsLE57x4QxYlYhy10PbSUlUS6Xj
px43qd2lv2ohDzzZUMsmAX8U/h9AzX2NOeEWhldKEB8TdjW8iivikwB1BGCWAQq5PxkIUQD5+9EF
UmBZdxSmgwVjNCRFPoXE/b1GTUVuRLLuafG/IrwYvKJZRSvux4QZlXsOTPgZaCQ1IqwHLFKVou4G
AJqjG4s/l5cG/7FThKNOVpBzMN2d74Dv8IHFvllABU55FxQq5c2IZuueqCoxZUzqtVVHNjIT49pP
Veqxct1oMn5Y+Ktx4BQXDNySFwMqGLp+MsSbmqSTdjWSNXatzsCSs2P5VRGbQIOVA2PMIj452nDr
8mqocqE80xVYXogyOO468mxk64I8cllV48qEn4Up+BVsuUTnHp1sMRj3skOz9P1LIz2lqgFEKSLc
/qiI1VaEFuJzFYLyYX94O0i+4I5rC2d2Z+3E/gSG4gS7rf+y3NPsYVDftHkQuC5FY7pnDmTqGa/V
Me2iUEmFdIJPDEzgU5zfcwlauEDCJ+yA25AN3V4jz9A8bJnWo7MpM0f29JAxMvKYYr+MbbIdnBU6
d9xAzxyoruRSOp/dzVyPi51OqAu3SH88RPCgAX3QpmAzFXYH+tpLI98joNbgRm1hNeHY/J+MoUt5
m6xKYtved8M76jsNjsLis/11wCLuuPJ9qQbRWFDT72neUros7VaEAmmmLgFbqMVjf0PY8ko7yrdN
oxrJtt/IN3JPzoWPVatylvsAdmNTo6++1HFFZ4CRLVVjF07UJmylYqmxDuM7WGrHNT4zuEIAdhIR
u9BazTJSMH8s8Su2fSDq8fDoJxQCF52x3dV0qMbtZ1kJ384IfosKPpp67So8HVFn2BLb9Toih4jF
9c9IpYR2HnI3gHf5itfdC1S4zyWDu3wFCagOVT/98gCaP0Gsq7ODNcpoLx3JX3jh4wYa456YFmCS
ZHQr92msrorxKVHFvKPaDmr7Dzp2eR0NrmRQbKFFR291FTZGpK8d4l38YnaTI6A5zNvH26auA+AF
+orFM4F715ZUXQQAgi5Yx6TdvV2yPZF0u5yC+rEDHaUduKVJgbmIQwz7MnKuvp5yfiUBceovTQpu
GfmoWbbeW6PvVFTxLtfnxOS5KTom7te3qOrilzVdBD8EQhUPcuG9VW04N0nR6Ou8ziMrf7DITLXF
u0+JYAoAw8MRpnpkozsAGc44ZkL36u1VFMzIMQlA11PZMhzHFKx8MmEHsYoi4YqC8EuUmS4aCWJk
LmbEXtCQjPznlpH/lYS36IaRih5mDLOhn5Ds5PlJprWOfm4Wdo92FYxRy4Mm/T9aXRLRvUlmGqJZ
8iNWZF0Qmu+vCtbJ9TJDru+s7pqVhHryaCNspnL5M41zARmodcBcg518DbMg8h7BWa/3V4VQrO8Y
cYVfrtOzfcXfgRM4hurQ9E9cnX7djQJ+aPxQIf0VWvLUpgLvgk6UGWcLggnEogznzdh1J+lCHCDo
G5t087rzIKpX8HFp7HwjYFZQnpdqpM/aynrI8tYxcdG3KgFX0U4RT5dFGO4NznlMO9Q7ZgE8B9Hp
xU6CyAvbeRFzxL2qHk28skGoqllvNaTmaeTp7BAT61FZZyUhtMSiGgiyiTathrmJi5jPDeqnD++d
F2WOnb0vBn4VpS7WmbvLSEMJBpgSKgPRgw7g/3/0G4pUdMs2Z5lmEdYnHZATR5D8ck+cSBUMuT38
LmLCFfvV9cHPOP5PBY93iP8D1eZZ4mPrxyXx62KS60csyndQ3MYp/ZE77Tgor+Uw3CX1JfQoqaCU
Wi3LjzAWB36p4lpz1DOG1lwFnEREU5rht0u4v4dGwemIRAWUxME4L+SN+fzT7EOCa000AYadTUtY
ksWhfUXNuym4k1Px6fpKK3y0UeDwO/RNMPROCgS+EekB40nZ4SFk/RQCXiZOPXT+igWePPaRbSRa
8jE0Qucv64sJAR9mkKq2aVZD21Dq4E2rGixdQfG6K7k1ttbvQGR1uVMS+pE+4YN5pJBXoURPNkY/
dQ2gqIrxkCTmz+E2cEKeZ3XTTZpeVe8/qUcuniq2i4cU9GcrgI/I3oDOfz/F14UC/BAQpcfgSTrn
tlbJqFgDMHdVPahfZbVMb4niEjjvk+tvsgIazU/yFZHORxOzAtRXKfJSxq/XHyMc20jpZQj/4vhq
LLT/vADJU+w7+mMnoiV0Um/QI5uSZ9f3s/hldp4wF3mB47idc5kyhYaHsaO+tWAq8CItzTVCssrz
5vGpsbonRvMP17yasGLvP+Z1eFYhEYacK3YCMFK/HVKtSswEtFtOnbBLhUYdSYIGAs3jrF2CNB6M
wI+XD6fMOXDHo7HCNtRaJiIzPd1R9K1k25I1PbZg+saZTP+HpNuCk8+dyqW4Xh/Bpns7PLCvSpYu
R9yVT1skX/A9WaEmv/RrMav9fhGAB8RR5oFZNnFujcWT36YqpZPmc3SXlzvNSdJRWhnZ26CCt8lS
VmQEoix42qP7TgVaGcuv8djqvUPjSpGe5rvUsBbnPQfDsCSsviEXJmqN4ocxXQ46B5W4A1oY3Cxy
iKijf0e1UmZ1NAvllsWgIcG8wpiAjs8mn2VS6KW9tzLtVxKMWPdv1qdz79WWnvdxJjZShL3ad+O9
Y9VYxDbGMH+lI+uIPvEKc/1yJJMfZO+YCN6287sMzxzwB/WCESRNrGxl9ZNqrlg6B5CiDLu12iRT
DgHkNlqziMYc9Sj7+Hi7NaFmJGj/HktIiBUc0uo0rb4nImzFczubA63GSR5fIbEbju2L7DFoTKTK
u3y0yrnj5OGZ5A74UwYVP56qgGWK35WH7yvlMFgWrA22HLozTJ24hEl74riQ2zU8acJm7KEFar55
VXntr4By7gcounCyKviMTPp/nws3fUS3xogYNlQgEJA+Wct2A9fcLq8TX5ZBAYV/S6HnJXzmsYZt
RGRgVG5ZpnIlYLciZWAvAKnWVJ2H+JjKDRe7eWcP023M3UbZ16YM1qbMQTDKHMuc1Chm2paF4XeE
s5//lPDcRm7jagCua7WCxcDPsECDeCXU3p7ggpPZUiAxFw9ACvv5Bt2Z4Fc6CvDtAEZyylRMR+XK
anSj+/p4Oyvd3+CfwQAN7++OCvGEDKhbFwk/I8q1boVyLtoMYAS810v95jSHTB0X7Z3zlLMXEiy7
A3dS2RsB0Zoh+9K8VY85zBTbwGK+hzHdvI4sNLb2XPH/ccOFy2xJB5pCzHKn/NZIm4jMj0EscQl8
ILTLWqJPH5uLdA+ZEHK7sVXVkUohV4aCoQjVT3Hph8WHgSmufQi+f/NE2+tj0DMJ0pgwPXusluc/
93MrmeeHu7PEFdU4XqTW4xEZuN2NYn1zsa3gLhdxhvugT8lIcm25sUz3mGSdIj1fa948BH05F6uW
YmkcNl5ItC6T+G+q/LN4+bWGKIJJjV6ihsSuscJ031BB4uoyzYx5v1yL3JVJmM09lfYBncqL22rH
BdNRFS2zlFQkOwOwP+d5CK4c+j/cDqBlnxI/aGdemOTLF0yQzQ/BYSE3YGsYcJGfEdWIk+Z3ovXI
XjKAygNXP8jtpPQo6RtZQDWU+qOJtMeGhqsY/fSt9U8HNNVNS3vvxlXVJqgogsQOYeKJ4uiVPyBt
uUMDvOmMXUz8ZJElI6SxWq4oG05oQfBjGYcmZ/Zlg23DjDWX5DMNVd81YVvC5u29HQAi2L2FUmf+
Aeg1Mr058+sNHpjiTil7D6aL2vNGWDpYIFor+yF3S4T3RCOUrkN0Z6Bzhkyxt274NfF97cej6JA8
OL1RK9lVnpdyPVQJHHjDyz33/9rhYb6QkJ/UsgF8lJ7j4xf+GgVWD89IJnwp1x0DMO5AIYvn2f8d
HVDTxo80W99eowmavZE2ExXh48YzwuBX2jcK5jNvBiiPKJkeBwuNWB5KvQqGlzVVi3bNbt19WTG5
oaAE1LbmWxO73ziDddTtsyIfgPCoyy8QigD0fKGcWCXmH4i1txGP8UBbK0dByadJCZsOYWcLQWU9
wpqaLDfjzIrxpxEP+YHFrbLDCu/rA6PlqfpYtH97ixCO1YCxueyMMS3UA13D+WWLczJyoKwiVrEj
w18e4isOKnN7mZeVOwmxqQerM51g0AUeQ8V6K7E50iXReujmnLwhUiF8jiUkf1USTeqMqYoZ2B0J
6bMbHBi5zAFnMJTr7H2cxgCp6xJOHyVRRG4hpqcX7E2PfqZ/NcbV+obx1bptxz3DsaoVjNnv+FTm
lOshM8zbb2QE0Xna+N82cuH3sW/66kNNKakco0qchF2EFufXvCKeclEbGM2VOX5UK8f0Os2v5SAV
XYrTXAblSytazg12gLmd5LPrktLHRoiouCTsADG+6ssvdLUTizxB+yn658Ogza4XIJFrhbYb4FRm
bgrHBUrSEcXMLg5dOJMjVB9kOJ7oxhFZPiyX1O+yrXwZ/4zoGiyj2+y4/S16s8qhC13XD0kOE//t
x0seJGTpY8HyqYdTY+J3h62UtJwD871rZ+ku9+o6lC/Hwz5da4Z8/gZ+2mDP/vAwhhA2qq3+tues
USZpC9pNHnh/k5D+UM4Cqgc5trarp3hPHD7vzdw9tia9ss7PgVniDU/VUfe5kXEZ0S8We+3CL/sE
zQZC41KhcH3WUrggsuLJiXt64d2IWcev2jOT0mCTYYyp7d0uNXEsNgEVzlZ9wvshns17NgnFYqJn
8fr6ESzd1RnLfV3BHk4ow8y0LH0m8OLntpjIrZZpG2zxvnzmLM3ifo5i5pl8B4m/A3/HEadipIxd
EESEkU1W7SliMlad4ZWUwRQXT4lTYSpaAmCv8PBvftizgRHB/PD1RyX9In33yroNp1cobp9RGEib
8T/ovd1uoL2K2Q0tX2Gz+SiyE3UXHY5WgsiXnOTxOeqEV5PEwoFcYZFiWVNqGbPU0Ow0FwWg+LI2
/23c4dLNhUHG0gXqZnnVmg3n9/cORLpqmLkMQuA7eWVpCJStYTtFnCc0KmbZA++im4X3bfbDGr6T
k832zcTE4JyXkuSkNzMoiGfW+OWow+whL10K3FrXMx9NhEfFbjnsNsvCVDCaEqa3zVtfXdh8IXTw
t02A3Ohu2btIMHPge0kWNDah4QxizJDtxzMeIXT2kM6GujzFfrqcEuAdW1YWN6kiHKB3IBFdV/nr
nw3VfdGsTf65TKAaF0CIeZYjoUfXZjm81HPoifOvfC9jkRAV3yQpuurk+vlW4hJGG2RTeuqJOOQ0
OL6bLePTGPqELNDqeNiomVj67ml6WiUs8JTMUgBNDaRC2QWqyMnzhjmJamp2kFG3rDXls8BdHB73
z6icUr+8VOVlIFKGDA3CY+pzj6ZJgL7G4/ivTqxVXIpNO9JNG3GWzo2QlzfXuEHB43WLZy8MnZKx
tRx6xCXj1LCgAbrcgAfqaqpkhzCtHS0932qk8POTP++w+oaDmbnbJwJdk6uX39D35CZILvL1GXi7
DzD+zZLgtnogqpLQNnIEZzLu21esiiKj53LCsf4ypYCdrP0U0KEws0WR1ficO5mnR8rcbKKiIi7e
SCLSz3D5GTZt1lsGczVW5JLV/BWTKCsEaRqw+hH615nYPOkYAhrX1+BYNrOlcMX7kRn938lGTKWc
PALtVX/YNhQk/BrYUxaniBrgaBpbaERzPw3xhyYwhpJaCZECumHVLEW+BGnCNzMdu8TQ+cL5fMtj
9ATFfw7OpP731H0TpOgJl3B1YgmJxE1Xg4Pejkby9AYsN4stP3ZkMq38s916LSnKqDjHYCaG0JSG
cJUXWSmiW1v51RzSC87gqjMuD0bQFGcTc+crd0mRRJNNhdvWAWztsnS7U1U87FDpcgoaJbnidKGp
IswJHS9tleYQx9PWv8Ap2xUnm0yVs6lXJczYJnToLMal+DzYlwsq4ZuWPrRyvDWmZe/3NEuIu2qy
tk0Bpz7gOdwUeLKEw1BInA6wRyuxjw5rDEMiWHnbi9eXq6XKbTP5A86i+/xsujvO0pHIpa+ssvme
X8Ek4StR2Wv8TXtDNx1mEQpdeuc/1odBNMmnb2wy/0qI6aGkqKUD9S1F6Ih0h8gUPc9V+DSAY7UK
mHy1miN5/U8t/TDJD+bXq9BDLBLyT+aYh5ZzqkhVDB5HPiDwKt2Jj3yQxjEtFBy9oa9Q2Tj0iqL/
ONIjeTjpKZKZhxdDYqVqtDcocxjxmqlPQ9+1ljtL6cWwJSBZN11/B8wUkPwcgacFCSFFVqipQW1F
ecVgDBWoF/ctme1QvL3ze1b2X63lnNUGpDYOdFVJ0t6gWymGE/ka8w8WAzxRgNr1rVsv8crEILsl
T2qkHVmM+n7BQC88UE5DLBiIs0pVLndDKb8U8fDeBF9TNoggg5ztuoLqnw4oa97vswQ6455ahiy2
FdsT9gjQD76pWSB8uMsUc5OJYLxgEHqoLtUtQ6jqGsF73e9exF3wlXzs1fzFzd1wq8PvyR9oD/O8
kOe+eEsTRD/6jKyLjS+qxfSdbOKv1rE4m+u7KfPUMzeJ+0WdGKARRBZ4NFr430m7j5T7WgnQkbQ+
0OCsU1TbjpdpuhIEj4+b5zUQYPd3lQ6HArIlskESpzLKwUakZzWwj0DBKwnmNaxjmSub3SS7hRFd
Bk3cGrGWjUT171eKGIv5iJOEKLmkwxfU3KhZjmFzZN43w1737dAdubV2ImA9vnfykarjJniT/O4T
Y94SPlFrIyZA/hjlZ/HTwRs00jzRpwCnT1bi9AM8SWeiaf/zdhTM9ewgq6RYQfr1eW1ivM0XqVOT
q5w5TbUL7v/tKiyBezzix3ogvS+0Mmx7yfLMp2RqcidZcUpL51daNf0g3JpEBESp+YumYX4+mhPD
gyrjbaLuvJaF4b2nEY1bq7ZyzyCeyZJ84cadorEcoKc4cGESteTpwKOcxZlzltQEK1FeRlSli4uj
A8qLwR2wBP9tb1J7h/WV4Cahmz9BajRf3wiE/UEhoY4xTlgAFF3FpfM73uaX9lfBYEOP6IXtTKiM
d1e/H5THFMbTBe6CuWNXLht9QhBd4/UcBRflGfscBA+YYqjkui2pPzHv0Qb0uGv67xdi8PENhe7t
XDMx5OKN5YeXDP6mL77An6DuDzxpfuVVsVwhA36PPQzcGhCFmo5JKTrQ6Ttx7qv8MgvJW29sIXJt
Mrp4s2/ukmAUv/jGYVAFaz8Y1YeiwhF0vspPGenlmRv/OW2xRnyP5t3WlMKmHLPQ0c5vdO9HpkTK
HY+7a146NQ7uXbyDM16QwDmOunmW1czMSrVDEoyleI64ocPJ5nsgHCwYrbDcicQK2i8CmFeM+5GJ
zeqqtkbbFe20w9C5/AuhH+hcbJ6rzCg+wzEXR0NW6LNzaXiRjSvnoaWTn9ODG3/Be5LAj6A5c0Om
jQ0SVPdk5g0BtwBqHhnU+SAl0YLU752UVayzi/iG4MiUY4k7IXCUnRnfdbpFrBFp8MOAcTZ9XeMz
yZ5e5nCR+nIDLGlUMwKYcsOkqntNmuUCNWleBZxQUzbjxvbuCeIDihdzXUH9i6fE7bqobAEu9Pln
M9AsT/6NYF0hE+9pQ7cghcmrrpS68N0uY6bE54lRuAhqmKnBB/cfdszblatqDUce+xODcs7Oho00
Ep+hQpI7WL0duXwun9VMNg62K8d8ygX2+aiMB1qEfV50vrfDHa00/xEiPrGH/HENjryKdKDjDTcB
V+xpsHiI8+csIWgU5rJDCOwLnRTJkJdsHE7SLBl3Nb24t7jHAacyH5VXdv+B1AhY+1ho9NdVQAEV
tfMQ7ATz9vprzMc3jDwVlB/s941MjXjCembPyh58vaX6srs9DBQt+5PXtGE32VnK4LP/OFUFp8Sm
E1eKfFi0Z1dmWipOnOeq4v73qkxnSBDYbSDrV2pr/1vVjZ4gqJNRhijiCbyMAzbcB4vvfJFldZ2c
CFt5lceDRMCGCGlPR3636vMb7+JXFEsvf3kOJAAHOAxjySyGPL/MkY3uKtre2mHHUKf7XfrNPaxt
OHKVSBkyP21H4ueLuiuYz6cF0rTIdDhS1s+Q2v9IowIwUhhTQBP5+Ro84h6NKERHJdz7zXp6bFei
TxStOXbZvZ4siPOGNiitQR21FAtyzhAmUs9hIutx7pVdFPobazpM7TfQqu6KhysRTuQETrCctGbr
JwHG4m2Kc3vrN58NoV8huyISQavKOdpqGv2jbU0NkPYclzKuFY0RMliAr7aO0l/dzGjQAUQenjj8
G+as+u1eRnYYYM4+XWDDIO6fpKMddU9KXw8RTdfUiSirelSlCU1biKdHLFpJMdkIqJs+ikz7jG4T
jFSHBbINL+PI/casfCRoZcTiaP6zJQfg8+NrK1/ZarJBOAldtIpfIR4qk2oPAYMg4ljv/voVed3o
tsdRdmomwf2+zprxfReAlMb/LxzmDs8JNrhrO2VxphRfyjPKEmkrpDztSaxSkGiQQD15ur6NIvrE
AtUrS3RTP+cIzXr6jWVc0TQxrC07y16qqEQFj0hK1iB4aUFqM6EOdgH5jll4JVFQ7m2nxEYp5+F8
h5GOaXVKOLNDy5JCWLwaw1410QoPFAU/5ueqL4TIlISfax+/HaK0tJ6Av14kIR6bWcZJ9Yg/eaaJ
vY+g1xhmQwNcImcDgJxUQRHCU877KqZCPNmjBBLYgy1laWZd3yAj63gzB/8lwZqurOvtvfgq8Sdc
eU58Jix/KIWO1T0/I1K4HegXIg3TVJeUROzYfhnrL3YagnP6fvudHBkFlCykXvRTWSUlygcxYzFf
Dzp/PZkqzaLsxRwn8jP6u/FSU6F4QfV6ZYzj3lGN9TvncG9eUnjIERpwor2fvKuIbAyySUSTGmSj
QKo7pKjkIZEujUi8dDJKUUXfwkuVBABWOG3QGXh+nKh4KONCu0drXl0uPrGtNAJxKCOD87+IkF92
wqISm9E6UntAdxgYOn3nKA0pVbT0tdyQjrzMfXY1weCOYdmX6g2eXJVK+TJehZpRqMgajl844H7O
mA+BDcWDxKEErkqWy+/aXTCv5i/KhS+78FHituSP45R+1tMg6Q0pfgrWR2/eIGVx2A1IixOBbqXe
N6fIxdxde5+RUhFnjSwE3VBdnAZFzPsrVkNv2IHFDKo7eWgtWrJcsfnjvfas5RTNqeFHSpwinMAV
4BeE152rWSguyq+LChcc6mDlll/jBeOwVPZEkn/mY3IfZUCmRCXA+dWUXLpcUf1MdmxgtN1IvkTw
sOeVb99RmLrk5AfQj6H1OIv64Kvt+9x2ATRMDcJmp4WYh1S55DIuS7TgFnCQuNAYTGJzVmj4GRHy
0JQpirw06OAGJY6Q6QrdDimo91MOeIjCkle9fBqY6KmQvvEORm1CeEaO1F5rIo6p+0ona5Fb1AFS
Yg1ud2u7kczEYB+iW9m3ley1jds/ULHKYsHC1lE5+ViEITNOrRnuhgcKbsnH0TzY0YMAfp6ss+7F
JBCN6s1AVvDPSbVNrClxvRHoeIEVDMRGe4nMuAfqNvVLVZv4Pf+OORJM4KLTZ+lBbySclzvzhu52
Cgc2myqdiT8YuYtQ6EXyBIXanGBW2sXPbUjrkHc9K/0hPxyz01x4UnesHYvB/zGRhP7AYb2s1iJd
NUx9cvSj2oIwQtY7cyIWuw3/TzJLjCYN3zf0kvJzXRnMi5YYoNg0B4FanLOAD5AyFlO7oN6f363Q
yV6+9ehwL2l7lYB3IUaGSavME47LDtyipXBp4B1LxYXSiIf25Jm2Bqr822Vy3WXg/kf/4ing7ny6
hIix5yIoFWGnU4Mc+iY9JfgxMvQ7stQIVN9NaVKICzLKTpdUVEo4CAGxr3VkWM1jlKramNF03RrG
U61IyKbaF7UVM/QRMwBqSqzyAqrKoBtOFGUxugaNPNAFdQbY+YHnPTzpaKM5HofjC4Hraso3oQ8f
5tMdGHDQqoxJm8FtXT0jp1pLAd/0PFSB7KzS0Jf3YQPQaVfBnkR1C9lGxjiRBtsk8AC34rHQirbz
gMHCkuT6qLna6I36QbYCw9ubC51ZmsJDWISfWUaZX9N08TB25QxII8g/7WvbDHPiLr8KVWKGAcJ9
emF+dNQUKURZ8XBTwqYTD8AySWxOZXGfnvocgln6tM1qhtVy9iZ3wniXfQH/1p43wlkIzCX12mk0
TS5Q5xRKAub/QuYY7BThmQzBIm+BJGslhVJ8Xf7f+NOxrVUJsKJZZH0F3UrJSgOuzb+qas8JUz9S
C7Sw9ukMeoj1dskCW/lKc3eaz/OZBPBAP+Gj9Wu55AzWCNzvyumjICCeVoEcOFrP2LuSJjUzaUbQ
K3qKBikHirUg3JNXUPncD5967WEPrnSPMenHH4M51DXIv/bb2k/jW2MK1xCfTQILeGx6XEsGd4MK
4+d5P4SeSLGDDFSF0Hp5xbNqRpG9OYX2sryrsj5A99SGrTzdlGkci30mRBKAyEK3QiSgD59zC/lm
6cqlmQX0gy4TbGCSGtL5H+/EtH3ERnnBzL8LvPFC7NNmY3eaHB+q5TaAxQFbXvaBvgEUp4KGKY4m
q6UDlFEWVxqvm1//Du3qJvAm0IprGaCO3XxbNDmHLmHaRmD6Zi850vXSNQg3NB09UM2tpgku2IgA
rV3y6+SQkMxVHmsAQaTcbe7AZRgauIAiMqJxtHNqaFB/H+dlad67fgAYjrNeefzTmBK7kp+gGlw4
BRc0mJ5Uv6r+wUY+XVtFAriJTtcAAr/XcuKUNi3GYomJSaRecgXj8DqHs9i3cPnwLhbyxio2L5PF
xZ8BxZPysZE5Qzt+d95r3+HpDFFCjGb3wbuTTe3IEuxCPfgni+aXj969fqYWV9YdA4rYG7y3StIz
oJ/ukWSXqx1amacbL6f6/bHc2v+xNY4zlXWuDmY99b1Mc0L/7ujfnWls0KYPkZXDL6dvHA8dQ4j1
vgcmv/Ucv9u9lRDB+MosIicujwz3V3TXwFdZVxMFvZ43I3gGkmv46s/Flyhrj78WK+aDBdOOGki+
v3mWeHWJi8KS6ScopX0OLe/cW8FX6gpcHyau7KFmFuCjNdDp6YAsjrUwc8JreuFA5+6T/uux/m6+
zUxxIV783spBxexvE6WTvkGNCaRaaoWKSwEejgaC/SEkZv1PWqpbmt1aIZOaVASDbdokk0ddu6Bq
sjHVL+2Q4HKbRbqbmJTwIsld/R84PJxaqBq8QN0SD2v77sV4cGQBByFmO5798U7DNJP69vje/6iC
/qxBhC13iUX8s24Aii3kSe3o1NzJobUtB7MtX34wc7CRIhji5cZbOmMSNKJ92Z3rlfAZ1iYAA6Ig
UT5Ieua9FFKh4zaAIdSU0U6iGcHWfaXdFUqdVmKp402TSqJiKJDhYCdKNmzknTAEoiVq1rLB30yF
GQTWqqV4OwpvsAnZivNp5QvHt3IldfsPmtTPNpVKl1Hd0oGF2COVh8pBCkHiP1WU3kthBsRIOeiU
qy05yjOLBLx/AVLIaqf97q9Z5PWP1dfe8QyWybgmP9lcsdByEw56cwnolmoLcB4HK0lLnFjfnWt2
0wu28riAY0IRkzK1L5ODgfWEyCViVseL4R0vqLX6QB0QMPuQy5mLRdfDgJgbywI7dhrDZs8N/PLK
M/12U/nlX4FY3GBvWFzwabRNOQ0miTE7yl7k3DBsdt44dWSb2bXC0lZa6VS8liN7eFmYzFaQNLR1
NeX4fODJq9iKIQH83Xe7mGfDfxLAenzaiYevkdKjff3/9Dp9dR1QUeI0a58ojqE95eDSJ0DEtbVK
3xK0xzZ/LhWZCNn9SjQB/a/m1+aTwSSxPlNwrddGapQkKTyu1+8v8coMKdBN2Q3cU5Q99Y4TL5xn
9aMig2ELmg/MZZbePP3A3hyXupjrk/MF+6pfjp1LWHALo1/T69biPgXIfDw08aiYRI+iiLEKVJUo
QnzJUe/FjYl+unuCWBwAqdBoUmdaTIw+ceKd7/2RyvtRHCMRMUEVcw8tKJrGwRImlhMk1OUzUTnW
3Bgn6QHY1ZcRjH1e8HlC9QHxwIyfNYRwP6/VnVdFc0U/G7Xwl5DYRf9LvgCNlYGrM8zPvjXvistY
TUD9KJjzRXm7u/y3SvVOWx+UI+kf65pQ7lZjdHai0stdPsa//0xgjVTYBxTsbFfT16pcyYD3DNpU
7umsOgs9xvid1cq2/WPWxhlya60TRkFCdNCYGf+Jp7XWa1AjTH+po5A1IrUmZa+eTohoQ/rbhar5
qmJg7BNl9USHddG+n+zrgtLE/QWI4c24KDC8SQ0FnzbwTLIreESuYTxmucyvEBZT6HkX2qn2KMUm
N1DW1JafcmHcl0HlMO8lHasAnG7PBjaYDoXQTynaQJPM9anehEVMDyV0SJppXWMBcgkco7RGhStJ
+FFnLvRxzdOMEe5Hu5t4uFMgUH65eZskZTzuMi4H6cJ67FZrCCEvKOmejRu4iAazlgDBekqrmABX
Oc9TWhKV5tM8Io/w7FoRb4CUSxvV2HxGRJ0/kxPoUbauZuoyMH3CbdGkSDbnt7mqIWFCRoVYasGw
2nICXxhj6Nj32mdZ/RfZOGW0nRk0mPRdlsj6qoo+cR12/hTAsSOJncUBTCAGJ4eYI+n3NM4Bm+Yc
7K8lavaNmwLIvYJljQhSi1AMy2scy1RbjTMM5kiq2674nLLTskq+5J794FtO4fOgbrG6AoDEdwpy
opUVDCpxfKaNlg+LPox5Qaqi3NLdV11dWCN+SowCQaMxikkGLwgrR8S3d+Qy2mpf7dV2UmaOAQ4T
DACcU7QRvzuQdhgaPDa99fkRyu5if3ZT6a4r+BXtwgLXIBw5Ary3wI3Tx60wSthuR5T3+fiORtkU
/bfENzxlZxrLOYMplFrz7y0VozGS+lROchJoac1rkpUGW2EFzh8QPikcDMUTOzQCO1Wff9fbsRuQ
EXG80dZ8p/89bisCABjBx3J0xPWsh7BCOntrjpI20zLYbpF7/from42NPx//PkyMzu0hp7UkgeDc
Riif3zrEo7s5K//oU02GK0lcj96AoHqQMEVtbbqjCynzk27RRDIiOENdqd8k8pvpxxtkKVSnct15
MX6w3lBwi61LTRmdQYpJm/xvUjSerMBvHQFMaD2tgrOg4vV/Gx9mG0B0O2Ds1uSVpkwnqVSpeTu4
4fOpa/fOiF6swMGLCpL5tfQcT0eCK8MxwrpGuvJNjDsKLniljld1wwGDrybx5b9ybExWjEAw1X92
kv3clp1AIqDhd0B62G4YXglhdm31GKXuYE9zwpnCC3xjVaTNMoErZkhZ5agAkYcxiZO1mJRnxLqP
K5CYiiNgqnEl1E+WFrWpqglYwKvk71CoRRFbRUNyN8ImtR2ImTKffJIYRveJSMVhde/w/CMSZw/f
DUHhBtZR5ROYUT6j66yQOdNUlvb+CHKJKdbsGnnHWLjg/NWTAy7yWJK0Tu7d9KCYi+e8jEV9jicJ
nNHhF9tTLdJzPw1X+h3mrl2SPhkbl/JSfpCwfUgp9f5XsDbat68leqDld4Ewdb2CrHPmcSCusG2W
kItp0QpbrqXMpTPyMDtYPKlnj5SJbrv8yoQj8WuUwwajb51AtEyNUzr8kOpqhBVC5+jG9r75kEip
V4GZTeo75EyTFz8GdfJcq+hNdu6LDgy1AEybml8v1VdpUt/fejbYt6/cvaJKha2Ou6YQBxArXycZ
+Pu9HlN8kgGelmAkMfAa3rP8sy7WXJM+FGLmdcMT+NgMdbKyebJ2iHoxWs67cdsKPhk9FkEb8pa6
iYdjU00KmnG8sK3nLpF1aQM68C2MSPynV/DGZiXqRn9UkKYw3ypzbZeISb/qpIiQGU3oE3VGmVFF
dhLzIwjbw/wzqo4FtkLkIW5P2VqyddU9tjzYHGRjqkw6qVz8fmDZh9+nFHaLWVKUWHM1PwC5DQOh
2tLLJt4QW8Y4wbdrY9hIG9+Ft3WeMUxuyWaf8ii8CFcsIJ/UFTE6Ej6wcEhZkf+eq8N6NYUKvGCz
wf9uxeXi8DqndpRizhulAXy+al/QaNhB8yqBRf+RebS4KgZQoUwEgTWRFuKUKuL3RGKQfw/KS/cb
9s5CwEPW7VugaIG6dMmLEmHmqdF7WD5LeFMwyzEWR1PnIVpEGflsgOUyf4buifNTNWVzcYheOMC2
yi1Bd0rmsvUxSOFDpHXbS1VaC4INZwqAIJJX83vJZN9X7ktobdqv5FZjdcz4TorCYuArx03c2Lpq
IurX6WG8fLo1cRaqENRcgfs/fNj6uP/PkWvi2Z05DWxm+FXhAUvTZ5oKkjlZJ9ug2+aO8hjHPRpg
u6qfQ+CrRo/gZdFV704q7JlOBRE8QcyXGOyrNBiv32HH1aXsf/4iRMsRo/lZEliksUBUQMntDJPk
GUttvwHUJtthf+fq6V9NQnGwoPbXdB5FkSmtIHoSCjbNwIuwNoYDO71hwvsV64mUSMPRf13SEIwH
ME7KtfevdlpH4Puzi4Eab3rHTG3e/hccawqvj8Exi1GKojJW63JGA0AyI4CxWMZxznnwJjQ6ngvf
ByD+3S1ttomVwGansf5w7Uss/Fm/qP+VWgmluyPzlqSK3ed93463QmYSfuhAlm8SEpjity/70oLb
fjFiVISCBsCP9U1qI6b3R054L4aDsntqLGxOkonJlVR72q6w1R6u7vQsBUhia8fqnn2aeLb+v+J8
MjzLr5RmZen1B5hKs7/N9zHMcRZKdlj/26z0gW7yVCLpEBSoHSVS9bnBsQbPfc0EsvwsGm0Hk9fA
3rwTteJAXCxOB3qukuoz1DQpOv6sHNvhD20JfMA6niyQMzw2BGuQvaGrWvcBx77rl96m92xG16Q+
Yg4N1mSce3kpGe68SqDd5Ryp6Q6CC16d7gRrJc9bGTZyZJ/s5yPJ7teQTnZ4cNfr2Lo6PMXPP7r6
t8Za6o/Z9+7I0zY/DlXxw8AMnYEqXDiOn4kL45jyn5G7//+6zIChcv2KfLYd2sAcDwUu+5lAlFn6
ZhoRrxz/gQo+GooR9nbOF4Wmvk1U9jA2azg5UWdps9txhaVW5c2jHleNmI9yJxeVO7bOi/xsElpQ
9EiPYRZ63ILsZn5jNoqWKCV0SsPSQACaGWrkBlu2BKnePvphxElSnaq2SdRPtnpViNlMQUC4yZaS
iR24HbONQhi/f3IECdjUpB3zN6t4eLLbo4IzuWkYhr+/e9v7dey82xwpxzo7IcTulwmPdJ7B/q4r
xdYIfF0E+FP8CnU9cn3HP3l7sLDPptjVmTdk62B3H2fzVyGG4Ca5Y+1k4nEF0pFCNhDPBEc7IuKD
2XG5OpuB8pUY7TMEtRcaV2Q0+sXnYicbAoPwDuzUg2yr/iTwKw4uaSKzZ700OoLmzAvsFkIjIctd
ZyDFmlB4VHz8MsIVwDJl8W0z4jNC2qtDZa454IUWYOQolu49J7kdK24g0cB+I5rFpN5g1ZEiMMND
EzBfMPdgKJYCHg1hDH88+iGboPwThKTIUDO2h08Ui7wFkFfIF3FHMIbtGWJqjnvJqcGN7i24/5YF
/bKW1UbsqPmPaVMDR65NY0Hs1Z1oBD/s/4l3ix7f9+13u9lHsIWu/rwv/QQ+XTJ4OmKA5cIh6u4R
lex2SKcbzIrIEAa1P8cy58S+itdbqJ7qoVnv3r/w9d+9/uHDmx0s+wK17JykZoOodtTcPVEWxkvc
uz5F5tATN5NqNBd4t4rAl7VHKzZY5VPJQXtV4fk+K72REvY7fRYojbM5g4xVVymtoq7JIVDbwrvn
fiwV1JfFu2iSzg2EnObBjgpVcFLdnetmVn4ihN4iN4I+sy75PaaWJCG1uAxbZqCP4eXi7OvXMatf
B4a7qAei3KWCSnx0b39L8cmTUXec+fPG2nB1HRX4mrqegZCVfJrtkroce6vED0LAsVeyAK58hFtd
sO5/lF716tb057GB37BjseZkIM1tBlAGrSO380QoOUrT6eZQ+Syey7PRNy79Ax17bUIpr98OLkiV
WfA6O5FFz/oMiKnEMvYIRXfexO0HZyC1fhDSwkXBT+uAk8CtKTMcKzG+ZfwaKpKeSV9sLKx+rL3P
q/jzKL3nmROHQDiZh5cciw6KxpNCBGTQFrkqDK3YWLjYy5eX2+RO5yJ4kMpKQDT4RWqDmY18ozGi
w9djNFg+WSnXtltxIUVZjKAF+wOvg3IzBm8I4m+5xXu1lafx/dqlEWOenqeYAQOq+htIDrDFGmIi
Sf/RGYbsv/g1RywjI+PHBNLzIJza7tAv3dstBCmmD6CNwYIxxkxkbQncSv+6g+hy1f98BDN7mCg6
6xpwAz/5UUlsU8LoEXlkX58bQ/iqD1dUBJrBwlUBQ5/BuUm8vjD2yJIhSSALgLVPmC15A0FSyl38
GbNXHTQgBTzvdwzT49dF5aJKidTCr3sg2wGKM78Lp+X76Chp/RfSNKyc0Tu7g8PZxO3uf/F+PDHM
hRY4FbtJy3Od5Q6zPALTNYQCKfhCKV9Y12GOqkBhDNsQR77124Vd9ayanu+BMAeZI3HjFWa8dmoZ
5/OXTDQFKWDO5YP0TKR0ub2xJHM8/W/GVjWNj/+pO8veiJeJ4L3OuxbgFgL4Au6qeJykjYb1l7+/
MF53UyNhFtWmSG6Dab7JB5FXky6flC2eKYzPiun1/5p1Lla7YtMYJ3BN1EPc/0pIWrYgMncQly32
lrZn3YU8eMovg1gA8Sb8deoCj/3wmT/pJpOl6VcNiwv2D5JJaoWmk1gTjDaOxxZ+FKue80Oi0ced
a7VqnxXSe2uVqwCDmVNdBRf5XXIg9rpIhP1L4Zb9k9uaXPmCslC50OY+u9VYmuUA7+lJDqNaqrNn
mf3zzN7TUAka4ppU2AHa6vkY/5Jx2RH3p0LGXhPd7Qud0MK5WS+rzddakyf1CFoF6eD4bNy6sfnw
r4YOQST/TTWT0AW4HGe2eV5a3UgRsU3Mynnq5mTxsxWWHfj01sDUcU0jFAVg+8OXLlzIcH4xYebS
OxMVml+6rufzWhTHjsdddUixEk6H/zqCfPd4rf0JymtRWggqwtQES3im4d3ek5kNd0qSSnBWQWKJ
3OCDGUe9TM44ax5yqLSM1TGQzT8G3OOp28eEHge0fNzCyi7fBxj71wY4GcvEDmTpZihF5D5j1Org
c3Jay1a1zhWrHEotGDjOz5DL8AAij0Hpr4W7n5e5Nmn9dOjo2yctXyshlNyeJOxY5fyOGpFXRdzQ
n9lXg0XE22KjmHyqVP+LWhRNxE5DvBWVKcGI56Uk/GPU2wAVyr8+9FnzyYvVp+7fPkPSVCJEencJ
QHYgDKCWLcARlOi+bkaEz7BA8zb7YF3yoWKf946lm30Cm/n+uL70nfXqkPDWnTl8dr2MLeZpp+6o
7nNgBtBdFr2tLWzJOljEikeD0lS+UBU/XlLPJhkG+oyme7WS6FdDynangrxhJO98pMXeDCkaa6CC
NX/Dyd62pJ8xGCpa8ph/O6qQvYx8+SYtiBhHPBIHrpS87Z5GwnTZFpqJL59nHyzOsg+atdqAN2hJ
0lv4AVxRiujlCKyexZH8t2RBjuYmws3wf2vJwgXyXqgce50x6ANEF3jpEbhZlqVm01iuhaBVsKiL
1m1mojAyzHrQp1t3SgPeSLBLLSXaMGAes0j7xgnQPS+UKkdJHJ+47b8ODkLwiE/hVVt8sRH/BQzo
QMWHNs9JQhgiWzuvNNk4uMtpQBtzORTos3WGBxls0iWR3IjcZNbLdrfScpTU3MpsxnKOeIVIjeNf
9teewA4CRDZ+oQOlqYR7T2YFULsCsPuPJq/a4Ptv5VoVdFKAqTOaexR9azSW807X95mQ1ThuR6Jt
dC0y2usIGGyGhxnQbykgPc6DMxmP34vDVjyupOMFEDg6UiaN8S3pqmywovGfcvevOJi/GWzpWAAm
IpX40C3+AYj37yu/0zEYs1R1FiJlao6ydjBeJnodLCE00EN+d+E5s6GYRM37Y9EJJSF5AAHXIdDw
/+HjRtbGxry6XuSTOfRg1dWZyQNdQfgU8qB1sfjeivWHPwjQmqB6LuZ/1wVMIDbA1atQCiMZXSV/
t0gQSnTk3GUte0r1Z5GCiWr9V1ZOq0B55JHg78eWzf8wkdswGRUKa87lsQTBDh9LaDvxrd2jQ7Em
E9mkbj2VoiBP46b5iw3kjmoOCc25OYsLalJ+DFyc8Yj2H4o0G//KI1IofyuTU+vV1W1TXJK6cWK4
jSpXF5mhAUOIKIbefkrqCRDg4qFtgbcIflMlkfJuaOEDZhnHRWViZxMKbjfHedkQKEzHflauG8MS
vFtG9twFOCygY742Dt+gh+AQ5jkQ/FZqgM22BNcBAvV9COl91mi6TU53RN4sbKwE6SdIDQFQUtJ3
7M8d5rP/yx5AhBdfT8hdgzmWZZQ6eLk1//xDlJ+dc3tMyHeEB0L3a6w203xGcWYArmBKwjcsCeRF
r1I/bfK20KPgSj+8i91hQ526js5n4G4ulx3M52Cc69sIg/M7SsQ63Tm8WoGV4yywm7vphEE5PAX/
zuSlmU5RQJwW/zZdJQVuBe1XKqCe9yyWk8GJWvO8pXapGJnZ4M18LQ7kcSIUm2WyUQk2rmG9vHPj
Fd+HDkl/+Hs4OYG/mkC526NtkDaYfAsD5JLaw8CnfRzGTlUYA0f8q4wxCrcJ5d0dVMfSJjlZrlqC
AUDp2uyhAB8bOFoWG1n8ZFVuKxiVzfqrVXZbvFf37RdLOV7FWG+dh/Cv40khcgIBDU4cYSUC6zPZ
7YlgoIXFduKWBP4bECpz2U4O0Pprs2/mK35Pw06ttBog0QMUU3KB/0BVsaWGRtebeuxWUmXRxebA
gyNY+GZkC4+1BpTNwtFJ5YLZ7idg/gZ0/r6Ji/Gjfa/L2IZWN7LDucav/mL7darNJkoUGR+AVovU
/k0mNcER+e43MqYUfcpwB/gDueluDOxlTeUvPYwFuIT8No6qZKsPQvZWzQ7AaqpAb1C6U7/UV5Pa
mlHq2iVZ4MPZqKCRaMyIZx+rxd2MpIkkT5ojGkinJRFA6T3UcLw8+8WcxgkW22y1hffBum6/6pna
D7MMwjwKl1RyaXYZewMsei0TuV04kTvy/nScw4v43eRoLv0ruTy4vDvlgvG5iYORcscDiE5U+8AF
4RpY3jfU7fzjSy1SWnYi3o2pgZYh3yW6SRnPQ+KQ59oMuMfj5w17Fl1xWTc8BO3T4kUJaFrsOqqV
Vazfl0Y2HkQ0+vxxn2TOE1ahoG0SzJskwHYhY7yWz6GK+CUyKZFZXnARvkXIUSVq7EmxttoEYoaQ
CewHFVSQQi8MW5NIXnuNYYbtIBAH7xyOchFJZfODHAwL4ysQLTUpNbLT8e2PFGM4NpX9OCreWNm2
gBOJi40jHs7vLpcgmJbfy++2BH8zohQBh8azvx6wlEPAGT9tYOFW0x97Z7tmdfTNi5QBFopKu7NI
Wk4s/0ObJE8niL5ZxKG50DblTccisL1td6Dwjnx33P5rXXIbsZDB7ckQfr5w5p3QJ2zU5AI74YVL
BJWPJPOfFEphCks3517hwjT6c/aB+Sk/LiBct8qikm1YqNg/2VSIRq3s3ZRQ2KSY5hCyT1fVZqly
/fLw2PMvUE0imiyIFigXSleHwcI2To9n6ZxS6bqlOp+AdYfesxcAv9uarMOl9sbFDE2MLgfyi2cj
8o9kUEZQznutBOZE3reeyKKNAOkam0CH1pPehCvf+bkYQPfeXqajPktEo4Q/3HkGtoGNwa+TpzxX
Utpp9zfXMbINmfr9n+bMgCaotp2eL7FYTgrmELZ2gnOqV0zxmKaKt/PoRDSg7zlEoOU3XfLavvjG
19eSkPn/3cdjRYBDSL45DgiDSoMDE7RyTJcyQOm0i5LSkqmqnpSZTO3DXVvNmVRR+e26p+Fi01i+
alhPLzCk1vWdVPLBEX/H4I0K41ZIk0ASnrM06aPTwe5gTBUzxw5Y9a5YeWVqSov9Z/OI9VjCggqu
cOz/E3q9wqKPyVMUZoORpOjtw0Pq6DHPi4LDTgOWo9LYN8itNdDTC/XmnmhOKnQeMCGz358BerPH
XNREjuDMtf60Yvfz+hbjCypI6cv1OvErg+eUduDlTL/kxT5xMzBdGRAOkor+BQU82m8EC5LRv/aF
Cu+Zy9Cyg7SA90EkXV3YnHsXgaaNr64TIeaRI0j3okXvL3XR6pqQF5IXIgGIZNiDkn9wGL0PxUT9
NYoaBPNH4N93zN+BEswGXPg0YRYPf8X8DRN7Vwkh0hgoIPABzI/E7i+zDOdgrX7dKsQmwbLp06aN
2c5za5UAML47R2/r4f0zb96DR1w2OeKzFGK840hiOwgW16ndT0HO+zwjxKnL4ZCq8VJHtlw66rZt
wy+I+2ZUznn6KeE05KlCrfwUNdZDNbfXmsYJJ9a7F+48KtNzfqzMwT3f+XbOJcd6/yD98aCV44/H
iaCYI+fIIJK2it1gQ6pc+4vYlIgXesnF5UmiHEmTlFULssIpjcul+4jUrojMKZGHdxbA4tkWsyD2
wsxLHmlAlu4Y9FJQVt1e3zvCbTAIm7itrVf2iKAD2MaNZWOCZhtMCSl6GxQIBpxEHneq2iK6kXHT
67DwHgo2ksM9IjJI2miAbkfL/I6VzVwoKY+qIQXYJZymAkVkXWMhAiLJULOmkHw2OLKJgIPXHwOy
3JkEQTRmWNLFp4L/7Z8DBdIAPDQcaSDhsZX/TDSbnrNKYUPD/N8uFPb2CZ6f804wOJA8Ql484Wi9
MT6FL5F3+zufSY8azOnfFcQdX8X98pdK+xAgfkvav3urLsww/4Ke/fyLxQjbZTIhYP1THxrQ9b2l
FypQiG7kWL5AMEIBYTOlNnu/WZsig1heU0FxnTnqu0sybp9W1IcEfcGbvghhU1OrL2zZLb0uf5b1
t6aDxa/kyb4oNbQUIXqfufbkiBJ+4tVMsKNd9MQBXl6g6BZwPYdWl6/66q9elG2LmMMxZXmT2n+0
hrAiWdR+j2FmACSUzC+Qk8zWBIHlXmsJ5PZ5gzAt3ob9VoafV6blhIt331ldxYWkqCYSQqTP2Kkp
zOwj1XGkDZJO1bMeNMQNYIIL+RlBWGKIip+6um1csLnn1AkZ3jakVIzhh8nXd8Vy5nxOrGu2nmRc
m0nqw8GNOWNpzvCUxt1h/jcT7sBUi0iBZQ2LfrJJyZF1SjfnsxM1t/DJNtsuhy+XLIL/j45HBFqX
ZuOP3QdBIaqRhOeFDbwK8SUojgVid02CxdlTJh/IbOo7YduBAFKwdEWuWvDgEkkzEGM9Az0Iklzf
8zt/4q3FI9f6rC9nCPeXfL3WviLDB/XcyWaeMl9o3ebYt7FXEt1A7cMzkYEuVMjzmhwXdTOOpwJn
dF+9N6RcFWkmwsFyuTQCSY/GYa1xPSjPFGFgCSoUMNuKOm5lBZALix48fW7MNWWnCHVE/w/3pVCr
cbYAbXOO9jwLMsgy4bzAPpGw/TzNvjDtcVvyKm52jFzcYlopRqewtHEpsEdP6Uk4Yz9yHWhTBByu
me3vmM9CDfgyH5+BaHfwqhsGGa0wVwNrd/C/PTgmiEEttut5lDud8ycBokhtbCgwvQg/N6x6mAAY
qsE1m2DYqiW9WgNIgr+H8MsB3TFGH//pl/58C3qxqltNbEuUIZytTncezjkz1JF6JhWGgF77NV5r
4XtCis4r5hZU9VSDPGO31uGFvF9fqH0kZrr4GPZyFSCebN6f8Blz3pSp5XEM3qVwQ0icCdyr4oTY
57+8eGfPE66c/KM6vjR2s8wdZWp+WeNRa2h9dbI3hf5WT88oOWeyuCGiBq4B1yFi7no5S64VTW77
wFxvBO6rKbKbmnHWuQ4ze5kOyW6MCZ+pJFhCXIq31g1h3tA3ptRg4TdKsMovbqlSvlWPNkdp5J7v
OLCvQ/PLodfPPjDqKIh8OjVPbH9FMAUqPiX+aipydbmvg3tcPp+IlDl5cN7U22E3FF9nMkkwbepT
JURbSSxn++FhOOLjHxwKS35joyCTdfjiugUT43LPzuWaT8vGhSo1F7aLQOKkDteFr1YXUXa+E4HM
VjJzeZ75fxoDr7f9XHf2sGlT2QpEG2fBKLsm8wHYgW5rkx8IEKwkuYZ9Vg/duoxtxhyLpeZ/O6t6
7ZXmirWkPDBdsH1JnXGli/25aHYUeNEC+Kjf2CVypfkrWLlYlynKL91MFLChIr0JO8HbHQp/Sz/9
BnWslg7ciSNq+7DBC8IezGKN5kwH7jFKxj/ty8x/dJXPZG7GCY6Dy5KZkVRL3qgk30yNR26UNSXw
QlzfN4kNjYDSlY+LGlIJxGnjqp2e0B8/iKzj4Mg+VK33S2Tuq/pDk/RB3tIay3FsuRRT1Kbl296U
7QkNZ5gNqph3rhjt70YyIXf8UyB4QAMAcQOG8tB+g0jo5lvjAyahqpaKttJO4YzI6WH1ADNXh322
pJ+fQHZ0QIgUmSpHa5F72Xu+oOyyUf8+7Mj5vSYjiKBpxpNDfmstUiZlQLUWyu7E2FbrLZoM86ox
TUaPUQr+0tEXHECvnFl3Upje7nXraEQv43G4y7U7R2kemY5GEjqOZlkjwSAvZrSOpdolmS1TFGBf
S89EMTge13nZwWMchPHNptoMx9S3xBkB60VD8W+6vwAtY/jIuL3r6pcj4c6HjSNyk2cIGup03+53
oe08Io4/3uhnFiLwj3D5WKZJj//HkRY82b9nkr6xgxorcASqkCkusRdyETD6Xva2WIZh9mt4cgZn
qEexk9oqt4ayHFKnVR3H2Q8iKZ9ktKUF0iHNotqpKGanM+i54ileZ812J2LPTfBxE341/WKUiWxr
gDPl3TGrJ6JzehnktyP/Qma5tY/5do6K1FpeyUlMQxlpt7uMJtMAXDuFYFd4GGpajrOJRYT6q4NR
HPVgxK22EZLyvL+bblJdNE5MJJFoUsIGBGpTo+N84/MHreeTH2nMGdW5aLtOTr2aBCYos7fp1CdD
EGl9aFbRwMDY0eTjh+3XMgeAnA2lJ8ijYQzxzHRikj9UcgZ0lAicNIypCvu4GIqR5hn9AbhoUvea
Mxtohlpu3o4xJ3Dt73heQiIH9JEp//0CZC+5pf3Mh8fmF3rHdhAQfjHG6AXccXOdXMG1wOB2yzEc
EktaLZfgt8rtF2f7dXcTCskEHI2A8w2X3h2yjkGuwIci4O265TibhM52ZpOxdx3g2nqLn/cm83q2
8f3WcJtn4EsCODz1tFTTDk3KczWQudo35x9yhsDOE1Wa4//vpMpAoP8eN86uWgGaciYe/bCD6D+0
YxTz5YS7kfZ3v4wAXVXNdP4+YWaGkfnwhorv06BM+Vy9+BXR0I947F0JRHkajxbGHRVNJ5jZhQIV
xF9O+g/dQPNzoMZYliz4m/H/IXYEcD0rh0kd5UKCzKoi+g2C1XyEq2NmmiivjV3gameaw5B5IV3d
JbSwEScxKPMf8+gIEfRUEl9TAG3QhBXgAJvBeECbgcG+8v/fu0lM6xbbrOjismBH0LRmS6Di6php
MWvtR4+avNkfmqqn6W+/xinDz8gXvxrqCUcqLxkVaKmBO+imczaFTruXjv61mY98+ZQhCXFC8f1s
5jdLrlSVdTvC0OrIPZyETJBmOn2djsdPJ1Rz3A0TJGEcjw18/XPr9LTe47uC2NDY2ARz/xiGfqDe
w93KZme5v2qXMn0BQs0g87FgF2kgzQ1ITrc6todqZYN3gWS6gC/U0BCmNA9AG7seSp1FlsLffYjc
Au1sWqknKCYGWEayt4hSd4Os+DzHVx45SO90XNXGl+edzGoaXgDgxtOJDCbTdsC0tgQkQlH/5Xw8
oGThNqNs0/Z2vSpqyryycVkxXv0M9G0qhQYuvG3yBewBxjm2r8VkvBpQvSeN6UI0m+gUwBTMn+cV
M7YvcbAVxPRZaJ8bCxJHiZVVmoUaSV+gfI+OH6WKUUlHN2AmNHR/tiHnTIvYhag6PPEfIA+HlzHc
4UXMA0BvtAbEHUr9cp19/PBHTEppbwOTaMXLGmgndCpCM5E+cx4LVO0fQpP0/idLNLdGt+Ecya20
gaQkrPEoRF2Nimmo9di8xcYBivyh0iYCkoHrrFb7IdZ+VXLsnyGcP7G1Xba2IpEVQ94csKxbCNyN
gNnqQCrJ2OlRNYgezIQXW899ymwfYDe8nCbViSq7GwmDSXX9sIDXsp/BFeM4mVVBUIgfz3+do9zC
XaqIYPsrv7l6DoPMCdRcFuJIFZjTL98XllulZY4bmV1tEzkXQMxMmuso0ZwbQ+Ot2USkZSaHBWP5
UNUTazmMNA5XLuJKRJdnonqTOf62ACZ5cCxE4erTWWmm1Vb89YXRxmZvPZSaQxUc7XAEwj604qWi
jyzGvPuJHOiT4rHPOQ00N5v82k3eIjVLlx3neUQ+snFyvcP43He4Ga+7aYdcSSsLxta9blaYYpL6
7E5ePr3BXK54Og68UbMkGdBt6ZjwU+x2AOUtQ+GPlJvj8HLKpgBNwsf3TlzwacqhV1psR88lez7L
JVdxo7Xv2h2VqyqUyZ1A0O9ALw+bWI/K0Y1WWUeJFs/AIT1m3p01cjLt6rsOlaPTMzibaUi5u57v
lY5vzwwJzRo0oXhf1aR2wimH3LB25SDqXeFI6w6ckeWNHGwCOQ6JdWARIkAzyFTNblRwuGWQZT1G
wPqnfO7J1xuNsT7z+2oOrEvRd/SmPiGdZdvpsWUxQ2nfvYcE84QMS/Fl1o2WhiEdHZDoJz/OcSaC
jeB7jkLlZcpUC3QgZbrmHOh0vH71y/8r22sLVpSYObF+36EsjBfyt3UrDg0B1sw/MMNfNnb8S1K6
SBgGw7c0BL//IpX8rKFnyRRdI7DX3wYUiNhqOFTXmXwQArxLGa+jM1tIbVqtT1iYVzsRiL8QPI0U
MKtmidauvevmpOq51hdXewU20NpOPo7KvtMr82LRwJVPxnEOW3cELjgUKSUTjg1F0uKd5ic7lWp6
AQ/NPj/Ip2IyI97O8gmXRoidGphSiap4ruYr9VimentGufqejWaavN0JkHlVUVUIJ9U3lkXrrRW+
DsQ2rttmSWf9LjNhLT37M03pCw5J05aQ9NGnTav5DBJt92wQ7VhMor+/cqpFdQ/7UK34hKZ6gV76
L4ykCqZ6NaF/UBieIikHQTWnTFW9ukH2V0TNUadPyBxFRPrp7KpejkTyyIbmvzk8SQTIdmA9y2lh
1ZHRDe1FrWoUHX9Myymu36xi85hxnVg5Nb7wpu+ub4fY1IC+/9Vs3jz8QuE+zQwoKTbFuhI4bDCh
PBsBlHGz7FvBiwlksXESvt0gDvzCjaxffGJTB6RHJFdhvYLIOVplFPoJJK7/vgbrbwT+mEadITlT
1Xj7hRDBbZppnS0sPfJMXvzGqss36krIj7tyaTNxb2ABOpbMWwCebRpxTsA2BsSO8d32SvO+c/47
T3Eu1G50w5Yg5oqZiYbT1Jz0vVI4AYTsV66bDSkSXYmzms1RTdTpPxbrrzqIgvJgtLsXsvKHKkfy
GaHXj/bBfdCJlioj6f7GRYbAGi2HDfbxrPYUxEsxScg+XVeGQ1IfMgWwYXYOtLtMt7YgjsWdBHG0
fJ3A9tUfKhqdzclipQadcnPZTSYaH15GGRHjWH3MrYyUotSjQVQke+gZBoqEta7dUcn9JvP87Oo+
Nr5tNH06o27w3faloj6eCqbKTweNgeCHvSJyX1XMNyzPWvIF0Lh+sShqTBX0NTJ/qnoPpozv6Qjm
mYHB39BaIq1Hd+sC+IQsh3BDMsr/nTYuwLWC3OQZNz4UdEXHKcfPFuziFhJ1gTwhK5INDDCCPLKx
KdJrsJaJmSYWhzEeoNKNAnn+GZrr+sj/tMG/KuoKubZA5qou41m7N5/6PF6TOOaGnkQ7753kLwPu
xKrVva8ePcGzIgv1Lrxi7XoTQTKQ24O5YRgFM2sIa4Izz0uyL70Jv3zdv97tveuqGkou6p5fEOak
JjaODFp8SzT1to5QNJmxRqQE28Tbm5OFiMVBtojz7ThTux7u7MFJIX9Uqlc+eWsORDEgUQTG0ig2
G+u+AY4yCutzV+AGv02OMBFjRypPVtLlf1M6hPIqQSUvIoaQSB5ziOgmtaeZ3o3VXJMbuAVzL6kl
vgPkG9eT0aAQiYC8+GYzAWdOG3OIgorTfNPV0RM581G5J0wqRJBvrmdSqPh+1V7ZBBmmwOzrpcLA
lgU1O1K0sJ3UYvzupP7e18ZPdO1y5+UeAtF+ez/KpuYbnR2Hc+b3IQ6Fm7ObAltfh953Fe8azZE1
fSJ94FP0pj5aVM/ZDHMgR6qKJcbFAcQcKuul1tHhB9wPSt9sjbuo8/NiJrasvtRSA3xGL39S5UMr
ZpefaOKaWOuRoJv6r46ou0zL9KGZA4djS/9MIBpk+tRauGLHPyNeMH8kE8Cfm6oPZLhDQRqiByaw
3hd0GAbW799DfInvH78KQXhinp+lySd6scBbhOoPbDxbotVeKhfqe6WX9qp/7vIO96VW4U+7yY05
5e8/RntowbQu5WEACsEp6Psa0Q6MD/9dlE4AW9YWAkioEgnxiPcTFvaBMRvBE2gAG1g6VlT3M939
Bp5h+OF0dmRdEx6kR6DGbMbpcxFXrn/adoWTXctlX7fD5QhuA1OaRLyoECCVi1an0lEiUOY+IEe0
82MtEAfOraMSc11PZWKErtjYMupoKlNs4ZP7y/+/4uX7F4cK8P+snqlL+iQSE8D/cp6DasyD1R6S
sofVwxrUoGCyg32LI/P6kXgECnz/Cm2FK2VlbmACD55Y+EHsEUD+6mGvWkfdq5nSIlMA8yTC4rIs
Zj1Us2ep8QN5QnA6/v4Ib/q5Qq1XXm1ZUqLyqEoSMqgpSdR9KettNl90/WseDgmo9afqNAs+9ww4
id8np9ZQlBpWgzBFaVfq9zFTcCUgqbygVznaDWzMxpf2XIB+8/4mZXcHgWqpJQMTlg33b7cQ79Aa
wh5yfjEZ2h98J81mqs9IQweWfyCqNzAIJ7BqmfIM/HX7kJBx/efswtAMSN6sT+4nE6Y7KeTwmomC
Pp3T8EZ010B4F6EADylWum8Kz0UxbtkT39gF0ehwoqhv0d5Aab/l781xiwhqBUpnX81YEtIOJGQv
1TRZ2s1+sgi70pn6fYM0l1bLzIRNoMPkAc4CAdGix7S4gJSFMHJiD/+aAtZHAPFtCdhGTnr8CBt2
wbFXPn68AnP/MdDopVKRgU15kOK3eATb2K+vP8VWWUzli0kDDCdQDsLzTqsoDsTrf8ii92ncoTDd
wSVPXZs2BmVTcofLksYUIYL+SSWuu8PqesYZRB1k2Rakxu/K9lsiqeiOZMwlrim3wcjrXPJVZBzR
Et1/0nwyeACHduIt9sfm/ImmV8JDMM3GXyCfM5HM649cC4eMeHv9KBa64E0NHAmRyfirng/+caFd
9+GCwOTuf/8b4qnamgcLLoqrvxY1Vw19bcwITnc4bCGwT/URlDS88t7gj9FCtMxCnBoTJOLqaOjn
ASdDvsBb9Ys/08oNPmL39uYuN+0oMb2I34M8BufrjS0PPFjqTAkUwOVicnimqiuUwQX+QyJIwSqw
Ke6o7yy1i/Xlnu0MrLzRWoEaXCINoYkaPaNAKVCnC2KaAsIQLqXmf3wLYpy0LwWhhm1rlLxZdU49
2usdxxjaDluiAz+4aEMLN4sEiX/AGU2PW17uJ4w/BLP/Ev5RkcUKldlwkT/IPGH5aoF3HjXvq4Bb
NTCFgpA6zXznU4CsKAZNdf4eDWv7spUsmQl3i3FFOkUa+Wf7DEZDfX1HCc9+nEzr1HB0uc5fZPw2
/tf9qrB6NxCTm4YLviKGy4b+cAIaTRyq/5HFbxlqgM3D4vS0chu7u41+9u+o6Suz1zqvWKBdU50E
mvZ6pk7RuBF7cb5RfjqEJZEa7zqjylg4DdxodyZFn4P8m9IC4IYZqP3e/GR7YeKJoM2vFqTXj1i3
QG+MS+ATjy3eeEXIXP0KsZJYi1jeoNIFz1DQ+Z4xD0bMIvVdwpa4Q9QpYNpXJOkwiBPohKS2zMVv
d3up7X8AeYmTo2UHH0ZyyMidmxyjdjjL6xwLcJkFtSBWOMG6ZgbdhfTniL9U4s5O/FUu7ZA+sitL
QjlVYdLvFpJAn4C3qlvnWJNMRecivAyhpnm2SqDj0TuAfbKGLCeaRXw8kpJeg/DpG7mTnRL/SkAc
byG8CbJQRqRltgvu9W0gqU8pLPCobMgvKRh4O/8QtE8j4W5nMTvujy/8/9JEVULsD1DmEqGA+Cat
aSQQ8C3a7IRjdWeg48J7lsEXmSR2B32gRFDnh4iHqorwG3/efatFos/eWWN3GthQ2On/8VXzHd70
CMYMV3NZOe1D5C1wsoewiSQsd6YEmPGGJxeVcXAuQpbbI9gzN8LiUMqRh+wNQTFhV/AgLkBMWbOA
WNi122+V7onkUJTb+UJArBym1TefwkMePkgXx038pZqvHoZ1DuxvDFxEruVVPIIbo4qL3aEdfJgJ
uaIYBzpn8dUt1xgb0qvCHpnwodb65axXO0PUoyQqAh8239LWyriaHicYAyXZMUSFL/zaTZN1t/j2
mu4m8+64CR36YeP/RgAg9kWlLseXovrIlJvDL1foTqvXxX2btlzR8S2I8KWH7kInSDDPvfPHIZ2+
/oFl1XuMZ16n5xvSIzB7+I4BwL3xp9aerkn08cdgh1caV8VeAvRGWmqo7Ox3oXfF6Sl5shdK9Ts7
BE+4+NroSaE0MUCXgOvZFq8ty61UOEIWFzGSjwFq4P3fTXGaaZdSeSmnW86Y/vK/ncXbT2G1CZvH
A55jmmUeRMI2KN6ErXnZ8V1QgC1Df65r+S9H6JmgakqEbmyN8b5qmQIH1byLikQCctynN4KyqIO1
ypYXHiCwlK3O3bG2Cny5XwfUkFWuIvjCclb94aKYeWlMERvcxalqe6bcOVt//uJ8opdA5Ud8UCqS
3AxUo9zGpxHacsbtbL9decG969Quq1Uc1eNxY+uIjPT2J6Vmr/6U8tvAtYZK+0+LedDQY8tQJl+v
HJdZlem4YF+HpyINgiaFNli0fIG0bN3qzUuyNms31Rb2JlIrVLBlx4ZjCMUpfC2uc13Cpdi50tsY
5Deld9KVd7OfHMwlaJ6GyOsLLeHfhu5Y/zWBFYwlvk8TeNmlFd8l4yXOdqxo/RrgqqlkX4ft/SPy
zO4aTvVX0lgOIo6O2QknUuCj2aNqyvql6BSaodvDgT8ugkBp69xsH3YKtrXff7H4WQfkPb3hBZOi
RlE9ncsWzJ35DsH3do5L13HYoFPIYHQY4Xy/feCn0Ks/H6+O84EG9RSquzfCn8dsaE4f0rXp6IHr
I4O4drSfljik+lXewm3oqn3nrwIqiPGZSfNZAHKt2HdYXvgZYbIbtW+RmFINQeoPmwJWo+c/woep
7Ovetv3vp6qQquyEcyKaRWjy7BqqZacwCsnXQmBYl7V8fLHrdi1OvFREDd27hQnfzpfZ9hf03rqx
s15q5QV5VOOMNVuxzjaZXq26oLAGourCGjYRc7QrrVHUTcgzs44NUaeCNv6Hg4k2unOtrO/by1JF
Qv+86DXBVqv94Zjwm4XQU+o3SrpX0QxXi5ThYQYHfjc1O2Aq156yhuMz5fFpz7cbR25S4Ef/BTOt
VZk47x4qSdUkwkkGoNdDWFeNQhzfC6Z71CLrUIs6fsDeujSFAffTirkkBNEllLlHIjZukrDB3Wk9
NvR35CE8PJ5oMKJWCQAUoHCHmszWvqMnsXH3HHMVW6gMdW0B6uubeaPeD35aThQpO50Tyx9TGcgS
DHicO7m+8Spi/dMrmVHgE83XQKh4xdflvllfTD3fMuCaI/E8++x+MHyGu492w8bgpU/2okfPuF+u
Dq4qgVy5xJFtbiZpfjB+5IlgP3QDBXD8Yjqd8sDWdMEcTxfNXMyPYZU0GNRGk3YzBG8HFbaeWd6i
YFe5+ojcemod9LlkXe6aoZI/Ci6VpF7/Crm09LNDIyDieBZv1Cg1TJcGb+iKiZii8e8sPeTAVdG3
Eu++FRqCzBTkgVsvIAaPyZFJlcqvOE+Rf6pjclAKoS0bE/JdcyGGjx1e8V0GFQOBMwIBG/ui9tFF
3WyYr3OYrqXRTRTKr8AxL/CYAcWcHXxDPvRxD/zdOJwMr0RgvkeHLcq6tmrgf98zBZbL/IUYXXGF
CGGD6S7vmpgxtguvQ7jVbk/WvdnNlGVvzK/DZ/Mv835U0EWWvGqyoixwxHJG+I9ezpGPgALdSKmp
ahmtpOiLR7UNWC6y78ylAeNVod2/LvJWEBVycmzlCJuQkDVoNBGRtQUTW4RxOUnvDp1OW1BPHBvE
XVaTPJEF0irm9p7N9WePbV8n5+tx/yHkLZJwYdldSod+kUhLMfWgZ4j3zqxUh/iMkraVVDmbS0tl
aGzlqkU1bV94wAh+5DZchLCiJI76wrnnuwJ1VM+dTupvFEZ3JN+MXh7NmbMEBItWlPXO3n3csp4i
P6xUQoK96LayUtPRBKZ3C7ipthAkrHEyJQYBOXrflWrV1Yw2QX0dxfwLGK7lPbiriuJpvoMZOZGV
+59LfBxxW7waYhkO2SZolTqk0mK+gddmKsIog+BuNvvfSNylyzaGzRdY19oVjL0DJ0n0Vxq6eqho
Ei0T4/Wlr+32fYaGC0dfLHLaf3EKFSLy0KOrDwJqF0xidZ4i9sQ8K3xYR9DSTc3+0RnsdTcr3Alg
ybLA9tQW6v+DH25bg3n7UCnuqef7SMG3fHXijS2qmRCYDHGid/8a7rp1E67QlVX1U9bxgOZmh4kr
twPcc7f/yW2UdUWAwdUz8++p4PnqUrolCAC1dUGDYFf3WePR3w77tIdG/bAmGjP67a6DIZgzmDa8
kUSVcqzNNGP6h2tnFFX/1RgjoAHZDDCX7Qfg9ScKICKPse4TnSePbYuTEEsUIgWu5MBiDU0RtqLE
Xv/pRYUl66z3aWuPaa/emDFad65ot3FO7QU0p+Ra4Gxin6PtyzVeGV9GjsFsnaKs6Z3O6UZjwxgd
9xkAMqsknuRCK+OMO6rMfFq0ydnUkSOKljXZeR+WrKlaab6pQRJqUqOaF18w+Ka0xpFJtrrYo455
Kldx7W+dFySVahVJWhfLEGZL+sGlR/i8BKv0LCt4otO4vVfh8zeeDCLarOVGLf9k3pEUR1br4il5
L6XyGz50gFJv6II7CecS9/dqW7nbTidbsbVWJrOmTWQ0gryNWDFlkAODldS/ulbgotAn2yAnXe8B
ttS2SqjRtvEBYbDMMVMqypbCwFwu7mYKVdZ+iuGgnM01zNbGMbFI+CEbL8xrvrjjTEFsqzK+M5SS
m+G9f7DE8h/LMUvXTA0YmZ979sm5sUy7D61T1ppWq+zKbMs1Yx9zNnYVRaSlrc3IY8e+8rrP1W8A
s2TsBYWOCOJq0ouQvFEnICU43pZbOCNbe47hxawfZsh5NuQ5i5gyrlH5hIwNfFbOWA1KSirVCeqn
eRAZeoqLTXZ1UUb/lz8WCALYC/bo0xRcMSL0ggFLhKp7v/dK2zgaOxHgd87wxx0O7U4fogSTv7Z1
DRmx9BZcEhrZ7VOcp5UjMtu9V/ZFk+SQyRW9PmHwUuZtp2duOR6crjm7qYbUgd6CxJggPD01JA98
RdOweuTtBkyJr498IOhi6DyoAqKpOol+yphoPmgj6wOVIc979rGgUC5UxJE/9v8tAD7c6dr7yWwd
prU0vwR9b4V7OUbindgUZMc83Rn7Tz+/lZkIiXluYjIdK1twgg6sZxY3YbdwGRbh6cwwGJxVuxcl
FLjG01x2tPIq1D+xR+7gX64bXWha0X/RO5dRaJyTL6WfAEpmuovYKmCY58IhvwTaN5589aLN7idG
tEtYYyC2xUpuMJuvPh3EkNS/qmSM5z1aNtp6i3bZwpmFYV5Q0zqU0elvb9GqnCZ2yv7kWqZaIdaO
wGLEuS2wum2nH29GervONm7jPHeoDGNWO5s8SVbvvyxDFc7CeuXqldmXcJdkCvZj4JASl7B/802R
nnAy587tC16QFtbCZ+RmnKTJsEwh8nCyzeFzSrvwB7xAnO3jCOm4yfYl45C8Ni8EaO7KrqIvzOWX
ia+Mu3lSfNv1dwU3GUkO9EUPnqcJqhkJG2xe9vfw0uaOBU4gDNj4Ky7sl4DxehfdtYg/DHFVjaRR
3W9oMWII3CKuW/4HnOOnTVwkL0DT3MeOK+Sijz8t0xE8xaXk60aCStii9g43ZHZ/Keym+n8a4KiW
OXEWl7UlZjaBepOHP4AB2oOk2DFf7PttAfgbUqZFdMEsPo9xkiRfT4mB9rX6hU2ZferT8N2dzLtl
dapSqHCJb2WFaq523eV2BfdqVwjuU0yA8hU7uldfVd5wGwvRFA425kHZ8dWbJ1m70egkXm3R3XYB
D98Svs5VVo50xxuTwtluZo60ZI/hbGLbLavVbRWWaIxt4LEURt9CSXfHNoc26uFFCthb/F5RmMBT
4iof12eloNT1QIx3J7XcuYePsdzo+gWFJv1F6adSazrKVqtFN3WaQZq7EWJINzCBbLHmn2oNy6oe
eq+tQlepvD5l5Q9emZm5hfXPU7EoVeDibq+aOT73KHblJ17HoedZGTVplPmcPG4IW301Sqb41Mo/
PbyN8uOfs8C0FaxdVg6bTptLqDEq0G8Tg/S3znEERRQfOtRcfmF0RnPBDSnsdiobfVKMpyHAUDJC
e6Oe+7DJ9jZAgA/RgbLtn2fLtM9ol87sWlBNdnp7A8qLlePMZB5YEmxBnsiaxEbga9fwqGTZ8AJT
lojH2YBtOotSgtDmi40RovTQ3r+dgMEFa2uuHUYEMw+YaewxPMx0m2hNWIEQbkXIoNvRUJmY7tFi
4/3chvahH3kELjHk24Ns30u4vyeW4nY2yzkz9v/KRRkBwawHjkX8HYhm9DBU0nDp27xih7O8ULdv
QxodHEdb0obO5sYyJEBff1WGBtClJZu4UKDujwHG4ltuXrwRueAnXzxEtTx3tFfySEfDYw9zJbSP
S+gdO+of1BGmt8RVMUYBtWiBZ7/bomOSkfvMQBgEeBbteV6w5fH6saZCBN2uyCWCIFiQFR3rydEd
8Qyek3Kv49GdCNqxn5mrnGB9mBYi8p67UMb+GnPBn4RF5EYcElkel4VFj65cPTZDgGsL5gl+nLae
tNT7M+KntGbk2RFj0/txECL7YvD3RGFuLP/RXIr181HTMxYXrQFd+CMkSiSQOFuSF+GHAw+SOjzB
bWlsjIbayhB+VBeqevZPez1ZFdKgC95Pah3ypMXhukiKj6V+AajCkfhvuq5bFlwe/7sKaw/0jOV6
fxytM5b/PHeqBHX0BpuRqqlmX2wN8gK9P6bdppzO9nIpEETHygbWGsQYHKkfQfkOb6C2xQXqGgH6
lBgnX0Nkc6FdC3XDCpr9peGAnb/oBr3yCk4bnJ5n8zIhJKqItfEMx/nvkNxZVQdVcyzr4GyoerWt
ktRclyygiGAZa7iJu9WlqCNcYL2rrZ55N/AhL5bp4E3Kpb7CDPNX8JlXxz36flkBCTBfDkBo4mzX
dDFYOMgBCLdiJIU8GZ0Of+wSclZLInqpBUleulvOmKAXtmNkvQ9ScuUJ2VZq2NSQCeL1iOBdkzi3
vjnr8RUNIx//uuF5bD0ht7GITzGkJClMVqEbU8lB9luEDyrG3qKSkozLe4JUjoJo5ekJtyfk5yWa
J5qhRQp+IsxQMqrpv9JWSnglurqYfocncsT0iqc83mJ8YJyHPjYdf81W6MrmEq7IM3qik/QcK8ZU
eTjAx9lSAL4CSqQwUJIIj4rZ6pRFISOQMFEDlFlxqlmgbKsVskTyTXAANAeOIXs9dnO7QbyeL+dD
DXpsRhdVgfo0KunMllFCzGM5RlIcKNhbUAv+wwqaIQ80GnsGAB3ZTB4HUcyi+0lKJKW/VOMdMkVd
UJif7/u9NauWNbUfL5spUpBTCly8q9Q4DsNeoGZo0M27w4j+5gI/SljokWUSy6/i18NmD4/LNJ0c
Rw79Fj5QBIMOfDzF4VjNAALYg9EGWgWRmcY1xO4Uds4B+G/KwqrKTkJis/eU+dMQDutQ2QEX6v8d
ych8BSOX0ikRYsFPizIrXf/SWZXtDFGLqJ2SUQPz56J2BucowWtewyJRilnirn3s6SxoRAm8jk0r
MG3SPGwmyjD46C0xs4/ja12KuEE96tVDAsFWi6OBKTxQkMEw2HOThaAOKXbmk3xHbg9aYBcmLKQF
yuICXyVVBTLmZtzV/VQM3HkWzcs4IwvtzJggW0M2y5i2AQrg5MxOYxcChxtGA7X584ywJzuK3SWx
7qZ0CBlrG0x1+F02q334exHfnj0Se6Zii7ydIHZqM49Ft6CBkMuIKK8rVTCnf5l4WuOg69bLxYXj
x2Hmbl6ntU3jimAN0zw9QyODPXq9I6tuwXc3+SZjKFb1/HyQGkdRK3urxH8nKeiI/y9pCzUFkxpV
xfCYugFyKre9kRrn/hsRzCUEHLKm6LLIof56yfYMbKj0If85u5YlL/st0frdpM73lN8Ny52G3mwE
0U8Oo1Yo5aQ6LnK/jycwfZdHTuDmmF+3oR5SU+lOHBeqmULazrjJ337HAleFwC5m/U9955pMYQJv
39FnH90YiMvIBgENGNJbDWQEL/7CB4kkMCX1Cl9ULroJ75vg4dGFO5kCYte6wsv8q6UmDTTdoOMJ
jG5VnCAigAetQYGIoBAj0ddRejqWcelT2h5PFahKGLfuhPVj5hhOFErU2MheJOv7X+jM+3HRlVAD
n+HMyaLJzE2LZ8Nq2eoDIRTZXFKItQPGlHplPe5p6cfDR9dDJDCih+tKDhIaHiCP/aoi/zjHBekw
SGjqUcm0JsqVSTyAemo017iOWxCtTD3Tkn4SZnEYTEYbdHK62HQkIXXYeyr1Jy6/18MT3AHomY72
sGmtj2qiSgv2lFRTMVOHah6nuxL0YBFCPqwGoSgB82G6T9+WlXlHrnFKX9nNUSDAw/y6wTWm+W+e
HM58rXmz00G6QGyHCkA7AKE30ruyC9BQSinPmYTd6JVeb9DMT7kIGmF7p4oFmtn3A3tth/GvXh6+
lQSz/yC7bV4jskNFi0rEKazj6YNS3nOLQrad6yyJfwvZk9JLPYi2SImFxUGQfZoI4A+9gr58oxX9
2oLTIn+c+2e4PSZIGqHVYXeYInFuyrRWMXsphc+5nMhTlhi8jolN9QdH2PEln+VEbixEJqMnagN5
lOz7U2TbEWeWAUX1wVkUx+nsrsxAH2RfLiJMGTfZ1+fgl+bOb5uoj49Atmgh6obfQdED7rpNL7Sh
ZWgdky1dftuqkXSjjKpdSJMT2vkJ5yxBycna8f5RZ5EHAiFrih5LiDM5ev/yIew5XFwrx9eALVcy
vqoPOzK7ygXCo0gwgZMsCp2JzbklyV/Nz7Y/ZpBxzeWicAi+FjuW6JEZO1ILrWwmrEN3dvNOJtyx
XUvTKgfnK1QQs6V2B9Jp5fS249YMnRq5D5Arn01qZvvzWGBes9+zuDrm8h+UEkHTtsge2HqThAh1
fI0Xf6QtfFVZG5Bljqvd3sfEjQg+VB3Gkhdh0es2J1ukO6nMMuYG6GfCBo3u/F9sIUKDV0hF5kdH
ycjloaGyCGFsVslykUeCkCW7O/m8AOMq/55x3tV4huTx09PQEDj1jnGxdBmzm4Wl6CzZM/Pp/s/r
qRLPGtB8JHcbc1/pPnK8HHjfiY75fcr12gVAyHSEyL1qglhLn9gBd4GfZjS+26h31/TLhplRJNHh
6io/TzpvZ0MSwITK4jiply8aGVKSAEuukqZgg0G3FzG2yWXchCECINuqsFNcWvzTF9D6varaUU5c
87gNfGBgsJM15Nm+kuUz2UDA1YjzrxVBNqNATq+yNoHKLKqW5dQyohg80qELo9cuFNLDKNPD/U2x
cI+7Yp5KdNbmxIxVBYbUdyDGu/83LskL9ewVie+2pq7w+ildZTHJ7bZshV6IDUTz4JCg3wnGSjRw
6KwuaOdsJ2hj2GTLoMHE76NwDfuNv+kiPLUzXWKOm6xIoCVFy0oOp+3vveUtjao3wPpue/smRuGe
mWeWBl7zqaongFnUREP365YOwpG1tR6LhsmhUcdKq3B8bJiodW7+ZQzuC5Mq/0DMaGJwEY77HBCv
6k5LOC4HdKJG8qSsEYP0sEY8POCqQYLnqQxn5GKAHrlp88fKdmvW8c1Kqyhy0coBtNCfisrSEbgO
gApPyZ7qYresqLmvwFGx1rb5YPAjHuJruCzPhhE2ai/ngNbdemW1ndz09WPrTLDRWVvYFVHV2ndm
EKI363USrWoN1q2bJFPA1zSVw5rI4uCzBSTbFWaxSlAfU63JLLWo35emKgxwZo5dvKphLh4plvIu
5LIV1nQNSGBXLEWn1//K29QKvfvlfMfLshMoPYAkJFzRn+PFKJQ3rYSLQsupZ6CpU9HqexGDbUOj
I0ToMB/pTa3Mq282cN+6IDNXxzMo4D3vKGe9C+k4MzrwjlsMGpHt4QeefDd0oxs8115BOpavoZ2s
UymkJ6DCjSJaPixQr3X9ZdgTse/g1fbNr+Walvv4ru5AQyplvVTQsAkuMPzr05JpeeDPvA4Lah8A
Yw1p6uPWiCFWM9kzPHJnrFqmbDtN0Cgatzsj08ohSr9uZFjgE5evaMvHYLxLdQ1MFEm3Mvkm12lB
eAbBAwcYIbEqjvPT3pNxgKHO/ybEG+9I5ybhLk9UfNh2a4Nu5K38LAE6y2vKDSBOiV5tAq7dm6Gx
RFPbwny7TrLxKd3jayI4r/e7MDHu6nemgeWaEtVHUvlmXo5w0jF4jIQcV/l29MmNGFzN4krZkdqZ
tUKsaeXqjw3vzTG+tAyH3cYuu7a4qgrgz477QCG41kgUiHaOEKTe7cu4jch4VROw4+ulN7kyCt2q
rDQtQiLsYo2Z2c6PmnERZQ5ZQoVJ2X/NZv9cwrqo3Y5c9SahjKWdPbc/l4MuP/+FRQUkRzKPs1Vm
p5hfOThmbJ76sABzLGNjGknWHta7ew731zqdnRpFes5F5vN4EKTbJt+hEBJYKCdJKbPoqCaE6HI+
0v/0rAR/rPD09eKruNc0b3HqxO6bKt/kSKv8nNJVkOiZ+VR/g/pBeigtX+NPsPMIbWcefS7BUAso
egUEqbaQR3fNhsX+ywSEOF/yfLt070kE1/fYFdI1sChfji6vSfeEWSInIGQeZUIA2TgqFVWYid7+
xeak3fEpgeB4mPf9AStPDPNVhA1q2o08t/KMCFrcbpx3g5lVstIfAEuuN8VD6/R6mv7vIw/hyX2U
uN2dgwjrPgkDZKrilXAvZ1EiON/XUkzRNxURKjLuAsi4A6+gMOhiT9IAJBZZAAIJxuZAaV+g2o7t
Nctzpa7hjeAM61bHhtSuaOoBnNYsEtuo+pNouzzZU/Samh+u2xpDVHGGTJAmp596Suq3WNWvbjRH
c17Mir0xuTh5JzSMdMLHHhv1XFUbMTnHgUDr7fFQWD1+pEt+ZHjtz/vKsCdfZdazOV5k39k/Nrbl
97ULLfsKmwxLsq9VPPDuwQwIvEoIq6Cw/yUdY3eT5sdIAb7fZ8bR8cr1hcPwlCXAX509CvOuUh8h
EiKHGUe4MMiyOnkA5htXjxvhG1RkZcS8yD+Hm+yuPvwDWxLYxPXZspXo4X66OF81OrJQbJKmwKGb
nZhlY/SXyk1AJvq35A3wUBA9wi5og91jtFRL3RL2EpE1RF402qURZwzkf3HVt6q11ARpxzVLicp2
jO9pLm0TtxQHTV2/lNSpXGpJDNTNLVNqzOufMBEclu4d2HYYE97rWaaXuAtm/5JN/f/SKxsm52XK
LB9daOm+7m1iROzWm8S6camIoLq0/Mmaef/nXXEHh5ubAhg+B0fM3q44jCfJ/x3mG/0oqeN7fo5J
NftHzch2srrgDrbRCmL6/G8ZTTWR7f2jGPVIZk6dks9qSrGdC9VgvKb13KdzWhrhMRzFnHKUk7h1
VEOVmHUE94SB0HQZ7hbh1aQ9Owe7DQPQuH+pOpdBJ7LV6Y0aC19K/S2jkuIotpWDWnSzLm/ffMsS
B7wPgzjbKVaR0MzC8FT7AeyQqv0Ty7wQKTuzwNQ3V+thZHB0QPJWp/yUqSm5Z7qQqrCpLvlzA+Pv
nTdgdMc8Z537WivKJ7ZXcpxGO0fcuE0NYa/DNsKV/AFajPr+iBIyYQtYyilW1czD0X+2lPRd3xV9
X+uodZsCRiEXBwo1w80tzGj4Doe4S9kFzDFS+hrdHcst5Ikcnzszp+2o+vBsYb+qaGn8WWCDVMR/
0KiDzzohnylyzKwdtEAg/Aa6ASoSAz8SYo32yXN2W+cEKG3Voz6kFU+yJ3tJqySEaXFkGUK+DFuo
43evybJMQOCK3ehdWU1Gp4MN+l0+2jkBm5kyhVPeGfeTllckZIsDswWGYYMoLctgMW9D22clpZaK
W/PNPS0x3F/cuCtbMbGFEi9xizT4z1PSgUZCPIT0G3B5HiAtHzWm70X0PCTkhoy2Qiyc0vfqUgzd
6VIEa9Z+ckSGA0T4IdhAiP7YAx/3NYJQ5mO9onvehewxKH2RVmgQJf45BBVoEyWx3QdsbsYErHvQ
RXs8H3HBRHTOhhZeoIwraqH+bGxE0Q1/XwaPhaLJ8HxQxvfj/xvszapSDcvdHJmzB0xWDBzV5wDI
mKYNQhwK2gmWkum0aFpguZC0uaANcgF+W6neencwa8WXvyDNe/YIy3QFRh424L+5JdLdzeoKpZ8t
NePXvIYmVZYkrtPm4TFuGlO1L2RtLK1yq4FaIG2JSsT/MQe/FoEKTQmpN1wORuad75vpwh6Dyci8
OLOdD1E5dH59uShg2gb7W8tkxgCaJOiF8tJXeAQkRwOMY3DdX18bpWpoTCRY/aiSoHCX+EqiNJ/3
gejl6waGwta9CiVioNFRsrPofHrbRlaQlmy737i8fuVMXdslLubdydozbCCT+MC/HjTBO8guJb+a
TyqbAlFR3PTqIDbtMdAejnFMbACdWYgzWu530+eJQ2HOIZUy8Xgo1eXBD9w/5B2dStYoHCLtrVrQ
5tRzBpymdJMoPZYC+kpZmwnsv4M7qGhFPY2oEejDS6tEipsU8aj63pEDV7DSvahHmQCiWrYpuAhg
IanKvKUOinqVmB/KDoD+0sZHeNIbxW0Bg6808Pu6HFLnZs3T6Xg5Y/cMvq6XaLkk5ImiDablJQOy
42PoIZDSbC6vL3u9XrecCJXX9PZxnOnm6XsPAh7kAZufxhMTh8kkjATjfvUoOdFfFVofCWIZgHOp
ZCOMcwQvQQoXW2jILJkOvU2pgY/IJ7FwBZxiQUyyy4s26V2p9JgpCdTSbs7zksmhI95ijYls1P6U
4n6No/0G/n3KK9amBZ1xb7u6wrd8CaEd9wkosHGSwVHY17dwe9T8aoPFag791iTls+KUmJDCSdzm
F1bA+XPZuZMHdTZTzo0n5G8ob8PBKldWEY4KIZkh7al/sV037FDAda6ZV0koqtjoFH/YJ1KOo3Vr
UVMYra1XAcDKNkYteWGD7j1Ml3f86wHjRrmDuF4EIeO0Tmjn6BUe1DlKq+C0Ir8FtXXShEcIEoXX
j/dj7AMpSxaO8YVmapBCiQe+19w7Bff4vwoczcSfNPTbEV176sOMRzX3EqeTKNctdNHq3oIxAkpq
xa2FtBgcut6VtWWcPMpVYmmEsk+nzWhRZ2LXHRafx1eu5ORd+cGBblmoYG/kttXQV/J4aO2sk00S
UHqW2mtRcNETiDGKhslt2aIJ+KD0reYA8MliqXyTAe/JoRdDLiSB44O7Tw5RPC1OfwIu4+lmijAG
McAudzLingR23bOXBNSJ7WbFSu9p/Fl9WNKryP0salr4CgeSC6LqgUHn3OkVNmlQNGk8PgvKq4J1
NFvXQ4TK9NUHLqA8F18tjpEOkICYTsTcrpQUtgT3XbEghzROSw2P/62Dcicj5FGqKbJxZ7BZg1XZ
JiovlaELVPDqwngfz4ccpG1Np/+WgQ2vt/c4JVaKicFL42P2csbKOpEyuH88qpyq42BVovec+i0X
1irwW7iWk8Dvgd2i0j4RZ7janDEzKqcAC7yJzpYZW3Fh0vmljIMXPFKpd0G54S32VkitMwdD146b
J+jCwvDHX7ZxW637lmR0lM/u4PiSS7xqYJenj7HhlJ86sG0zgWAI7WWVqP8LqsiKIoDo3WkzywiW
8Exvr2+PJgXHQXVa4LlREHgG6fjn/uLHxWz6taJKc1wDjbpgk1UBxNHc73w0eshi6C2Isy323g1C
wRq3Tr5pFKIfu1stiRVcO7YHmLC3ozlj/qg0xrSlZmn86iaR+mdan6P04FgES88iS9B7vMuNBs51
98AiKfFvDbMWyi42Wg29wed/+rQjUL/Y4CWNUbRfM21sN5Ei2MuOqROlf3N4zCXKnTBSZPWB+7vo
5TdvDXO1UWDVIfScYi4OINPkLbJrMtvXqlafMUvtV1SEA1o7ShcmXI34nAaD29anfYQPAB1oG5/8
aYDDf86OIi53+niBSK8ShVGQVKR997Ecd7aYyYAdD4YpLj2Z6hFP0CoHw1EpjBgAu82ubcl1hrvB
9QnKtKGVKcLufFCNAsTaqZqaPF6AYsHdAprIINdbzaBRqfJoEaeVLLiszrVheBYzj/U2ekfSqndE
OPLY9c0rwx5wMyuW0R7/oG/McV+hXKRz1DgnIF7rJ1BVRm822QqBPmxiotY/0UlMH/6nEwwWpoVy
BN4mFgUUfWRo3jVGSYdyMxscl1VbcB3pQXCjUJKCLWeJiDhnFbBefy5+aQ8tYx7LBIV+hyAQ8tRr
hQniz76FSSsZdaVUeWYvtTNKZOBV1el9pOE2e/Z+fAmV3ttajLnbtbIUcLi8jpUuxmcLVHlIIVFr
Y0mCMzkXjWDXuK1fA4hzaNQNZXfg3c7tgwBls2PwlOgQF3wKTtyi7avc5P5fONel1Fjejv3gmo5H
8HiY97iKPEzSvFhLWNMKc3oE84wCxBx2hHsc9smJv2Kw5+QiUHPGl+hKhnGyLPsnOWvqEKp2exYt
z0mK80BhASySKAgaHugKmi2LGn2W7exAc3+cwBYMDDr+DYJpvhFbdT0/iTI6HPmhuY05S+xjrEMh
49j24lumKgRU4fQ4DhJCvGA3rVHpyXnmjRYxeUtDjMBtbqSmNOEqR55nZHLzuvv6Wud1S1rNeWiR
w7F7e4zzJDjz7cchHXuFhgdwt+A59YMNTbtpEVsjBFWrynFNI+y3Qi4SnP8esMHjsS6YH9zVMbml
6vbgEuEP083F/dyvctojn0x1DWFoMUszzOeL8meOD/tYy4jmt56v+smnaaU4zBaYayiMcNeSPnfI
/1KMSv6xTydPzGzp2UxSaQD2RxjUU8JkZzdudd/e8wUCeqK8Ml7uUrJXdLh/kFcxapuQW5D1X2g8
4puzwdNZdkcHGQE6F3y8deAYoUJ45hM2jELe5PgIIBeW1P0BEbD2ltW6U62FBy7ncW+aB02r3Eob
aKK5zRHMuDtuxtZAnDqqTjjXNNp54ceGoto3Hq41zSAxHZ+wFSqIrhCFs6KwRyhaTC8gusDhhRJT
4oXyQO/Nrd6Jq9YfcfsUKcDuxnmLColut5DSEDpc34VryRBxe7x6ijm/L8xXkTGyF1E0WSyBrVUM
5cMA6WycwSGLLG86eCWmbZksJF9o/trlNoaw6Dtsx9w4uwKTGiL35VizOUj+qgvZmT3/VFJFRhXo
+OGzX5ubBwQxXlwmlrZGn8SFgzSSf58661fnZKoKK7tfWEz6DIdfu2EPBk6DZVV1CcwHKG5Bdt9n
DK+wWVaHahnlAbC2/+GPB9Lx03FKTbVOm85zRE/0fj+GOLl485WVg9EEUqL7nx9VieG0KosqJhGe
CtK/07912DhqSQ18CrXkbq2rym55SkMqzF+ULlx6dO+r3zOJZFdg/9BxKN4j8bT2ODHc5KZU0wnR
+v1l1oFUtADr79sWRe7a7MPHgMHbka8we2zRbg54HCTss1MBQ/y7MPLuA/gNjoZNlQ3LfpdWeuTS
w+5Zxc5h9r9cyumxYhiAwuiLf22ZD4GCBFWIfQIgW4HR2QU1wFEkc4+IRURBpl1dCHLKF3sRfym5
COItZJ2yEvmsmx1IHjFI3cVCe4W+s0KDU5EBrX5WL7yy5KSgYMG1bRFGNiBYVQRroGPDIosKjBCh
V9KSofxqjUJ2Ue/ZQ7HGdcIVTwSWPqYQ/0rRxSBH3qG95ECfbiTlOm+MO8SOAUPreZME1xam8GyR
9/jnk+nuwWVjM82Ja0Oo+v3qYRpqM769r0MQMdTQZm48diGI3QW8YAnzgJKjPdYyzn4HgDqTlq77
giUESZTjmf5f5p0WvMwzeefWy5LcE9qyyRr1bA9kqYQynBdqPr6Fc7SJdJpWNf7QhOXUuSa/sILF
7B+wSxR0KtEklPu/HFntsXX4IWnHitEYzSDaSR127wk6Ndpr6l8lyEBMq7zB1JpulLtYNTANxQrs
W2izUoacaylVGFq17fb8LSjVF8fN6GvVaKpBuxGAah2C3mQ3VdSozN2aNyFdYOxvJFzXiTV4F0u5
y1Uo0j3cKVNmdeFpwowj51x0JdJnVSf7Gi4REnmDFmFKSQgREjYE8myOUQTHJAuG8lB/zja7UZr1
W1iYNvLsRxWn6VTUozhvCKAotgTY6iHbsvaF6DDTFUQkwZv7r5GyKIOYEKnasIGeWqjITSj4RfmK
ZsnhqPIrc/eSnWw6kWBQG7P2Qv7XsY4I8jIaPlHpm34+pSBwacBycshZjwgSIOIj906BKXFmGpJ2
UilJ0koBi2N4YQDXo58Z8jS/p3vt7zMEHgDf4KLQPP1MYM0C0QoWqVNOx/y2JiteWrMLngBKq8Kc
LDwVAby90Ldcn2Kk2c9NihZg1QKCki0p+mCwMRMRPhrSOaSDGlN9lNor6SO3RNVXyiW9klnBk38s
uEh9j2Uu0gB1NlR2PDmxTg5ONhtronCkhN060ZIa7lQAhCkl1zTPN5CX//u9JymhQjJd9SPQKqt5
cpSeG3YZtammacbbX5sCohJuqZYl5KQ9sdPIIb7z5rPP8swbnSWkWGVRMwWHoQbj68BfGWAjlmxW
rh8iDcffDMRnHpENOTigGfe6Dju0IK0IKWWdizyk8WIq+6yl7Q0gHAgFiOnyFJKdL4/hb79TWWrs
0B2FF7x7ZysKVW/9oEH+1uFtXsEmLarIuv/UFao3MDZxJyeU613S2B6TLXPT4t1x6oGid3StXC2z
ZW5LdViQSPpY2MjbuVhfMUwIdkGANo7nC1GzrcEkKLmTCe8tKn2kdPEtHh4/qcgxNAoeIZCbtwC8
INJbQwjKr59277u2fD6AM9Y6/G+DqnPC1PBpDCCSoZXkT10NLY8xaVcD+z2JXz9ALFdq1mTmYDxR
ADACP437ufYTOZtwz2s5FTL9OH7tvWpsvoLS+XyV9bEf1MjiCu4xKRrAPpHoFn51lfsAa1h1YqrT
Xacbu+xLodXmHo5hzGzdIxCv+CApTVnLOqa1XWUon3VLIo78BsPUqtLLbubVs4o7HlEh5exMDRwO
p8REn3ntxCtvler5VTNp1qC8zkHW0hpUXoSA2kTtekhzRoPBXmPewGBtz4H/PZy+WbWvl+P1Lya+
QjS3orVLwx6hnF+XZRfJJBTCno4RfofJNsd3ZwD+Bk8zjtNri4X2OCmHuakoWeUUXyn7qFbhZ75V
/tz3kr6byaN1ogtw4GWNxOF3QljNqyT2e85AunxVKI3ogKifwEv39xjH+asejy6wJKk5/kUCExO9
iSBAF7xnR0YImKGfmiLzTLdWQ6M6Kn3j9HNWW7nYMhy9IPD+Ju0kXZdYFqxLNy+cgRGEyyPUiV6p
VTAzDGQZaj1P9mPzpzch0nk61Ki/HQxVSRwWav84676cFKesGMuXIW33QdmHoTnX1LrTceodLXzF
KwU5yqRAh5Kcy5AbOSgUOikH4Ajjah9mdM5u/LNNY44YszoUH5kkJqYK2deTmh8Hb/oMys4neFXn
vyZMviEzJh8dQhRoGQKMyB5cMmCSq5Ou0IMQoVHD0Mc05IbPyp8wxOMw9c2/N+MAn5CSTxu+iIxw
bsqo/ulaL3luUbEydDutQq5Q0PiBi9GjKJMH1cv8Vt0g0MrZs9VYEHjg7u+Fjh0UJs5UniJ1PxQc
/zf+kyk8Ic36OaHlOVTQpnOor44lvMdOD3eV+BtFcy1zRmUTLxHn2tG7iJRCYlbfV5jtAdXWptH5
82p9ez5yW8LM8rjY9yB8189EkRL5dNe5M1lEbPZyZNjd0aGyNIReq/QmjM3t0THSfo/m+/owGFEi
4x8854k2b0ErBNoNrBhQXg1veYRF7qP4qnGi68UKApq3DtyhaARwsENBe4ggYxAvTZo1Cf2C0cay
RM5rPs3WQqtc23b3tWqfV7MvVlgMI6i8rcCRiBfVvpM30ixZyJIl7a+ObvqFht6r377BUNNmn3N4
jzgacTO/9v/apxImeLyiqQfjSOI1pjG4jPVmPRviRfyn3AMPCH0a2f2tShVHIgjvV1NwP7BRhS3N
hIZ+FvI92H8Khc+663+EYlVQx0sKzN7LM8TZdNKz8L8ObTJ3/KRbZQSatIV4mvI4+vTITUyPlGWr
VjOYU3QXRQXoLkhwbDslWUIKZXAqrOmZBeN4Y3LRXRuXRJpiulCWWXL5DxYl7HS6fJDFZWNKrmev
MdV4iFCJED2Pm+e2UtM6AaznPgBgg+liUmsomUhaLvX08Vd6mSBXA04azUmdKUPkzidR6zhVchtd
vfdF5TcYIi6NDBDaScpFFmZPxtp11x4GjmNBZrf+XOJLg7io43BFFKkfBqhjs3UC2RsbsXAEgfBf
FHdOVozykzYI6T0WjGGhB/5tMKqz7TBly28l1ain5TEoztta0wQq9gGy5DDf/CrdwGwwWxtUB1KP
nKmyM2t/OXHvY8tKk/F+aGPNq19L9AON1dr1ZzsPagxTqpRKT9zmF5apj2qiFpbesdI08hJaemyc
/OyXKDTOeJx97o6+jL7qr9XvDx7JNPRZNYEp3/5Dd1I6VK/RIG/7b//18GbBjLrrj0RL/Y67jnWw
E+sTPjb+8O7JQ8EnKOiOsetRdEwjJKZ2uLWYVPGCcP4UG2SwSFB01aOAlPdTHI15/0SEQyY3g2bx
F+TlOpHEhyXAv++4Jf6h5fLQGX1d7CemQ7Vv4jJOKnCzhws6wPvBJ+xzWi1SC3NsMKloxY7Xo2XQ
z/vQddS8A2FBvi03FnZ5muO+6+R31aOXBeQgAWvJcu/08m8rLkWW4uLOE68ynX9qE+CvX3v4EXU9
bGG3euUnHTHQ/ez5r3L4Q/zr8HB3AGb/HtaRJ6M3oxuzqBVRUBcPkheb6ZYPGi/GrGzDTX8LnIhq
9cxAkppjtBcGZ0koamGHiZiJ4W13ebuIOHWblXehYvzARvWsYo6xwDP6oc4Tz36Hoo5nnYl/VlaC
Hv+U5BSuNKEKZ+Du9MXMCFMtaVoY1nOdZ414LbsCfw85D/ybOnqBhgVfH74rzegsfK/YpZWWpeek
LL5b9XgcHiWoRRKYn65HMihRqz34HJpcdyIVoc6biARxwexVfgy6wAnJ06JhjkKmcoYy17E+9qaG
Ondaeb0mpv0lWHd7lRnT86IyYrz+wJP9d9drm0aNIM0nkd3lFM0yNXXJf3se4dJ81q0KqU+bpVGG
rQ8gRncQHmJK4MjP6ku+4/yONvSkUkDvj3lgDiEYVDYEvL6l76scrfbYyOUAPWMN42qXe/jyw4pp
8wOV/dxQviqQYXl4oPr9mQpmUlabqWunRZWMmLborSzz7aOQAk3w/AjjtZlTksunG/S0wCeXpv4c
Bx6wnYTAa/7QJGK8rCDPm2Bcu6Wsq4CQ8PmE3TmawO3u681vIYRvUS21LXs2fhmduJ3Z4gwxLS8O
Hl9bsLFdD6wsboK+Q9sKEDmzsvceZA65RAwutCKv/Zpsfkqn5in81Oja4QJ9Nuo1eftghDLD58Je
IJVOLRVG3IuK/GEZmCpg+5M/K6t9DhSS2rlOFYD0+Qw2kw7rZtc3UgEfCnEEjQJ6zkZEs2EQuB6Z
wmbb6L5b/3kga4iMAHfH6BCN7re9Dd5/lWDxtKlPwyvgZFZhkDYQ6aNIjWbc5hg2odH7O2zN+7mx
hlXBqgVdb0nSlv7BMXa2MFSLTfBXDeIJqjVzpBB/W3dH30bN8V3lZMQNl89NSXvAEkX3m8A/SHrB
lz5s6RqYvD/q7SYWA7dY0ETAnJpgtixNzgYvuqZsV43QxBtKbISRccLBytBTDjoExJHzgxciZLJY
W2TrIESkpIx1SY290FUriv1fJ0byuJjUEafT5Q42o92yAx80a6le7GGFUtPmLPJ3B+atQZ2Wrw/8
XC+dk5C+Fr8OvtHhXaAQY3LO2ziQR+q/IVP984NRvqhOcxb1LCcEZrjowP5sUMpWg4v48VHlsGel
2Mr28wC8/eFy1j+Pi3NJ85Defw8avZ3zXfFBE/phNfYr37opzC+9+UIBXnu6AjkgNfI7RrsM62nz
RIdiHFCcbDTSlB8+x3aKoRylOyY+XiI8ZPzv3YcH7E9RiiqCPPPpj4KTCHJCLUOI5M02br3tyPnQ
S4TKTnhvXfxok4JQuxSWa6UrW8e/bPhVA0mZDpHTwptEsHaP2HZNLZx8LAV6zZa/N9spgIyk0cJG
ZiqRArC1ueaE90QnRDgRpM5zuET7qVqvqozUoPEcSxQBTsQovFb5IBcrajx30lFdZkY1uUUJOW4k
YjYbJjjrGZiKOGGgEScbhU8tJTtopwWTBpFKd5VXHEfHiWkUSDjXIrp35BVp8AYOqSKFBpTMSOGK
6TWoIAhciZmBqkwFST6Ay+HQIkSSTFnK0Pw0QLYx43gCna2JVAbF5tySAGitOOqqD/GlGYLWEZIY
Z+p9jNtntFqXWT2PoI7pahXtfTtt29GzbO+nAbVeY3lC2qNa9AUoAIsGHo2GuVPKtqwcfiSol/hb
hVT2TvkCAHVRQfe2y2tAU6REzrzEX3qIjm1tqElYLM9MbJlfLep+FnhvkZRBpqD40IhIrBX2tMo7
0OgjxVmw89FnQKPRZ7uT0Wf6D9fL573/Z03mG6rY7n+lSKfSPo8BpLO1Tw3VZmEVtmsUp4jC7rrl
uw+d2eWCPUp85qJmMJbriqDdiSc5zwP0A//MNe2NlbaJLjBZbMrC9YjptlSraRPCwJLnIMOK7Lze
ns2TQt1lBSo6UGe1UVKTs2U/wS7cOpQcGveaWkRdZBMraRoQCQbTVaUmsbeduST1iKRceD/q4cyH
D0jcqFuy6Uhfh/ms1+L7Pu3EBQKFKSXz/NCff9vgmm52QvRUoffKZIHFeCiTj7270Ameb17y4h07
JWIrL9/+YCg3L+GBlynUunaTAkigHykzcWEJ+7g255SOQqTdqDS1tCC6Lesgp2AN0CsawDuXT7Wm
prtAfkC5gWGk23zalYTSHOVoh2tZk/G7PbZst7xbyPA0SKP+VUidq6GctDjGQdb7s/huEdgSuv45
/fgtJ74NgvlycvFx3ER1E+S//cZ5GAfaymAP73YUv76rd9EwlTKGO6tEnGO93YF+MW+NhmJ2BBU9
viho2jgiQ+RKsVRpX/omTWRUhS0XUNgVNUDkBc7UiVbLKQJTBk7Hj+MbhHQknTKdamjiCIM7JGBl
a554qGOclqmkis9K/2FBvSqea6o3IvDn2FSieNfYSnLgtQq0UkdmfND+JcpYrPfoI7CWdRUxXVZh
+g9vU0t+kWn7u178bu/R3ifpe8DuAYyUH+SpMhRizGx9JPAw+0uwiZf37vTutx2A9/Ajf5qe1Mmf
+M0TDaFKwBfwI8AndBdEcnpSb12cPspQ9ZolAjcr1WIXOefPX8PDHFsrWv2QCU2bQ8Yl43BE49F3
h38kpyu3EhDTLKeMpMRvOmLJgV6JCWRwpHzjIIPyffd0HGj2ohiHHfbJ8YFhksP9KQnuQt7LsZZk
zUovxs3PpB9mj0aOk6yl438ZTXCAsuEfXanhCZ6RDkxZURyOFLheYVp9XIDBhTh9FCq50/vn70ZF
bzf7mm2ci2HgJcxhwwe5eayIlDFi5yZ/c0OD80070oa6cUl8uT7r51EqcLBdPj3DhPZqW35vqZZE
G82aWmocLgS4QJhlScDrlNYSK2gvTy8Nfv/jUntSMSwYfoulAANHMz8JJ11AO8krgeLBBlFtKZWm
96wNJFfuNxThzJOlPBmf0LBoOkFV5ygUWdLbTwBcyhaGpkpNJoi3NvR8Gn3VT2rRyB0ZR1/oDCLa
9P+U1f0AAwVkKavEZaF8OUcdlOUykDE5Euc9jFcmrplmg6qiwnnl5X6yOKjOIENPnMWf69Hn0C6y
+3H8tlSI/DSQg7mesD0W8BCHp3dLxY3sCSJ358e3/45FOLqLiG935vpny56OGl1rWj58CNKilksL
4NZ3OwsqyvEeTg5u8I/OrXgdDk+l1H0SgUiAc3tj62WSFeShtkPanT/7hzqIFPurj79quE8u4gdT
oXADy1JuQ1N2quDRhD81TJnkoeYch3RpcJT9dLVgKSvSwIaHEs9RK3+mSxP6VuwgiPngpO6PAb4F
A2HVKrdOQ4Cum0//CVbbe838dV+awf43RmbcdJWeSLI1NfJaSX4+HRrbpUw1DTjEKGnykGq7bLNy
dA2wcMVlng42WQAKIxUDZkfihbldEiVZUnUUTfwPbSyKhXXN3t0tnPQWBSpM64H2pKK5NHdQ9wPd
SjH9/AIkebFx/C3FnN5UU9YPKxWYfStSRh14vaZcrcfqpuq4XJAFL5qCv51qWpEe6PnVlG8MjKRn
yM5d8ri6J0hn8fn7btx2PMnG7m5YMw3DTQfKZgGNa30Lnknd0mazScVPu5ChyaS6iKvLnguKkGd+
kNLHU5ZyVGSWNUXE6K00GdIVO88yLKI+CshTGwckH4Uh9ZZRHn/xagMmp12mEQcxj1yhuZfwT4CE
3YGJ99iWJ35+NvwRJv7exoY0B8h9rCzVn/ICoXNirzpLW/f7nQ8Ma2r9KtQRwQkSoepk+8zajdYs
6rJj8BSkPh74Ni5JjJb7dLjs/trhLYARRtH/6QV4t5N6UuIf7tlcz4Wj47KzZsU6u/K235zO51MC
bNbJJ656uQn6vHN7roniogVm353P9GusTzN+yW/ByIjM0iQKzBhZaVsHsAUUKTHQ2FaUojSWtdSw
8AVYtGAI03xqQ2rHHvmPGstU+qKKxBuOs3jIQxpk+zA1pBzQV7/pIWZV/WUGElXyI4Any7LqNZYX
wUIkAPAQqNPM3X2MpiHkMZHmI0ZuZeSRybLCqDOQyybq/adgXsS3l79Jv9A6tyFu7fnWyH2B9HAa
tg7ISW6auk2l3EmlbM+K2wWPw7mfRkslKv5YgHHlpxV5LnqSCEsqJAbNtv4XkRfjtg5fjw762crF
6FHn88mVap6rEssA/+KGMb7RnnEkmYmjAviJUpFemsFlqjfbx008kH3UTY9xZwP98n0mDARB3EId
uzM2qdnF7Z4hrYh308p8sGRaVaGc82RGCoKh1GTTVUeZyXtoJ/nm1Pl0y/2ityEtdjyEbd2g/JCQ
i6re1MCIOZL0Cwy41H1X/HN+0O4Ko2/uYnj12jdFHPTukkr5EVac+KFTPTKKl6qu4esm0lGc7voV
3fuTytUFQ8A3T9YppSbgEfn0tl/hCgoKisG93AF0urpEytEwWtHL25+W1X7kdAlUmjGa5HivMoto
EiwCozNOPmDGT5kosKjuGHEajW6DFkjKzpB0OoubLZKk3PhW0YhJFVSM7g/hIWOC4oHnzM3ycRSX
isGng9f27I3rbBL6ZNNk7dS7j47k9gEJYkf/0ODZXoC4mYmQocgdMvVSdJCeC/sJVb9dh6aCg6dD
AFHrMRpTBEJlot7kA02HDYEmBJH4nN77HS0hTA4PsahgU+73GcWXlmo5DXnjWIHdMtwxAtwFh5CA
fC27LsM5QUkd15O0iawE6iX8inUZx8/E+kJHfn6QfhtdP957YeeoY+yR5bZf05P+BYc0D44UbvDd
M6eXtiETEN3CTdE75+qdos94fcuZBdw7XS3y7U81vSQeR1CWLi1vJ/0ar/Yki/UNWFxIBiQOHUwK
sCJDMwTAB2Rr8kL5faUuGzwWyX0XYM7kHSjSuwXZz+ebf+vpPNlBvrncnTUH+dYiOcrnn2URLULX
WxjZhgpp3FyFtM/NRaLeN2MucJ/kzJbqkUjlJnp9uJWXhiCTnuZuPluj6YykBRQnerfrHm+HuLY1
iOsbshhwghiri2vNYmuhZZh6XaIn/U3oKsanda7T0nEgOWLz+/Ez+dm0nJhzxN4zreEDPEUQQ9pA
lQuNtoQXHkBeF73dFFqNGmGQ8Zzg2nJQBcqwOty66BdNqvzux9efKn1EW0j6nGGueGeX+0yH3EIf
clrf4/nTQfcMykM2VzaohL9vIz6BrFYQzAPmqM4CjSqOE4f6bmAczHGMxkbmSyIkx4tqP3ikdF+H
8IxInHnP08wjkpKkWy+mxEdpnX4lZRH3CPxONd4EQRwlxPPNv3YUfB18tF9RyBC9yf9kyPSLngq1
GG7lnLFOWPUwOAyCj4gxV5Q8IG7veAIJcGUHwAOpD9l0AjvlGdYCq1aajOqvUMStP19P1UnydPky
7NkzSXieL5HLvz9dO85AF8JilBLE8Tg3+3vaq7Y6HleuVkfphCiVSatANWqPEd1/OIaBwsJxtWAh
T+AHeXe0wVe9qSNRf4zTR8xwJTnuptmVkKEz2A4Fpp0MZ4cJO9dDfHUvu0U4GAPWV/dncyALp+N+
KigKb/xV3csdeGGY+qBq1qE1U+8sDxSjXJvjqCB3HxF4VhMqgq1KaOKOn1M5PaHTwwlcqHcAAQtA
R4KQGf9e4MODC7xVWMB22p+fFctBrhzyzKLz0TUs5Cq9BfLHYRAoS5gw+mB3ZPVOOQvOeuPovFOG
weBgioBDMFQ5uDNLLMvYe6PcimN+Su609VrTN5DQMKo5hZXF8+mGAqBUeHCYwe2YKu58lIb9Mo67
7xvseNtU/i758oyoQ0KPq6KdJUBXsEwKI6Izrxzf4K8FK3UI6XnMYhB+2AvyxkBgl+bwNOpSvAzQ
OSHA5QKdbH517XAdThDnX/HOok63eyaVeuX7qDHWA+Rk5nOZ2fqYoa3E7DWmXzNFP+/a6KgJKwbF
Cwkt8TEQoCrwZEPP3cdQrr7u1bcxsMdIpM8KajOTzmhu98tRCnv2mklYnLsl8HHLYWyAz7w0lMXm
5V9ojyX8Ot3V1A/A4nFoUxwx7jz+HzMNboJZQg99RwD3PFtH4uV72yr1oDoHORjtseqnOaJKkAl3
lUfH7+/hBuTHXSR7GmPE+joBN5jBkOKIN0pHyvE/qk5qcfJKK8k8nPs3rjOWg6eLzBzcUtVM4pzw
GCft0HYfLj4x3mcrWSTLZeio9kZUBexV7LlxUz0PFtBZiW/M+2HfltpZsgKQytnPaRWsGPOmLkX2
gqTki0ZVcYCOGmRNNG52TQI5IrbgIejNKEgKNA1g5sqc3b6p5+/RWW8qoyqXd/qaecnng1rNYbx6
WMcI/OhFjdAT1wL4vgf1XAw4+Eg4+IUeKI9aFf6SV5gzUXJX99evdXTxC+ZO+m1G7dO4JTN871rA
pQFOKT+FumrNTwwFNZ1cEdHhsdLOOZwZ0pxe3tsJCpz/hwy180umZI9VBfeCHafdi7cZVBjBqdOq
b6ZqK8svlQT5a8/2k99MRTS2J/7kg1scaTD1cjjD06N+thRxne9vpjnLbIfrtCTJgdshS2719l+b
Nkm3szK+/OKX3gCsETGUlTqDijmNWwnMX73Y/8PTNH4vVuBp4/Ozmc9I3fZ2mJOszMunuQIASx5S
vnbBvrsjxScT54XQT/O9CELBfDzOLGEF7PxbS99x4+1NnOFCFykwUI7Xuv76AP66xAcFzVi3NZVM
T5dQbep37E3/l397lRZJmsRm/qhvwSnjSpp7UcO4CjCkJoUoJfzYWNRi1gUCACNNA58zpi8flMhy
v0CAIc3QzGKyiqYASxneXQeglUM/cbGRP7YTecOdtxojkO+dDSQZw2Jf44Is2aVKStLMuGGkq7Ip
sCMMD2khV7EVzOLKYK87HoQ6Ho1+rSt72t/+Nee1CYr9czr4xN5e6bS9I13rC1fEed2T7A2n8K8D
MJRRCH354nbeacvUFXOpJNNWRpSM28+BpqgfxKms+zkluqelEp5xbW+iYSldjfOx5YplkWUpypfR
F3UkZvdQ2dTiCzN0v34I1xzMV6QKaiWfrKRwdbUquoJaBSCHyYf0nG2uL4ZAnEMaz4gslBhSKRN1
UDW8TgwWzahdiezZqVAJwKGpY43FEqOsas0HS/mNSbsiZj3GeI0LMwmJwW6nRK5FyF8APTKMpj3+
32GB6qkqT4w/tp0iJwtcSaZRmweC4xWntPO5V+nfvIJ3Ux/Rvd97SravAaqL6ITwLFiOoBvJFbBo
HnrEACVfb+OwdIwUyhsDkevgZXatg+f9jCVxNIA+QZgSgWGBXS57ZJuUmXI0HNjZ3fJld1RbUk98
EW1mwhxky1JSEnCvisVNJSk13z8n+JULqU6dQKmVVU5Rvw71HiRhVgIbnJaIiAmsomZpmNeUG2UI
9o9/Zyci8B8qPpKqJlWpMSIbwCgpnvN+h3DXb5LFfIOyt87WFNY3ELQnTMt9744tNiS1NIxGJMig
N3iPCEwvr6bkgbSgElClWciM3zcfcFSfoAOxwaHtWvSFmy9Woqf2WBbMNsBmSRjP9lniZSbyCsZU
g0beROQ+hE5eloRMd5WiU76VAEmA9iWdvfqK5q1xpsH4QJwaL6zsLfD9UdlYdxSSGnDCBLjax2bq
YpP4u5lawfD7x1DD1RbhDm5AxoOpICaGd7ujZPPkSrOIqn6oe8GgF7uim6flE3FDeQ2cSNLYBzPu
73MonCZYEf3vYaUjqA0fb4Qiq0mPj7COSqC4bpTt4UYbSmPIq2hAlU1MXWOLlnz4IoeuXnEZLKex
uUasoZHVYTK/m/Qisi0+sLGMcHpSw6pVZIMBkk/dLyf7cJuaPpbkg3ONovYgLKCI4UnBj8jCEs+Z
a9/4WMFf46ANqnBBiP4XndBGYAemRdnSisQjJk8QfsGvLWEjKGlN17BRZs4Ga4tLF3VXvzS27muF
SCN2tH8NPsUnPT5PdATgBCW0uj17a+KwfIRtgh/wH/TXeAgdjK89pkPVS3z9oXq2XbFQoXpFTTld
m0gVqbof0ydiIV20oxckY8PJJ+wU3AgbClfQQt1K91p0OeuKWh5h4CHP5BOuj1M2zKpDP+ATHbRL
FPkzdxgI181UCFdUNPVYb/UfnBfihQc5U3WaelysOMD/eGa44PbA4cHSQKscT2wH0biRBDSzEMtK
c6vt5WEA5+FbcNgONpHlZOWLJ1wpnsqQTi9nNEyvF+sDLLYVkeNO3y2AIUM//qSSSTD6FK4kCfmL
WbvU8Gu7EMyuikDMIkF9BqoovmM/SvxeAS5oy0HJYlTmL1bPYSXpcoCs0u95QFqNyCLsNvfo0iLD
F4sgKohTWpmaZ2BAwsh57FISvkXs+ICLiWl7dpSxntmyrc4IarE1f9Jng96bSYP0y1B3oxd8Ph7R
PXIL3Nuy4XevUQs4H4/hNxetfHACj+xf9j+v3DulZ9ytvxvLGinL/mEu/pfKUgescHgPYJ/sVZmf
sJ/g8z3ZueDV2IexfLV2ztzN4uQeCwSUMqE2kJOrobl/EAUJNt6hhGW4MfrSM89fWtA2MXdWyKOZ
4FVZVfJEJ+XJpCCJV3w6bhPZ1tG6ni1ySYj11yxYY9NyLmB8Dxf/qBQjmPYUdgwhL8Il/AWa6eC3
LQcx8J6XMF6z5D62FynWMJ+TuQKcyVjlde62EW2rj69TU2PwLUNMwZJFSZhqCUZmWWWKjrS8ywqt
K//18cJQq8rFubbOu/IAdCMHmP3Dgw10Gv8fFSKC+BlW0+KPCz5hpqBOiF8l+g3ieoEszlpzG/2M
THzsA0N0nFbD22Zm9PXjlQHzdX4KhJhE8hm673NzRBp5E0sDEbCsXz/ioPeEQYjQ2xmOeT/MsKeA
W+nOiq7ClGWCxMnqjG7UdWeRT/boR+CHo1e/ZpcVMyRKAX/ATvzSpXBekOuoVKz3oIyFStR8EXhn
UZ58PftX/OIbTK74VKx1C5JGBP9yQGzxsiL+Wg+Tm0p0h7e5zXmt5uJT116pdCuiPuklXnatb5oq
cPD3RJFbwLKa8I7gdsZLHPwTjJP4RsH5tS5WOdJl8X3Lc5ve7KFQlYII6opBs9ThwIKxlmgKYX2g
TT1V1ScZTmKh5pW3DJfDdQEeznfKjp/v5iT2hs0dXakZSWnyBuQNCMbqqtkG7+EQfOM9TSJmXLXM
1NPe44H0r9HZtrPdeHjZvqbeJoR1s2/ELsWwGJY05Y5rRTIdW1cr/GceL6DwCuKjhB3HFT285G3Q
3tC2OBOCRrFvZrGg1+wrN9zSVXyRJLKicEUEXD639lHTHotPI93qylXiuX849TL1wfPHgBO0fY33
EJRm1781Es2zW5TKfTSl7DfjNsMjY2BAvqqJEfa/bN1jIJ9J0Qw/qxjS4H0gIPzuMbeI7qwN+voW
wc9bs/Lo0dygii4ixL6plo9kuXduxpHAbvqIlm7jIY5rvTdSOwM7TeVvx3b33ahHU+WOwr5Io9eU
eMK552+dDQyy6NQixcaT+5fiQaq0pgUo1umdbiTivvC1LLKgS2/pc2ofzBOd3vHRLVshZgWdErLD
kh9W2CUhI2p97UyGI+nobkZXJ2BfBphb1BeVUmZMaCKqDJ1utl6AgGa3IW1pbwcLWlb/5hFZ25cG
al0oV78LnweV6RQrd9mm/fKB/m2oxKzg8l7U0tx0nqj8w24vvF67inylLg95GX0LcNguHUWMamnD
DMisGQFm753roFTUH2sx+is1RL/N4iP6X5Tb70Y+HzMmSNsuljS3UEHKmEUsN3rReXNJMv1nXWJl
f5GAYrEw414L0s9FoeBGZrfGHLpyiTN+26NhAgosymZ+0ZiCHwHw1Haw2+BcZrjkTk9mhj6XRb4c
46JgaZ/Lhtv4uZp/AQoXxCYR1Wvvlc+pXaTtg/7L5l9DQ2Yrfp9ysqlcJNYLhkekHD2Z7i1RipOQ
xsZHfGLaAQx3bE7Ghhpehc5Gcfta5SnsAaiuFyVWrfEVoJesF2ysMg9EutWI3mp9C9OL5t6fgUiX
/vLXUlZ4H3QtZwya+qdCfwFqZyzbVkZCuWmKK6elGhy0YsCBCEcrxEgfkV5tyGmLpcxroXK5XUXl
tpUdv+9h6sKeScprb/Fxs1HZ7LDO7vJCtjZGTS9JdPXb5znv3OpapNgBvlmiMBqhzU9QzCwem3Z9
REcz/gMXQG/T/z3O5P1e0UHEICVYx5UDY4M0qWZF/zrOQfaDTKYet1xc3woYdUzJS5ehqzxENM/h
tCEGChKh5dowjyPap5PCWXwlADed+Tv8rp7idM5fbxISND93tvUkTJUDjm92Xg9X+zPnnHvA1OZX
/buexSGve1RK5RSmsUK3Wr/wr9MjAMCUcf+ONIdYygloNKJmavbxAiC4t7SBW2DhvFtZeDPo2vWe
UfFGJ1ctJjPk0vhahQkrMr6EcTeenYz5A3uEl+0ekOgmdtig0NIs9F4POiA78tSjhULhC5nS6lh/
0tbCgp4vmG5M0wOCh7V0Qwoa6uXT/dXRtDb/rgS7KStyJ139IL9UnTXJc/vTuDLC3ujQX+zJfbRM
yEx2D6Ln/vR0qcmWIGn80TjeWLEwmK9uy8ox8PTM2YF+OAkDFWwICejEatJvkiVLAwFrWn2yxw8S
psd2NYmcDUsIxyF6/lJSIvYZsuAD7bLsaIIsckvMtdXfSgagztKDfW7rYDK76OBvx3J6jeCuHElz
bXXwqXl2Hf8K3KvDZhmLbFgsHtFeY+JMFQr04JlsYcM1sNdDw4v44HrzNGt7Iq75YQO3OMdFIucj
puZJPLOVnP2WaJhLkhmEAdKz1rN/iJf5Nfk8c6ZCrjSPDZfRbKEC1N75hgrgrvggXau9lhKZqozQ
rV9Cd9WWShXVTcY/njH7+TFlMtqC3jalAEG9GdproXTic3u8reghWEg/ArWrF+47YpV5g01fGCTn
h+PpImySfsGJl3uCQ9cRaUNE7kvFJwm8O0e0ud9vQbhv1YSOUQqT/r4rb3jRoNAvOgRkXSTCWJkG
MJBt6OekXj93zXzFqIf18AlKE43va4pdxgV1d4DZga8umaO/8xz4baYrmKf+PwIO0kPCeWqSDf+m
G4N0yFk6+5k96MzShQIwlZojg0MU6dqPU7wm9bJmnCshhHAARTHgUaIcvZtGlRoIE4B1k5WM9KDQ
KyP+ZAE3iSoUMwwGtP9b3iy/Wa13oth0HFGKvDupK+kLDNbJQmsljxDrkRlBJ/Qk/7G0lhipPoGA
MTkZ3ULf/3ijMpr705TpJX7Jxhkh9aCIye+GTT02WSdkelzjVImZjCnfk25CqPOZ0gRySkVAJBzs
qu23zoZ9fkXPyhnGXWp9PTlmw7jBUhceglevE8PC1younj8lIUCNoiHIcWyPtXr94zXq3azy2AXo
DcZaGe1rwftJlQl/T37KljbwEhSZuDXH6Ok0pd93iGThAsj4EAe2AINdAan0Hh2By8vTbegJMwSP
v3dDre4GP1FfyYS8llQ33hhr7cDz6k5CYpW3hac/lOyqO4lQ2gpHb5uVNX+yHkmbn22oBEjiTahM
gCUsXs4njJ33ff7jsTxLVJUNR4zZeH+ct43B4vdt774D22bYknqO/Ag6snB8bHLyQHv39goyvkiT
MgxX2laXUoDi4a3lNW6nOh5A7tP7n7/s8IFtVSIddWqqXlucHEIwV+4sMzFoy0/gzgq5d1aYIhIS
X1iuchYoedlub4iQKoqyV5aCPgYkKQOKFJbYDwScA8YDhCMMiAWIlRLDvSOaEeaf0fOgo8EoSzEY
0h7zdmkee2iKj5FSm1dsYJNUAZV9y508jOPJg2cmE2cf3eeXWVe+Q0jOk7cV98TQFmdVQ8A47Z77
AhRDTn0+FDHZuy0zk1C202OD1PFWlp5UMt9G4hMvBm1Y16g+OKCybfHFBuyq8D1fWJzgoEYoaTNj
ox8Zz2n1mo7WK9WWJFCODp//4C6WMbw9RBslbgK4dN7fL+Gzflod3ue5QyHY0ikaE+PaCcyJJ3EC
2SeeJVYEvIOUtu4TvJndVc90vEIJ47wiuQlCwCWMy3Wd8rz0VHY6WmuvxPBYdCjZj4yreZAt3BgC
1H86pLMrFj3uIaW00XgVPXOgNPouyCh3geZbgYWtH4vkrL3+YrFmqnwpYX61krPjN9Yuf67+HIp1
/wYSd6CMVevoIcm4n+tZo7i0bYRpSKaj1RlKp+AiBHy99gpD8ytr6WZq6j1oE9ZKbAeVD99jD0SZ
/Kbc8ysRl7H2VVWz1wWikQ5YpTkNHqVoelk/yAB8ObLuOxFQGZvPz7Fwm0lfJSvu6nVKHi8oOewX
L36X1v7i3A2O37SbzjE/nZ9CMiL97j2BCKVDW0T9WZiZXwGHfr7VYdNTqc2NtLWV8oolgcUQBOd8
aebVA+Lr83WrR6GLb+U9Nq04vFpkzVVUG0XobbhsO0L6pR9xnCg/EI/30VpyZ+aPOddIS0XUomd0
asGlWTPd16G2zzWMkI+YPrVtOfZAxiamkhA40EugYiw45kbRWINYR7yDeNzD+D/dw/hyoQ6/CtKJ
6HFBzNC6xrK3mSPYXZU0i1MFmB38pPFubO7KxIT3X0BsKysl8q2wd6taBuL6iM47aBPHF1B8iYHt
UUP2XWYvTpx6kPbidhnppvgqDiXXlDURObOGEYfEgvGsvfO7pMZi47tWP8t7Xy+IvU0azyYrqJY4
6+T3HfN6MY6n6fo86jwOSU/4P0V5aI/ppPUkGVO2wUfxJ1d9SwxPhVKWGLL7I8SVU1Q/ft5rUM+n
cM143d1cpsv/Bc4Fd81Rg6ohBfCQ6/Nw5+10xymEPr91ysTjzKwN3Aihetxz9pnrh6ALjVHGTO9Q
WK/u/KqdmTcq0+xdx1CkkR+F+UZhK4tPXXG8PmzNKOIn7y70XnyVrMTPPxjSrLjKbGmF5toaWSHs
KQ/DAJWLRLjZgvX5Tpf2HF9mY57Iqy74/8TZ6n+WeEIpnYka+hBdUMZs8kzmeO++kBmzqD/ALhG8
+AohKHclQLdczTjuKckNtikeWqHJUHhdQQEXrDZ+zisVwrk83DlUBvpg2FOWcP56R0u9NoWF4IHA
2z7Jeq/6USUYoglarsEk/4pgUVNFyo+H4cWpgcwcwq6VU3w2gtRdZisy4HoTI4PgfLfTYTElEM7t
VOFw1YNPBaen1ybajk+2F0qEpPcAY65klFV1eZTPvLVrdl1PGL+e90YyPWNVif0VzJge8ryJlXco
MGUrPFIEU9ga6OxW7aXmY+Us9lX2K4Qc6loeOXLkhMDfPw3+uUHFVaXbHPxz9yy4SrIqKfp7YG2N
rt213X1MjmOGBlE+a1zQzDj3dGk/rroqr89d78nv7QxvGi8kyqtsEnXfyHwywRvN9McSAcxrJoSO
jh0Ft4+b7KdLStlnd82KEydOGQWjJfsFcBOsQ4Z68CCL9tS9aEvSOfZadzyph/srWu84Q94y2Vuv
n0dd7GJLvw7TdE+cZ/Kj5V/S+ICndFARpjYXt4CC+MPz1ue95y+ObCn4O4STneygxpZ6IMHw1bv2
M7SFRuK2F+rVD99p6GX6qo3J4pXnyYZsNNML/ecJDkxNNnv2eEHCyaeLJtwbkGkzb+VA0Ol9ggHy
RMee3EHVB/87qFDQ+vYKDc9sPbYiBkO0IF7p3K4uJBcMrnMAfFqGzeORQKbuGaYTuNcrRb7cCXkp
SCr6HCeRNk9qyevpC2IJKKx+RInwV5nrn7HyYmf6/SlRYrpD0XMapAn6DikWhhU1LNnT5oNiF4UV
f60aGpTa16cEjerQ/rF3n60nG88tgd1dLDGa0EX+nNNexGdrVM7rzG/pHrZPqgAkj87BwySL+BdB
CPUDyzKRxp7T2JOBABZOBN8hPw+P5KAlddIXCyqoo4ArBJQIzILarJt6y5L6corLlOwWJQP0AZsY
9ZCyuuJq/8BcqaE/0LQ2s2bsQh67w/ZXoRTPRy6KjahnyIos2A7pAkPoBZmypHXlB0f2QUVU12fM
aal7ZP8dmQWSWb7PTJ1GIBkLAjXPuu81SYnQ30uj79B1WsHp+5FoUJIzbweaxtnUyZOZVB/9VD2i
qNsn4Oo1BzMXO9VjoBmg76P0qsEcM8OkQ/VlPgXvOTUcfwQn4TEoC++kfy160/y0Gli/pOv5+i/H
tbwZWJDQNqYXDOu+oCcjAzOJe2zzGdbfAiFy2FNT37X4iaGKR/pqsmESfHYzpDyeVUoilmJTN2iM
g/Agq29xt1kKqnLY1m34wzI6FGV4Z1HcVNLhacI+r24hB3TJSy//K3vJ4rI+0RkmFmQQW2Oj+vtX
VbruLDTaY/J/my/BdH3DDvrG4jZ7mivI0gfigyR4wsFT7fXLxEOrihsVYbzQ6cbRUPtbRC/wqVEO
LnZz4UGL1B7++vCkrPv0X7ezosSU9TwRjhGW0LvbWEK5if51olaJd/RGa35fu0LX4f68NiIWHzdC
FmRFbatW5tBkJXXOXYdg/zruXH4NNEXr3+Tzk3fGRoErlDX2ChU4dpROzDnwYtT8YQJw0vrgiUMu
8B2yEnUhsE5AK0rU5Q9vTnCIivaGGssOXbaeqg64GTkHF5SutaaFq6Ho1Tq5c7aFEWlAKEhFjHHy
OdHtchFqOIS1Su/ljxRhcKHeZvefRmkFjgntADo8UpWcjZuXR2WJdpfmR2e3OfKvVp+4tFz0wKu6
omGduqC4m68r8wJVTdCT3uLGMj8Nb/LXdphAcqLQdr6Fm1qcEEf1UAVscoz5k9q5wlHlWnk2+8WF
wVdkL374OgRDBsXEuI543BasMbZNQrgYylkdpZ05Q+rCc/siVEL7IuPUhhmcnPspGmUDJmaHLzRc
V03JaNArU+WphkNXulQZDRY2gB3rVlv4snEiekL+T7FLoo3l/13mE4t64sGbxA00eTlWxODUJ65l
JKMs2ukBaXMTGIF3Wvpnwiudi6cHQ1sj29yeZ68VdpF3Ix36VjB0hdfnq4XZTCsSnvmO3tvQWQoz
YF9IPEM75P/SWqxM0bGxEkaJrdJ/X/jIx9KoKRFdFYPOyZ13yNO25iiCTp/PEeVYMSmbuslyoQ1v
DpAnAJ5z4ocVEc1xloGzFasAxMSmAbaWb7YfgiLZ+NnFouylsPEwEPbiax6nUuP46qppBNLS8fE1
cUQ0tgRBs1fUpe9AhPvK7KrvNiLNpOyDtXnQ4m7kbaPD0ZU6cRAQw3ig1dXJ/fXxOibkML/GPb/n
qaAwQyI4Pmf75ar/wWew0Vpw9SgixyI0Gq25y9jlhnnOWEsDP3wXyCJ7xlSh2Mf5gFEwcY6bZGaf
SQlVdAECrpVrx5+u+M6ii4ZOvqqtyNsIDDi41tt8alzkj554SQVt+iaQOgfS2YLj1EjmGozrjafC
DfPMSDnpR1rGfhyFGmGyaLh4H8gbilqzut9QU5Q2x0C+ZMdzzmrSrS56canSZVB9vjyzJSYxlLP7
MIk7XuWRarX9N8jD3i5/ZW/i6nsEGJUawwbxAPC/RmXpQpX4nmO4P7HY+JcPM6rBK15LUN4EWeZP
4+03AfsWXIsVEB0ESFAVBkls4KvS4eAxcxS5LeKTQNaLNUMaPPFRdjV+Us4jxBymNnFGR3cL+wpW
tuNPn9KqfSHnPMNSznBqKk9YQ1uLtFU3hq+QNOzD/BgauKXOASw0H8Ng9yN5yAI+ka4mfZxH10HS
BOczFlyXCyQAf4ptZICPvo1ldbfX4zygH2vMGvZCgD5696m8X6k6i5OnOQs37BgWYnHKwQyNHLBS
MMo9R979V4wzxGS0rde3UANphmD6WEa3NabJ5q9Cm/GZQylXlR3A/hPnOa8LMnfAmGpSbNU9H3N0
hixc/kao7+iGCm7QS1aebIaGQCMaDlI4Nqe4USqn4c6WnEgqLnjC/3bMdSoJ9BY6UkTy14qUvj0y
1nbNncSVdxG/GoM0ynSNvO+YNZn970pfi4USzlQiP476BYRpCcgyfIfWR/qXHXtxrV6al6xGVLFq
pZcWXQAKCdaGt9m/BActRmRbq78dkQ246na7KgNUYYuYhTWZQBytR6dPNfsQdDKY7QllAL0zBNn5
m6gE8LiU4SHbenkY4Pi5kOKNZNgjBBWY7QFUd364Si0UlaAQH1rj2U5NSVkBj/jwC3hjBhhHeW3E
uG5y81PRB8AOMUjE5hTBKH5TucW9ins7o+edeDbru+ssBZX5BD7yCcZE5QouJLkr9FUSQIHXOvLK
ZgLmNT4laZu+WtijE7x1ntDpL9Oa23B9Oz2M7ZSdw45Sp7iDKsyAZC5sOLDedKkrMsU/Vmu9izqD
grjhfq0+zQnTS/o6D1Dw97W3855zS3vhYppran9z7GO0EwG+L1aPXpcTGuo+hLclMYaVBiVP0KKk
ZrepW18hOHzROrTPs+m83Ha0DBOd035boMHAfNnn+rfEj995hZK/X7ri7Detk4qQqFHBBgPeS8Ku
In1uvpUv+T+7X5bM0Od5n7NKqIFUYGbzgtnRWlzUQciVAcw1CHCNGQlyPlgLR2efh48HOc9GMBUP
YbqVbJjped9BqcrA2ZEZloX4G0LGdUmJ1x10KSjOj/cZ61V5BnRFOLj2INrFl6ZNe0NjudkJu3/E
GET0fyZeeomUCju9NmlMfmr0IrhI5upkrkCw6M1v6XodOo4W8eaDuz9DnPYGBfx7jXCT0FbJZ+pK
lERCXQydNTXpNsSX9I2QBExnRASKjLDEL9mXf4N5AcSSNAkLNXwqgspa/PLc+3lSb2cqvuwqtxYh
QsWaLECqqnz2RMkgHKCEYka2q7d27YmIN8+tK9d5k0mPCd71cF5Rf4rndysYqPpnPBSvqIvjzfA5
s9mxHhaw3xZU9Lhq4pFSflNv3/y+W0boqqM0osMbkRy5vEN8GESY7eo6qeF5krkLFOZQDUKpnCQQ
0xwpIc5GyDOougkYg3GP4Gi0FGJRcUOcrfMav0m51D0hd69yXJpKwCJCmWCM+rLNDLYA0bChN2Mu
jabgUMbW+ZajgRM12AYPvPLuICrh4HKDOlqM1ggo6x9MeJLQpnzeJneJRYw6h7fyPLzdy7Yi//10
A7UkJX3M+lyYt18UDfRY2GMggNx+59q7OlFIim2lpVtC44pdPlWETu9qab9FPFsHTJ80izPj0HXi
LFBBslAkjrz8Zw+rw2Fjsa/sF+CoX9u5gvx9l431UTOdlrpKOpLqY2Y2x413/kh2+43xCZx79Psi
eglt2q3cFvvFK47k/pv6Jd4XwVrH+S2s7jwV0pgHWcbtA7WlrLIeCkbn9rjvRyzu7k07cWvo7mk5
tVs4ScpE3N26wovZzUh/n4xVHZUZIByIfSYIKkh1dAJYUAqjcQVc2N4CXz3V+076SLUtrha6XQKH
PoNyLnabWPGXfzrSvlceuPevq0Sdfg5JzbFL7iWl8VocFuO8g7EcPtI7ezLBpl42kxT6o21i5iMp
S/lnHy8yYC9mLxA8hNIBhjQ32rS+HrS/46h1HVTIzdoZkzN2ubSIEJ0u7lhbCGUlV4+IL59j7x0v
rHg808VzlauCQKLbHYEPlLGwAsreAL0qzgh8hk3fuDsHTqvAcspIeUFdMDg+OkQVIaCc9iSwMgRe
NnnihOulLYYClCrWRq0vboDeB5jig5Eb4bgKYXVJXHRjf4NZs/aegchaFSyxDdFQ16LzSPax5PR4
6u3g7nxqJv4X6H6yFt3RpO9DkT9MYolfSeZJuQXAhfI8YnwzAyzDHbvLsHUZ8YvmRlpZBIvmsoFp
mAVn+235wi+iJ1BcbDX5j7OoprYWl7GzlpZvhpaXJbh6Ukblj02L2GFisgpDD0T7Lrcc8DU0Iyxo
l77zTNJdcsTIltuUgXFfdupAKoPYFpAV7gcatMg6RRxAOw2N7e5dA8HbuKuSoFL/yf2WBXIa/ABz
RBAtU/QTX2jKNf4PwMTn93lxkZGEnfPTyhIvT1HidqQGa0QwIMwwoSli56Tsa95BRilsuLuop/ci
CCcZRdBzlmK20cewTDXLW9cZYy08BsG3LFiGpoIpeSD+UxDxzSF0+MOS7xZNEU46jsXFAo9wu1qn
MtHh97jIvAkDju+pLKsW5PV3mTmpxMxgn0DAzqSrIRywkRU6wzDuUsBoPYC1LnEYXvli0QVCZWp4
dwhKD6jhw4n1wRXZBUE9tuYCdiheqXcnM2eO2tEFCleaBStvFDdiKjPfW1RJ5DF0/fngpPRUwJZ/
XVpMHMes3SAmQXZJ33n/BH/ol+nVhugD46glbHIGbD75/GxtNNhUeIiXrFGZceMpChYGONBQ/zXo
LRfTmkqdFCsgMXKC6gXpWQg1p0wpfxd+Qe6v7qAxC3jX6sGnKTpv+zekWUvOl87PXKYhpsHj6Xib
E7hkaAauzR4EzfMFgqVpvyFAxqw7LOwb4L0f8Iv0kf7eXmmEnRNDXcdrPjFHcW698GLQZ5/ydUjo
eBca/v6LDFF86fQA+hrNG/R/nJCF75TBYiAGBEU3UfT3vMnFB+iNL4KpvHuT4j88y6RpVKEcfhOI
K7/y65PXsiWTsUO4jDLHH5SAg/gjOm0JaoZx5dqd84dbMGkcjaZhSYmzbxj+yD9AVEQIA11Jpb2q
uPLq7IkYpDpeWX79BdmwCCmHNUrwa+KAlBPDBD7NlRoTbMDa9l/0y+t0lXZrX+Eu1IH8Y3MwM0eV
Wc6mGujZ7ExoaXYwGRwfb7PztYqCSz2dMB7pQnytRtlXQDd63lVA4R0R6ZY2mI3f/xQrbuB+ZEix
g1Etkj9y7HkbS32kweS5PK5DJ0mObVB4QmNIVJWR/tHOvvicakfLr6SYo35QC0sThe4g5EMIVUvx
1W6iIwy8zPUmr+FlssCc/vS/baSHwESe4WJBe+xZTRAZUhAyYvPPw/NWCOA/NOI3esY4wFEUR7nY
ftrxYXBV9IJhIRSo
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset is
  port (
    \gen_gtwizard_gtye4.txprogdivreset_int\ : out STD_LOGIC;
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txuserrdy_int\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.rxprogdivreset_int\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.gtrxreset_int\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.rxuserrdy_int\ : out STD_LOGIC;
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : out STD_LOGIC;
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in0 : in STD_LOGIC;
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset : entity is "gtwizard_ultrascale_v1_7_3_gtwiz_reset";
end interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset;

architecture STRUCTURE of interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset is
  signal \FSM_sequential_sm_reset_all[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_7_n_0\ : STD_LOGIC;
  signal bit_synchronizer_gtpowergood_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_3 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_3 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_3 : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ : STD_LOGIC;
  signal \^gen_gtwizard_gtye4.gtrxreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gttxreset_int\ : STD_LOGIC;
  signal \^gen_gtwizard_gtye4.rxprogdivreset_int\ : STD_LOGIC;
  signal \^gen_gtwizard_gtye4.rxuserrdy_int\ : STD_LOGIC;
  signal \^gen_gtwizard_gtye4.txuserrdy_int\ : STD_LOGIC;
  signal gtwiz_reset_all_sync : STD_LOGIC;
  signal gtwiz_reset_rx_any_sync : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_rx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_any_sync : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_sync : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plllock_rx_sync : STD_LOGIC;
  signal plllock_tx_sync : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_1 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_2 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_3 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_tx_any_inst_n_1 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_tx_any_inst_n_2 : STD_LOGIC;
  signal sm_reset_all : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sm_reset_all : signal is "yes";
  signal sm_reset_all_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_i_2_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_all_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_all_timer_sat : STD_LOGIC;
  signal sm_reset_all_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of sm_reset_rx : signal is "yes";
  signal sm_reset_rx_cdr_to_clr : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_ctr_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_4_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_5_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_6_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_rx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_rx_timer_sat : STD_LOGIC;
  signal sm_reset_rx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of sm_reset_tx : signal is "yes";
  signal sm_reset_tx_pll_timer_clr : STD_LOGIC;
  signal sm_reset_tx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_tx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_tx_timer_sat : STD_LOGIC;
  signal sm_reset_tx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[2]_i_4\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[0]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[1]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[2]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute KEEP of \FSM_sequential_sm_reset_all_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[1]_i_2\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[0]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[1]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[2]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute KEEP of \FSM_sequential_sm_reset_rx_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_7\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[0]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[1]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[2]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute KEEP of \FSM_sequential_sm_reset_tx_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sm_reset_rx_pll_timer_sat_i_2 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of sm_reset_rx_timer_sat_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sm_reset_tx_pll_timer_sat_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sm_reset_tx_timer_sat_i_1 : label is "soft_lutpair8";
begin
  \gen_gtwizard_gtye4.gtrxreset_int\ <= \^gen_gtwizard_gtye4.gtrxreset_int\;
  \gen_gtwizard_gtye4.rxprogdivreset_int\ <= \^gen_gtwizard_gtye4.rxprogdivreset_int\;
  \gen_gtwizard_gtye4.rxuserrdy_int\ <= \^gen_gtwizard_gtye4.rxuserrdy_int\;
  \gen_gtwizard_gtye4.txuserrdy_int\ <= \^gen_gtwizard_gtye4.txuserrdy_int\;
\FSM_sequential_sm_reset_all[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFBF00FFFFFFFF"
    )
        port map (
      I0 => sm_reset_all_timer_clr_reg_n_0,
      I1 => sm_reset_all_timer_sat,
      I2 => gtwiz_reset_rx_done_int_reg_n_0,
      I3 => sm_reset_all(2),
      I4 => sm_reset_all(1),
      I5 => sm_reset_all(0),
      O => \FSM_sequential_sm_reset_all[0]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_all(1),
      I1 => sm_reset_all(0),
      O => \FSM_sequential_sm_reset_all[1]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => sm_reset_all(2),
      I1 => sm_reset_all(0),
      I2 => sm_reset_all(1),
      O => \FSM_sequential_sm_reset_all[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sm_reset_all_timer_sat,
      I1 => gtwiz_reset_rx_done_int_reg_n_0,
      I2 => sm_reset_all_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_all[2]_i_3_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_all_timer_clr_reg_n_0,
      I1 => sm_reset_all_timer_sat,
      I2 => gtwiz_reset_tx_done_int_reg_n_0,
      O => \FSM_sequential_sm_reset_all[2]_i_4_n_0\
    );
\FSM_sequential_sm_reset_all_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[0]_i_1_n_0\,
      Q => sm_reset_all(0),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[1]_i_1_n_0\,
      Q => sm_reset_all(1),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[2]_i_2_n_0\,
      Q => sm_reset_all(2),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_rx[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_timer_sat,
      I1 => sm_reset_rx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
\FSM_sequential_sm_reset_rx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFD8888DDDD8888"
    )
        port map (
      I0 => sm_reset_rx(1),
      I1 => sm_reset_rx(0),
      I2 => sm_reset_rx_timer_sat,
      I3 => sm_reset_rx_timer_clr_reg_n_0,
      I4 => sm_reset_rx(2),
      I5 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      O => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_rx[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_n_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => sm_reset_rx(1),
      O => \FSM_sequential_sm_reset_rx[2]_i_4_n_0\
    );
\FSM_sequential_sm_reset_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      Q => sm_reset_rx(0),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_rx(1),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0,
      D => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\,
      Q => sm_reset_rx(2),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_tx[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => sm_reset_tx(0),
      I1 => sm_reset_tx(1),
      I2 => sm_reset_tx(2),
      O => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_tx(1),
      I1 => sm_reset_tx(2),
      O => sm_reset_tx_pll_timer_clr
    );
\FSM_sequential_sm_reset_tx[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sm_reset_tx(1),
      I1 => sm_reset_tx(2),
      I2 => sm_reset_tx_timer_clr_reg_n_0,
      I3 => sm_reset_tx_timer_sat,
      O => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_tx[2]_i_7_n_0\
    );
\FSM_sequential_sm_reset_tx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      Q => sm_reset_tx(0),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_tx(1),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      D => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\,
      Q => sm_reset_tx(2),
      R => gtwiz_reset_tx_any_sync
    );
bit_synchronizer_gtpowergood_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2
     port map (
      E(0) => bit_synchronizer_gtpowergood_inst_n_0,
      gtpowergood_out(0) => gtpowergood_out(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      \out\(2 downto 0) => sm_reset_all(2 downto 0),
      sm_reset_all_timer_clr_reg => \FSM_sequential_sm_reset_all[2]_i_4_n_0\,
      sm_reset_all_timer_sat_reg => \FSM_sequential_sm_reset_all[2]_i_3_n_0\
    );
bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3
     port map (
      E(0) => bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0,
      \FSM_sequential_sm_reset_rx_reg[1]\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      \FSM_sequential_sm_reset_rx_reg[1]_0\ => bit_synchronizer_rxcdrlock_inst_n_2,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_dly => gtwiz_reset_rx_pll_and_datapath_dly,
      in0 => gtwiz_reset_rx_datapath_sync,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      sm_reset_rx_timer_clr_reg => \FSM_sequential_sm_reset_rx[2]_i_4_n_0\
    );
bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_dly => gtwiz_reset_rx_pll_and_datapath_dly,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      sm_reset_rx_timer_sat_reg => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      in0 => gtwiz_reset_tx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0)
    );
bit_synchronizer_gtwiz_reset_userclk_rx_active_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7
     port map (
      \FSM_sequential_sm_reset_rx_reg[0]\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      \gen_gtwizard_gtye4.rxuserrdy_int\ => \^gen_gtwizard_gtye4.rxuserrdy_int\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      i_in_out_reg_0 => bit_synchronizer_plllock_rx_inst_n_3,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      rxuserrdy_out_reg => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1,
      sm_reset_rx_pll_timer_clr_reg => sm_reset_rx_pll_timer_clr_reg_n_0,
      sm_reset_rx_pll_timer_sat => sm_reset_rx_pll_timer_sat,
      sm_reset_rx_timer_clr_reg => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      sm_reset_rx_timer_clr_reg_0 => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat,
      sm_reset_rx_timer_sat_reg => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
bit_synchronizer_gtwiz_reset_userclk_tx_active_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8
     port map (
      E(0) => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      \FSM_sequential_sm_reset_tx_reg[1]\ => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      \gen_gtwizard_gtye4.txuserrdy_int\ => \^gen_gtwizard_gtye4.txuserrdy_int\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      i_in_out_reg_0 => bit_synchronizer_plllock_tx_inst_n_2,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      plllock_tx_sync => plllock_tx_sync,
      sm_reset_tx_pll_timer_clr => sm_reset_tx_pll_timer_clr,
      sm_reset_tx_pll_timer_clr_reg => sm_reset_tx_pll_timer_clr_reg_n_0,
      sm_reset_tx_pll_timer_sat => sm_reset_tx_pll_timer_sat,
      sm_reset_tx_timer_clr_reg => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      sm_reset_tx_timer_clr_reg_0 => sm_reset_tx_timer_clr_reg_n_0,
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat,
      sm_reset_tx_timer_sat_reg => \FSM_sequential_sm_reset_tx[2]_i_7_n_0\,
      txuserrdy_out_reg => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1
    );
bit_synchronizer_plllock_rx_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      gtrxreset_out_reg => bit_synchronizer_plllock_rx_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_done_int_reg => bit_synchronizer_plllock_rx_inst_n_1,
      gtwiz_reset_rx_done_int_reg_0 => gtwiz_reset_rx_done_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      plllock_rx_sync => plllock_rx_sync,
      qpll0lock_out(0) => qpll0lock_out(0),
      sm_reset_rx_timer_clr_reg => bit_synchronizer_plllock_rx_inst_n_3,
      sm_reset_rx_timer_clr_reg_0 => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat,
      sm_reset_rx_timer_sat_reg => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
bit_synchronizer_plllock_tx_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10
     port map (
      \FSM_sequential_sm_reset_tx_reg[0]\ => bit_synchronizer_plllock_tx_inst_n_2,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      gttxreset_out_reg => bit_synchronizer_plllock_tx_inst_n_3,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_done_int_reg => bit_synchronizer_plllock_tx_inst_n_1,
      gtwiz_reset_tx_done_int_reg_0 => gtwiz_reset_tx_done_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      plllock_tx_sync => plllock_tx_sync,
      qpll0lock_out(0) => qpll0lock_out(0),
      sm_reset_tx_timer_clr_reg => sm_reset_tx_timer_clr_reg_n_0,
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat,
      sm_reset_tx_timer_sat_reg => \FSM_sequential_sm_reset_tx[2]_i_7_n_0\
    );
bit_synchronizer_rxcdrlock_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11
     port map (
      \FSM_sequential_sm_reset_rx_reg[0]\ => bit_synchronizer_rxcdrlock_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      plllock_rx_sync => plllock_rx_sync,
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxprogdivreset_out_reg => bit_synchronizer_rxcdrlock_inst_n_3,
      sm_reset_rx_cdr_to_clr => sm_reset_rx_cdr_to_clr,
      sm_reset_rx_cdr_to_clr_reg => bit_synchronizer_rxcdrlock_inst_n_1,
      sm_reset_rx_cdr_to_sat => sm_reset_rx_cdr_to_sat,
      sm_reset_rx_timer_clr_reg => \FSM_sequential_sm_reset_rx[2]_i_4_n_0\,
      sm_reset_rx_timer_sat_reg => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
gtrxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_3,
      Q => \^gen_gtwizard_gtye4.gtrxreset_int\,
      R => '0'
    );
gttxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_tx_any_inst_n_2,
      Q => \gen_gtwizard_gtye4.gttxreset_int\,
      R => '0'
    );
\gtwiz_reset_qpll0reset_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      I1 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      O => gtwiz_reset_qpll0reset_out(0)
    );
gtwiz_reset_rx_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F740"
    )
        port map (
      I0 => sm_reset_all(2),
      I1 => sm_reset_all(0),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_rx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_rx_inst_n_1,
      Q => gtwiz_reset_rx_done_int_reg_n_0,
      R => gtwiz_reset_rx_any_sync
    );
gtwiz_reset_rx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_tx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_tx_inst_n_1,
      Q => gtwiz_reset_tx_done_int_reg_n_0,
      R => gtwiz_reset_tx_any_sync
    );
gtwiz_reset_tx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB02"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(2),
      I3 => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_tx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gttxreset_int\,
      I1 => gtpowergood_out(0),
      I2 => \gen_gtwizard_gtye4.gtpowergood_int\,
      O => \gen_gtwizard_gtye4.gttxreset_ch_int\
    );
pllreset_rx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      R => '0'
    );
pllreset_tx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      R => '0'
    );
reset_synchronizer_gtwiz_reset_all_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer
     port map (
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_all_sync => gtwiz_reset_all_sync,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0)
    );
reset_synchronizer_gtwiz_reset_rx_any_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      \gen_gtwizard_gtye4.gtrxreset_int\ => \^gen_gtwizard_gtye4.gtrxreset_int\,
      \gen_gtwizard_gtye4.rxprogdivreset_int\ => \^gen_gtwizard_gtye4.rxprogdivreset_int\,
      gtrxreset_out_reg => reset_synchronizer_gtwiz_reset_rx_any_inst_n_3,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_datapath_int_reg => gtwiz_reset_rx_datapath_int_reg_n_0,
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_int_reg => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      i_in_out_reg => bit_synchronizer_plllock_rx_inst_n_2,
      \out\(2 downto 0) => sm_reset_rx(2 downto 0),
      pllreset_rx_out_reg => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1,
      rxprogdivreset_out_reg => reset_synchronizer_gtwiz_reset_rx_any_inst_n_2,
      sm_reset_rx_cdr_to_sat_reg => bit_synchronizer_rxcdrlock_inst_n_3
    );
reset_synchronizer_gtwiz_reset_rx_datapath_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_datapath_int_reg => gtwiz_reset_rx_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_int_reg => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_any_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      \gen_gtwizard_gtye4.gttxreset_int\ => \gen_gtwizard_gtye4.gttxreset_int\,
      gttxreset_out_reg => reset_synchronizer_gtwiz_reset_tx_any_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_int_reg => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0),
      pllreset_tx_out_reg => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1,
      sm_reset_tx_timer_sat_reg => bit_synchronizer_plllock_tx_inst_n_3
    );
reset_synchronizer_gtwiz_reset_tx_datapath_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      in0 => gtwiz_reset_tx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_int_reg => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync
    );
reset_synchronizer_rx_done_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer
     port map (
      gtwiz_reset_rx_done_int_reg => gtwiz_reset_rx_done_int_reg_n_0,
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      rxusrclk2_in(0) => rxusrclk2_in(0)
    );
reset_synchronizer_tx_done_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18
     port map (
      gtwiz_reset_tx_done_int_reg => gtwiz_reset_tx_done_int_reg_n_0,
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      txusrclk2_in(0) => txusrclk2_in(0)
    );
reset_synchronizer_txprogdivreset_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19
     port map (
      \gen_gtwizard_gtye4.txprogdivreset_int\ => \gen_gtwizard_gtye4.txprogdivreset_int\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      rst_in0 => rst_in0
    );
rxprogdivreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_2,
      Q => \^gen_gtwizard_gtye4.rxprogdivreset_int\,
      R => '0'
    );
rxuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1,
      Q => \^gen_gtwizard_gtye4.rxuserrdy_int\,
      R => '0'
    );
sm_reset_all_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFA200A"
    )
        port map (
      I0 => sm_reset_all_timer_clr_i_2_n_0,
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(2),
      I3 => sm_reset_all(0),
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_clr_i_1_n_0
    );
sm_reset_all_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0003333BB33"
    )
        port map (
      I0 => gtwiz_reset_rx_done_int_reg_n_0,
      I1 => sm_reset_all(2),
      I2 => gtwiz_reset_tx_done_int_reg_n_0,
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      I5 => sm_reset_all(1),
      O => sm_reset_all_timer_clr_i_2_n_0
    );
sm_reset_all_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_clr_i_1_n_0,
      Q => sm_reset_all_timer_clr_reg_n_0,
      S => gtwiz_reset_all_sync
    );
\sm_reset_all_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_all_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      O => \sm_reset_all_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      I2 => sm_reset_all_timer_ctr(2),
      O => \sm_reset_all_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_all_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(0),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(1),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(2),
      R => sm_reset_all_timer_clr_reg_n_0
    );
sm_reset_all_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_sat_i_1_n_0
    );
sm_reset_all_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_sat_i_1_n_0,
      Q => sm_reset_all_timer_sat,
      R => '0'
    );
sm_reset_rx_cdr_to_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_rxcdrlock_inst_n_1,
      Q => sm_reset_rx_cdr_to_clr,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_cdr_to_ctr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(0),
      I1 => sm_reset_rx_cdr_to_ctr_reg(1),
      I2 => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\,
      I3 => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\,
      I4 => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\,
      I5 => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\,
      O => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(19),
      I1 => sm_reset_rx_cdr_to_ctr_reg(18),
      I2 => sm_reset_rx_cdr_to_ctr_reg(16),
      I3 => sm_reset_rx_cdr_to_ctr_reg(17),
      I4 => sm_reset_rx_cdr_to_ctr_reg(15),
      I5 => sm_reset_rx_cdr_to_ctr_reg(14),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(24),
      I1 => sm_reset_rx_cdr_to_ctr_reg(25),
      I2 => sm_reset_rx_cdr_to_ctr_reg(22),
      I3 => sm_reset_rx_cdr_to_ctr_reg(23),
      I4 => sm_reset_rx_cdr_to_ctr_reg(21),
      I5 => sm_reset_rx_cdr_to_ctr_reg(20),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(12),
      I1 => sm_reset_rx_cdr_to_ctr_reg(13),
      I2 => sm_reset_rx_cdr_to_ctr_reg(10),
      I3 => sm_reset_rx_cdr_to_ctr_reg(11),
      I4 => sm_reset_rx_cdr_to_ctr_reg(8),
      I5 => sm_reset_rx_cdr_to_ctr_reg(9),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(6),
      I1 => sm_reset_rx_cdr_to_ctr_reg(7),
      I2 => sm_reset_rx_cdr_to_ctr_reg(4),
      I3 => sm_reset_rx_cdr_to_ctr_reg(5),
      I4 => sm_reset_rx_cdr_to_ctr_reg(3),
      I5 => sm_reset_rx_cdr_to_ctr_reg(2),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(0),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(0),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      S(7 downto 1) => sm_reset_rx_cdr_to_ctr_reg(7 downto 1),
      S(0) => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(10),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(11),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(12),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(13),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(14),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(15),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(16),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      S(7 downto 0) => sm_reset_rx_cdr_to_ctr_reg(23 downto 16)
    );
\sm_reset_rx_cdr_to_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(17),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(18),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(19),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(1),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(20),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(21),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(22),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(23),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(24),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => sm_reset_rx_cdr_to_ctr_reg(25 downto 24)
    );
\sm_reset_rx_cdr_to_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(25),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(2),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(3),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(4),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(5),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(6),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(7),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(8),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\,
      CO(3) => \NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      S(7 downto 0) => sm_reset_rx_cdr_to_ctr_reg(15 downto 8)
    );
\sm_reset_rx_cdr_to_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(9),
      R => sm_reset_rx_cdr_to_clr
    );
sm_reset_rx_cdr_to_sat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => sm_reset_rx_cdr_to_sat_i_2_n_0,
      I2 => sm_reset_rx_cdr_to_clr,
      O => sm_reset_rx_cdr_to_sat_i_1_n_0
    );
sm_reset_rx_cdr_to_sat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat_i_3_n_0,
      I1 => sm_reset_rx_cdr_to_sat_i_4_n_0,
      I2 => sm_reset_rx_cdr_to_sat_i_5_n_0,
      I3 => sm_reset_rx_cdr_to_sat_i_6_n_0,
      I4 => sm_reset_rx_cdr_to_ctr_reg(0),
      I5 => sm_reset_rx_cdr_to_ctr_reg(1),
      O => sm_reset_rx_cdr_to_sat_i_2_n_0
    );
sm_reset_rx_cdr_to_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(4),
      I1 => sm_reset_rx_cdr_to_ctr_reg(5),
      I2 => sm_reset_rx_cdr_to_ctr_reg(2),
      I3 => sm_reset_rx_cdr_to_ctr_reg(3),
      I4 => sm_reset_rx_cdr_to_ctr_reg(7),
      I5 => sm_reset_rx_cdr_to_ctr_reg(6),
      O => sm_reset_rx_cdr_to_sat_i_3_n_0
    );
sm_reset_rx_cdr_to_sat_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(22),
      I1 => sm_reset_rx_cdr_to_ctr_reg(23),
      I2 => sm_reset_rx_cdr_to_ctr_reg(20),
      I3 => sm_reset_rx_cdr_to_ctr_reg(21),
      I4 => sm_reset_rx_cdr_to_ctr_reg(25),
      I5 => sm_reset_rx_cdr_to_ctr_reg(24),
      O => sm_reset_rx_cdr_to_sat_i_4_n_0
    );
sm_reset_rx_cdr_to_sat_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(16),
      I1 => sm_reset_rx_cdr_to_ctr_reg(17),
      I2 => sm_reset_rx_cdr_to_ctr_reg(14),
      I3 => sm_reset_rx_cdr_to_ctr_reg(15),
      I4 => sm_reset_rx_cdr_to_ctr_reg(18),
      I5 => sm_reset_rx_cdr_to_ctr_reg(19),
      O => sm_reset_rx_cdr_to_sat_i_5_n_0
    );
sm_reset_rx_cdr_to_sat_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(10),
      I1 => sm_reset_rx_cdr_to_ctr_reg(11),
      I2 => sm_reset_rx_cdr_to_ctr_reg(9),
      I3 => sm_reset_rx_cdr_to_ctr_reg(8),
      I4 => sm_reset_rx_cdr_to_ctr_reg(13),
      I5 => sm_reset_rx_cdr_to_ctr_reg(12),
      O => sm_reset_rx_cdr_to_sat_i_6_n_0
    );
sm_reset_rx_cdr_to_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_cdr_to_sat_i_1_n_0,
      Q => sm_reset_rx_cdr_to_sat,
      R => '0'
    );
sm_reset_rx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3000B"
    )
        port map (
      I0 => sm_reset_rx_pll_timer_sat,
      I1 => sm_reset_rx(0),
      I2 => sm_reset_rx(1),
      I3 => sm_reset_rx(2),
      I4 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_clr_i_1_n_0
    );
sm_reset_rx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_rx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\sm_reset_rx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\sm_reset_rx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      O => \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\sm_reset_rx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\sm_reset_rx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\sm_reset_rx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\sm_reset_rx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_rx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\,
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(6),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(7),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(8),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(9),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
sm_reset_rx_pll_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => sm_reset_rx_pll_timer_sat,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => sm_reset_rx_pll_timer_sat_i_2_n_0,
      I3 => sm_reset_rx_pll_timer_sat_i_3_n_0,
      I4 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_sat_i_1_n_0
    );
sm_reset_rx_pll_timer_sat_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => sm_reset_rx_pll_timer_sat_i_2_n_0
    );
sm_reset_rx_pll_timer_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      O => sm_reset_rx_pll_timer_sat_i_3_n_0
    );
sm_reset_rx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_rx_pll_timer_sat,
      R => '0'
    );
sm_reset_rx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      Q => sm_reset_rx_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_rx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      O => \sm_reset_rx_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      I2 => sm_reset_rx_timer_ctr(2),
      O => \sm_reset_rx_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(0),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(1),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(2),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
sm_reset_rx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      I3 => sm_reset_rx_timer_sat,
      I4 => sm_reset_rx_timer_clr_reg_n_0,
      O => sm_reset_rx_timer_sat_i_1_n_0
    );
sm_reset_rx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_timer_sat_i_1_n_0,
      Q => sm_reset_rx_timer_sat,
      R => '0'
    );
sm_reset_tx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5000D"
    )
        port map (
      I0 => sm_reset_tx(0),
      I1 => sm_reset_tx_pll_timer_sat,
      I2 => sm_reset_tx(1),
      I3 => sm_reset_tx(2),
      I4 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_clr_i_1_n_0
    );
sm_reset_tx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_tx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\sm_reset_tx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\sm_reset_tx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      O => \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sm_reset_tx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sm_reset_tx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\sm_reset_tx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\sm_reset_tx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_tx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_tx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\,
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
sm_reset_tx_pll_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => sm_reset_tx_pll_timer_sat,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => sm_reset_tx_pll_timer_sat_i_2_n_0,
      I3 => sm_reset_tx_pll_timer_sat_i_3_n_0,
      I4 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_sat_i_1_n_0
    );
sm_reset_tx_pll_timer_sat_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => sm_reset_tx_pll_timer_sat_i_2_n_0
    );
sm_reset_tx_pll_timer_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      O => sm_reset_tx_pll_timer_sat_i_3_n_0
    );
sm_reset_tx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_tx_pll_timer_sat,
      R => '0'
    );
sm_reset_tx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      Q => sm_reset_tx_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      O => p_0_in
    );
\sm_reset_tx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      O => p_1_in(0)
    );
\sm_reset_tx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      O => p_1_in(1)
    );
\sm_reset_tx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      I2 => sm_reset_tx_timer_ctr(2),
      O => p_1_in(2)
    );
\sm_reset_tx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(0),
      Q => sm_reset_tx_timer_ctr(0),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(1),
      Q => sm_reset_tx_timer_ctr(1),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(2),
      Q => sm_reset_tx_timer_ctr(2),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
sm_reset_tx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      I3 => sm_reset_tx_timer_sat,
      I4 => sm_reset_tx_timer_clr_reg_n_0,
      O => sm_reset_tx_timer_sat_i_1_n_0
    );
sm_reset_tx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_timer_sat_i_1_n_0,
      Q => sm_reset_tx_timer_sat,
      R => '0'
    );
txuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1,
      Q => \^gen_gtwizard_gtye4.txuserrdy_int\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_gt_gtye4_channel_wrapper is
  port (
    bufgtce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtpowergood_int\ : out STD_LOGIC;
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : out STD_LOGIC;
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gtrxreset_int\ : in STD_LOGIC;
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.gttxreset_ch_int\ : in STD_LOGIC;
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.rxprogdivreset_int\ : in STD_LOGIC;
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.rxuserrdy_int\ : in STD_LOGIC;
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_powergood_delay.pwr_on_fsm_reg\ : in STD_LOGIC;
    \gen_gtwizard_gtye4.txpmareset_ch_int\ : in STD_LOGIC;
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txprogdivreset_int\ : in STD_LOGIC;
    \gen_powergood_delay.pwr_on_fsm_reg_0\ : in STD_LOGIC;
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_gtwizard_gtye4.txuserrdy_int\ : in STD_LOGIC;
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXRATE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_gt_gtye4_channel_wrapper : entity is "interlaken_0_gt_gtye4_channel_wrapper";
end interlaken_0_interlaken_0_gt_gtye4_channel_wrapper;

architecture STRUCTURE of interlaken_0_interlaken_0_gt_gtye4_channel_wrapper is
begin
channel_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_channel
     port map (
      TXRATE(2 downto 0) => TXRATE(2 downto 0),
      bufgtce_out(0) => bufgtce_out(0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(0) => bufgtreset_out(0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cdrstepdir_in(0) => cdrstepdir_in(0),
      cdrstepsq_in(0) => cdrstepsq_in(0),
      cdrstepsx_in(0) => cdrstepsx_in(0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cpllfreqlock_in(0) => cpllfreqlock_in(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      dmonitoroutclk_out(0) => dmonitoroutclk_out(0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drprst_in(0) => drprst_in(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      freqos_in(0) => freqos_in(0),
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gtrxreset_int\ => \gen_gtwizard_gtye4.gtrxreset_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.rxprogdivreset_int\ => \gen_gtwizard_gtye4.rxprogdivreset_int\,
      \gen_gtwizard_gtye4.rxuserrdy_int\ => \gen_gtwizard_gtye4.rxuserrdy_int\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      \gen_gtwizard_gtye4.txprogdivreset_int\ => \gen_gtwizard_gtye4.txprogdivreset_int\,
      \gen_gtwizard_gtye4.txuserrdy_int\ => \gen_gtwizard_gtye4.txuserrdy_int\,
      \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ => \gen_powergood_delay.intclk_rrst_n_r_reg[0]\,
      \gen_powergood_delay.pwr_on_fsm_reg\ => \gen_powergood_delay.pwr_on_fsm_reg\,
      \gen_powergood_delay.pwr_on_fsm_reg_0\ => \gen_powergood_delay.pwr_on_fsm_reg_0\,
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtrxresetsel_in(0) => gtrxresetsel_in(0),
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gttxresetsel_in(0) => gttxresetsel_in(0),
      gtwiz_userdata_tx_in(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      incpctrl_in(0) => incpctrl_in(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(15 downto 0) => pcsrsvdout_out(15 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(15 downto 0) => pinrsrvdas_out(15 downto 0),
      powerpresent_out(0) => powerpresent_out(0),
      qpll0freqlock_in(0) => qpll0freqlock_in(0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll1freqlock_in(0) => qpll1freqlock_in(0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxafecfoken_in(0) => rxafecfoken_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxckcaldone_out(0) => rxckcaldone_out(0),
      rxckcalreset_in(0) => rxckcalreset_in(0),
      rxckcalstart_in(6 downto 0) => rxckcalstart_in(6 downto 0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfecfokfcnum_in(3 downto 0) => rxdfecfokfcnum_in(3 downto 0),
      rxdfecfokfen_in(0) => rxdfecfokfen_in(0),
      rxdfecfokfpulse_in(0) => rxdfecfokfpulse_in(0),
      rxdfecfokhold_in(0) => rxdfecfokhold_in(0),
      rxdfecfokovren_in(0) => rxdfecfokovren_in(0),
      rxdfekhhold_in(0) => rxdfekhhold_in(0),
      rxdfekhovrden_in(0) => rxdfekhovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxeqtraining_in(0) => rxeqtraining_in(0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlfpstresetdet_out(0) => rxlfpstresetdet_out(0),
      rxlfpsu2lpexitdet_out(0) => rxlfpsu2lpexitdet_out(0),
      rxlfpsu3wakedet_out(0) => rxlfpsu3wakedet_out(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(7 downto 0) => rxmonitorout_out(7 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxtermination_in(0) => rxtermination_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tstin_in(19 downto 0) => tstin_in(19 downto 0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdccdone_out(0) => txdccdone_out(0),
      txdccforcestart_in(0) => txdccforcestart_in(0),
      txdccreset_in(0) => txdccreset_in(0),
      txdeemph_in(1 downto 0) => txdeemph_in(1 downto 0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txlfpstreset_in(0) => txlfpstreset_in(0),
      txlfpsu2lpexit_in(0) => txlfpsu2lpexit_in(0),
      txlfpsu3wake_in(0) => txlfpsu3wake_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txmuxdcdexhold_in(0) => txmuxdcdexhold_in(0),
      txmuxdcdorwren_in(0) => txmuxdcdorwren_in(0),
      txoneszeros_in(0) => txoneszeros_in(0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txratedone_out(0) => txratedone_out(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_gt_gtye4_common_wrapper is
  port (
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_in0 : out STD_LOGIC;
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_gt_gtye4_common_wrapper : entity is "interlaken_0_gt_gtye4_common_wrapper";
end interlaken_0_interlaken_0_gt_gtye4_common_wrapper;

architecture STRUCTURE of interlaken_0_interlaken_0_gt_gtye4_common_wrapper is
begin
common_inst: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_common
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drpwe_common_in(0) => drpwe_common_in(0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0lock_out(0) => qpll0lock_out(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => qpll1reset_in(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      rst_in0 => rst_in0,
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_gt_gtwizard_gtye4 is
  port (
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_gt_gtwizard_gtye4 : entity is "interlaken_0_gt_gtwizard_gtye4";
end interlaken_0_interlaken_0_gt_gtwizard_gtye4;

architecture STRUCTURE of interlaken_0_interlaken_0_gt_gtwizard_gtye4 is
  signal \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gtpowergood_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gtrxreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gttxreset_ch_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.rxprogdivreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.rxuserrdy_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.txpmareset_ch_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.txprogdivreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.txrate_ch_int\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \gen_gtwizard_gtye4.txuserrdy_int\ : STD_LOGIC;
  signal \^gtpowergood_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_reset_qpll0reset_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll0lock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll0outclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll0outrefclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1outclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1outrefclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_in0 : STD_LOGIC;
  signal \^rxcdrlock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rxresetdone_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^txoutclkpcs_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^txresetdone_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  gtpowergood_out(0) <= \^gtpowergood_out\(0);
  gtwiz_reset_qpll0reset_out(0) <= \^gtwiz_reset_qpll0reset_out\(0);
  qpll0lock_out(0) <= \^qpll0lock_out\(0);
  qpll0outclk_out(0) <= \^qpll0outclk_out\(0);
  qpll0outrefclk_out(0) <= \^qpll0outrefclk_out\(0);
  qpll1outclk_out(0) <= \^qpll1outclk_out\(0);
  qpll1outrefclk_out(0) <= \^qpll1outrefclk_out\(0);
  rxcdrlock_out(0) <= \^rxcdrlock_out\(0);
  rxresetdone_out(0) <= \^rxresetdone_out\(0);
  txoutclkpcs_out(0) <= \^txoutclkpcs_out\(0);
  txresetdone_out(0) <= \^txresetdone_out\(0);
\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst\: entity work.interlaken_0_interlaken_0_gt_gtye4_channel_wrapper
     port map (
      TXRATE(2 downto 1) => \gen_gtwizard_gtye4.txrate_ch_int\(2 downto 1),
      TXRATE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\,
      bufgtce_out(0) => bufgtce_out(0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(0) => bufgtreset_out(0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cdrstepdir_in(0) => cdrstepdir_in(0),
      cdrstepsq_in(0) => cdrstepsq_in(0),
      cdrstepsx_in(0) => cdrstepsx_in(0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cpllfreqlock_in(0) => cpllfreqlock_in(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      dmonitoroutclk_out(0) => dmonitoroutclk_out(0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in(0) => drpen_in(0),
      drprdy_out(0) => drprdy_out(0),
      drprst_in(0) => drprst_in(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      freqos_in(0) => freqos_in(0),
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gtrxreset_int\ => \gen_gtwizard_gtye4.gtrxreset_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.rxprogdivreset_int\ => \gen_gtwizard_gtye4.rxprogdivreset_int\,
      \gen_gtwizard_gtye4.rxuserrdy_int\ => \gen_gtwizard_gtye4.rxuserrdy_int\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      \gen_gtwizard_gtye4.txprogdivreset_int\ => \gen_gtwizard_gtye4.txprogdivreset_int\,
      \gen_gtwizard_gtye4.txuserrdy_int\ => \gen_gtwizard_gtye4.txuserrdy_int\,
      \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ => \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377\,
      \gen_powergood_delay.pwr_on_fsm_reg\ => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\,
      \gen_powergood_delay.pwr_on_fsm_reg_0\ => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\,
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtrxresetsel_in(0) => gtrxresetsel_in(0),
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gttxresetsel_in(0) => gttxresetsel_in(0),
      gtwiz_userdata_tx_in(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      incpctrl_in(0) => incpctrl_in(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(15 downto 0) => pcsrsvdout_out(15 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(15 downto 0) => pinrsrvdas_out(15 downto 0),
      powerpresent_out(0) => powerpresent_out(0),
      qpll0freqlock_in(0) => qpll0freqlock_in(0),
      qpll0outclk_out(0) => \^qpll0outclk_out\(0),
      qpll0outrefclk_out(0) => \^qpll0outrefclk_out\(0),
      qpll1freqlock_in(0) => qpll1freqlock_in(0),
      qpll1outclk_out(0) => \^qpll1outclk_out\(0),
      qpll1outrefclk_out(0) => \^qpll1outrefclk_out\(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxafecfoken_in(0) => rxafecfoken_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => \^rxcdrlock_out\(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxckcaldone_out(0) => rxckcaldone_out(0),
      rxckcalreset_in(0) => rxckcalreset_in(0),
      rxckcalstart_in(6 downto 0) => rxckcalstart_in(6 downto 0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => rxdata_out(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfecfokfcnum_in(3 downto 0) => rxdfecfokfcnum_in(3 downto 0),
      rxdfecfokfen_in(0) => rxdfecfokfen_in(0),
      rxdfecfokfpulse_in(0) => rxdfecfokfpulse_in(0),
      rxdfecfokhold_in(0) => rxdfecfokhold_in(0),
      rxdfecfokovren_in(0) => rxdfecfokovren_in(0),
      rxdfekhhold_in(0) => rxdfekhhold_in(0),
      rxdfekhovrden_in(0) => rxdfekhovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxeqtraining_in(0) => rxeqtraining_in(0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlfpstresetdet_out(0) => rxlfpstresetdet_out(0),
      rxlfpsu2lpexitdet_out(0) => rxlfpsu2lpexitdet_out(0),
      rxlfpsu3wakedet_out(0) => rxlfpsu3wakedet_out(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(7 downto 0) => rxmonitorout_out(7 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => \^rxresetdone_out\(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxtermination_in(0) => rxtermination_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tstin_in(19 downto 0) => tstin_in(19 downto 0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdccdone_out(0) => txdccdone_out(0),
      txdccforcestart_in(0) => txdccforcestart_in(0),
      txdccreset_in(0) => txdccreset_in(0),
      txdeemph_in(1 downto 0) => txdeemph_in(1 downto 0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txlfpstreset_in(0) => txlfpstreset_in(0),
      txlfpsu2lpexit_in(0) => txlfpsu2lpexit_in(0),
      txlfpsu3wake_in(0) => txlfpsu3wake_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txmuxdcdexhold_in(0) => txmuxdcdexhold_in(0),
      txmuxdcdorwren_in(0) => txmuxdcdorwren_in(0),
      txoneszeros_in(0) => txoneszeros_in(0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => \^txoutclkpcs_out\(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txratedone_out(0) => txratedone_out(0),
      txresetdone_out(0) => \^txresetdone_out\(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0)
    );
\gen_gtwizard_gtye4.gen_common.gen_common_container[36].gen_enabled_common.gtye4_common_wrapper_inst\: entity work.interlaken_0_interlaken_0_gt_gtye4_common_wrapper
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drpwe_common_in(0) => drpwe_common_in(0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtwiz_reset_qpll0reset_out(0) => \^gtwiz_reset_qpll0reset_out\(0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0lock_out(0) => \^qpll0lock_out\(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => \^qpll0outclk_out\(0),
      qpll0outrefclk_out(0) => \^qpll0outrefclk_out\(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => \^qpll1outclk_out\(0),
      qpll1outrefclk_out(0) => \^qpll1outrefclk_out\(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => qpll1reset_in(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      rst_in0 => rst_in0,
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst\: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood
     port map (
      CLK => \^txoutclkpcs_out\(0),
      TXRATE(2 downto 1) => \gen_gtwizard_gtye4.txrate_ch_int\(2 downto 1),
      TXRATE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\,
      \gen_gtwizard_gtye4.txpmareset_ch_int\ => \gen_gtwizard_gtye4.txpmareset_ch_int\,
      gtrxreset_out_reg => \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377\,
      i_in_meta_reg => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\,
      i_in_meta_reg_0 => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\,
      \out\ => \^gtpowergood_out\(0),
      txpisopd_in(0) => txpisopd_in(0),
      txpmareset_in(0) => txpmareset_in(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratemode_in(0) => txratemode_in(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst\: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      rxresetdone_out(0) => \^rxresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst\: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      txresetdone_out(0) => \^txresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst\: entity work.interlaken_0_gtwizard_ultrascale_v1_7_3_gtwiz_reset
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      \gen_gtwizard_gtye4.gtpowergood_int\ => \gen_gtwizard_gtye4.gtpowergood_int\,
      \gen_gtwizard_gtye4.gtrxreset_int\ => \gen_gtwizard_gtye4.gtrxreset_int\,
      \gen_gtwizard_gtye4.gttxreset_ch_int\ => \gen_gtwizard_gtye4.gttxreset_ch_int\,
      \gen_gtwizard_gtye4.rxprogdivreset_int\ => \gen_gtwizard_gtye4.rxprogdivreset_int\,
      \gen_gtwizard_gtye4.rxuserrdy_int\ => \gen_gtwizard_gtye4.rxuserrdy_int\,
      \gen_gtwizard_gtye4.txprogdivreset_int\ => \gen_gtwizard_gtye4.txprogdivreset_int\,
      \gen_gtwizard_gtye4.txuserrdy_int\ => \gen_gtwizard_gtye4.txuserrdy_int\,
      gtpowergood_out(0) => \^gtpowergood_out\(0),
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0reset_out(0) => \^gtwiz_reset_qpll0reset_out\(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      qpll0lock_out(0) => \^qpll0lock_out\(0),
      rst_in0 => rst_in0,
      rxcdrlock_out(0) => \^rxcdrlock_out\(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      txusrclk2_in(0) => txusrclk2_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_gt_gtwizard_top is
  port (
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe3_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe3_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gthe4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gtye4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_gtye4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tcongpi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconpowerup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdin1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk1_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    tcongpo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdout0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcaldvorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcalpaorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    looprsvd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txelforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 144;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 144;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of interlaken_0_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_gt_gtwizard_top : entity is "interlaken_0_gt_gtwizard_top";
end interlaken_0_interlaken_0_gt_gtwizard_top;

architecture STRUCTURE of interlaken_0_interlaken_0_gt_gtwizard_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^gtwiz_userclk_rx_active_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_tx_active_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1reset_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rxdata_out\ : STD_LOGIC_VECTOR ( 127 downto 0 );
begin
  \^gtwiz_userclk_rx_active_in\(0) <= gtwiz_userclk_rx_active_in(0);
  \^gtwiz_userclk_tx_active_in\(0) <= gtwiz_userclk_tx_active_in(0);
  \^qpll1reset_in\(0) <= qpll1reset_in(0);
  gthtxn_out(0) <= \<const0>\;
  gthtxp_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_error_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_error_out(0) <= \<const0>\;
  gtwiz_reset_qpll1reset_out(0) <= \^qpll1reset_in\(0);
  gtwiz_userclk_rx_active_out(0) <= \^gtwiz_userclk_rx_active_in\(0);
  gtwiz_userclk_rx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_rx_usrclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_active_out(0) <= \^gtwiz_userclk_tx_active_in\(0);
  gtwiz_userclk_tx_srcclk_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk2_out(0) <= \<const0>\;
  gtwiz_userclk_tx_usrclk_out(0) <= \<const0>\;
  gtwiz_userdata_rx_out(63 downto 0) <= \^rxdata_out\(63 downto 0);
  rxdata_out(127 downto 0) <= \^rxdata_out\(127 downto 0);
  rxqpisenn_out(0) <= \<const0>\;
  rxqpisenp_out(0) <= \<const0>\;
  rxrecclk0_sel_out(0) <= \<const0>\;
  rxrecclk1_sel_out(0) <= \<const0>\;
  tcongpo_out(0) <= \<const0>\;
  tconrsvdout0_out(0) <= \<const0>\;
  txqpisenn_out(0) <= \<const0>\;
  txqpisenp_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_gtwizard_gtye4_top.interlaken_0_gt_gtwizard_gtye4_inst\: entity work.interlaken_0_interlaken_0_gt_gtwizard_gtye4
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      bufgtce_out(0) => bufgtce_out(0),
      bufgtcemask_out(2 downto 0) => bufgtcemask_out(2 downto 0),
      bufgtdiv_out(8 downto 0) => bufgtdiv_out(8 downto 0),
      bufgtreset_out(0) => bufgtreset_out(0),
      bufgtrstmask_out(2 downto 0) => bufgtrstmask_out(2 downto 0),
      cdrstepdir_in(0) => cdrstepdir_in(0),
      cdrstepsq_in(0) => cdrstepsq_in(0),
      cdrstepsx_in(0) => cdrstepsx_in(0),
      cfgreset_in(0) => cfgreset_in(0),
      clkrsvd0_in(0) => clkrsvd0_in(0),
      clkrsvd1_in(0) => clkrsvd1_in(0),
      cpllfbclklost_out(0) => cpllfbclklost_out(0),
      cpllfreqlock_in(0) => cpllfreqlock_in(0),
      cplllock_out(0) => cplllock_out(0),
      cplllockdetclk_in(0) => cplllockdetclk_in(0),
      cplllocken_in(0) => cplllocken_in(0),
      cpllpd_in(0) => cpllpd_in(0),
      cpllrefclklost_out(0) => cpllrefclklost_out(0),
      cpllrefclksel_in(2 downto 0) => cpllrefclksel_in(2 downto 0),
      cpllreset_in(0) => cpllreset_in(0),
      dmonfiforeset_in(0) => dmonfiforeset_in(0),
      dmonitorclk_in(0) => dmonitorclk_in(0),
      dmonitorout_out(15 downto 0) => dmonitorout_out(15 downto 0),
      dmonitoroutclk_out(0) => dmonitoroutclk_out(0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpaddr_in(9 downto 0) => drpaddr_in(9 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpclk_in(0) => drpclk_in(0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drpen_in(0) => drpen_in(0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drprdy_out(0) => drprdy_out(0),
      drprst_in(0) => drprst_in(0),
      drpwe_common_in(0) => drpwe_common_in(0),
      drpwe_in(0) => drpwe_in(0),
      eyescandataerror_out(0) => eyescandataerror_out(0),
      eyescanreset_in(0) => eyescanreset_in(0),
      eyescantrigger_in(0) => eyescantrigger_in(0),
      freqos_in(0) => freqos_in(0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtgrefclk_in(0) => gtgrefclk_in(0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk0_in(0) => gtnorthrefclk0_in(0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtnorthrefclk1_in(0) => gtnorthrefclk1_in(0),
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk0_in(0) => gtrefclk0_in(0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtrefclk1_in(0) => gtrefclk1_in(0),
      gtrefclkmonitor_out(0) => gtrefclkmonitor_out(0),
      gtrsvd_in(15 downto 0) => gtrsvd_in(15 downto 0),
      gtrxresetsel_in(0) => gtrxresetsel_in(0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk0_in(0) => gtsouthrefclk0_in(0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtsouthrefclk1_in(0) => gtsouthrefclk1_in(0),
      gttxresetsel_in(0) => gttxresetsel_in(0),
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => \^gtwiz_userclk_rx_active_in\(0),
      gtwiz_userclk_tx_active_in(0) => \^gtwiz_userclk_tx_active_in\(0),
      gtwiz_userdata_tx_in(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      incpctrl_in(0) => incpctrl_in(0),
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      pcieeqrxeqadaptdone_in(0) => pcieeqrxeqadaptdone_in(0),
      pcierategen3_out(0) => pcierategen3_out(0),
      pcierateidle_out(0) => pcierateidle_out(0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pcierateqpllpd_out(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      pcierstidle_in(0) => pcierstidle_in(0),
      pciersttxsyncstart_in(0) => pciersttxsyncstart_in(0),
      pciesynctxsyncdone_out(0) => pciesynctxsyncdone_out(0),
      pcieusergen3rdy_out(0) => pcieusergen3rdy_out(0),
      pcieuserphystatusrst_out(0) => pcieuserphystatusrst_out(0),
      pcieuserratedone_in(0) => pcieuserratedone_in(0),
      pcieuserratestart_out(0) => pcieuserratestart_out(0),
      pcsrsvdin_in(15 downto 0) => pcsrsvdin_in(15 downto 0),
      pcsrsvdout_out(15 downto 0) => pcsrsvdout_out(15 downto 0),
      phystatus_out(0) => phystatus_out(0),
      pinrsrvdas_out(15 downto 0) => pinrsrvdas_out(15 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      powerpresent_out(0) => powerpresent_out(0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0freqlock_in(0) => qpll0freqlock_in(0),
      qpll0lock_out(0) => qpll0lock_out(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1freqlock_in(0) => qpll1freqlock_in(0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => \^qpll1reset_in\(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      resetexception_out(0) => resetexception_out(0),
      resetovrd_in(0) => resetovrd_in(0),
      rx8b10ben_in(0) => rx8b10ben_in(0),
      rxafecfoken_in(0) => rxafecfoken_in(0),
      rxbufreset_in(0) => rxbufreset_in(0),
      rxbufstatus_out(2 downto 0) => rxbufstatus_out(2 downto 0),
      rxbyteisaligned_out(0) => rxbyteisaligned_out(0),
      rxbyterealign_out(0) => rxbyterealign_out(0),
      rxcdrfreqreset_in(0) => rxcdrfreqreset_in(0),
      rxcdrhold_in(0) => rxcdrhold_in(0),
      rxcdrlock_out(0) => rxcdrlock_out(0),
      rxcdrovrden_in(0) => rxcdrovrden_in(0),
      rxcdrphdone_out(0) => rxcdrphdone_out(0),
      rxcdrreset_in(0) => rxcdrreset_in(0),
      rxchanbondseq_out(0) => rxchanbondseq_out(0),
      rxchanisaligned_out(0) => rxchanisaligned_out(0),
      rxchanrealign_out(0) => rxchanrealign_out(0),
      rxchbonden_in(0) => rxchbonden_in(0),
      rxchbondi_in(4 downto 0) => rxchbondi_in(4 downto 0),
      rxchbondlevel_in(2 downto 0) => rxchbondlevel_in(2 downto 0),
      rxchbondmaster_in(0) => rxchbondmaster_in(0),
      rxchbondo_out(4 downto 0) => rxchbondo_out(4 downto 0),
      rxchbondslave_in(0) => rxchbondslave_in(0),
      rxckcaldone_out(0) => rxckcaldone_out(0),
      rxckcalreset_in(0) => rxckcalreset_in(0),
      rxckcalstart_in(6 downto 0) => rxckcalstart_in(6 downto 0),
      rxclkcorcnt_out(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      rxcominitdet_out(0) => rxcominitdet_out(0),
      rxcommadet_out(0) => rxcommadet_out(0),
      rxcommadeten_in(0) => rxcommadeten_in(0),
      rxcomsasdet_out(0) => rxcomsasdet_out(0),
      rxcomwakedet_out(0) => rxcomwakedet_out(0),
      rxctrl0_out(15 downto 0) => rxctrl0_out(15 downto 0),
      rxctrl1_out(15 downto 0) => rxctrl1_out(15 downto 0),
      rxctrl2_out(7 downto 0) => rxctrl2_out(7 downto 0),
      rxctrl3_out(7 downto 0) => rxctrl3_out(7 downto 0),
      rxdata_out(127 downto 0) => \^rxdata_out\(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      rxdatavalid_out(1 downto 0) => rxdatavalid_out(1 downto 0),
      rxdfeagchold_in(0) => rxdfeagchold_in(0),
      rxdfeagcovrden_in(0) => rxdfeagcovrden_in(0),
      rxdfecfokfcnum_in(3 downto 0) => rxdfecfokfcnum_in(3 downto 0),
      rxdfecfokfen_in(0) => rxdfecfokfen_in(0),
      rxdfecfokfpulse_in(0) => rxdfecfokfpulse_in(0),
      rxdfecfokhold_in(0) => rxdfecfokhold_in(0),
      rxdfecfokovren_in(0) => rxdfecfokovren_in(0),
      rxdfekhhold_in(0) => rxdfekhhold_in(0),
      rxdfekhovrden_in(0) => rxdfekhovrden_in(0),
      rxdfelfhold_in(0) => rxdfelfhold_in(0),
      rxdfelfovrden_in(0) => rxdfelfovrden_in(0),
      rxdfelpmreset_in(0) => rxdfelpmreset_in(0),
      rxdfetap10hold_in(0) => rxdfetap10hold_in(0),
      rxdfetap10ovrden_in(0) => rxdfetap10ovrden_in(0),
      rxdfetap11hold_in(0) => rxdfetap11hold_in(0),
      rxdfetap11ovrden_in(0) => rxdfetap11ovrden_in(0),
      rxdfetap12hold_in(0) => rxdfetap12hold_in(0),
      rxdfetap12ovrden_in(0) => rxdfetap12ovrden_in(0),
      rxdfetap13hold_in(0) => rxdfetap13hold_in(0),
      rxdfetap13ovrden_in(0) => rxdfetap13ovrden_in(0),
      rxdfetap14hold_in(0) => rxdfetap14hold_in(0),
      rxdfetap14ovrden_in(0) => rxdfetap14ovrden_in(0),
      rxdfetap15hold_in(0) => rxdfetap15hold_in(0),
      rxdfetap15ovrden_in(0) => rxdfetap15ovrden_in(0),
      rxdfetap2hold_in(0) => rxdfetap2hold_in(0),
      rxdfetap2ovrden_in(0) => rxdfetap2ovrden_in(0),
      rxdfetap3hold_in(0) => rxdfetap3hold_in(0),
      rxdfetap3ovrden_in(0) => rxdfetap3ovrden_in(0),
      rxdfetap4hold_in(0) => rxdfetap4hold_in(0),
      rxdfetap4ovrden_in(0) => rxdfetap4ovrden_in(0),
      rxdfetap5hold_in(0) => rxdfetap5hold_in(0),
      rxdfetap5ovrden_in(0) => rxdfetap5ovrden_in(0),
      rxdfetap6hold_in(0) => rxdfetap6hold_in(0),
      rxdfetap6ovrden_in(0) => rxdfetap6ovrden_in(0),
      rxdfetap7hold_in(0) => rxdfetap7hold_in(0),
      rxdfetap7ovrden_in(0) => rxdfetap7ovrden_in(0),
      rxdfetap8hold_in(0) => rxdfetap8hold_in(0),
      rxdfetap8ovrden_in(0) => rxdfetap8ovrden_in(0),
      rxdfetap9hold_in(0) => rxdfetap9hold_in(0),
      rxdfetap9ovrden_in(0) => rxdfetap9ovrden_in(0),
      rxdfeuthold_in(0) => rxdfeuthold_in(0),
      rxdfeutovrden_in(0) => rxdfeutovrden_in(0),
      rxdfevphold_in(0) => rxdfevphold_in(0),
      rxdfevpovrden_in(0) => rxdfevpovrden_in(0),
      rxdfexyden_in(0) => rxdfexyden_in(0),
      rxdlybypass_in(0) => rxdlybypass_in(0),
      rxdlyen_in(0) => rxdlyen_in(0),
      rxdlyovrden_in(0) => rxdlyovrden_in(0),
      rxdlysreset_in(0) => rxdlysreset_in(0),
      rxdlysresetdone_out(0) => rxdlysresetdone_out(0),
      rxelecidle_out(0) => rxelecidle_out(0),
      rxelecidlemode_in(1 downto 0) => rxelecidlemode_in(1 downto 0),
      rxeqtraining_in(0) => rxeqtraining_in(0),
      rxgearboxslip_in(0) => rxgearboxslip_in(0),
      rxheader_out(5 downto 0) => rxheader_out(5 downto 0),
      rxheadervalid_out(1 downto 0) => rxheadervalid_out(1 downto 0),
      rxlatclk_in(0) => rxlatclk_in(0),
      rxlfpstresetdet_out(0) => rxlfpstresetdet_out(0),
      rxlfpsu2lpexitdet_out(0) => rxlfpsu2lpexitdet_out(0),
      rxlfpsu3wakedet_out(0) => rxlfpsu3wakedet_out(0),
      rxlpmen_in(0) => rxlpmen_in(0),
      rxlpmgchold_in(0) => rxlpmgchold_in(0),
      rxlpmgcovrden_in(0) => rxlpmgcovrden_in(0),
      rxlpmhfhold_in(0) => rxlpmhfhold_in(0),
      rxlpmhfovrden_in(0) => rxlpmhfovrden_in(0),
      rxlpmlfhold_in(0) => rxlpmlfhold_in(0),
      rxlpmlfklovrden_in(0) => rxlpmlfklovrden_in(0),
      rxlpmoshold_in(0) => rxlpmoshold_in(0),
      rxlpmosovrden_in(0) => rxlpmosovrden_in(0),
      rxmcommaalignen_in(0) => rxmcommaalignen_in(0),
      rxmonitorout_out(7 downto 0) => rxmonitorout_out(7 downto 0),
      rxmonitorsel_in(1 downto 0) => rxmonitorsel_in(1 downto 0),
      rxoobreset_in(0) => rxoobreset_in(0),
      rxoscalreset_in(0) => rxoscalreset_in(0),
      rxoshold_in(0) => rxoshold_in(0),
      rxosintdone_out(0) => rxosintdone_out(0),
      rxosintstarted_out(0) => rxosintstarted_out(0),
      rxosintstrobedone_out(0) => rxosintstrobedone_out(0),
      rxosintstrobestarted_out(0) => rxosintstrobestarted_out(0),
      rxosovrden_in(0) => rxosovrden_in(0),
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => rxoutclkfabric_out(0),
      rxoutclkpcs_out(0) => rxoutclkpcs_out(0),
      rxoutclksel_in(2 downto 0) => rxoutclksel_in(2 downto 0),
      rxpcommaalignen_in(0) => rxpcommaalignen_in(0),
      rxpcsreset_in(0) => rxpcsreset_in(0),
      rxpd_in(1 downto 0) => rxpd_in(1 downto 0),
      rxphalign_in(0) => rxphalign_in(0),
      rxphaligndone_out(0) => rxphaligndone_out(0),
      rxphalignen_in(0) => rxphalignen_in(0),
      rxphalignerr_out(0) => rxphalignerr_out(0),
      rxphdlypd_in(0) => rxphdlypd_in(0),
      rxphdlyreset_in(0) => rxphdlyreset_in(0),
      rxpllclksel_in(1 downto 0) => rxpllclksel_in(1 downto 0),
      rxpmareset_in(0) => rxpmareset_in(0),
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => rxpolarity_in(0),
      rxprbscntreset_in(0) => rxprbscntreset_in(0),
      rxprbserr_out(0) => rxprbserr_out(0),
      rxprbslocked_out(0) => rxprbslocked_out(0),
      rxprbssel_in(3 downto 0) => rxprbssel_in(3 downto 0),
      rxprgdivresetdone_out(0) => rxprgdivresetdone_out(0),
      rxrate_in(2 downto 0) => rxrate_in(2 downto 0),
      rxratedone_out(0) => rxratedone_out(0),
      rxratemode_in(0) => rxratemode_in(0),
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      rxrecclkout_out(0) => rxrecclkout_out(0),
      rxresetdone_out(0) => rxresetdone_out(0),
      rxslide_in(0) => rxslide_in(0),
      rxsliderdy_out(0) => rxsliderdy_out(0),
      rxslipdone_out(0) => rxslipdone_out(0),
      rxslipoutclk_in(0) => rxslipoutclk_in(0),
      rxslipoutclkrdy_out(0) => rxslipoutclkrdy_out(0),
      rxslippma_in(0) => rxslippma_in(0),
      rxslippmardy_out(0) => rxslippmardy_out(0),
      rxstartofseq_out(1 downto 0) => rxstartofseq_out(1 downto 0),
      rxstatus_out(2 downto 0) => rxstatus_out(2 downto 0),
      rxsyncallin_in(0) => rxsyncallin_in(0),
      rxsyncdone_out(0) => rxsyncdone_out(0),
      rxsyncin_in(0) => rxsyncin_in(0),
      rxsyncmode_in(0) => rxsyncmode_in(0),
      rxsyncout_out(0) => rxsyncout_out(0),
      rxsysclksel_in(1 downto 0) => rxsysclksel_in(1 downto 0),
      rxtermination_in(0) => rxtermination_in(0),
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => rxvalid_out(0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      sigvalidclk_in(0) => sigvalidclk_in(0),
      tstin_in(19 downto 0) => tstin_in(19 downto 0),
      tx8b10bbypass_in(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      tx8b10ben_in(0) => tx8b10ben_in(0),
      txbufstatus_out(1 downto 0) => txbufstatus_out(1 downto 0),
      txcomfinish_out(0) => txcomfinish_out(0),
      txcominit_in(0) => txcominit_in(0),
      txcomsas_in(0) => txcomsas_in(0),
      txcomwake_in(0) => txcomwake_in(0),
      txctrl0_in(15 downto 0) => txctrl0_in(15 downto 0),
      txctrl1_in(15 downto 0) => txctrl1_in(15 downto 0),
      txctrl2_in(7 downto 0) => txctrl2_in(7 downto 0),
      txdataextendrsvd_in(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      txdccdone_out(0) => txdccdone_out(0),
      txdccforcestart_in(0) => txdccforcestart_in(0),
      txdccreset_in(0) => txdccreset_in(0),
      txdeemph_in(1 downto 0) => txdeemph_in(1 downto 0),
      txdetectrx_in(0) => txdetectrx_in(0),
      txdiffctrl_in(4 downto 0) => txdiffctrl_in(4 downto 0),
      txdlybypass_in(0) => txdlybypass_in(0),
      txdlyen_in(0) => txdlyen_in(0),
      txdlyhold_in(0) => txdlyhold_in(0),
      txdlyovrden_in(0) => txdlyovrden_in(0),
      txdlysreset_in(0) => txdlysreset_in(0),
      txdlysresetdone_out(0) => txdlysresetdone_out(0),
      txdlyupdown_in(0) => txdlyupdown_in(0),
      txelecidle_in(0) => txelecidle_in(0),
      txheader_in(5 downto 0) => txheader_in(5 downto 0),
      txinhibit_in(0) => txinhibit_in(0),
      txlatclk_in(0) => txlatclk_in(0),
      txlfpstreset_in(0) => txlfpstreset_in(0),
      txlfpsu2lpexit_in(0) => txlfpsu2lpexit_in(0),
      txlfpsu3wake_in(0) => txlfpsu3wake_in(0),
      txmaincursor_in(6 downto 0) => txmaincursor_in(6 downto 0),
      txmargin_in(2 downto 0) => txmargin_in(2 downto 0),
      txmuxdcdexhold_in(0) => txmuxdcdexhold_in(0),
      txmuxdcdorwren_in(0) => txmuxdcdorwren_in(0),
      txoneszeros_in(0) => txoneszeros_in(0),
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => txoutclkfabric_out(0),
      txoutclkpcs_out(0) => txoutclkpcs_out(0),
      txoutclksel_in(2 downto 0) => txoutclksel_in(2 downto 0),
      txpcsreset_in(0) => txpcsreset_in(0),
      txpd_in(1 downto 0) => txpd_in(1 downto 0),
      txpdelecidlemode_in(0) => txpdelecidlemode_in(0),
      txphalign_in(0) => txphalign_in(0),
      txphaligndone_out(0) => txphaligndone_out(0),
      txphalignen_in(0) => txphalignen_in(0),
      txphdlypd_in(0) => txphdlypd_in(0),
      txphdlyreset_in(0) => txphdlyreset_in(0),
      txphdlytstclk_in(0) => txphdlytstclk_in(0),
      txphinit_in(0) => txphinit_in(0),
      txphinitdone_out(0) => txphinitdone_out(0),
      txphovrden_in(0) => txphovrden_in(0),
      txpippmen_in(0) => txpippmen_in(0),
      txpippmovrden_in(0) => txpippmovrden_in(0),
      txpippmpd_in(0) => txpippmpd_in(0),
      txpippmsel_in(0) => txpippmsel_in(0),
      txpippmstepsize_in(4 downto 0) => txpippmstepsize_in(4 downto 0),
      txpisopd_in(0) => txpisopd_in(0),
      txpllclksel_in(1 downto 0) => txpllclksel_in(1 downto 0),
      txpmareset_in(0) => txpmareset_in(0),
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => txpolarity_in(0),
      txpostcursor_in(4 downto 0) => txpostcursor_in(4 downto 0),
      txprbsforceerr_in(0) => txprbsforceerr_in(0),
      txprbssel_in(3 downto 0) => txprbssel_in(3 downto 0),
      txprecursor_in(4 downto 0) => txprecursor_in(4 downto 0),
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratedone_out(0) => txratedone_out(0),
      txratemode_in(0) => txratemode_in(0),
      txresetdone_out(0) => txresetdone_out(0),
      txsequence_in(6 downto 0) => txsequence_in(6 downto 0),
      txswing_in(0) => txswing_in(0),
      txsyncallin_in(0) => txsyncallin_in(0),
      txsyncdone_out(0) => txsyncdone_out(0),
      txsyncin_in(0) => txsyncin_in(0),
      txsyncmode_in(0) => txsyncmode_in(0),
      txsyncout_out(0) => txsyncout_out(0),
      txsysclksel_in(1 downto 0) => txsysclksel_in(1 downto 0),
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_gt is
  port (
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 63 downto 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of interlaken_0_interlaken_0_gt : entity is "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of interlaken_0_interlaken_0_gt : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_gt : entity is "interlaken_0_gt";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interlaken_0_interlaken_0_gt : entity is "interlaken_0_gt_gtwizard_top,Vivado 2018.1";
end interlaken_0_interlaken_0_gt;

architecture STRUCTURE of interlaken_0_interlaken_0_gt is
  signal NLW_inst_bufgtce_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_bufgtcemask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_bufgtdiv_out_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_bufgtreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_bufgtrstmask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_cpllfbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cplllock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_cpllrefclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_dmonitoroutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_drpdo_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_drpdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_drprdy_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_drprdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_eyescandataerror_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gthtxn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gthtxp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtrefclkmonitor_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierategen3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierateqpllpd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcierateqpllreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pciesynctxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieusergen3rdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserphystatusrst_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcieuserratestart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcsrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_phystatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pinrsrvdas_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_pmarsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_pmarsvdout1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_powerpresent_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qplldmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_qplldmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_refclkoutmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_refclkoutmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_resetexception_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxbyterealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcdrlock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcdrphdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanbondseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchanrealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxchbondo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_rxckcaldone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxclkcorcnt_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcominitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcommadet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomsasdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxcomwakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxctrl0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxctrl1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxctrl2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxctrl3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_rxdataextendrsvd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxdatavalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxelecidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxheader_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_rxheadervalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxlfpstresetdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_rxosintdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxosintstrobestarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxphalignerr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxprbserr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxprbslocked_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxprgdivresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk1_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk1sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclkout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsliderdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslipoutclkrdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxslippmardy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxstartofseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_rxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxvalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_sdm0finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm0testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_sdm1finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm1testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_tcongpo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_tconrsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txcomfinish_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdccdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txphinitdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdaddr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubden_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdi_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubdwe_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubmdmtdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubtxuart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of inst : label is "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of inst : label is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of inst : label is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of inst : label is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of inst : label is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of inst : label is "161.132812";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of inst : label is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of inst : label is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of inst : label is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of inst : label is 0;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of inst : label is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of inst : label is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of inst : label is 0;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of inst : label is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of inst : label is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of inst : label is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of inst : label is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of inst : label is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of inst : label is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of inst : label is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of inst : label is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of inst : label is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of inst : label is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of inst : label is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of inst : label is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of inst : label is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of inst : label is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of inst : label is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of inst : label is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of inst : label is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of inst : label is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of inst : label is 0;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of inst : label is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of inst : label is 64;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of inst : label is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of inst : label is 144;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of inst : label is 1;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of inst : label is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of inst : label is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 1;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of inst : label is "161.132812";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of inst : label is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of inst : label is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of inst : label is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of inst : label is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of inst : label is 1;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of inst : label is "161.132812";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of inst : label is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of inst : label is 0;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of inst : label is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of inst : label is 64;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of inst : label is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of inst : label is 144;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of inst : label is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 1;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of inst : label is "161.132812";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of inst : label is "161.132812";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of inst : label is 1;
begin
inst: entity work.interlaken_0_interlaken_0_gt_gtwizard_top
     port map (
      bgbypassb_in(0) => '1',
      bgmonitorenb_in(0) => '1',
      bgpdb_in(0) => '1',
      bgrcalovrd_in(4 downto 0) => B"10000",
      bgrcalovrdenb_in(0) => '1',
      bufgtce_out(0) => NLW_inst_bufgtce_out_UNCONNECTED(0),
      bufgtcemask_out(2 downto 0) => NLW_inst_bufgtcemask_out_UNCONNECTED(2 downto 0),
      bufgtdiv_out(8 downto 0) => NLW_inst_bufgtdiv_out_UNCONNECTED(8 downto 0),
      bufgtreset_out(0) => NLW_inst_bufgtreset_out_UNCONNECTED(0),
      bufgtrstmask_out(2 downto 0) => NLW_inst_bufgtrstmask_out_UNCONNECTED(2 downto 0),
      cdrstepdir_in(0) => '0',
      cdrstepsq_in(0) => '0',
      cdrstepsx_in(0) => '0',
      cfgreset_in(0) => '0',
      clkrsvd0_in(0) => '0',
      clkrsvd1_in(0) => '0',
      cpllfbclklost_out(0) => NLW_inst_cpllfbclklost_out_UNCONNECTED(0),
      cpllfreqlock_in(0) => '0',
      cplllock_out(0) => NLW_inst_cplllock_out_UNCONNECTED(0),
      cplllockdetclk_in(0) => '0',
      cplllocken_in(0) => '0',
      cpllpd_in(0) => '1',
      cpllrefclklost_out(0) => NLW_inst_cpllrefclklost_out_UNCONNECTED(0),
      cpllrefclksel_in(2 downto 0) => B"001",
      cpllreset_in(0) => '1',
      dmonfiforeset_in(0) => '0',
      dmonitorclk_in(0) => '0',
      dmonitorout_out(15 downto 0) => NLW_inst_dmonitorout_out_UNCONNECTED(15 downto 0),
      dmonitoroutclk_out(0) => NLW_inst_dmonitoroutclk_out_UNCONNECTED(0),
      drpaddr_common_in(15 downto 0) => B"0000000000000000",
      drpaddr_in(9 downto 0) => B"0000000000",
      drpclk_common_in(0) => '0',
      drpclk_in(0) => '0',
      drpdi_common_in(15 downto 0) => B"0000000000000000",
      drpdi_in(15 downto 0) => B"0000000000000000",
      drpdo_common_out(15 downto 0) => NLW_inst_drpdo_common_out_UNCONNECTED(15 downto 0),
      drpdo_out(15 downto 0) => NLW_inst_drpdo_out_UNCONNECTED(15 downto 0),
      drpen_common_in(0) => '0',
      drpen_in(0) => '0',
      drprdy_common_out(0) => NLW_inst_drprdy_common_out_UNCONNECTED(0),
      drprdy_out(0) => NLW_inst_drprdy_out_UNCONNECTED(0),
      drprst_in(0) => '0',
      drpwe_common_in(0) => '0',
      drpwe_in(0) => '0',
      elpcaldvorwren_in(0) => '0',
      elpcalpaorwren_in(0) => '0',
      evoddphicaldone_in(0) => '0',
      evoddphicalstart_in(0) => '0',
      evoddphidrden_in(0) => '0',
      evoddphidwren_in(0) => '0',
      evoddphixrden_in(0) => '0',
      evoddphixwren_in(0) => '0',
      eyescandataerror_out(0) => NLW_inst_eyescandataerror_out_UNCONNECTED(0),
      eyescanmode_in(0) => '0',
      eyescanreset_in(0) => '0',
      eyescantrigger_in(0) => '0',
      freqos_in(0) => '0',
      gtgrefclk0_in(0) => '0',
      gtgrefclk1_in(0) => '0',
      gtgrefclk_in(0) => '0',
      gthrxn_in(0) => '0',
      gthrxp_in(0) => '0',
      gthtxn_out(0) => NLW_inst_gthtxn_out_UNCONNECTED(0),
      gthtxp_out(0) => NLW_inst_gthtxp_out_UNCONNECTED(0),
      gtnorthrefclk00_in(0) => '0',
      gtnorthrefclk01_in(0) => '0',
      gtnorthrefclk0_in(0) => '0',
      gtnorthrefclk10_in(0) => '0',
      gtnorthrefclk11_in(0) => '0',
      gtnorthrefclk1_in(0) => '0',
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => '0',
      gtrefclk0_in(0) => '0',
      gtrefclk10_in(0) => '0',
      gtrefclk11_in(0) => '0',
      gtrefclk1_in(0) => '0',
      gtrefclkmonitor_out(0) => NLW_inst_gtrefclkmonitor_out_UNCONNECTED(0),
      gtresetsel_in(0) => '0',
      gtrsvd_in(15 downto 0) => B"0000000000000000",
      gtrxreset_in(0) => '0',
      gtrxresetsel_in(0) => '0',
      gtsouthrefclk00_in(0) => '0',
      gtsouthrefclk01_in(0) => '0',
      gtsouthrefclk0_in(0) => '0',
      gtsouthrefclk10_in(0) => '0',
      gtsouthrefclk11_in(0) => '0',
      gtsouthrefclk1_in(0) => '0',
      gttxreset_in(0) => '0',
      gttxresetsel_in(0) => '0',
      gtwiz_buffbypass_rx_done_out(0) => NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_error_out(0) => NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_reset_in(0) => '0',
      gtwiz_buffbypass_rx_start_user_in(0) => '0',
      gtwiz_buffbypass_tx_done_out(0) => NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_error_out(0) => NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_reset_in(0) => '0',
      gtwiz_buffbypass_tx_start_user_in(0) => '0',
      gtwiz_gthe3_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe3_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe3_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gthe4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gthe4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_bufg_ce_in(0) => '0',
      gtwiz_gtye4_cpll_cal_cnt_tol_in(17 downto 0) => B"000000000000000000",
      gtwiz_gtye4_cpll_cal_txoutclk_period_in(17 downto 0) => B"000000000000000000",
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => '0',
      gtwiz_reset_qpll0reset_out(0) => NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED(0),
      gtwiz_reset_qpll1lock_in(0) => '0',
      gtwiz_reset_qpll1reset_out(0) => NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_in(0) => '0',
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_in(0) => '0',
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => gtwiz_userclk_rx_active_in(0),
      gtwiz_userclk_rx_active_out(0) => NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED(0),
      gtwiz_userclk_rx_reset_in(0) => '0',
      gtwiz_userclk_rx_srcclk_out(0) => NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_rx_usrclk_out(0) => NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_active_in(0) => gtwiz_userclk_tx_active_in(0),
      gtwiz_userclk_tx_active_out(0) => NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED(0),
      gtwiz_userclk_tx_reset_in(0) => '0',
      gtwiz_userclk_tx_srcclk_out(0) => NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk2_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED(0),
      gtwiz_userclk_tx_usrclk_out(0) => NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED(0),
      gtwiz_userdata_rx_out(63 downto 0) => gtwiz_userdata_rx_out(63 downto 0),
      gtwiz_userdata_tx_in(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      gtyrxn_in(0) => gtyrxn_in(0),
      gtyrxp_in(0) => gtyrxp_in(0),
      gtytxn_out(0) => gtytxn_out(0),
      gtytxp_out(0) => gtytxp_out(0),
      incpctrl_in(0) => '0',
      loopback_in(2 downto 0) => loopback_in(2 downto 0),
      looprsvd_in(0) => '0',
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lpbkrxtxseren_in(0) => '0',
      lpbktxrxseren_in(0) => '0',
      pcieeqrxeqadaptdone_in(0) => '0',
      pcierategen3_out(0) => NLW_inst_pcierategen3_out_UNCONNECTED(0),
      pcierateidle_out(0) => NLW_inst_pcierateidle_out_UNCONNECTED(0),
      pcierateqpll0_in(2 downto 0) => B"000",
      pcierateqpll1_in(2 downto 0) => B"000",
      pcierateqpllpd_out(1 downto 0) => NLW_inst_pcierateqpllpd_out_UNCONNECTED(1 downto 0),
      pcierateqpllreset_out(1 downto 0) => NLW_inst_pcierateqpllreset_out_UNCONNECTED(1 downto 0),
      pcierstidle_in(0) => '0',
      pciersttxsyncstart_in(0) => '0',
      pciesynctxsyncdone_out(0) => NLW_inst_pciesynctxsyncdone_out_UNCONNECTED(0),
      pcieusergen3rdy_out(0) => NLW_inst_pcieusergen3rdy_out_UNCONNECTED(0),
      pcieuserphystatusrst_out(0) => NLW_inst_pcieuserphystatusrst_out_UNCONNECTED(0),
      pcieuserratedone_in(0) => '0',
      pcieuserratestart_out(0) => NLW_inst_pcieuserratestart_out_UNCONNECTED(0),
      pcsrsvdin2_in(0) => '0',
      pcsrsvdin_in(15 downto 0) => B"0000000000000000",
      pcsrsvdout_out(15 downto 0) => NLW_inst_pcsrsvdout_out_UNCONNECTED(15 downto 0),
      phystatus_out(0) => NLW_inst_phystatus_out_UNCONNECTED(0),
      pinrsrvdas_out(15 downto 0) => NLW_inst_pinrsrvdas_out_UNCONNECTED(15 downto 0),
      pmarsvd0_in(7 downto 0) => B"00000000",
      pmarsvd1_in(7 downto 0) => B"00000000",
      pmarsvdin_in(0) => '0',
      pmarsvdout0_out(7 downto 0) => NLW_inst_pmarsvdout0_out_UNCONNECTED(7 downto 0),
      pmarsvdout1_out(7 downto 0) => NLW_inst_pmarsvdout1_out_UNCONNECTED(7 downto 0),
      powerpresent_out(0) => NLW_inst_powerpresent_out_UNCONNECTED(0),
      qpll0clk_in(0) => '0',
      qpll0clkrsvd0_in(0) => '0',
      qpll0clkrsvd1_in(0) => '0',
      qpll0fbclklost_out(0) => NLW_inst_qpll0fbclklost_out_UNCONNECTED(0),
      qpll0fbdiv_in(7 downto 0) => B"00000000",
      qpll0freqlock_in(0) => '0',
      qpll0lock_out(0) => NLW_inst_qpll0lock_out_UNCONNECTED(0),
      qpll0lockdetclk_in(0) => '0',
      qpll0locken_in(0) => '1',
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => '0',
      qpll0refclk_in(0) => '0',
      qpll0refclklost_out(0) => NLW_inst_qpll0refclklost_out_UNCONNECTED(0),
      qpll0refclksel_in(2 downto 0) => B"001",
      qpll0reset_in(0) => '0',
      qpll1clk_in(0) => '0',
      qpll1clkrsvd0_in(0) => '0',
      qpll1clkrsvd1_in(0) => '0',
      qpll1fbclklost_out(0) => NLW_inst_qpll1fbclklost_out_UNCONNECTED(0),
      qpll1fbdiv_in(7 downto 0) => B"00000000",
      qpll1freqlock_in(0) => '0',
      qpll1lock_out(0) => NLW_inst_qpll1lock_out_UNCONNECTED(0),
      qpll1lockdetclk_in(0) => '0',
      qpll1locken_in(0) => '0',
      qpll1outclk_out(0) => NLW_inst_qpll1outclk_out_UNCONNECTED(0),
      qpll1outrefclk_out(0) => NLW_inst_qpll1outrefclk_out_UNCONNECTED(0),
      qpll1pd_in(0) => '1',
      qpll1refclk_in(0) => '0',
      qpll1refclklost_out(0) => NLW_inst_qpll1refclklost_out_UNCONNECTED(0),
      qpll1refclksel_in(2 downto 0) => B"001",
      qpll1reset_in(0) => '1',
      qplldmonitor0_out(7 downto 0) => NLW_inst_qplldmonitor0_out_UNCONNECTED(7 downto 0),
      qplldmonitor1_out(7 downto 0) => NLW_inst_qplldmonitor1_out_UNCONNECTED(7 downto 0),
      qpllrsvd1_in(7 downto 0) => B"00000000",
      qpllrsvd2_in(4 downto 0) => B"00000",
      qpllrsvd3_in(4 downto 0) => B"00000",
      qpllrsvd4_in(7 downto 0) => B"00000000",
      rcalenb_in(0) => '1',
      refclkoutmonitor0_out(0) => NLW_inst_refclkoutmonitor0_out_UNCONNECTED(0),
      refclkoutmonitor1_out(0) => NLW_inst_refclkoutmonitor1_out_UNCONNECTED(0),
      resetexception_out(0) => NLW_inst_resetexception_out_UNCONNECTED(0),
      resetovrd_in(0) => '0',
      rstclkentx_in(0) => '0',
      rx8b10ben_in(0) => '0',
      rxafecfoken_in(0) => '1',
      rxbufreset_in(0) => '0',
      rxbufstatus_out(2 downto 0) => NLW_inst_rxbufstatus_out_UNCONNECTED(2 downto 0),
      rxbyteisaligned_out(0) => NLW_inst_rxbyteisaligned_out_UNCONNECTED(0),
      rxbyterealign_out(0) => NLW_inst_rxbyterealign_out_UNCONNECTED(0),
      rxcdrfreqreset_in(0) => '0',
      rxcdrhold_in(0) => '0',
      rxcdrlock_out(0) => NLW_inst_rxcdrlock_out_UNCONNECTED(0),
      rxcdrovrden_in(0) => '0',
      rxcdrphdone_out(0) => NLW_inst_rxcdrphdone_out_UNCONNECTED(0),
      rxcdrreset_in(0) => '0',
      rxcdrresetrsv_in(0) => '0',
      rxchanbondseq_out(0) => NLW_inst_rxchanbondseq_out_UNCONNECTED(0),
      rxchanisaligned_out(0) => NLW_inst_rxchanisaligned_out_UNCONNECTED(0),
      rxchanrealign_out(0) => NLW_inst_rxchanrealign_out_UNCONNECTED(0),
      rxchbonden_in(0) => '0',
      rxchbondi_in(4 downto 0) => B"00000",
      rxchbondlevel_in(2 downto 0) => B"000",
      rxchbondmaster_in(0) => '0',
      rxchbondo_out(4 downto 0) => NLW_inst_rxchbondo_out_UNCONNECTED(4 downto 0),
      rxchbondslave_in(0) => '0',
      rxckcaldone_out(0) => NLW_inst_rxckcaldone_out_UNCONNECTED(0),
      rxckcalreset_in(0) => '0',
      rxckcalstart_in(6 downto 0) => B"0000000",
      rxclkcorcnt_out(1 downto 0) => NLW_inst_rxclkcorcnt_out_UNCONNECTED(1 downto 0),
      rxcominitdet_out(0) => NLW_inst_rxcominitdet_out_UNCONNECTED(0),
      rxcommadet_out(0) => NLW_inst_rxcommadet_out_UNCONNECTED(0),
      rxcommadeten_in(0) => '0',
      rxcomsasdet_out(0) => NLW_inst_rxcomsasdet_out_UNCONNECTED(0),
      rxcomwakedet_out(0) => NLW_inst_rxcomwakedet_out_UNCONNECTED(0),
      rxctrl0_out(15 downto 0) => NLW_inst_rxctrl0_out_UNCONNECTED(15 downto 0),
      rxctrl1_out(15 downto 0) => NLW_inst_rxctrl1_out_UNCONNECTED(15 downto 0),
      rxctrl2_out(7 downto 0) => NLW_inst_rxctrl2_out_UNCONNECTED(7 downto 0),
      rxctrl3_out(7 downto 0) => NLW_inst_rxctrl3_out_UNCONNECTED(7 downto 0),
      rxdata_out(127 downto 0) => NLW_inst_rxdata_out_UNCONNECTED(127 downto 0),
      rxdataextendrsvd_out(7 downto 0) => NLW_inst_rxdataextendrsvd_out_UNCONNECTED(7 downto 0),
      rxdatavalid_out(1 downto 0) => NLW_inst_rxdatavalid_out_UNCONNECTED(1 downto 0),
      rxdccforcestart_in(0) => '0',
      rxdfeagcctrl_in(0) => '0',
      rxdfeagchold_in(0) => '0',
      rxdfeagcovrden_in(0) => '0',
      rxdfecfokfcnum_in(3 downto 0) => B"1101",
      rxdfecfokfen_in(0) => '0',
      rxdfecfokfpulse_in(0) => '0',
      rxdfecfokhold_in(0) => '0',
      rxdfecfokovren_in(0) => '0',
      rxdfekhhold_in(0) => '0',
      rxdfekhovrden_in(0) => '0',
      rxdfelfhold_in(0) => '0',
      rxdfelfovrden_in(0) => '0',
      rxdfelpmreset_in(0) => '0',
      rxdfetap10hold_in(0) => '0',
      rxdfetap10ovrden_in(0) => '0',
      rxdfetap11hold_in(0) => '0',
      rxdfetap11ovrden_in(0) => '0',
      rxdfetap12hold_in(0) => '0',
      rxdfetap12ovrden_in(0) => '0',
      rxdfetap13hold_in(0) => '0',
      rxdfetap13ovrden_in(0) => '0',
      rxdfetap14hold_in(0) => '0',
      rxdfetap14ovrden_in(0) => '0',
      rxdfetap15hold_in(0) => '0',
      rxdfetap15ovrden_in(0) => '0',
      rxdfetap2hold_in(0) => '0',
      rxdfetap2ovrden_in(0) => '0',
      rxdfetap3hold_in(0) => '0',
      rxdfetap3ovrden_in(0) => '0',
      rxdfetap4hold_in(0) => '0',
      rxdfetap4ovrden_in(0) => '0',
      rxdfetap5hold_in(0) => '0',
      rxdfetap5ovrden_in(0) => '0',
      rxdfetap6hold_in(0) => '0',
      rxdfetap6ovrden_in(0) => '0',
      rxdfetap7hold_in(0) => '0',
      rxdfetap7ovrden_in(0) => '0',
      rxdfetap8hold_in(0) => '0',
      rxdfetap8ovrden_in(0) => '0',
      rxdfetap9hold_in(0) => '0',
      rxdfetap9ovrden_in(0) => '0',
      rxdfeuthold_in(0) => '0',
      rxdfeutovrden_in(0) => '0',
      rxdfevphold_in(0) => '0',
      rxdfevpovrden_in(0) => '0',
      rxdfevsen_in(0) => '0',
      rxdfexyden_in(0) => '1',
      rxdlybypass_in(0) => '1',
      rxdlyen_in(0) => '0',
      rxdlyovrden_in(0) => '0',
      rxdlysreset_in(0) => '0',
      rxdlysresetdone_out(0) => NLW_inst_rxdlysresetdone_out_UNCONNECTED(0),
      rxelecidle_out(0) => NLW_inst_rxelecidle_out_UNCONNECTED(0),
      rxelecidlemode_in(1 downto 0) => B"11",
      rxeqtraining_in(0) => '0',
      rxgearboxslip_in(0) => '0',
      rxheader_out(5 downto 0) => NLW_inst_rxheader_out_UNCONNECTED(5 downto 0),
      rxheadervalid_out(1 downto 0) => NLW_inst_rxheadervalid_out_UNCONNECTED(1 downto 0),
      rxlatclk_in(0) => '0',
      rxlfpstresetdet_out(0) => NLW_inst_rxlfpstresetdet_out_UNCONNECTED(0),
      rxlfpsu2lpexitdet_out(0) => NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED(0),
      rxlfpsu3wakedet_out(0) => NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED(0),
      rxlpmen_in(0) => '1',
      rxlpmgchold_in(0) => '0',
      rxlpmgcovrden_in(0) => '0',
      rxlpmhfhold_in(0) => '0',
      rxlpmhfovrden_in(0) => '0',
      rxlpmlfhold_in(0) => '0',
      rxlpmlfklovrden_in(0) => '0',
      rxlpmoshold_in(0) => '0',
      rxlpmosovrden_in(0) => '0',
      rxmcommaalignen_in(0) => '0',
      rxmonitorout_out(7 downto 0) => NLW_inst_rxmonitorout_out_UNCONNECTED(7 downto 0),
      rxmonitorsel_in(1 downto 0) => B"00",
      rxoobreset_in(0) => '0',
      rxoscalreset_in(0) => '0',
      rxoshold_in(0) => '0',
      rxosintcfg_in(0) => '0',
      rxosintdone_out(0) => NLW_inst_rxosintdone_out_UNCONNECTED(0),
      rxosinten_in(0) => '0',
      rxosinthold_in(0) => '0',
      rxosintovrden_in(0) => '0',
      rxosintstarted_out(0) => NLW_inst_rxosintstarted_out_UNCONNECTED(0),
      rxosintstrobe_in(0) => '0',
      rxosintstrobedone_out(0) => NLW_inst_rxosintstrobedone_out_UNCONNECTED(0),
      rxosintstrobestarted_out(0) => NLW_inst_rxosintstrobestarted_out_UNCONNECTED(0),
      rxosinttestovrden_in(0) => '0',
      rxosovrden_in(0) => '0',
      rxoutclk_out(0) => rxoutclk_out(0),
      rxoutclkfabric_out(0) => NLW_inst_rxoutclkfabric_out_UNCONNECTED(0),
      rxoutclkpcs_out(0) => NLW_inst_rxoutclkpcs_out_UNCONNECTED(0),
      rxoutclksel_in(2 downto 0) => B"010",
      rxpcommaalignen_in(0) => '0',
      rxpcsreset_in(0) => '0',
      rxpd_in(1 downto 0) => B"00",
      rxphalign_in(0) => '0',
      rxphaligndone_out(0) => NLW_inst_rxphaligndone_out_UNCONNECTED(0),
      rxphalignen_in(0) => '0',
      rxphalignerr_out(0) => NLW_inst_rxphalignerr_out_UNCONNECTED(0),
      rxphdlypd_in(0) => '1',
      rxphdlyreset_in(0) => '0',
      rxphovrden_in(0) => '0',
      rxpllclksel_in(1 downto 0) => B"11",
      rxpmareset_in(0) => '0',
      rxpmaresetdone_out(0) => rxpmaresetdone_out(0),
      rxpolarity_in(0) => '0',
      rxprbscntreset_in(0) => '0',
      rxprbserr_out(0) => NLW_inst_rxprbserr_out_UNCONNECTED(0),
      rxprbslocked_out(0) => NLW_inst_rxprbslocked_out_UNCONNECTED(0),
      rxprbssel_in(3 downto 0) => B"0000",
      rxprgdivresetdone_out(0) => NLW_inst_rxprgdivresetdone_out_UNCONNECTED(0),
      rxprogdivreset_in(0) => '0',
      rxqpien_in(0) => '0',
      rxqpisenn_out(0) => NLW_inst_rxqpisenn_out_UNCONNECTED(0),
      rxqpisenp_out(0) => NLW_inst_rxqpisenp_out_UNCONNECTED(0),
      rxrate_in(2 downto 0) => B"000",
      rxratedone_out(0) => NLW_inst_rxratedone_out_UNCONNECTED(0),
      rxratemode_in(0) => '0',
      rxrecclk0_sel_out(0) => NLW_inst_rxrecclk0_sel_out_UNCONNECTED(0),
      rxrecclk0sel_out(1 downto 0) => NLW_inst_rxrecclk0sel_out_UNCONNECTED(1 downto 0),
      rxrecclk1_sel_out(0) => NLW_inst_rxrecclk1_sel_out_UNCONNECTED(0),
      rxrecclk1sel_out(1 downto 0) => NLW_inst_rxrecclk1sel_out_UNCONNECTED(1 downto 0),
      rxrecclkout_out(0) => NLW_inst_rxrecclkout_out_UNCONNECTED(0),
      rxresetdone_out(0) => NLW_inst_rxresetdone_out_UNCONNECTED(0),
      rxslide_in(0) => '0',
      rxsliderdy_out(0) => NLW_inst_rxsliderdy_out_UNCONNECTED(0),
      rxslipdone_out(0) => NLW_inst_rxslipdone_out_UNCONNECTED(0),
      rxslipoutclk_in(0) => '0',
      rxslipoutclkrdy_out(0) => NLW_inst_rxslipoutclkrdy_out_UNCONNECTED(0),
      rxslippma_in(0) => '0',
      rxslippmardy_out(0) => NLW_inst_rxslippmardy_out_UNCONNECTED(0),
      rxstartofseq_out(1 downto 0) => NLW_inst_rxstartofseq_out_UNCONNECTED(1 downto 0),
      rxstatus_out(2 downto 0) => NLW_inst_rxstatus_out_UNCONNECTED(2 downto 0),
      rxsyncallin_in(0) => '0',
      rxsyncdone_out(0) => NLW_inst_rxsyncdone_out_UNCONNECTED(0),
      rxsyncin_in(0) => '0',
      rxsyncmode_in(0) => '0',
      rxsyncout_out(0) => NLW_inst_rxsyncout_out_UNCONNECTED(0),
      rxsysclksel_in(1 downto 0) => B"10",
      rxtermination_in(0) => '0',
      rxuserrdy_in(0) => '1',
      rxusrclk2_in(0) => rxusrclk2_in(0),
      rxusrclk_in(0) => rxusrclk_in(0),
      rxvalid_out(0) => NLW_inst_rxvalid_out_UNCONNECTED(0),
      sdm0data_in(24 downto 0) => B"0000000000000000000000000",
      sdm0finalout_out(3 downto 0) => NLW_inst_sdm0finalout_out_UNCONNECTED(3 downto 0),
      sdm0reset_in(0) => '0',
      sdm0testdata_out(14 downto 0) => NLW_inst_sdm0testdata_out_UNCONNECTED(14 downto 0),
      sdm0toggle_in(0) => '0',
      sdm0width_in(1 downto 0) => B"00",
      sdm1data_in(24 downto 0) => B"0000000000000000000000000",
      sdm1finalout_out(3 downto 0) => NLW_inst_sdm1finalout_out_UNCONNECTED(3 downto 0),
      sdm1reset_in(0) => '0',
      sdm1testdata_out(14 downto 0) => NLW_inst_sdm1testdata_out_UNCONNECTED(14 downto 0),
      sdm1toggle_in(0) => '0',
      sdm1width_in(1 downto 0) => B"00",
      sigvalidclk_in(0) => '0',
      tcongpi_in(0) => '0',
      tcongpo_out(0) => NLW_inst_tcongpo_out_UNCONNECTED(0),
      tconpowerup_in(0) => '0',
      tconreset_in(0) => '0',
      tconrsvdin1_in(0) => '0',
      tconrsvdout0_out(0) => NLW_inst_tconrsvdout0_out_UNCONNECTED(0),
      tstin_in(19 downto 0) => B"00000000000000000000",
      tx8b10bbypass_in(7 downto 0) => B"00000000",
      tx8b10ben_in(0) => '0',
      txbufdiffctrl_in(0) => '0',
      txbufstatus_out(1 downto 0) => NLW_inst_txbufstatus_out_UNCONNECTED(1 downto 0),
      txcomfinish_out(0) => NLW_inst_txcomfinish_out_UNCONNECTED(0),
      txcominit_in(0) => '0',
      txcomsas_in(0) => '0',
      txcomwake_in(0) => '0',
      txctrl0_in(15 downto 0) => B"0000000000000000",
      txctrl1_in(15 downto 0) => B"0000000000000000",
      txctrl2_in(7 downto 0) => B"00000000",
      txdata_in(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      txdataextendrsvd_in(7 downto 0) => B"00000000",
      txdccdone_out(0) => NLW_inst_txdccdone_out_UNCONNECTED(0),
      txdccforcestart_in(0) => '0',
      txdccreset_in(0) => '0',
      txdeemph_in(1 downto 0) => B"00",
      txdetectrx_in(0) => '0',
      txdiffctrl_in(4 downto 0) => B"11000",
      txdiffpd_in(0) => '0',
      txdlybypass_in(0) => '1',
      txdlyen_in(0) => '0',
      txdlyhold_in(0) => '0',
      txdlyovrden_in(0) => '0',
      txdlysreset_in(0) => '0',
      txdlysresetdone_out(0) => NLW_inst_txdlysresetdone_out_UNCONNECTED(0),
      txdlyupdown_in(0) => '0',
      txelecidle_in(0) => '0',
      txelforcestart_in(0) => '0',
      txheader_in(5 downto 0) => B"000000",
      txinhibit_in(0) => '0',
      txlatclk_in(0) => '0',
      txlfpstreset_in(0) => '0',
      txlfpsu2lpexit_in(0) => '0',
      txlfpsu3wake_in(0) => '0',
      txmaincursor_in(6 downto 0) => B"1010000",
      txmargin_in(2 downto 0) => B"000",
      txmuxdcdexhold_in(0) => '0',
      txmuxdcdorwren_in(0) => '0',
      txoneszeros_in(0) => '0',
      txoutclk_out(0) => txoutclk_out(0),
      txoutclkfabric_out(0) => NLW_inst_txoutclkfabric_out_UNCONNECTED(0),
      txoutclkpcs_out(0) => NLW_inst_txoutclkpcs_out_UNCONNECTED(0),
      txoutclksel_in(2 downto 0) => B"101",
      txpcsreset_in(0) => '0',
      txpd_in(1 downto 0) => B"00",
      txpdelecidlemode_in(0) => '0',
      txphalign_in(0) => '0',
      txphaligndone_out(0) => NLW_inst_txphaligndone_out_UNCONNECTED(0),
      txphalignen_in(0) => '0',
      txphdlypd_in(0) => '1',
      txphdlyreset_in(0) => '0',
      txphdlytstclk_in(0) => '0',
      txphinit_in(0) => '0',
      txphinitdone_out(0) => NLW_inst_txphinitdone_out_UNCONNECTED(0),
      txphovrden_in(0) => '0',
      txpippmen_in(0) => '0',
      txpippmovrden_in(0) => '0',
      txpippmpd_in(0) => '0',
      txpippmsel_in(0) => '1',
      txpippmstepsize_in(4 downto 0) => B"00000",
      txpisopd_in(0) => '0',
      txpllclksel_in(1 downto 0) => B"11",
      txpmareset_in(0) => '0',
      txpmaresetdone_out(0) => txpmaresetdone_out(0),
      txpolarity_in(0) => '0',
      txpostcursor_in(4 downto 0) => B"00000",
      txpostcursorinv_in(0) => '0',
      txprbsforceerr_in(0) => '0',
      txprbssel_in(3 downto 0) => B"0000",
      txprecursor_in(4 downto 0) => B"00000",
      txprecursorinv_in(0) => '0',
      txprgdivresetdone_out(0) => txprgdivresetdone_out(0),
      txprogdivreset_in(0) => '0',
      txqpibiasen_in(0) => '0',
      txqpisenn_out(0) => NLW_inst_txqpisenn_out_UNCONNECTED(0),
      txqpisenp_out(0) => NLW_inst_txqpisenp_out_UNCONNECTED(0),
      txqpistrongpdown_in(0) => '0',
      txqpiweakpup_in(0) => '0',
      txrate_in(2 downto 0) => B"000",
      txratedone_out(0) => NLW_inst_txratedone_out_UNCONNECTED(0),
      txratemode_in(0) => '0',
      txresetdone_out(0) => NLW_inst_txresetdone_out_UNCONNECTED(0),
      txsequence_in(6 downto 0) => B"0000000",
      txswing_in(0) => '0',
      txsyncallin_in(0) => '0',
      txsyncdone_out(0) => NLW_inst_txsyncdone_out_UNCONNECTED(0),
      txsyncin_in(0) => '0',
      txsyncmode_in(0) => '0',
      txsyncout_out(0) => NLW_inst_txsyncout_out_UNCONNECTED(0),
      txsysclksel_in(1 downto 0) => B"10",
      txuserrdy_in(0) => '1',
      txusrclk2_in(0) => txusrclk2_in(0),
      txusrclk_in(0) => txusrclk_in(0),
      ubcfgstreamen_in(0) => '0',
      ubdaddr_out(15 downto 0) => NLW_inst_ubdaddr_out_UNCONNECTED(15 downto 0),
      ubden_out(0) => NLW_inst_ubden_out_UNCONNECTED(0),
      ubdi_out(15 downto 0) => NLW_inst_ubdi_out_UNCONNECTED(15 downto 0),
      ubdo_in(15 downto 0) => B"0000000000000000",
      ubdrdy_in(0) => '0',
      ubdwe_out(0) => NLW_inst_ubdwe_out_UNCONNECTED(0),
      ubenable_in(0) => '0',
      ubgpi_in(1 downto 0) => B"00",
      ubintr_in(1 downto 0) => B"00",
      ubiolmbrst_in(0) => '0',
      ubmbrst_in(0) => '0',
      ubmdmcapture_in(0) => '0',
      ubmdmdbgrst_in(0) => '0',
      ubmdmdbgupdate_in(0) => '0',
      ubmdmregen_in(3 downto 0) => B"0000",
      ubmdmshift_in(0) => '0',
      ubmdmsysrst_in(0) => '0',
      ubmdmtck_in(0) => '0',
      ubmdmtdi_in(0) => '0',
      ubmdmtdo_out(0) => NLW_inst_ubmdmtdo_out_UNCONNECTED(0),
      ubrsvdout_out(0) => NLW_inst_ubrsvdout_out_UNCONNECTED(0),
      ubtxuart_out(0) => NLW_inst_ubtxuart_out_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0_interlaken_0_wrapper is
  port (
    gt0_rxp_in : in STD_LOGIC;
    gt0_rxn_in : in STD_LOGIC;
    gt1_rxp_in : in STD_LOGIC;
    gt1_rxn_in : in STD_LOGIC;
    gt2_rxp_in : in STD_LOGIC;
    gt2_rxn_in : in STD_LOGIC;
    gt3_rxp_in : in STD_LOGIC;
    gt3_rxn_in : in STD_LOGIC;
    gt4_rxp_in : in STD_LOGIC;
    gt4_rxn_in : in STD_LOGIC;
    gt5_rxp_in : in STD_LOGIC;
    gt5_rxn_in : in STD_LOGIC;
    gt6_rxp_in : in STD_LOGIC;
    gt6_rxn_in : in STD_LOGIC;
    gt7_rxp_in : in STD_LOGIC;
    gt7_rxn_in : in STD_LOGIC;
    gt8_rxp_in : in STD_LOGIC;
    gt8_rxn_in : in STD_LOGIC;
    gt9_rxp_in : in STD_LOGIC;
    gt9_rxn_in : in STD_LOGIC;
    gt10_rxp_in : in STD_LOGIC;
    gt10_rxn_in : in STD_LOGIC;
    gt11_rxp_in : in STD_LOGIC;
    gt11_rxn_in : in STD_LOGIC;
    gt0_txn_out : out STD_LOGIC;
    gt0_txp_out : out STD_LOGIC;
    gt1_txn_out : out STD_LOGIC;
    gt1_txp_out : out STD_LOGIC;
    gt2_txn_out : out STD_LOGIC;
    gt2_txp_out : out STD_LOGIC;
    gt3_txn_out : out STD_LOGIC;
    gt3_txp_out : out STD_LOGIC;
    gt4_txn_out : out STD_LOGIC;
    gt4_txp_out : out STD_LOGIC;
    gt5_txn_out : out STD_LOGIC;
    gt5_txp_out : out STD_LOGIC;
    gt6_txn_out : out STD_LOGIC;
    gt6_txp_out : out STD_LOGIC;
    gt7_txn_out : out STD_LOGIC;
    gt7_txp_out : out STD_LOGIC;
    gt8_txn_out : out STD_LOGIC;
    gt8_txp_out : out STD_LOGIC;
    gt9_txn_out : out STD_LOGIC;
    gt9_txp_out : out STD_LOGIC;
    gt10_txn_out : out STD_LOGIC;
    gt10_txp_out : out STD_LOGIC;
    gt11_txn_out : out STD_LOGIC;
    gt11_txp_out : out STD_LOGIC;
    rx_ovfout : out STD_LOGIC;
    rx_dataout0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout0 : out STD_LOGIC;
    rx_sopout0 : out STD_LOGIC;
    rx_eopout0 : out STD_LOGIC;
    rx_errout0 : out STD_LOGIC;
    rx_mtyout0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout1 : out STD_LOGIC;
    rx_sopout1 : out STD_LOGIC;
    rx_eopout1 : out STD_LOGIC;
    rx_errout1 : out STD_LOGIC;
    rx_mtyout1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout2 : out STD_LOGIC;
    rx_sopout2 : out STD_LOGIC;
    rx_eopout2 : out STD_LOGIC;
    rx_errout2 : out STD_LOGIC;
    rx_mtyout2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout3 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout3 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout3 : out STD_LOGIC;
    rx_sopout3 : out STD_LOGIC;
    rx_eopout3 : out STD_LOGIC;
    rx_errout3 : out STD_LOGIC;
    rx_mtyout3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_rdyout : out STD_LOGIC;
    tx_ovfout : out STD_LOGIC;
    tx_datain0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain0 : in STD_LOGIC;
    tx_sopin0 : in STD_LOGIC;
    tx_eopin0 : in STD_LOGIC;
    tx_errin0 : in STD_LOGIC;
    tx_mtyin0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin0 : in STD_LOGIC;
    tx_datain1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain1 : in STD_LOGIC;
    tx_sopin1 : in STD_LOGIC;
    tx_eopin1 : in STD_LOGIC;
    tx_errin1 : in STD_LOGIC;
    tx_mtyin1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin1 : in STD_LOGIC;
    tx_datain2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain2 : in STD_LOGIC;
    tx_sopin2 : in STD_LOGIC;
    tx_eopin2 : in STD_LOGIC;
    tx_errin2 : in STD_LOGIC;
    tx_mtyin2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin2 : in STD_LOGIC;
    tx_datain3 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain3 : in STD_LOGIC;
    tx_sopin3 : in STD_LOGIC;
    tx_eopin3 : in STD_LOGIC;
    tx_errin3 : in STD_LOGIC;
    tx_mtyin3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin3 : in STD_LOGIC;
    core_drp_reset : in STD_LOGIC;
    drp_clk : in STD_LOGIC;
    drp_en : in STD_LOGIC;
    drp_we : in STD_LOGIC;
    drp_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drp_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_rdy : out STD_LOGIC;
    core_clk : in STD_LOGIC;
    lbus_clk : in STD_LOGIC;
    lockedn : in STD_LOGIC;
    core_tx_reset : in STD_LOGIC;
    core_rx_reset : in STD_LOGIC;
    ctl_tx_errinj_biterr_go : in STD_LOGIC;
    ctl_tx_errinj_biterr_lane : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctl_tx_rlim_enable : in STD_LOGIC;
    ctl_tx_rlim_max : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ctl_tx_rlim_delta : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ctl_tx_rlim_intv : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ctl_tx_enable : in STD_LOGIC;
    ctl_tx_mubits : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ctl_tx_diagword_lanestat : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ctl_tx_diagword_intfstat : in STD_LOGIC;
    ctl_rx_force_resync : in STD_LOGIC;
    ctl_tx_fc_stat : in STD_LOGIC_VECTOR ( 255 downto 0 );
    stat_tx_underflow_err : out STD_LOGIC;
    stat_tx_burst_err : out STD_LOGIC;
    stat_tx_overflow_err : out STD_LOGIC;
    ctl_tx_retrans_enable : in STD_LOGIC;
    stat_tx_retrans_burst_err : out STD_LOGIC;
    ctl_tx_retrans_req : in STD_LOGIC;
    ctl_tx_retrans_req_valid : in STD_LOGIC;
    stat_tx_retrans_busy : out STD_LOGIC;
    stat_tx_errinj_biterr_done : out STD_LOGIC;
    stat_rx_diagword_lanestat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_diagword_intfstat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_valid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_fc_stat : out STD_LOGIC_VECTOR ( 255 downto 0 );
    stat_rx_mubits : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_rx_mubits_updated : out STD_LOGIC;
    stat_rx_word_sync : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_framing_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_bad_type_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_descram_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_len_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_repeat_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_aligned : out STD_LOGIC;
    stat_rx_misaligned : out STD_LOGIC;
    stat_rx_aligned_err : out STD_LOGIC;
    stat_rx_crc24_err : out STD_LOGIC;
    stat_rx_msop_err : out STD_LOGIC;
    stat_rx_meop_err : out STD_LOGIC;
    stat_rx_overflow_err : out STD_LOGIC;
    stat_rx_burstmax_err : out STD_LOGIC;
    ctl_rx_retrans_ack : in STD_LOGIC;
    ctl_rx_retrans_enable : in STD_LOGIC;
    ctl_rx_retrans_errin : in STD_LOGIC;
    ctl_rx_retrans_force_req : in STD_LOGIC;
    ctl_rx_retrans_reset : in STD_LOGIC;
    ctl_rx_retrans_reset_mode : in STD_LOGIC;
    stat_rx_retrans_crc24_err : out STD_LOGIC;
    stat_rx_retrans_disc : out STD_LOGIC;
    stat_rx_retrans_latency : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stat_rx_retrans_req : out STD_LOGIC;
    stat_rx_retrans_retry_err : out STD_LOGIC;
    stat_rx_retrans_seq : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_rx_retrans_seq_updated : out STD_LOGIC;
    stat_rx_retrans_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    stat_rx_retrans_subseq : out STD_LOGIC_VECTOR ( 4 downto 0 );
    stat_rx_retrans_wdog_err : out STD_LOGIC;
    stat_rx_retrans_wrap_err : out STD_LOGIC;
    stat_tx_retrans_ram_raddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_retrans_ram_waddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    stat_tx_retrans_ram_wdata : out STD_LOGIC_VECTOR ( 643 downto 0 );
    ctl_tx_retrans_ram_perrin : in STD_LOGIC;
    ctl_tx_retrans_ram_rdata : in STD_LOGIC_VECTOR ( 643 downto 0 );
    stat_tx_retrans_ram_perrout : out STD_LOGIC;
    stat_tx_retrans_ram_rsel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stat_tx_retrans_ram_rd_b0 : out STD_LOGIC;
    stat_tx_retrans_ram_rd_b1 : out STD_LOGIC;
    stat_tx_retrans_ram_rd_b2 : out STD_LOGIC;
    stat_tx_retrans_ram_rd_b3 : out STD_LOGIC;
    stat_tx_retrans_ram_we_b0 : out STD_LOGIC;
    stat_tx_retrans_ram_we_b1 : out STD_LOGIC;
    stat_tx_retrans_ram_we_b2 : out STD_LOGIC;
    stat_tx_retrans_ram_we_b3 : out STD_LOGIC;
    tx_bypass_ctrlin : in STD_LOGIC_VECTOR ( 11 downto 0 );
    tx_bypass_datain00 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain01 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain02 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain03 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain04 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain05 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain06 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain07 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain08 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain09 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain10 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_datain11 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_bypass_enain : in STD_LOGIC;
    tx_bypass_gearbox_seqin : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_bypass_mframer_statein : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_bypass_force_realignin : in STD_LOGIC;
    rx_bypass_rdin : in STD_LOGIC;
    rx_bypass_dataout00 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout01 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout02 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout03 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout04 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout05 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout06 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout07 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout08 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout09 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout10 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_dataout11 : out STD_LOGIC_VECTOR ( 65 downto 0 );
    rx_bypass_enaout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_bypass_is_availout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_bypass_is_badlyframedout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_bypass_is_overflowout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_bypass_is_syncedout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rx_bypass_is_syncwordout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    gt_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_eyescanreset : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_eyescantrigger : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxcdrhold : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxpolarity : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxrate : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_txdiffctrl : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt_txpolarity : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txpostcursor : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt_txprbsforceerr : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txprecursor : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt_eyescandataerror : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txbufstatus : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_rxdfelpmreset : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxlpmen : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxprbscntreset : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxprbserr : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxprbssel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt_rxresetdone : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_txprbssel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt_txresetdone : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxbufstatus : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_drpclk : in STD_LOGIC;
    gt_drp_done : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC;
    gtwiz_reset_rx_datapath_in : in STD_LOGIC;
    gt0_drpaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    gt0_drpen : in STD_LOGIC;
    gt0_drpdi : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drprdy : out STD_LOGIC;
    gt0_drpwe : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    gt_txusrclk2 : out STD_LOGIC;
    gt_tx_reset_done_inv : out STD_LOGIC;
    gt_rx_reset_done_inv : out STD_LOGIC;
    gt_rxusrclk2 : out STD_LOGIC;
    usr_tx_reset : out STD_LOGIC;
    usr_rx_reset : out STD_LOGIC;
    gt_ref_clk0_p : in STD_LOGIC;
    gt_ref_clk0_n : in STD_LOGIC;
    gt_refclk_out : out STD_LOGIC;
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    init_clk : in STD_LOGIC;
    stat_rx_burst_err : out STD_LOGIC
  );
  attribute C_ADD_GT_CNRL_STS_PORTS : integer;
  attribute C_ADD_GT_CNRL_STS_PORTS of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_BURSTMAX : string;
  attribute C_BURSTMAX of interlaken_0_interlaken_0_wrapper : entity is "2'b11";
  attribute C_BURSTSHORT : string;
  attribute C_BURSTSHORT of interlaken_0_interlaken_0_wrapper : entity is "3'b001";
  attribute C_CHAN_EXT : string;
  attribute C_CHAN_EXT of interlaken_0_interlaken_0_wrapper : entity is "2'b00";
  attribute C_CLOCKING_MODE : string;
  attribute C_CLOCKING_MODE of interlaken_0_interlaken_0_wrapper : entity is "Synchronous";
  attribute C_ENABLE_ERR_INJ : integer;
  attribute C_ENABLE_ERR_INJ of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_IN_BAND_FC : integer;
  attribute C_ENABLE_IN_BAND_FC of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_OUT_BAND_FC : integer;
  attribute C_ENABLE_OUT_BAND_FC of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_PIPELINE_REG : integer;
  attribute C_ENABLE_PIPELINE_REG of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_EN_RETRANS : integer;
  attribute C_EN_RETRANS of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_GT_REF_CLK_FREQ : string;
  attribute C_GT_REF_CLK_FREQ of interlaken_0_interlaken_0_wrapper : entity is "156.250000";
  attribute C_GT_TYPE : string;
  attribute C_GT_TYPE of interlaken_0_interlaken_0_wrapper : entity is "GTY";
  attribute C_INCLUDE_SHARED_LOGIC : integer;
  attribute C_INCLUDE_SHARED_LOGIC of interlaken_0_interlaken_0_wrapper : entity is 2;
  attribute C_INS_LOSS_NYQ : integer;
  attribute C_INS_LOSS_NYQ of interlaken_0_interlaken_0_wrapper : entity is 10;
  attribute C_IN_BAND_FC_CALLEN : string;
  attribute C_IN_BAND_FC_CALLEN of interlaken_0_interlaken_0_wrapper : entity is "7'b0000000";
  attribute C_LANE10_GT_LOC : string;
  attribute C_LANE10_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "X0Y9";
  attribute C_LANE11_GT_LOC : string;
  attribute C_LANE11_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE12_GT_LOC : string;
  attribute C_LANE12_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE1_GT_LOC : string;
  attribute C_LANE1_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "X1Y48";
  attribute C_LANE2_GT_LOC : string;
  attribute C_LANE2_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE3_GT_LOC : string;
  attribute C_LANE3_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE4_GT_LOC : string;
  attribute C_LANE4_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE5_GT_LOC : string;
  attribute C_LANE5_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE6_GT_LOC : string;
  attribute C_LANE6_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE7_GT_LOC : string;
  attribute C_LANE7_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE8_GT_LOC : string;
  attribute C_LANE8_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE9_GT_LOC : string;
  attribute C_LANE9_GT_LOC of interlaken_0_interlaken_0_wrapper : entity is "NA";
  attribute C_LINE_RATE : string;
  attribute C_LINE_RATE of interlaken_0_interlaken_0_wrapper : entity is "10.312500";
  attribute C_MFRAMELEN_MINUS1 : string;
  attribute C_MFRAMELEN_MINUS1 of interlaken_0_interlaken_0_wrapper : entity is "16'b0000011111101011";
  attribute C_NUM_LANES : integer;
  attribute C_NUM_LANES of interlaken_0_interlaken_0_wrapper : entity is 1;
  attribute C_OPERATING_MODE : string;
  attribute C_OPERATING_MODE of interlaken_0_interlaken_0_wrapper : entity is "3";
  attribute C_OUT_BAND_FC_CALLEN : string;
  attribute C_OUT_BAND_FC_CALLEN of interlaken_0_interlaken_0_wrapper : entity is "7'b0000000";
  attribute C_PACKET_MODE : string;
  attribute C_PACKET_MODE of interlaken_0_interlaken_0_wrapper : entity is "packet_mode";
  attribute C_RX_EQ_MODE : string;
  attribute C_RX_EQ_MODE of interlaken_0_interlaken_0_wrapper : entity is "Auto";
  attribute C_RX_RETRANS_MULT : integer;
  attribute C_RX_RETRANS_MULT of interlaken_0_interlaken_0_wrapper : entity is 1;
  attribute C_RX_RETRANS_RETRY : integer;
  attribute C_RX_RETRANS_RETRY of interlaken_0_interlaken_0_wrapper : entity is 2;
  attribute C_RX_RETRANS_TIMER1 : integer;
  attribute C_RX_RETRANS_TIMER1 of interlaken_0_interlaken_0_wrapper : entity is 2048;
  attribute C_RX_RETRANS_TIMER2 : integer;
  attribute C_RX_RETRANS_TIMER2 of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_RX_RETRANS_WDOG : integer;
  attribute C_RX_RETRANS_WDOG of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_RX_RETRANS_WRAP_TIMER : integer;
  attribute C_RX_RETRANS_WRAP_TIMER of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_TX_RETRANS_DEPTH : integer;
  attribute C_TX_RETRANS_DEPTH of interlaken_0_interlaken_0_wrapper : entity is 2048;
  attribute C_TX_RETRANS_MULT : integer;
  attribute C_TX_RETRANS_MULT of interlaken_0_interlaken_0_wrapper : entity is 1;
  attribute C_TX_RETRANS_RAM_BANKS : integer;
  attribute C_TX_RETRANS_RAM_BANKS of interlaken_0_interlaken_0_wrapper : entity is 4;
  attribute C_TX_RLIM_DELTA : integer;
  attribute C_TX_RLIM_DELTA of interlaken_0_interlaken_0_wrapper : entity is 384;
  attribute C_TX_RLIM_ENABLE : integer;
  attribute C_TX_RLIM_ENABLE of interlaken_0_interlaken_0_wrapper : entity is 0;
  attribute C_TX_RLIM_INTV : integer;
  attribute C_TX_RLIM_INTV of interlaken_0_interlaken_0_wrapper : entity is 16;
  attribute C_TX_RLIM_MAX : integer;
  attribute C_TX_RLIM_MAX of interlaken_0_interlaken_0_wrapper : entity is 384;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of interlaken_0_interlaken_0_wrapper : entity is "yes";
  attribute GT_COLUMN : string;
  attribute GT_COLUMN of interlaken_0_interlaken_0_wrapper : entity is "Right";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of interlaken_0_interlaken_0_wrapper : entity is "interlaken_0_wrapper";
end interlaken_0_interlaken_0_wrapper;

architecture STRUCTURE of interlaken_0_interlaken_0_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal ctl_tx_diagword_lanestat_1d : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute async_reg : string;
  attribute async_reg of ctl_tx_diagword_lanestat_1d : signal is "true";
  signal ctl_tx_diagword_lanestat_2d : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute async_reg of ctl_tx_diagword_lanestat_2d : signal is "true";
  signal ctl_tx_diagword_lanestat_3d : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute async_reg of ctl_tx_diagword_lanestat_3d : signal is "true";
  signal gt_0_txdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal gt_ref_clk0 : STD_LOGIC;
  signal gt_refclk_copy : STD_LOGIC;
  signal \^gt_rxusrclk2\ : STD_LOGIC;
  signal \^gt_txusrclk2\ : STD_LOGIC;
  signal gtwiz_reset_rx_done_out : STD_LOGIC;
  signal gtwiz_reset_tx_done_out : STD_LOGIC;
  signal gtwiz_userclk_tx_srcclk_out : STD_LOGIC;
  signal i_ilkn_top_inst_i_1_n_0 : STD_LOGIC;
  signal i_ilkn_top_inst_i_2_n_0 : STD_LOGIC;
  signal interlaken_gtwiz_userclk_rx_active_out : STD_LOGIC;
  signal interlaken_gtwiz_userclk_tx_active_out : STD_LOGIC;
  signal interlaken_gtwiz_userclk_tx_reset_in : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal rx_reset_async : STD_LOGIC;
  signal rx_reset_sync : STD_LOGIC;
  signal rxdata_int : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rxdata_int_1d : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rxdata_int_2d : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tx_reset_async : STD_LOGIC;
  signal tx_reset_sync : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal txdata_int_1d : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal txpmaresetdone_out : STD_LOGIC;
  signal txprgdivresetdone_out : STD_LOGIC;
  signal \^usr_rx_reset\ : STD_LOGIC;
  signal \^usr_tx_reset\ : STD_LOGIC;
  signal \xlnx_opt_\ : STD_LOGIC;
  signal \xlnx_opt__1\ : STD_LOGIC;
  signal NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_GTE4_GTREFCLK0_INST : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[10]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[11]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[3]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[4]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[5]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[6]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[7]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[8]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_1d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_1d_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[10]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[11]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[3]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[4]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[5]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[6]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[7]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[8]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_2d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_2d_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[10]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[11]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[3]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[4]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[5]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[6]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[7]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[8]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \ctl_tx_diagword_lanestat_3d_reg[9]\ : label is std.standard.true;
  attribute KEEP of \ctl_tx_diagword_lanestat_3d_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gt_tx_reset_done_inv_INST_0 : label is "soft_lutpair21";
  attribute BYPASS : string;
  attribute BYPASS of i_ilkn_top_inst : label is "FALSE";
  attribute CTL_RX_BURSTMAX : string;
  attribute CTL_RX_BURSTMAX of i_ilkn_top_inst : label is "2'b11";
  attribute CTL_RX_CHAN_EXT : string;
  attribute CTL_RX_CHAN_EXT of i_ilkn_top_inst : label is "2'b00";
  attribute CTL_RX_LAST_LANE : string;
  attribute CTL_RX_LAST_LANE of i_ilkn_top_inst : label is "4'b0000";
  attribute CTL_RX_MFRAMELEN_MINUS1 : string;
  attribute CTL_RX_MFRAMELEN_MINUS1 of i_ilkn_top_inst : label is "16'b0000011111101011";
  attribute CTL_RX_PACKET_MODE : string;
  attribute CTL_RX_PACKET_MODE of i_ilkn_top_inst : label is "TRUE";
  attribute CTL_RX_RETRANS_MULT : string;
  attribute CTL_RX_RETRANS_MULT of i_ilkn_top_inst : label is "3'b000";
  attribute CTL_RX_RETRANS_RETRY : integer;
  attribute CTL_RX_RETRANS_RETRY of i_ilkn_top_inst : label is 2;
  attribute CTL_RX_RETRANS_TIMER1 : string;
  attribute CTL_RX_RETRANS_TIMER1 of i_ilkn_top_inst : label is "16'b0000100000000000";
  attribute CTL_RX_RETRANS_TIMER2 : string;
  attribute CTL_RX_RETRANS_TIMER2 of i_ilkn_top_inst : label is "16'b0000000000000000";
  attribute CTL_RX_RETRANS_WDOG : string;
  attribute CTL_RX_RETRANS_WDOG of i_ilkn_top_inst : label is "12'b000000000000";
  attribute CTL_RX_RETRANS_WRAP_TIMER : string;
  attribute CTL_RX_RETRANS_WRAP_TIMER of i_ilkn_top_inst : label is "8'b00000000";
  attribute CTL_TX_BURSTMAX : string;
  attribute CTL_TX_BURSTMAX of i_ilkn_top_inst : label is "2'b11";
  attribute CTL_TX_BURSTSHORT : string;
  attribute CTL_TX_BURSTSHORT of i_ilkn_top_inst : label is "3'b001";
  attribute CTL_TX_CHAN_EXT : string;
  attribute CTL_TX_CHAN_EXT of i_ilkn_top_inst : label is "2'b00";
  attribute CTL_TX_DISABLE_SKIPWORD : string;
  attribute CTL_TX_DISABLE_SKIPWORD of i_ilkn_top_inst : label is "TRUE";
  attribute CTL_TX_FC_CALLEN : string;
  attribute CTL_TX_FC_CALLEN of i_ilkn_top_inst : label is "7'b0001111";
  attribute CTL_TX_LAST_LANE : string;
  attribute CTL_TX_LAST_LANE of i_ilkn_top_inst : label is "4'b0000";
  attribute CTL_TX_MFRAMELEN_MINUS1 : string;
  attribute CTL_TX_MFRAMELEN_MINUS1 of i_ilkn_top_inst : label is "16'b0000011111101011";
  attribute CTL_TX_RETRANS_DEPTH : string;
  attribute CTL_TX_RETRANS_DEPTH of i_ilkn_top_inst : label is "14'b00100000000000";
  attribute CTL_TX_RETRANS_MULT : string;
  attribute CTL_TX_RETRANS_MULT of i_ilkn_top_inst : label is "3'b000";
  attribute CTL_TX_RETRANS_RAM_BANKS : string;
  attribute CTL_TX_RETRANS_RAM_BANKS of i_ilkn_top_inst : label is "2'b11";
  attribute DowngradeIPIdentifiedWarnings of i_ilkn_top_inst : label is "yes";
  attribute MODE : string;
  attribute MODE of i_ilkn_top_inst : label is "TRUE";
  attribute SOFT_HLUTNM of i_ilkn_top_inst_i_1 : label is "soft_lutpair20";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of interlaken_0_gt_i : label is "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings of interlaken_0_gt_i : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of interlaken_0_gt_i : label is "interlaken_0_gt_gtwizard_top,Vivado 2018.1";
  attribute BOX_TYPE of refclk_bufg_gt_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of rx_reset_sync_i_1 : label is "soft_lutpair20";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[13]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[14]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[15]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[16]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[17]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[18]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[19]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[20]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[21]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[22]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[23]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[24]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[25]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[26]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[27]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[28]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[29]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[30]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[31]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[32]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[33]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[34]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[35]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[36]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[37]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[38]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[39]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[40]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[41]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[42]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[43]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[44]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[45]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[46]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[47]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[48]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[49]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[50]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[51]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[52]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[53]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[54]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[55]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[56]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[57]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[58]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[59]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[60]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[61]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[62]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[63]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_1d_reg[9]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[13]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[14]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[15]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[16]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[17]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[18]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[19]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[20]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[21]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[22]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[23]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[24]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[25]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[26]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[27]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[28]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[29]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[30]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[31]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[32]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[33]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[34]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[35]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[36]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[37]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[38]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[39]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[40]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[41]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[42]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[43]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[44]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[45]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[46]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[47]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[48]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[49]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[50]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[51]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[52]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[53]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[54]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[55]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[56]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[57]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[58]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[59]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[60]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[61]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[62]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[63]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rxdata_int_2d_reg[9]\ : label is "no";
  attribute SOFT_HLUTNM of tx_reset_sync_i_1 : label is "soft_lutpair21";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[13]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[14]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[15]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[16]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[17]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[18]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[19]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[20]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[21]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[22]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[23]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[24]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[25]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[26]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[27]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[28]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[29]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[30]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[31]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[32]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[33]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[34]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[35]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[36]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[37]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[38]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[39]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[40]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[41]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[42]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[43]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[44]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[45]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[46]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[47]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[48]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[49]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[50]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[51]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[52]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[53]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[54]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[55]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[56]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[57]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[58]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[59]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[60]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[61]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[62]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[63]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_int_1d_reg[9]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[13]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[14]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[15]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[16]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[17]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[18]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[19]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[20]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[21]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[22]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[23]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[24]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[25]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[26]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[27]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[28]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[29]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[30]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[31]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[32]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[33]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[34]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[35]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[36]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[37]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[38]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[39]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[40]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[41]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[42]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[43]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[44]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[45]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[46]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[47]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[48]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[49]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[50]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[51]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[52]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[53]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[54]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[55]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[56]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[57]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[58]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[59]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[60]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[61]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[62]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[63]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \txdata_reg[9]\ : label is "no";
begin
  gt0_drpdo(15) <= \<const0>\;
  gt0_drpdo(14) <= \<const0>\;
  gt0_drpdo(13) <= \<const0>\;
  gt0_drpdo(12) <= \<const0>\;
  gt0_drpdo(11) <= \<const0>\;
  gt0_drpdo(10) <= \<const0>\;
  gt0_drpdo(9) <= \<const0>\;
  gt0_drpdo(8) <= \<const0>\;
  gt0_drpdo(7) <= \<const0>\;
  gt0_drpdo(6) <= \<const0>\;
  gt0_drpdo(5) <= \<const0>\;
  gt0_drpdo(4) <= \<const0>\;
  gt0_drpdo(3) <= \<const0>\;
  gt0_drpdo(2) <= \<const0>\;
  gt0_drpdo(1) <= \<const0>\;
  gt0_drpdo(0) <= \<const0>\;
  gt0_drprdy <= \<const0>\;
  gt10_txn_out <= \<const0>\;
  gt10_txp_out <= \<const0>\;
  gt11_txn_out <= \<const0>\;
  gt11_txp_out <= \<const0>\;
  gt1_txn_out <= \<const0>\;
  gt1_txp_out <= \<const0>\;
  gt2_txn_out <= \<const0>\;
  gt2_txp_out <= \<const0>\;
  gt3_txn_out <= \<const0>\;
  gt3_txp_out <= \<const0>\;
  gt4_txn_out <= \<const0>\;
  gt4_txp_out <= \<const0>\;
  gt5_txn_out <= \<const0>\;
  gt5_txp_out <= \<const0>\;
  gt6_txn_out <= \<const0>\;
  gt6_txp_out <= \<const0>\;
  gt7_txn_out <= \<const0>\;
  gt7_txp_out <= \<const0>\;
  gt8_txn_out <= \<const0>\;
  gt8_txp_out <= \<const0>\;
  gt9_txn_out <= \<const0>\;
  gt9_txp_out <= \<const0>\;
  gt_eyescandataerror(0) <= \<const0>\;
  gt_rxbufstatus(2) <= \<const0>\;
  gt_rxbufstatus(1) <= \<const0>\;
  gt_rxbufstatus(0) <= \<const0>\;
  gt_rxprbserr(0) <= \<const0>\;
  gt_rxresetdone(0) <= \<const0>\;
  gt_rxusrclk2 <= \^gt_rxusrclk2\;
  gt_txbufstatus(1) <= \<const0>\;
  gt_txbufstatus(0) <= \<const0>\;
  gt_txresetdone(0) <= \<const0>\;
  gt_txusrclk2 <= \^gt_txusrclk2\;
  gtwiz_reset_qpll0reset_out(0) <= \<const0>\;
  gtwiz_reset_qpll1reset_out(0) <= \<const0>\;
  usr_rx_reset <= \^usr_rx_reset\;
  usr_tx_reset <= \^usr_tx_reset\;
BUFG_GT_SYNC: unisim.vcomponents.BUFG_GT_SYNC
     port map (
      CE => '1',
      CESYNC => \xlnx_opt_\,
      CLK => gt_refclk_copy,
      CLR => '0',
      CLRSYNC => \xlnx_opt__1\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
IBUFDS_GTE4_GTREFCLK0_INST: unisim.vcomponents.IBUFDS_GTE4
    generic map(
      REFCLK_EN_TX_PATH => '0',
      REFCLK_HROW_CK_SEL => B"00",
      REFCLK_ICNTL_RX => B"00"
    )
        port map (
      CEB => '0',
      I => gt_ref_clk0_p,
      IB => gt_ref_clk0_n,
      O => gt_ref_clk0,
      ODIV2 => gt_refclk_copy
    );
\ctl_tx_diagword_lanestat_1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(0),
      Q => ctl_tx_diagword_lanestat_1d(0),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(10),
      Q => ctl_tx_diagword_lanestat_1d(10),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(11),
      Q => ctl_tx_diagword_lanestat_1d(11),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(1),
      Q => ctl_tx_diagword_lanestat_1d(1),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(2),
      Q => ctl_tx_diagword_lanestat_1d(2),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(3),
      Q => ctl_tx_diagword_lanestat_1d(3),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(4),
      Q => ctl_tx_diagword_lanestat_1d(4),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(5),
      Q => ctl_tx_diagword_lanestat_1d(5),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(6),
      Q => ctl_tx_diagword_lanestat_1d(6),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(7),
      Q => ctl_tx_diagword_lanestat_1d(7),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(8),
      Q => ctl_tx_diagword_lanestat_1d(8),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_1d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat(9),
      Q => ctl_tx_diagword_lanestat_1d(9),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(0),
      Q => ctl_tx_diagword_lanestat_2d(0),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(10),
      Q => ctl_tx_diagword_lanestat_2d(10),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(11),
      Q => ctl_tx_diagword_lanestat_2d(11),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(1),
      Q => ctl_tx_diagword_lanestat_2d(1),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(2),
      Q => ctl_tx_diagword_lanestat_2d(2),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(3),
      Q => ctl_tx_diagword_lanestat_2d(3),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(4),
      Q => ctl_tx_diagword_lanestat_2d(4),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(5),
      Q => ctl_tx_diagword_lanestat_2d(5),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(6),
      Q => ctl_tx_diagword_lanestat_2d(6),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(7),
      Q => ctl_tx_diagword_lanestat_2d(7),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(8),
      Q => ctl_tx_diagword_lanestat_2d(8),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_2d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_1d(9),
      Q => ctl_tx_diagword_lanestat_2d(9),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(0),
      Q => ctl_tx_diagword_lanestat_3d(0),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(10),
      Q => ctl_tx_diagword_lanestat_3d(10),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(11),
      Q => ctl_tx_diagword_lanestat_3d(11),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(1),
      Q => ctl_tx_diagword_lanestat_3d(1),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(2),
      Q => ctl_tx_diagword_lanestat_3d(2),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(3),
      Q => ctl_tx_diagword_lanestat_3d(3),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(4),
      Q => ctl_tx_diagword_lanestat_3d(4),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(5),
      Q => ctl_tx_diagword_lanestat_3d(5),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(6),
      Q => ctl_tx_diagword_lanestat_3d(6),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(7),
      Q => ctl_tx_diagword_lanestat_3d(7),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(8),
      Q => ctl_tx_diagword_lanestat_3d(8),
      R => i_ilkn_top_inst_i_2_n_0
    );
\ctl_tx_diagword_lanestat_3d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => ctl_tx_diagword_lanestat_2d(9),
      Q => ctl_tx_diagword_lanestat_3d(9),
      R => i_ilkn_top_inst_i_2_n_0
    );
gt_rx_reset_done_inv_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_rx_done_out,
      O => gt_rx_reset_done_inv
    );
gt_tx_reset_done_inv_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gtwiz_reset_tx_done_out,
      O => gt_tx_reset_done_inv
    );
i_ilkn_cdc_user_rx_reset_inst: entity work.interlaken_0_interlaken_0_cdc_sync
     port map (
      in0 => rx_reset_sync,
      lbus_clk => lbus_clk,
      usr_rx_reset => \^usr_rx_reset\
    );
i_ilkn_cdc_user_tx_reset_inst: entity work.interlaken_0_interlaken_0_cdc_sync_0
     port map (
      in0 => tx_reset_sync,
      lbus_clk => lbus_clk,
      usr_tx_reset => \^usr_tx_reset\
    );
i_ilkn_top_inst: entity work.interlaken_0_interlaken_v2_4_0_top4
     port map (
      core_clk => core_clk,
      ctl_rx_force_resync => ctl_rx_force_resync,
      ctl_rx_retrans_ack => ctl_rx_retrans_ack,
      ctl_rx_retrans_enable => ctl_rx_retrans_enable,
      ctl_rx_retrans_errin => ctl_rx_retrans_errin,
      ctl_rx_retrans_force_req => ctl_rx_retrans_force_req,
      ctl_rx_retrans_reset => ctl_rx_retrans_reset,
      ctl_rx_retrans_reset_mode => ctl_rx_retrans_reset_mode,
      ctl_tx_diagword_intfstat => ctl_tx_diagword_intfstat,
      ctl_tx_diagword_lanestat(11 downto 0) => ctl_tx_diagword_lanestat_3d(11 downto 0),
      ctl_tx_enable => ctl_tx_enable,
      ctl_tx_errinj_biterr_go => ctl_tx_errinj_biterr_go,
      ctl_tx_errinj_biterr_lane(3 downto 0) => ctl_tx_errinj_biterr_lane(3 downto 0),
      ctl_tx_fc_stat(255 downto 0) => ctl_tx_fc_stat(255 downto 0),
      ctl_tx_mubits(7 downto 0) => ctl_tx_mubits(7 downto 0),
      ctl_tx_retrans_enable => ctl_tx_retrans_enable,
      ctl_tx_retrans_ram_perrin => ctl_tx_retrans_ram_perrin,
      ctl_tx_retrans_ram_rdata(643 downto 0) => ctl_tx_retrans_ram_rdata(643 downto 0),
      ctl_tx_retrans_req => ctl_tx_retrans_req,
      ctl_tx_retrans_req_valid => ctl_tx_retrans_req_valid,
      ctl_tx_rlim_delta(11 downto 0) => ctl_tx_rlim_delta(11 downto 0),
      ctl_tx_rlim_enable => ctl_tx_rlim_enable,
      ctl_tx_rlim_intv(7 downto 0) => ctl_tx_rlim_intv(7 downto 0),
      ctl_tx_rlim_max(11 downto 0) => ctl_tx_rlim_max(11 downto 0),
      drp_addr(9 downto 0) => drp_addr(9 downto 0),
      drp_clk => drp_clk,
      drp_di(15 downto 0) => drp_di(15 downto 0),
      drp_do(15 downto 0) => drp_do(15 downto 0),
      drp_en => drp_en,
      drp_rdy => drp_rdy,
      drp_we => drp_we,
      lbus_clk => lbus_clk,
      rx_bypass_dataout00(65 downto 0) => rx_bypass_dataout00(65 downto 0),
      rx_bypass_dataout01(65 downto 0) => rx_bypass_dataout01(65 downto 0),
      rx_bypass_dataout02(65 downto 0) => rx_bypass_dataout02(65 downto 0),
      rx_bypass_dataout03(65 downto 0) => rx_bypass_dataout03(65 downto 0),
      rx_bypass_dataout04(65 downto 0) => rx_bypass_dataout04(65 downto 0),
      rx_bypass_dataout05(65 downto 0) => rx_bypass_dataout05(65 downto 0),
      rx_bypass_dataout06(65 downto 0) => rx_bypass_dataout06(65 downto 0),
      rx_bypass_dataout07(65 downto 0) => rx_bypass_dataout07(65 downto 0),
      rx_bypass_dataout08(65 downto 0) => rx_bypass_dataout08(65 downto 0),
      rx_bypass_dataout09(65 downto 0) => rx_bypass_dataout09(65 downto 0),
      rx_bypass_dataout10(65 downto 0) => rx_bypass_dataout10(65 downto 0),
      rx_bypass_dataout11(65 downto 0) => rx_bypass_dataout11(65 downto 0),
      rx_bypass_enaout(11 downto 0) => rx_bypass_enaout(11 downto 0),
      rx_bypass_force_realignin => rx_bypass_force_realignin,
      rx_bypass_is_availout(11 downto 0) => rx_bypass_is_availout(11 downto 0),
      rx_bypass_is_badlyframedout(11 downto 0) => rx_bypass_is_badlyframedout(11 downto 0),
      rx_bypass_is_overflowout(11 downto 0) => rx_bypass_is_overflowout(11 downto 0),
      rx_bypass_is_syncedout(11 downto 0) => rx_bypass_is_syncedout(11 downto 0),
      rx_bypass_is_syncwordout(11 downto 0) => rx_bypass_is_syncwordout(11 downto 0),
      rx_bypass_rdin => rx_bypass_rdin,
      rx_chanout0(10 downto 0) => rx_chanout0(10 downto 0),
      rx_chanout1(10 downto 0) => rx_chanout1(10 downto 0),
      rx_chanout2(10 downto 0) => rx_chanout2(10 downto 0),
      rx_chanout3(10 downto 0) => rx_chanout3(10 downto 0),
      rx_dataout0(127 downto 0) => rx_dataout0(127 downto 0),
      rx_dataout1(127 downto 0) => rx_dataout1(127 downto 0),
      rx_dataout2(127 downto 0) => rx_dataout2(127 downto 0),
      rx_dataout3(127 downto 0) => rx_dataout3(127 downto 0),
      rx_enaout0 => rx_enaout0,
      rx_enaout1 => rx_enaout1,
      rx_enaout2 => rx_enaout2,
      rx_enaout3 => rx_enaout3,
      rx_eopout0 => rx_eopout0,
      rx_eopout1 => rx_eopout1,
      rx_eopout2 => rx_eopout2,
      rx_eopout3 => rx_eopout3,
      rx_errout0 => rx_errout0,
      rx_errout1 => rx_errout1,
      rx_errout2 => rx_errout2,
      rx_errout3 => rx_errout3,
      rx_mtyout0(3 downto 0) => rx_mtyout0(3 downto 0),
      rx_mtyout1(3 downto 0) => rx_mtyout1(3 downto 0),
      rx_mtyout2(3 downto 0) => rx_mtyout2(3 downto 0),
      rx_mtyout3(3 downto 0) => rx_mtyout3(3 downto 0),
      rx_ovfout => rx_ovfout,
      rx_reset => \^usr_rx_reset\,
      rx_serdes_clk(11 downto 1) => B"00000000000",
      rx_serdes_clk(0) => \^gt_rxusrclk2\,
      rx_serdes_data00(63) => rxdata_int_2d(0),
      rx_serdes_data00(62) => rxdata_int_2d(1),
      rx_serdes_data00(61) => rxdata_int_2d(2),
      rx_serdes_data00(60) => rxdata_int_2d(3),
      rx_serdes_data00(59) => rxdata_int_2d(4),
      rx_serdes_data00(58) => rxdata_int_2d(5),
      rx_serdes_data00(57) => rxdata_int_2d(6),
      rx_serdes_data00(56) => rxdata_int_2d(7),
      rx_serdes_data00(55) => rxdata_int_2d(8),
      rx_serdes_data00(54) => rxdata_int_2d(9),
      rx_serdes_data00(53) => rxdata_int_2d(10),
      rx_serdes_data00(52) => rxdata_int_2d(11),
      rx_serdes_data00(51) => rxdata_int_2d(12),
      rx_serdes_data00(50) => rxdata_int_2d(13),
      rx_serdes_data00(49) => rxdata_int_2d(14),
      rx_serdes_data00(48) => rxdata_int_2d(15),
      rx_serdes_data00(47) => rxdata_int_2d(16),
      rx_serdes_data00(46) => rxdata_int_2d(17),
      rx_serdes_data00(45) => rxdata_int_2d(18),
      rx_serdes_data00(44) => rxdata_int_2d(19),
      rx_serdes_data00(43) => rxdata_int_2d(20),
      rx_serdes_data00(42) => rxdata_int_2d(21),
      rx_serdes_data00(41) => rxdata_int_2d(22),
      rx_serdes_data00(40) => rxdata_int_2d(23),
      rx_serdes_data00(39) => rxdata_int_2d(24),
      rx_serdes_data00(38) => rxdata_int_2d(25),
      rx_serdes_data00(37) => rxdata_int_2d(26),
      rx_serdes_data00(36) => rxdata_int_2d(27),
      rx_serdes_data00(35) => rxdata_int_2d(28),
      rx_serdes_data00(34) => rxdata_int_2d(29),
      rx_serdes_data00(33) => rxdata_int_2d(30),
      rx_serdes_data00(32) => rxdata_int_2d(31),
      rx_serdes_data00(31) => rxdata_int_2d(32),
      rx_serdes_data00(30) => rxdata_int_2d(33),
      rx_serdes_data00(29) => rxdata_int_2d(34),
      rx_serdes_data00(28) => rxdata_int_2d(35),
      rx_serdes_data00(27) => rxdata_int_2d(36),
      rx_serdes_data00(26) => rxdata_int_2d(37),
      rx_serdes_data00(25) => rxdata_int_2d(38),
      rx_serdes_data00(24) => rxdata_int_2d(39),
      rx_serdes_data00(23) => rxdata_int_2d(40),
      rx_serdes_data00(22) => rxdata_int_2d(41),
      rx_serdes_data00(21) => rxdata_int_2d(42),
      rx_serdes_data00(20) => rxdata_int_2d(43),
      rx_serdes_data00(19) => rxdata_int_2d(44),
      rx_serdes_data00(18) => rxdata_int_2d(45),
      rx_serdes_data00(17) => rxdata_int_2d(46),
      rx_serdes_data00(16) => rxdata_int_2d(47),
      rx_serdes_data00(15) => rxdata_int_2d(48),
      rx_serdes_data00(14) => rxdata_int_2d(49),
      rx_serdes_data00(13) => rxdata_int_2d(50),
      rx_serdes_data00(12) => rxdata_int_2d(51),
      rx_serdes_data00(11) => rxdata_int_2d(52),
      rx_serdes_data00(10) => rxdata_int_2d(53),
      rx_serdes_data00(9) => rxdata_int_2d(54),
      rx_serdes_data00(8) => rxdata_int_2d(55),
      rx_serdes_data00(7) => rxdata_int_2d(56),
      rx_serdes_data00(6) => rxdata_int_2d(57),
      rx_serdes_data00(5) => rxdata_int_2d(58),
      rx_serdes_data00(4) => rxdata_int_2d(59),
      rx_serdes_data00(3) => rxdata_int_2d(60),
      rx_serdes_data00(2) => rxdata_int_2d(61),
      rx_serdes_data00(1) => rxdata_int_2d(62),
      rx_serdes_data00(0) => rxdata_int_2d(63),
      rx_serdes_data01(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data02(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data03(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data04(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data05(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data06(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data07(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data08(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data09(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data10(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_data11(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      rx_serdes_reset(11 downto 1) => B"00000000000",
      rx_serdes_reset(0) => i_ilkn_top_inst_i_1_n_0,
      rx_sopout0 => rx_sopout0,
      rx_sopout1 => rx_sopout1,
      rx_sopout2 => rx_sopout2,
      rx_sopout3 => rx_sopout3,
      stat_rx_aligned => stat_rx_aligned,
      stat_rx_aligned_err => stat_rx_aligned_err,
      stat_rx_bad_type_err(11 downto 0) => stat_rx_bad_type_err(11 downto 0),
      stat_rx_burst_err => stat_rx_burst_err,
      stat_rx_burstmax_err => stat_rx_burstmax_err,
      stat_rx_crc24_err => stat_rx_crc24_err,
      stat_rx_crc32_err(11 downto 0) => stat_rx_crc32_err(11 downto 0),
      stat_rx_crc32_valid(11 downto 0) => stat_rx_crc32_valid(11 downto 0),
      stat_rx_descram_err(11 downto 0) => stat_rx_descram_err(11 downto 0),
      stat_rx_diagword_intfstat(11 downto 0) => stat_rx_diagword_intfstat(11 downto 0),
      stat_rx_diagword_lanestat(11 downto 0) => stat_rx_diagword_lanestat(11 downto 0),
      stat_rx_fc_stat(255 downto 0) => stat_rx_fc_stat(255 downto 0),
      stat_rx_framing_err(11 downto 0) => stat_rx_framing_err(11 downto 0),
      stat_rx_meop_err => stat_rx_meop_err,
      stat_rx_mf_err(11 downto 0) => stat_rx_mf_err(11 downto 0),
      stat_rx_mf_len_err(11 downto 0) => stat_rx_mf_len_err(11 downto 0),
      stat_rx_mf_repeat_err(11 downto 0) => stat_rx_mf_repeat_err(11 downto 0),
      stat_rx_misaligned => stat_rx_misaligned,
      stat_rx_msop_err => stat_rx_msop_err,
      stat_rx_mubits(7 downto 0) => stat_rx_mubits(7 downto 0),
      stat_rx_mubits_updated => stat_rx_mubits_updated,
      stat_rx_overflow_err => stat_rx_overflow_err,
      stat_rx_retrans_crc24_err => stat_rx_retrans_crc24_err,
      stat_rx_retrans_disc => stat_rx_retrans_disc,
      stat_rx_retrans_latency(15 downto 0) => stat_rx_retrans_latency(15 downto 0),
      stat_rx_retrans_req => stat_rx_retrans_req,
      stat_rx_retrans_retry_err => stat_rx_retrans_retry_err,
      stat_rx_retrans_seq(7 downto 0) => stat_rx_retrans_seq(7 downto 0),
      stat_rx_retrans_seq_updated => stat_rx_retrans_seq_updated,
      stat_rx_retrans_state(2 downto 0) => stat_rx_retrans_state(2 downto 0),
      stat_rx_retrans_subseq(4 downto 0) => stat_rx_retrans_subseq(4 downto 0),
      stat_rx_retrans_wdog_err => stat_rx_retrans_wdog_err,
      stat_rx_retrans_wrap_err => stat_rx_retrans_wrap_err,
      stat_rx_synced(11 downto 0) => stat_rx_synced(11 downto 0),
      stat_rx_synced_err(11 downto 0) => stat_rx_synced_err(11 downto 0),
      stat_rx_word_sync(11 downto 0) => stat_rx_word_sync(11 downto 0),
      stat_tx_burst_err => stat_tx_burst_err,
      stat_tx_errinj_biterr_done => stat_tx_errinj_biterr_done,
      stat_tx_overflow_err => stat_tx_overflow_err,
      stat_tx_retrans_burst_err => stat_tx_retrans_burst_err,
      stat_tx_retrans_busy => stat_tx_retrans_busy,
      stat_tx_retrans_ram_perrout => stat_tx_retrans_ram_perrout,
      stat_tx_retrans_ram_raddr(8 downto 0) => stat_tx_retrans_ram_raddr(8 downto 0),
      stat_tx_retrans_ram_rd_b0 => stat_tx_retrans_ram_rd_b0,
      stat_tx_retrans_ram_rd_b1 => stat_tx_retrans_ram_rd_b1,
      stat_tx_retrans_ram_rd_b2 => stat_tx_retrans_ram_rd_b2,
      stat_tx_retrans_ram_rd_b3 => stat_tx_retrans_ram_rd_b3,
      stat_tx_retrans_ram_rsel(1 downto 0) => stat_tx_retrans_ram_rsel(1 downto 0),
      stat_tx_retrans_ram_waddr(8 downto 0) => stat_tx_retrans_ram_waddr(8 downto 0),
      stat_tx_retrans_ram_wdata(643 downto 0) => stat_tx_retrans_ram_wdata(643 downto 0),
      stat_tx_retrans_ram_we_b0 => stat_tx_retrans_ram_we_b0,
      stat_tx_retrans_ram_we_b1 => stat_tx_retrans_ram_we_b1,
      stat_tx_retrans_ram_we_b2 => stat_tx_retrans_ram_we_b2,
      stat_tx_retrans_ram_we_b3 => stat_tx_retrans_ram_we_b3,
      stat_tx_underflow_err => stat_tx_underflow_err,
      tx_bctlin0 => tx_bctlin0,
      tx_bctlin1 => tx_bctlin1,
      tx_bctlin2 => tx_bctlin2,
      tx_bctlin3 => tx_bctlin3,
      tx_bypass_ctrlin(11 downto 0) => tx_bypass_ctrlin(11 downto 0),
      tx_bypass_datain00(63 downto 0) => tx_bypass_datain00(63 downto 0),
      tx_bypass_datain01(63 downto 0) => tx_bypass_datain01(63 downto 0),
      tx_bypass_datain02(63 downto 0) => tx_bypass_datain02(63 downto 0),
      tx_bypass_datain03(63 downto 0) => tx_bypass_datain03(63 downto 0),
      tx_bypass_datain04(63 downto 0) => tx_bypass_datain04(63 downto 0),
      tx_bypass_datain05(63 downto 0) => tx_bypass_datain05(63 downto 0),
      tx_bypass_datain06(63 downto 0) => tx_bypass_datain06(63 downto 0),
      tx_bypass_datain07(63 downto 0) => tx_bypass_datain07(63 downto 0),
      tx_bypass_datain08(63 downto 0) => tx_bypass_datain08(63 downto 0),
      tx_bypass_datain09(63 downto 0) => tx_bypass_datain09(63 downto 0),
      tx_bypass_datain10(63 downto 0) => tx_bypass_datain10(63 downto 0),
      tx_bypass_datain11(63 downto 0) => tx_bypass_datain11(63 downto 0),
      tx_bypass_enain => tx_bypass_enain,
      tx_bypass_gearbox_seqin(7 downto 0) => tx_bypass_gearbox_seqin(7 downto 0),
      tx_bypass_mframer_statein(3 downto 0) => tx_bypass_mframer_statein(3 downto 0),
      tx_chanin0(10 downto 0) => tx_chanin0(10 downto 0),
      tx_chanin1(10 downto 0) => tx_chanin1(10 downto 0),
      tx_chanin2(10 downto 0) => tx_chanin2(10 downto 0),
      tx_chanin3(10 downto 0) => tx_chanin3(10 downto 0),
      tx_datain0(127 downto 0) => tx_datain0(127 downto 0),
      tx_datain1(127 downto 0) => tx_datain1(127 downto 0),
      tx_datain2(127 downto 0) => tx_datain2(127 downto 0),
      tx_datain3(127 downto 0) => tx_datain3(127 downto 0),
      tx_enain0 => tx_enain0,
      tx_enain1 => tx_enain1,
      tx_enain2 => tx_enain2,
      tx_enain3 => tx_enain3,
      tx_eopin0 => tx_eopin0,
      tx_eopin1 => tx_eopin1,
      tx_eopin2 => tx_eopin2,
      tx_eopin3 => tx_eopin3,
      tx_errin0 => tx_errin0,
      tx_errin1 => tx_errin1,
      tx_errin2 => tx_errin2,
      tx_errin3 => tx_errin3,
      tx_mtyin0(3 downto 0) => tx_mtyin0(3 downto 0),
      tx_mtyin1(3 downto 0) => tx_mtyin1(3 downto 0),
      tx_mtyin2(3 downto 0) => tx_mtyin2(3 downto 0),
      tx_mtyin3(3 downto 0) => tx_mtyin3(3 downto 0),
      tx_ovfout => tx_ovfout,
      tx_rdyout => tx_rdyout,
      tx_reset => \^usr_tx_reset\,
      tx_serdes_data00(63 downto 0) => gt_0_txdata(63 downto 0),
      tx_serdes_data01(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED(63 downto 0),
      tx_serdes_data02(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED(63 downto 0),
      tx_serdes_data03(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED(63 downto 0),
      tx_serdes_data04(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED(63 downto 0),
      tx_serdes_data05(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED(63 downto 0),
      tx_serdes_data06(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED(63 downto 0),
      tx_serdes_data07(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED(63 downto 0),
      tx_serdes_data08(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED(63 downto 0),
      tx_serdes_data09(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED(63 downto 0),
      tx_serdes_data10(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED(63 downto 0),
      tx_serdes_data11(63 downto 0) => NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED(63 downto 0),
      tx_serdes_refclk => \^gt_txusrclk2\,
      tx_serdes_refclk_reset => i_ilkn_top_inst_i_2_n_0,
      tx_sopin0 => tx_sopin0,
      tx_sopin1 => tx_sopin1,
      tx_sopin2 => tx_sopin2,
      tx_sopin3 => tx_sopin3
    );
i_ilkn_top_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => core_drp_reset,
      I1 => gtwiz_reset_rx_done_out,
      O => i_ilkn_top_inst_i_1_n_0
    );
i_ilkn_top_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => core_drp_reset,
      I1 => gtwiz_reset_tx_done_out,
      O => i_ilkn_top_inst_i_2_n_0
    );
i_interlaken_gtwiz_userclk_rx_inst: entity work.interlaken_0_interlaken_0_ultrascale_rx_userclk
     port map (
      CLK => \^gt_rxusrclk2\,
      gtwiz_userclk_rx_active_in(0) => interlaken_gtwiz_userclk_rx_active_out,
      interlaken_gtwiz_userclk_tx_reset_in => interlaken_gtwiz_userclk_tx_reset_in,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      txoutclk_out(0) => gtwiz_userclk_tx_srcclk_out,
      txpmaresetdone_out(0) => txpmaresetdone_out,
      txprgdivresetdone_out(0) => txprgdivresetdone_out
    );
i_interlaken_gtwiz_userclk_tx_inst: entity work.interlaken_0_interlaken_0_ultrascale_tx_userclk
     port map (
      CLK => \^gt_txusrclk2\,
      gtwiz_userclk_tx_active_in(0) => interlaken_gtwiz_userclk_tx_active_out,
      interlaken_gtwiz_userclk_tx_reset_in => interlaken_gtwiz_userclk_tx_reset_in,
      lopt => lopt_1,
      lopt_1 => lopt_2,
      txoutclk_out(0) => gtwiz_userclk_tx_srcclk_out
    );
interlaken_0_gt_i: entity work.interlaken_0_interlaken_0_gt
     port map (
      gtpowergood_out(0) => gtpowergood_out(0),
      gtrefclk00_in(0) => gt_ref_clk0,
      gtwiz_reset_all_in(0) => sys_reset,
      gtwiz_reset_clk_freerun_in(0) => init_clk,
      gtwiz_reset_rx_cdr_stable_out(0) => NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in,
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out,
      gtwiz_reset_rx_pll_and_datapath_in(0) => '0',
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in,
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out,
      gtwiz_reset_tx_pll_and_datapath_in(0) => '0',
      gtwiz_userclk_rx_active_in(0) => interlaken_gtwiz_userclk_rx_active_out,
      gtwiz_userclk_tx_active_in(0) => interlaken_gtwiz_userclk_tx_active_out,
      gtwiz_userdata_rx_out(63 downto 0) => rxdata_int(63 downto 0),
      gtwiz_userdata_tx_in(63 downto 0) => txdata(63 downto 0),
      gtyrxn_in(0) => gt0_rxn_in,
      gtyrxp_in(0) => gt0_rxp_in,
      gtytxn_out(0) => gt0_txn_out,
      gtytxp_out(0) => gt0_txp_out,
      loopback_in(2 downto 0) => gt_loopback_in(2 downto 0),
      lopt => lopt,
      lopt_1 => interlaken_gtwiz_userclk_tx_reset_in,
      lopt_2 => lopt_1,
      lopt_3 => lopt_2,
      qpll0outclk_out(0) => NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED(0),
      qpll0outrefclk_out(0) => NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED(0),
      rxoutclk_out(0) => NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED(0),
      rxpmaresetdone_out(0) => NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED(0),
      rxusrclk2_in(0) => \^gt_rxusrclk2\,
      rxusrclk_in(0) => \^gt_rxusrclk2\,
      txoutclk_out(0) => gtwiz_userclk_tx_srcclk_out,
      txpmaresetdone_out(0) => txpmaresetdone_out,
      txprgdivresetdone_out(0) => txprgdivresetdone_out,
      txusrclk2_in(0) => \^gt_txusrclk2\,
      txusrclk_in(0) => \^gt_txusrclk2\
    );
refclk_bufg_gt_i: unisim.vcomponents.BUFG_GT
     port map (
      CE => \xlnx_opt_\,
      CEMASK => '1',
      CLR => \xlnx_opt__1\,
      CLRMASK => '1',
      DIV(2 downto 0) => B"000",
      I => gt_refclk_copy,
      O => gt_refclk_out
    );
rx_reset_sync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => core_drp_reset,
      I1 => lockedn,
      I2 => gtwiz_reset_rx_done_out,
      I3 => core_rx_reset,
      O => rx_reset_async
    );
rx_reset_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rx_reset_async,
      Q => rx_reset_sync,
      R => '0'
    );
\rxdata_int_1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_int_1d(0),
      R => '0'
    );
\rxdata_int_1d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_int_1d(10),
      R => '0'
    );
\rxdata_int_1d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_int_1d(11),
      R => '0'
    );
\rxdata_int_1d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_int_1d(12),
      R => '0'
    );
\rxdata_int_1d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_int_1d(13),
      R => '0'
    );
\rxdata_int_1d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_int_1d(14),
      R => '0'
    );
\rxdata_int_1d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_int_1d(15),
      R => '0'
    );
\rxdata_int_1d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(16),
      Q => rxdata_int_1d(16),
      R => '0'
    );
\rxdata_int_1d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(17),
      Q => rxdata_int_1d(17),
      R => '0'
    );
\rxdata_int_1d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(18),
      Q => rxdata_int_1d(18),
      R => '0'
    );
\rxdata_int_1d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(19),
      Q => rxdata_int_1d(19),
      R => '0'
    );
\rxdata_int_1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_int_1d(1),
      R => '0'
    );
\rxdata_int_1d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(20),
      Q => rxdata_int_1d(20),
      R => '0'
    );
\rxdata_int_1d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(21),
      Q => rxdata_int_1d(21),
      R => '0'
    );
\rxdata_int_1d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(22),
      Q => rxdata_int_1d(22),
      R => '0'
    );
\rxdata_int_1d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(23),
      Q => rxdata_int_1d(23),
      R => '0'
    );
\rxdata_int_1d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(24),
      Q => rxdata_int_1d(24),
      R => '0'
    );
\rxdata_int_1d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(25),
      Q => rxdata_int_1d(25),
      R => '0'
    );
\rxdata_int_1d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(26),
      Q => rxdata_int_1d(26),
      R => '0'
    );
\rxdata_int_1d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(27),
      Q => rxdata_int_1d(27),
      R => '0'
    );
\rxdata_int_1d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(28),
      Q => rxdata_int_1d(28),
      R => '0'
    );
\rxdata_int_1d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(29),
      Q => rxdata_int_1d(29),
      R => '0'
    );
\rxdata_int_1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_int_1d(2),
      R => '0'
    );
\rxdata_int_1d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(30),
      Q => rxdata_int_1d(30),
      R => '0'
    );
\rxdata_int_1d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(31),
      Q => rxdata_int_1d(31),
      R => '0'
    );
\rxdata_int_1d_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(32),
      Q => rxdata_int_1d(32),
      R => '0'
    );
\rxdata_int_1d_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(33),
      Q => rxdata_int_1d(33),
      R => '0'
    );
\rxdata_int_1d_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(34),
      Q => rxdata_int_1d(34),
      R => '0'
    );
\rxdata_int_1d_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(35),
      Q => rxdata_int_1d(35),
      R => '0'
    );
\rxdata_int_1d_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(36),
      Q => rxdata_int_1d(36),
      R => '0'
    );
\rxdata_int_1d_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(37),
      Q => rxdata_int_1d(37),
      R => '0'
    );
\rxdata_int_1d_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(38),
      Q => rxdata_int_1d(38),
      R => '0'
    );
\rxdata_int_1d_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(39),
      Q => rxdata_int_1d(39),
      R => '0'
    );
\rxdata_int_1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_int_1d(3),
      R => '0'
    );
\rxdata_int_1d_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(40),
      Q => rxdata_int_1d(40),
      R => '0'
    );
\rxdata_int_1d_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(41),
      Q => rxdata_int_1d(41),
      R => '0'
    );
\rxdata_int_1d_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(42),
      Q => rxdata_int_1d(42),
      R => '0'
    );
\rxdata_int_1d_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(43),
      Q => rxdata_int_1d(43),
      R => '0'
    );
\rxdata_int_1d_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(44),
      Q => rxdata_int_1d(44),
      R => '0'
    );
\rxdata_int_1d_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(45),
      Q => rxdata_int_1d(45),
      R => '0'
    );
\rxdata_int_1d_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(46),
      Q => rxdata_int_1d(46),
      R => '0'
    );
\rxdata_int_1d_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(47),
      Q => rxdata_int_1d(47),
      R => '0'
    );
\rxdata_int_1d_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(48),
      Q => rxdata_int_1d(48),
      R => '0'
    );
\rxdata_int_1d_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(49),
      Q => rxdata_int_1d(49),
      R => '0'
    );
\rxdata_int_1d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_int_1d(4),
      R => '0'
    );
\rxdata_int_1d_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(50),
      Q => rxdata_int_1d(50),
      R => '0'
    );
\rxdata_int_1d_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(51),
      Q => rxdata_int_1d(51),
      R => '0'
    );
\rxdata_int_1d_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(52),
      Q => rxdata_int_1d(52),
      R => '0'
    );
\rxdata_int_1d_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(53),
      Q => rxdata_int_1d(53),
      R => '0'
    );
\rxdata_int_1d_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(54),
      Q => rxdata_int_1d(54),
      R => '0'
    );
\rxdata_int_1d_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(55),
      Q => rxdata_int_1d(55),
      R => '0'
    );
\rxdata_int_1d_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(56),
      Q => rxdata_int_1d(56),
      R => '0'
    );
\rxdata_int_1d_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(57),
      Q => rxdata_int_1d(57),
      R => '0'
    );
\rxdata_int_1d_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(58),
      Q => rxdata_int_1d(58),
      R => '0'
    );
\rxdata_int_1d_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(59),
      Q => rxdata_int_1d(59),
      R => '0'
    );
\rxdata_int_1d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_int_1d(5),
      R => '0'
    );
\rxdata_int_1d_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(60),
      Q => rxdata_int_1d(60),
      R => '0'
    );
\rxdata_int_1d_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(61),
      Q => rxdata_int_1d(61),
      R => '0'
    );
\rxdata_int_1d_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(62),
      Q => rxdata_int_1d(62),
      R => '0'
    );
\rxdata_int_1d_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(63),
      Q => rxdata_int_1d(63),
      R => '0'
    );
\rxdata_int_1d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_int_1d(6),
      R => '0'
    );
\rxdata_int_1d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_int_1d(7),
      R => '0'
    );
\rxdata_int_1d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_int_1d(8),
      R => '0'
    );
\rxdata_int_1d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_int_1d(9),
      R => '0'
    );
\rxdata_int_2d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(0),
      Q => rxdata_int_2d(0),
      R => '0'
    );
\rxdata_int_2d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(10),
      Q => rxdata_int_2d(10),
      R => '0'
    );
\rxdata_int_2d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(11),
      Q => rxdata_int_2d(11),
      R => '0'
    );
\rxdata_int_2d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(12),
      Q => rxdata_int_2d(12),
      R => '0'
    );
\rxdata_int_2d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(13),
      Q => rxdata_int_2d(13),
      R => '0'
    );
\rxdata_int_2d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(14),
      Q => rxdata_int_2d(14),
      R => '0'
    );
\rxdata_int_2d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(15),
      Q => rxdata_int_2d(15),
      R => '0'
    );
\rxdata_int_2d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(16),
      Q => rxdata_int_2d(16),
      R => '0'
    );
\rxdata_int_2d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(17),
      Q => rxdata_int_2d(17),
      R => '0'
    );
\rxdata_int_2d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(18),
      Q => rxdata_int_2d(18),
      R => '0'
    );
\rxdata_int_2d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(19),
      Q => rxdata_int_2d(19),
      R => '0'
    );
\rxdata_int_2d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(1),
      Q => rxdata_int_2d(1),
      R => '0'
    );
\rxdata_int_2d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(20),
      Q => rxdata_int_2d(20),
      R => '0'
    );
\rxdata_int_2d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(21),
      Q => rxdata_int_2d(21),
      R => '0'
    );
\rxdata_int_2d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(22),
      Q => rxdata_int_2d(22),
      R => '0'
    );
\rxdata_int_2d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(23),
      Q => rxdata_int_2d(23),
      R => '0'
    );
\rxdata_int_2d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(24),
      Q => rxdata_int_2d(24),
      R => '0'
    );
\rxdata_int_2d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(25),
      Q => rxdata_int_2d(25),
      R => '0'
    );
\rxdata_int_2d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(26),
      Q => rxdata_int_2d(26),
      R => '0'
    );
\rxdata_int_2d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(27),
      Q => rxdata_int_2d(27),
      R => '0'
    );
\rxdata_int_2d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(28),
      Q => rxdata_int_2d(28),
      R => '0'
    );
\rxdata_int_2d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(29),
      Q => rxdata_int_2d(29),
      R => '0'
    );
\rxdata_int_2d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(2),
      Q => rxdata_int_2d(2),
      R => '0'
    );
\rxdata_int_2d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(30),
      Q => rxdata_int_2d(30),
      R => '0'
    );
\rxdata_int_2d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(31),
      Q => rxdata_int_2d(31),
      R => '0'
    );
\rxdata_int_2d_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(32),
      Q => rxdata_int_2d(32),
      R => '0'
    );
\rxdata_int_2d_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(33),
      Q => rxdata_int_2d(33),
      R => '0'
    );
\rxdata_int_2d_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(34),
      Q => rxdata_int_2d(34),
      R => '0'
    );
\rxdata_int_2d_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(35),
      Q => rxdata_int_2d(35),
      R => '0'
    );
\rxdata_int_2d_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(36),
      Q => rxdata_int_2d(36),
      R => '0'
    );
\rxdata_int_2d_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(37),
      Q => rxdata_int_2d(37),
      R => '0'
    );
\rxdata_int_2d_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(38),
      Q => rxdata_int_2d(38),
      R => '0'
    );
\rxdata_int_2d_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(39),
      Q => rxdata_int_2d(39),
      R => '0'
    );
\rxdata_int_2d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(3),
      Q => rxdata_int_2d(3),
      R => '0'
    );
\rxdata_int_2d_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(40),
      Q => rxdata_int_2d(40),
      R => '0'
    );
\rxdata_int_2d_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(41),
      Q => rxdata_int_2d(41),
      R => '0'
    );
\rxdata_int_2d_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(42),
      Q => rxdata_int_2d(42),
      R => '0'
    );
\rxdata_int_2d_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(43),
      Q => rxdata_int_2d(43),
      R => '0'
    );
\rxdata_int_2d_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(44),
      Q => rxdata_int_2d(44),
      R => '0'
    );
\rxdata_int_2d_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(45),
      Q => rxdata_int_2d(45),
      R => '0'
    );
\rxdata_int_2d_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(46),
      Q => rxdata_int_2d(46),
      R => '0'
    );
\rxdata_int_2d_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(47),
      Q => rxdata_int_2d(47),
      R => '0'
    );
\rxdata_int_2d_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(48),
      Q => rxdata_int_2d(48),
      R => '0'
    );
\rxdata_int_2d_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(49),
      Q => rxdata_int_2d(49),
      R => '0'
    );
\rxdata_int_2d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(4),
      Q => rxdata_int_2d(4),
      R => '0'
    );
\rxdata_int_2d_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(50),
      Q => rxdata_int_2d(50),
      R => '0'
    );
\rxdata_int_2d_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(51),
      Q => rxdata_int_2d(51),
      R => '0'
    );
\rxdata_int_2d_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(52),
      Q => rxdata_int_2d(52),
      R => '0'
    );
\rxdata_int_2d_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(53),
      Q => rxdata_int_2d(53),
      R => '0'
    );
\rxdata_int_2d_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(54),
      Q => rxdata_int_2d(54),
      R => '0'
    );
\rxdata_int_2d_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(55),
      Q => rxdata_int_2d(55),
      R => '0'
    );
\rxdata_int_2d_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(56),
      Q => rxdata_int_2d(56),
      R => '0'
    );
\rxdata_int_2d_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(57),
      Q => rxdata_int_2d(57),
      R => '0'
    );
\rxdata_int_2d_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(58),
      Q => rxdata_int_2d(58),
      R => '0'
    );
\rxdata_int_2d_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(59),
      Q => rxdata_int_2d(59),
      R => '0'
    );
\rxdata_int_2d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(5),
      Q => rxdata_int_2d(5),
      R => '0'
    );
\rxdata_int_2d_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(60),
      Q => rxdata_int_2d(60),
      R => '0'
    );
\rxdata_int_2d_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(61),
      Q => rxdata_int_2d(61),
      R => '0'
    );
\rxdata_int_2d_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(62),
      Q => rxdata_int_2d(62),
      R => '0'
    );
\rxdata_int_2d_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(63),
      Q => rxdata_int_2d(63),
      R => '0'
    );
\rxdata_int_2d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(6),
      Q => rxdata_int_2d(6),
      R => '0'
    );
\rxdata_int_2d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(7),
      Q => rxdata_int_2d(7),
      R => '0'
    );
\rxdata_int_2d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(8),
      Q => rxdata_int_2d(8),
      R => '0'
    );
\rxdata_int_2d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_rxusrclk2\,
      CE => '1',
      D => rxdata_int_1d(9),
      Q => rxdata_int_2d(9),
      R => '0'
    );
tx_reset_sync_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => core_drp_reset,
      I1 => lockedn,
      I2 => gtwiz_reset_tx_done_out,
      I3 => core_tx_reset,
      O => tx_reset_async
    );
tx_reset_sync_reg: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => tx_reset_async,
      Q => tx_reset_sync,
      R => '0'
    );
\txdata_int_1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(63),
      Q => txdata_int_1d(0),
      R => '0'
    );
\txdata_int_1d_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(53),
      Q => txdata_int_1d(10),
      R => '0'
    );
\txdata_int_1d_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(52),
      Q => txdata_int_1d(11),
      R => '0'
    );
\txdata_int_1d_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(51),
      Q => txdata_int_1d(12),
      R => '0'
    );
\txdata_int_1d_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(50),
      Q => txdata_int_1d(13),
      R => '0'
    );
\txdata_int_1d_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(49),
      Q => txdata_int_1d(14),
      R => '0'
    );
\txdata_int_1d_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(48),
      Q => txdata_int_1d(15),
      R => '0'
    );
\txdata_int_1d_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(47),
      Q => txdata_int_1d(16),
      R => '0'
    );
\txdata_int_1d_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(46),
      Q => txdata_int_1d(17),
      R => '0'
    );
\txdata_int_1d_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(45),
      Q => txdata_int_1d(18),
      R => '0'
    );
\txdata_int_1d_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(44),
      Q => txdata_int_1d(19),
      R => '0'
    );
\txdata_int_1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(62),
      Q => txdata_int_1d(1),
      R => '0'
    );
\txdata_int_1d_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(43),
      Q => txdata_int_1d(20),
      R => '0'
    );
\txdata_int_1d_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(42),
      Q => txdata_int_1d(21),
      R => '0'
    );
\txdata_int_1d_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(41),
      Q => txdata_int_1d(22),
      R => '0'
    );
\txdata_int_1d_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(40),
      Q => txdata_int_1d(23),
      R => '0'
    );
\txdata_int_1d_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(39),
      Q => txdata_int_1d(24),
      R => '0'
    );
\txdata_int_1d_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(38),
      Q => txdata_int_1d(25),
      R => '0'
    );
\txdata_int_1d_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(37),
      Q => txdata_int_1d(26),
      R => '0'
    );
\txdata_int_1d_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(36),
      Q => txdata_int_1d(27),
      R => '0'
    );
\txdata_int_1d_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(35),
      Q => txdata_int_1d(28),
      R => '0'
    );
\txdata_int_1d_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(34),
      Q => txdata_int_1d(29),
      R => '0'
    );
\txdata_int_1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(61),
      Q => txdata_int_1d(2),
      R => '0'
    );
\txdata_int_1d_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(33),
      Q => txdata_int_1d(30),
      R => '0'
    );
\txdata_int_1d_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(32),
      Q => txdata_int_1d(31),
      R => '0'
    );
\txdata_int_1d_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(31),
      Q => txdata_int_1d(32),
      R => '0'
    );
\txdata_int_1d_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(30),
      Q => txdata_int_1d(33),
      R => '0'
    );
\txdata_int_1d_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(29),
      Q => txdata_int_1d(34),
      R => '0'
    );
\txdata_int_1d_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(28),
      Q => txdata_int_1d(35),
      R => '0'
    );
\txdata_int_1d_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(27),
      Q => txdata_int_1d(36),
      R => '0'
    );
\txdata_int_1d_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(26),
      Q => txdata_int_1d(37),
      R => '0'
    );
\txdata_int_1d_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(25),
      Q => txdata_int_1d(38),
      R => '0'
    );
\txdata_int_1d_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(24),
      Q => txdata_int_1d(39),
      R => '0'
    );
\txdata_int_1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(60),
      Q => txdata_int_1d(3),
      R => '0'
    );
\txdata_int_1d_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(23),
      Q => txdata_int_1d(40),
      R => '0'
    );
\txdata_int_1d_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(22),
      Q => txdata_int_1d(41),
      R => '0'
    );
\txdata_int_1d_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(21),
      Q => txdata_int_1d(42),
      R => '0'
    );
\txdata_int_1d_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(20),
      Q => txdata_int_1d(43),
      R => '0'
    );
\txdata_int_1d_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(19),
      Q => txdata_int_1d(44),
      R => '0'
    );
\txdata_int_1d_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(18),
      Q => txdata_int_1d(45),
      R => '0'
    );
\txdata_int_1d_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(17),
      Q => txdata_int_1d(46),
      R => '0'
    );
\txdata_int_1d_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(16),
      Q => txdata_int_1d(47),
      R => '0'
    );
\txdata_int_1d_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(15),
      Q => txdata_int_1d(48),
      R => '0'
    );
\txdata_int_1d_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(14),
      Q => txdata_int_1d(49),
      R => '0'
    );
\txdata_int_1d_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(59),
      Q => txdata_int_1d(4),
      R => '0'
    );
\txdata_int_1d_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(13),
      Q => txdata_int_1d(50),
      R => '0'
    );
\txdata_int_1d_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(12),
      Q => txdata_int_1d(51),
      R => '0'
    );
\txdata_int_1d_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(11),
      Q => txdata_int_1d(52),
      R => '0'
    );
\txdata_int_1d_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(10),
      Q => txdata_int_1d(53),
      R => '0'
    );
\txdata_int_1d_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(9),
      Q => txdata_int_1d(54),
      R => '0'
    );
\txdata_int_1d_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(8),
      Q => txdata_int_1d(55),
      R => '0'
    );
\txdata_int_1d_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(7),
      Q => txdata_int_1d(56),
      R => '0'
    );
\txdata_int_1d_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(6),
      Q => txdata_int_1d(57),
      R => '0'
    );
\txdata_int_1d_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(5),
      Q => txdata_int_1d(58),
      R => '0'
    );
\txdata_int_1d_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(4),
      Q => txdata_int_1d(59),
      R => '0'
    );
\txdata_int_1d_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(58),
      Q => txdata_int_1d(5),
      R => '0'
    );
\txdata_int_1d_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(3),
      Q => txdata_int_1d(60),
      R => '0'
    );
\txdata_int_1d_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(2),
      Q => txdata_int_1d(61),
      R => '0'
    );
\txdata_int_1d_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(1),
      Q => txdata_int_1d(62),
      R => '0'
    );
\txdata_int_1d_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(0),
      Q => txdata_int_1d(63),
      R => '0'
    );
\txdata_int_1d_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(57),
      Q => txdata_int_1d(6),
      R => '0'
    );
\txdata_int_1d_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(56),
      Q => txdata_int_1d(7),
      R => '0'
    );
\txdata_int_1d_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(55),
      Q => txdata_int_1d(8),
      R => '0'
    );
\txdata_int_1d_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => gt_0_txdata(54),
      Q => txdata_int_1d(9),
      R => '0'
    );
\txdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(0),
      Q => txdata(0),
      R => '0'
    );
\txdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(10),
      Q => txdata(10),
      R => '0'
    );
\txdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(11),
      Q => txdata(11),
      R => '0'
    );
\txdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(12),
      Q => txdata(12),
      R => '0'
    );
\txdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(13),
      Q => txdata(13),
      R => '0'
    );
\txdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(14),
      Q => txdata(14),
      R => '0'
    );
\txdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(15),
      Q => txdata(15),
      R => '0'
    );
\txdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(16),
      Q => txdata(16),
      R => '0'
    );
\txdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(17),
      Q => txdata(17),
      R => '0'
    );
\txdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(18),
      Q => txdata(18),
      R => '0'
    );
\txdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(19),
      Q => txdata(19),
      R => '0'
    );
\txdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(1),
      Q => txdata(1),
      R => '0'
    );
\txdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(20),
      Q => txdata(20),
      R => '0'
    );
\txdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(21),
      Q => txdata(21),
      R => '0'
    );
\txdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(22),
      Q => txdata(22),
      R => '0'
    );
\txdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(23),
      Q => txdata(23),
      R => '0'
    );
\txdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(24),
      Q => txdata(24),
      R => '0'
    );
\txdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(25),
      Q => txdata(25),
      R => '0'
    );
\txdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(26),
      Q => txdata(26),
      R => '0'
    );
\txdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(27),
      Q => txdata(27),
      R => '0'
    );
\txdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(28),
      Q => txdata(28),
      R => '0'
    );
\txdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(29),
      Q => txdata(29),
      R => '0'
    );
\txdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(2),
      Q => txdata(2),
      R => '0'
    );
\txdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(30),
      Q => txdata(30),
      R => '0'
    );
\txdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(31),
      Q => txdata(31),
      R => '0'
    );
\txdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(32),
      Q => txdata(32),
      R => '0'
    );
\txdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(33),
      Q => txdata(33),
      R => '0'
    );
\txdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(34),
      Q => txdata(34),
      R => '0'
    );
\txdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(35),
      Q => txdata(35),
      R => '0'
    );
\txdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(36),
      Q => txdata(36),
      R => '0'
    );
\txdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(37),
      Q => txdata(37),
      R => '0'
    );
\txdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(38),
      Q => txdata(38),
      R => '0'
    );
\txdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(39),
      Q => txdata(39),
      R => '0'
    );
\txdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(3),
      Q => txdata(3),
      R => '0'
    );
\txdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(40),
      Q => txdata(40),
      R => '0'
    );
\txdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(41),
      Q => txdata(41),
      R => '0'
    );
\txdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(42),
      Q => txdata(42),
      R => '0'
    );
\txdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(43),
      Q => txdata(43),
      R => '0'
    );
\txdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(44),
      Q => txdata(44),
      R => '0'
    );
\txdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(45),
      Q => txdata(45),
      R => '0'
    );
\txdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(46),
      Q => txdata(46),
      R => '0'
    );
\txdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(47),
      Q => txdata(47),
      R => '0'
    );
\txdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(48),
      Q => txdata(48),
      R => '0'
    );
\txdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(49),
      Q => txdata(49),
      R => '0'
    );
\txdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(4),
      Q => txdata(4),
      R => '0'
    );
\txdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(50),
      Q => txdata(50),
      R => '0'
    );
\txdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(51),
      Q => txdata(51),
      R => '0'
    );
\txdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(52),
      Q => txdata(52),
      R => '0'
    );
\txdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(53),
      Q => txdata(53),
      R => '0'
    );
\txdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(54),
      Q => txdata(54),
      R => '0'
    );
\txdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(55),
      Q => txdata(55),
      R => '0'
    );
\txdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(56),
      Q => txdata(56),
      R => '0'
    );
\txdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(57),
      Q => txdata(57),
      R => '0'
    );
\txdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(58),
      Q => txdata(58),
      R => '0'
    );
\txdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(59),
      Q => txdata(59),
      R => '0'
    );
\txdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(5),
      Q => txdata(5),
      R => '0'
    );
\txdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(60),
      Q => txdata(60),
      R => '0'
    );
\txdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(61),
      Q => txdata(61),
      R => '0'
    );
\txdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(62),
      Q => txdata(62),
      R => '0'
    );
\txdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(63),
      Q => txdata(63),
      R => '0'
    );
\txdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(6),
      Q => txdata(6),
      R => '0'
    );
\txdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(7),
      Q => txdata(7),
      R => '0'
    );
\txdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(8),
      Q => txdata(8),
      R => '0'
    );
\txdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^gt_txusrclk2\,
      CE => '1',
      D => txdata_int_1d(9),
      Q => txdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity interlaken_0 is
  port (
    gt_ref_clk0_p : in STD_LOGIC;
    gt_ref_clk0_n : in STD_LOGIC;
    gt_refclk_out : out STD_LOGIC;
    init_clk : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    gt_txusrclk2 : out STD_LOGIC;
    gtpowergood_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_rxusrclk2 : out STD_LOGIC;
    gt_rx_reset_done_inv : out STD_LOGIC;
    usr_rx_reset : out STD_LOGIC;
    gt0_rxp_in : in STD_LOGIC;
    gt0_rxn_in : in STD_LOGIC;
    gt_tx_reset_done_inv : out STD_LOGIC;
    usr_tx_reset : out STD_LOGIC;
    gt0_txn_out : out STD_LOGIC;
    gt0_txp_out : out STD_LOGIC;
    core_rx_reset : in STD_LOGIC;
    rx_ovfout : out STD_LOGIC;
    rx_dataout0 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout0 : out STD_LOGIC;
    rx_sopout0 : out STD_LOGIC;
    rx_eopout0 : out STD_LOGIC;
    rx_errout0 : out STD_LOGIC;
    rx_mtyout0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout1 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout1 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout1 : out STD_LOGIC;
    rx_sopout1 : out STD_LOGIC;
    rx_eopout1 : out STD_LOGIC;
    rx_errout1 : out STD_LOGIC;
    rx_mtyout1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout2 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout2 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout2 : out STD_LOGIC;
    rx_sopout2 : out STD_LOGIC;
    rx_eopout2 : out STD_LOGIC;
    rx_errout2 : out STD_LOGIC;
    rx_mtyout2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_dataout3 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    rx_chanout3 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    rx_enaout3 : out STD_LOGIC;
    rx_sopout3 : out STD_LOGIC;
    rx_eopout3 : out STD_LOGIC;
    rx_errout3 : out STD_LOGIC;
    rx_mtyout3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    core_tx_reset : in STD_LOGIC;
    tx_rdyout : out STD_LOGIC;
    tx_ovfout : out STD_LOGIC;
    tx_datain0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain0 : in STD_LOGIC;
    tx_sopin0 : in STD_LOGIC;
    tx_eopin0 : in STD_LOGIC;
    tx_errin0 : in STD_LOGIC;
    tx_mtyin0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin0 : in STD_LOGIC;
    tx_datain1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin1 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain1 : in STD_LOGIC;
    tx_sopin1 : in STD_LOGIC;
    tx_eopin1 : in STD_LOGIC;
    tx_errin1 : in STD_LOGIC;
    tx_mtyin1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin1 : in STD_LOGIC;
    tx_datain2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain2 : in STD_LOGIC;
    tx_sopin2 : in STD_LOGIC;
    tx_eopin2 : in STD_LOGIC;
    tx_errin2 : in STD_LOGIC;
    tx_mtyin2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin2 : in STD_LOGIC;
    tx_datain3 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    tx_chanin3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    tx_enain3 : in STD_LOGIC;
    tx_sopin3 : in STD_LOGIC;
    tx_eopin3 : in STD_LOGIC;
    tx_errin3 : in STD_LOGIC;
    tx_mtyin3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_bctlin3 : in STD_LOGIC;
    ctl_tx_enable : in STD_LOGIC;
    lockedn : in STD_LOGIC;
    core_drp_reset : in STD_LOGIC;
    drp_clk : in STD_LOGIC;
    drp_en : in STD_LOGIC;
    drp_we : in STD_LOGIC;
    drp_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    drp_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_rdy : out STD_LOGIC;
    core_clk : in STD_LOGIC;
    lbus_clk : in STD_LOGIC;
    gtwiz_reset_tx_datapath : in STD_LOGIC;
    gtwiz_reset_rx_datapath : in STD_LOGIC;
    ctl_tx_diagword_lanestat : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ctl_tx_diagword_intfstat : in STD_LOGIC;
    ctl_tx_mubits : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_tx_underflow_err : out STD_LOGIC;
    stat_tx_burst_err : out STD_LOGIC;
    stat_tx_overflow_err : out STD_LOGIC;
    ctl_rx_force_resync : in STD_LOGIC;
    stat_rx_diagword_lanestat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_diagword_intfstat : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_valid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_crc32_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mubits : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stat_rx_mubits_updated : out STD_LOGIC;
    stat_rx_word_sync : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_synced_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_framing_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_bad_type_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_descram_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_len_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_mf_repeat_err : out STD_LOGIC_VECTOR ( 11 downto 0 );
    stat_rx_aligned : out STD_LOGIC;
    stat_rx_misaligned : out STD_LOGIC;
    stat_rx_aligned_err : out STD_LOGIC;
    stat_rx_crc24_err : out STD_LOGIC;
    stat_rx_msop_err : out STD_LOGIC;
    stat_rx_meop_err : out STD_LOGIC;
    stat_rx_overflow_err : out STD_LOGIC;
    stat_rx_burstmax_err : out STD_LOGIC;
    stat_rx_burst_err : out STD_LOGIC;
    gt_txresetdone_int : out STD_LOGIC;
    gt_rxresetdone_int : out STD_LOGIC;
    gt_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of interlaken_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of interlaken_0 : entity is "interlaken_0,interlaken,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of interlaken_0 : entity is "yes";
  attribute PARTIALLYOBFUSCATED : boolean;
  attribute PARTIALLYOBFUSCATED of interlaken_0 : entity is std.standard.true;
end interlaken_0;

architecture STRUCTURE of interlaken_0 is
  signal NLW_inst_gt0_drprdy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt10_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt10_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt11_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt11_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt1_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt2_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt3_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt4_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt4_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt5_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt5_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt6_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt6_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt7_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt7_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt8_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt8_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt9_txn_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt9_txp_out_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_disc_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_req_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_gt0_drpdo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_gt_eyescandataerror_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gt_rxbufstatus_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_gt_rxprbserr_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gt_rxresetdone_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gt_txbufstatus_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gt_txresetdone_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rx_bypass_dataout00_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout01_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout02_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout03_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout04_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout05_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout06_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout07_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout08_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout09_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout10_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_dataout11_UNCONNECTED : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal NLW_inst_rx_bypass_enaout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_rx_bypass_is_availout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_rx_bypass_is_overflowout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_rx_bypass_is_syncedout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_stat_rx_fc_stat_UNCONNECTED : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal NLW_inst_stat_rx_retrans_latency_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_stat_rx_retrans_seq_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_stat_rx_retrans_state_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_stat_rx_retrans_subseq_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 643 downto 0 );
  attribute C_ADD_GT_CNRL_STS_PORTS : integer;
  attribute C_ADD_GT_CNRL_STS_PORTS of inst : label is 0;
  attribute C_BURSTMAX : string;
  attribute C_BURSTMAX of inst : label is "2'b11";
  attribute C_BURSTSHORT : string;
  attribute C_BURSTSHORT of inst : label is "3'b001";
  attribute C_CHAN_EXT : string;
  attribute C_CHAN_EXT of inst : label is "2'b00";
  attribute C_CLOCKING_MODE : string;
  attribute C_CLOCKING_MODE of inst : label is "Synchronous";
  attribute C_ENABLE_ERR_INJ : integer;
  attribute C_ENABLE_ERR_INJ of inst : label is 0;
  attribute C_ENABLE_IN_BAND_FC : integer;
  attribute C_ENABLE_IN_BAND_FC of inst : label is 0;
  attribute C_ENABLE_OUT_BAND_FC : integer;
  attribute C_ENABLE_OUT_BAND_FC of inst : label is 0;
  attribute C_ENABLE_PIPELINE_REG : integer;
  attribute C_ENABLE_PIPELINE_REG of inst : label is 0;
  attribute C_EN_RETRANS : integer;
  attribute C_EN_RETRANS of inst : label is 0;
  attribute C_GT_REF_CLK_FREQ : string;
  attribute C_GT_REF_CLK_FREQ of inst : label is "156.250000";
  attribute C_GT_TYPE : string;
  attribute C_GT_TYPE of inst : label is "GTY";
  attribute C_INCLUDE_SHARED_LOGIC : integer;
  attribute C_INCLUDE_SHARED_LOGIC of inst : label is 2;
  attribute C_INS_LOSS_NYQ : integer;
  attribute C_INS_LOSS_NYQ of inst : label is 10;
  attribute C_IN_BAND_FC_CALLEN : string;
  attribute C_IN_BAND_FC_CALLEN of inst : label is "7'b0000000";
  attribute C_LANE10_GT_LOC : string;
  attribute C_LANE10_GT_LOC of inst : label is "X0Y9";
  attribute C_LANE11_GT_LOC : string;
  attribute C_LANE11_GT_LOC of inst : label is "NA";
  attribute C_LANE12_GT_LOC : string;
  attribute C_LANE12_GT_LOC of inst : label is "NA";
  attribute C_LANE1_GT_LOC : string;
  attribute C_LANE1_GT_LOC of inst : label is "X1Y48";
  attribute C_LANE2_GT_LOC : string;
  attribute C_LANE2_GT_LOC of inst : label is "NA";
  attribute C_LANE3_GT_LOC : string;
  attribute C_LANE3_GT_LOC of inst : label is "NA";
  attribute C_LANE4_GT_LOC : string;
  attribute C_LANE4_GT_LOC of inst : label is "NA";
  attribute C_LANE5_GT_LOC : string;
  attribute C_LANE5_GT_LOC of inst : label is "NA";
  attribute C_LANE6_GT_LOC : string;
  attribute C_LANE6_GT_LOC of inst : label is "NA";
  attribute C_LANE7_GT_LOC : string;
  attribute C_LANE7_GT_LOC of inst : label is "NA";
  attribute C_LANE8_GT_LOC : string;
  attribute C_LANE8_GT_LOC of inst : label is "NA";
  attribute C_LANE9_GT_LOC : string;
  attribute C_LANE9_GT_LOC of inst : label is "NA";
  attribute C_LINE_RATE : string;
  attribute C_LINE_RATE of inst : label is "10.312500";
  attribute C_MFRAMELEN_MINUS1 : string;
  attribute C_MFRAMELEN_MINUS1 of inst : label is "16'b0000011111101011";
  attribute C_NUM_LANES : integer;
  attribute C_NUM_LANES of inst : label is 1;
  attribute C_OPERATING_MODE : string;
  attribute C_OPERATING_MODE of inst : label is "3";
  attribute C_OUT_BAND_FC_CALLEN : string;
  attribute C_OUT_BAND_FC_CALLEN of inst : label is "7'b0000000";
  attribute C_PACKET_MODE : string;
  attribute C_PACKET_MODE of inst : label is "packet_mode";
  attribute C_RX_EQ_MODE : string;
  attribute C_RX_EQ_MODE of inst : label is "Auto";
  attribute C_RX_RETRANS_MULT : integer;
  attribute C_RX_RETRANS_MULT of inst : label is 1;
  attribute C_RX_RETRANS_RETRY : integer;
  attribute C_RX_RETRANS_RETRY of inst : label is 2;
  attribute C_RX_RETRANS_TIMER1 : integer;
  attribute C_RX_RETRANS_TIMER1 of inst : label is 2048;
  attribute C_RX_RETRANS_TIMER2 : integer;
  attribute C_RX_RETRANS_TIMER2 of inst : label is 0;
  attribute C_RX_RETRANS_WDOG : integer;
  attribute C_RX_RETRANS_WDOG of inst : label is 0;
  attribute C_RX_RETRANS_WRAP_TIMER : integer;
  attribute C_RX_RETRANS_WRAP_TIMER of inst : label is 0;
  attribute C_TX_RETRANS_DEPTH : integer;
  attribute C_TX_RETRANS_DEPTH of inst : label is 2048;
  attribute C_TX_RETRANS_MULT : integer;
  attribute C_TX_RETRANS_MULT of inst : label is 1;
  attribute C_TX_RETRANS_RAM_BANKS : integer;
  attribute C_TX_RETRANS_RAM_BANKS of inst : label is 4;
  attribute C_TX_RLIM_DELTA : integer;
  attribute C_TX_RLIM_DELTA of inst : label is 384;
  attribute C_TX_RLIM_ENABLE : integer;
  attribute C_TX_RLIM_ENABLE of inst : label is 0;
  attribute C_TX_RLIM_INTV : integer;
  attribute C_TX_RLIM_INTV of inst : label is 16;
  attribute C_TX_RLIM_MAX : integer;
  attribute C_TX_RLIM_MAX of inst : label is 384;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute GT_COLUMN : string;
  attribute GT_COLUMN of inst : label is "Right";
begin
  gt_rxresetdone_int <= 'Z';
  gt_txresetdone_int <= 'Z';
inst: entity work.interlaken_0_interlaken_0_wrapper
     port map (
      core_clk => core_clk,
      core_drp_reset => core_drp_reset,
      core_rx_reset => core_rx_reset,
      core_tx_reset => core_tx_reset,
      ctl_rx_force_resync => ctl_rx_force_resync,
      ctl_rx_retrans_ack => '0',
      ctl_rx_retrans_enable => '0',
      ctl_rx_retrans_errin => '0',
      ctl_rx_retrans_force_req => '0',
      ctl_rx_retrans_reset => '0',
      ctl_rx_retrans_reset_mode => '0',
      ctl_tx_diagword_intfstat => ctl_tx_diagword_intfstat,
      ctl_tx_diagword_lanestat(11 downto 0) => ctl_tx_diagword_lanestat(11 downto 0),
      ctl_tx_enable => ctl_tx_enable,
      ctl_tx_errinj_biterr_go => '0',
      ctl_tx_errinj_biterr_lane(3 downto 0) => B"0000",
      ctl_tx_fc_stat(255 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      ctl_tx_mubits(7 downto 0) => ctl_tx_mubits(7 downto 0),
      ctl_tx_retrans_enable => '0',
      ctl_tx_retrans_ram_perrin => '0',
      ctl_tx_retrans_ram_rdata(643 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      ctl_tx_retrans_req => '0',
      ctl_tx_retrans_req_valid => '0',
      ctl_tx_rlim_delta(11 downto 0) => B"000000000000",
      ctl_tx_rlim_enable => '0',
      ctl_tx_rlim_intv(7 downto 0) => B"00000000",
      ctl_tx_rlim_max(11 downto 0) => B"000000000000",
      drp_addr(9 downto 0) => drp_addr(9 downto 0),
      drp_clk => drp_clk,
      drp_di(15 downto 0) => drp_di(15 downto 0),
      drp_do(15 downto 0) => drp_do(15 downto 0),
      drp_en => drp_en,
      drp_rdy => drp_rdy,
      drp_we => drp_we,
      gt0_drpaddr(9 downto 0) => B"0000000000",
      gt0_drpdi(15 downto 0) => B"0000000000000000",
      gt0_drpdo(15 downto 0) => NLW_inst_gt0_drpdo_UNCONNECTED(15 downto 0),
      gt0_drpen => '0',
      gt0_drprdy => NLW_inst_gt0_drprdy_UNCONNECTED,
      gt0_drpwe => '0',
      gt0_rxn_in => gt0_rxn_in,
      gt0_rxp_in => gt0_rxp_in,
      gt0_txn_out => gt0_txn_out,
      gt0_txp_out => gt0_txp_out,
      gt10_rxn_in => '0',
      gt10_rxp_in => '0',
      gt10_txn_out => NLW_inst_gt10_txn_out_UNCONNECTED,
      gt10_txp_out => NLW_inst_gt10_txp_out_UNCONNECTED,
      gt11_rxn_in => '0',
      gt11_rxp_in => '0',
      gt11_txn_out => NLW_inst_gt11_txn_out_UNCONNECTED,
      gt11_txp_out => NLW_inst_gt11_txp_out_UNCONNECTED,
      gt1_rxn_in => '0',
      gt1_rxp_in => '0',
      gt1_txn_out => NLW_inst_gt1_txn_out_UNCONNECTED,
      gt1_txp_out => NLW_inst_gt1_txp_out_UNCONNECTED,
      gt2_rxn_in => '0',
      gt2_rxp_in => '0',
      gt2_txn_out => NLW_inst_gt2_txn_out_UNCONNECTED,
      gt2_txp_out => NLW_inst_gt2_txp_out_UNCONNECTED,
      gt3_rxn_in => '0',
      gt3_rxp_in => '0',
      gt3_txn_out => NLW_inst_gt3_txn_out_UNCONNECTED,
      gt3_txp_out => NLW_inst_gt3_txp_out_UNCONNECTED,
      gt4_rxn_in => '0',
      gt4_rxp_in => '0',
      gt4_txn_out => NLW_inst_gt4_txn_out_UNCONNECTED,
      gt4_txp_out => NLW_inst_gt4_txp_out_UNCONNECTED,
      gt5_rxn_in => '0',
      gt5_rxp_in => '0',
      gt5_txn_out => NLW_inst_gt5_txn_out_UNCONNECTED,
      gt5_txp_out => NLW_inst_gt5_txp_out_UNCONNECTED,
      gt6_rxn_in => '0',
      gt6_rxp_in => '0',
      gt6_txn_out => NLW_inst_gt6_txn_out_UNCONNECTED,
      gt6_txp_out => NLW_inst_gt6_txp_out_UNCONNECTED,
      gt7_rxn_in => '0',
      gt7_rxp_in => '0',
      gt7_txn_out => NLW_inst_gt7_txn_out_UNCONNECTED,
      gt7_txp_out => NLW_inst_gt7_txp_out_UNCONNECTED,
      gt8_rxn_in => '0',
      gt8_rxp_in => '0',
      gt8_txn_out => NLW_inst_gt8_txn_out_UNCONNECTED,
      gt8_txp_out => NLW_inst_gt8_txp_out_UNCONNECTED,
      gt9_rxn_in => '0',
      gt9_rxp_in => '0',
      gt9_txn_out => NLW_inst_gt9_txn_out_UNCONNECTED,
      gt9_txp_out => NLW_inst_gt9_txp_out_UNCONNECTED,
      gt_drp_done => '0',
      gt_drpclk => '0',
      gt_eyescandataerror(0) => NLW_inst_gt_eyescandataerror_UNCONNECTED(0),
      gt_eyescanreset(0) => '0',
      gt_eyescantrigger(0) => '0',
      gt_loopback_in(2 downto 0) => gt_loopback_in(2 downto 0),
      gt_ref_clk0_n => gt_ref_clk0_n,
      gt_ref_clk0_p => gt_ref_clk0_p,
      gt_refclk_out => gt_refclk_out,
      gt_rx_reset_done_inv => gt_rx_reset_done_inv,
      gt_rxbufstatus(2 downto 0) => NLW_inst_gt_rxbufstatus_UNCONNECTED(2 downto 0),
      gt_rxcdrhold(0) => '0',
      gt_rxdfelpmreset(0) => '0',
      gt_rxlpmen(0) => '0',
      gt_rxpolarity(0) => '0',
      gt_rxprbscntreset(0) => '0',
      gt_rxprbserr(0) => NLW_inst_gt_rxprbserr_UNCONNECTED(0),
      gt_rxprbssel(3 downto 0) => B"0000",
      gt_rxrate(2 downto 0) => B"000",
      gt_rxresetdone(0) => NLW_inst_gt_rxresetdone_UNCONNECTED(0),
      gt_rxusrclk2 => gt_rxusrclk2,
      gt_tx_reset_done_inv => gt_tx_reset_done_inv,
      gt_txbufstatus(1 downto 0) => NLW_inst_gt_txbufstatus_UNCONNECTED(1 downto 0),
      gt_txdiffctrl(4 downto 0) => B"00000",
      gt_txpolarity(0) => '0',
      gt_txpostcursor(4 downto 0) => B"00000",
      gt_txprbsforceerr(0) => '0',
      gt_txprbssel(3 downto 0) => B"0000",
      gt_txprecursor(4 downto 0) => B"00000",
      gt_txresetdone(0) => NLW_inst_gt_txresetdone_UNCONNECTED(0),
      gt_txusrclk2 => gt_txusrclk2,
      gtpowergood_out(0) => gtpowergood_out(0),
      gtwiz_reset_qpll0lock_in(0) => '0',
      gtwiz_reset_qpll0reset_out(0) => NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED(0),
      gtwiz_reset_qpll1lock_in(0) => '0',
      gtwiz_reset_qpll1reset_out(0) => NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED(0),
      gtwiz_reset_rx_datapath_in => gtwiz_reset_rx_datapath,
      gtwiz_reset_tx_datapath_in => gtwiz_reset_tx_datapath,
      init_clk => init_clk,
      lbus_clk => lbus_clk,
      lockedn => lockedn,
      qpll0clk_in(0) => '0',
      qpll0refclk_in(0) => '0',
      qpll1clk_in(0) => '0',
      qpll1refclk_in(0) => '0',
      rx_bypass_dataout00(65 downto 0) => NLW_inst_rx_bypass_dataout00_UNCONNECTED(65 downto 0),
      rx_bypass_dataout01(65 downto 0) => NLW_inst_rx_bypass_dataout01_UNCONNECTED(65 downto 0),
      rx_bypass_dataout02(65 downto 0) => NLW_inst_rx_bypass_dataout02_UNCONNECTED(65 downto 0),
      rx_bypass_dataout03(65 downto 0) => NLW_inst_rx_bypass_dataout03_UNCONNECTED(65 downto 0),
      rx_bypass_dataout04(65 downto 0) => NLW_inst_rx_bypass_dataout04_UNCONNECTED(65 downto 0),
      rx_bypass_dataout05(65 downto 0) => NLW_inst_rx_bypass_dataout05_UNCONNECTED(65 downto 0),
      rx_bypass_dataout06(65 downto 0) => NLW_inst_rx_bypass_dataout06_UNCONNECTED(65 downto 0),
      rx_bypass_dataout07(65 downto 0) => NLW_inst_rx_bypass_dataout07_UNCONNECTED(65 downto 0),
      rx_bypass_dataout08(65 downto 0) => NLW_inst_rx_bypass_dataout08_UNCONNECTED(65 downto 0),
      rx_bypass_dataout09(65 downto 0) => NLW_inst_rx_bypass_dataout09_UNCONNECTED(65 downto 0),
      rx_bypass_dataout10(65 downto 0) => NLW_inst_rx_bypass_dataout10_UNCONNECTED(65 downto 0),
      rx_bypass_dataout11(65 downto 0) => NLW_inst_rx_bypass_dataout11_UNCONNECTED(65 downto 0),
      rx_bypass_enaout(11 downto 0) => NLW_inst_rx_bypass_enaout_UNCONNECTED(11 downto 0),
      rx_bypass_force_realignin => '0',
      rx_bypass_is_availout(11 downto 0) => NLW_inst_rx_bypass_is_availout_UNCONNECTED(11 downto 0),
      rx_bypass_is_badlyframedout(11 downto 0) => NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED(11 downto 0),
      rx_bypass_is_overflowout(11 downto 0) => NLW_inst_rx_bypass_is_overflowout_UNCONNECTED(11 downto 0),
      rx_bypass_is_syncedout(11 downto 0) => NLW_inst_rx_bypass_is_syncedout_UNCONNECTED(11 downto 0),
      rx_bypass_is_syncwordout(11 downto 0) => NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED(11 downto 0),
      rx_bypass_rdin => '0',
      rx_chanout0(10 downto 0) => rx_chanout0(10 downto 0),
      rx_chanout1(10 downto 0) => rx_chanout1(10 downto 0),
      rx_chanout2(10 downto 0) => rx_chanout2(10 downto 0),
      rx_chanout3(10 downto 0) => rx_chanout3(10 downto 0),
      rx_dataout0(127 downto 0) => rx_dataout0(127 downto 0),
      rx_dataout1(127 downto 0) => rx_dataout1(127 downto 0),
      rx_dataout2(127 downto 0) => rx_dataout2(127 downto 0),
      rx_dataout3(127 downto 0) => rx_dataout3(127 downto 0),
      rx_enaout0 => rx_enaout0,
      rx_enaout1 => rx_enaout1,
      rx_enaout2 => rx_enaout2,
      rx_enaout3 => rx_enaout3,
      rx_eopout0 => rx_eopout0,
      rx_eopout1 => rx_eopout1,
      rx_eopout2 => rx_eopout2,
      rx_eopout3 => rx_eopout3,
      rx_errout0 => rx_errout0,
      rx_errout1 => rx_errout1,
      rx_errout2 => rx_errout2,
      rx_errout3 => rx_errout3,
      rx_mtyout0(3 downto 0) => rx_mtyout0(3 downto 0),
      rx_mtyout1(3 downto 0) => rx_mtyout1(3 downto 0),
      rx_mtyout2(3 downto 0) => rx_mtyout2(3 downto 0),
      rx_mtyout3(3 downto 0) => rx_mtyout3(3 downto 0),
      rx_ovfout => rx_ovfout,
      rx_sopout0 => rx_sopout0,
      rx_sopout1 => rx_sopout1,
      rx_sopout2 => rx_sopout2,
      rx_sopout3 => rx_sopout3,
      stat_rx_aligned => stat_rx_aligned,
      stat_rx_aligned_err => stat_rx_aligned_err,
      stat_rx_bad_type_err(11 downto 0) => stat_rx_bad_type_err(11 downto 0),
      stat_rx_burst_err => stat_rx_burst_err,
      stat_rx_burstmax_err => stat_rx_burstmax_err,
      stat_rx_crc24_err => stat_rx_crc24_err,
      stat_rx_crc32_err(11 downto 0) => stat_rx_crc32_err(11 downto 0),
      stat_rx_crc32_valid(11 downto 0) => stat_rx_crc32_valid(11 downto 0),
      stat_rx_descram_err(11 downto 0) => stat_rx_descram_err(11 downto 0),
      stat_rx_diagword_intfstat(11 downto 0) => stat_rx_diagword_intfstat(11 downto 0),
      stat_rx_diagword_lanestat(11 downto 0) => stat_rx_diagword_lanestat(11 downto 0),
      stat_rx_fc_stat(255 downto 0) => NLW_inst_stat_rx_fc_stat_UNCONNECTED(255 downto 0),
      stat_rx_framing_err(11 downto 0) => stat_rx_framing_err(11 downto 0),
      stat_rx_meop_err => stat_rx_meop_err,
      stat_rx_mf_err(11 downto 0) => stat_rx_mf_err(11 downto 0),
      stat_rx_mf_len_err(11 downto 0) => stat_rx_mf_len_err(11 downto 0),
      stat_rx_mf_repeat_err(11 downto 0) => stat_rx_mf_repeat_err(11 downto 0),
      stat_rx_misaligned => stat_rx_misaligned,
      stat_rx_msop_err => stat_rx_msop_err,
      stat_rx_mubits(7 downto 0) => stat_rx_mubits(7 downto 0),
      stat_rx_mubits_updated => stat_rx_mubits_updated,
      stat_rx_overflow_err => stat_rx_overflow_err,
      stat_rx_retrans_crc24_err => NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED,
      stat_rx_retrans_disc => NLW_inst_stat_rx_retrans_disc_UNCONNECTED,
      stat_rx_retrans_latency(15 downto 0) => NLW_inst_stat_rx_retrans_latency_UNCONNECTED(15 downto 0),
      stat_rx_retrans_req => NLW_inst_stat_rx_retrans_req_UNCONNECTED,
      stat_rx_retrans_retry_err => NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED,
      stat_rx_retrans_seq(7 downto 0) => NLW_inst_stat_rx_retrans_seq_UNCONNECTED(7 downto 0),
      stat_rx_retrans_seq_updated => NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED,
      stat_rx_retrans_state(2 downto 0) => NLW_inst_stat_rx_retrans_state_UNCONNECTED(2 downto 0),
      stat_rx_retrans_subseq(4 downto 0) => NLW_inst_stat_rx_retrans_subseq_UNCONNECTED(4 downto 0),
      stat_rx_retrans_wdog_err => NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED,
      stat_rx_retrans_wrap_err => NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED,
      stat_rx_synced(11 downto 0) => stat_rx_synced(11 downto 0),
      stat_rx_synced_err(11 downto 0) => stat_rx_synced_err(11 downto 0),
      stat_rx_word_sync(11 downto 0) => stat_rx_word_sync(11 downto 0),
      stat_tx_burst_err => stat_tx_burst_err,
      stat_tx_errinj_biterr_done => NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED,
      stat_tx_overflow_err => stat_tx_overflow_err,
      stat_tx_retrans_burst_err => NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED,
      stat_tx_retrans_busy => NLW_inst_stat_tx_retrans_busy_UNCONNECTED,
      stat_tx_retrans_ram_perrout => NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED,
      stat_tx_retrans_ram_raddr(8 downto 0) => NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED(8 downto 0),
      stat_tx_retrans_ram_rd_b0 => NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED,
      stat_tx_retrans_ram_rd_b1 => NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED,
      stat_tx_retrans_ram_rd_b2 => NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED,
      stat_tx_retrans_ram_rd_b3 => NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED,
      stat_tx_retrans_ram_rsel(1 downto 0) => NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED(1 downto 0),
      stat_tx_retrans_ram_waddr(8 downto 0) => NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED(8 downto 0),
      stat_tx_retrans_ram_wdata(643 downto 0) => NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED(643 downto 0),
      stat_tx_retrans_ram_we_b0 => NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED,
      stat_tx_retrans_ram_we_b1 => NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED,
      stat_tx_retrans_ram_we_b2 => NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED,
      stat_tx_retrans_ram_we_b3 => NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED,
      stat_tx_underflow_err => stat_tx_underflow_err,
      sys_reset => sys_reset,
      tx_bctlin0 => tx_bctlin0,
      tx_bctlin1 => tx_bctlin1,
      tx_bctlin2 => tx_bctlin2,
      tx_bctlin3 => tx_bctlin3,
      tx_bypass_ctrlin(11 downto 0) => B"000000000000",
      tx_bypass_datain00(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain01(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain02(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain03(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain04(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain05(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain06(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain07(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain08(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain09(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain10(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_datain11(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      tx_bypass_enain => '0',
      tx_bypass_gearbox_seqin(7 downto 0) => B"00000000",
      tx_bypass_mframer_statein(3 downto 0) => B"0000",
      tx_chanin0(10 downto 0) => tx_chanin0(10 downto 0),
      tx_chanin1(10 downto 0) => tx_chanin1(10 downto 0),
      tx_chanin2(10 downto 0) => tx_chanin2(10 downto 0),
      tx_chanin3(10 downto 0) => tx_chanin3(10 downto 0),
      tx_datain0(127 downto 0) => tx_datain0(127 downto 0),
      tx_datain1(127 downto 0) => tx_datain1(127 downto 0),
      tx_datain2(127 downto 0) => tx_datain2(127 downto 0),
      tx_datain3(127 downto 0) => tx_datain3(127 downto 0),
      tx_enain0 => tx_enain0,
      tx_enain1 => tx_enain1,
      tx_enain2 => tx_enain2,
      tx_enain3 => tx_enain3,
      tx_eopin0 => tx_eopin0,
      tx_eopin1 => tx_eopin1,
      tx_eopin2 => tx_eopin2,
      tx_eopin3 => tx_eopin3,
      tx_errin0 => tx_errin0,
      tx_errin1 => tx_errin1,
      tx_errin2 => tx_errin2,
      tx_errin3 => tx_errin3,
      tx_mtyin0(3 downto 0) => tx_mtyin0(3 downto 0),
      tx_mtyin1(3 downto 0) => tx_mtyin1(3 downto 0),
      tx_mtyin2(3 downto 0) => tx_mtyin2(3 downto 0),
      tx_mtyin3(3 downto 0) => tx_mtyin3(3 downto 0),
      tx_ovfout => tx_ovfout,
      tx_rdyout => tx_rdyout,
      tx_sopin0 => tx_sopin0,
      tx_sopin1 => tx_sopin1,
      tx_sopin2 => tx_sopin2,
      tx_sopin3 => tx_sopin3,
      usr_rx_reset => usr_rx_reset,
      usr_tx_reset => usr_tx_reset
    );
end STRUCTURE;
