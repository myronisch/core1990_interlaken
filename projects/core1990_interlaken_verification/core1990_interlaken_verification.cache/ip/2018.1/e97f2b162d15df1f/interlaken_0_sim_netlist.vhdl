-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Mar 13 10:44:37 2019
-- Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ interlaken_0_sim_netlist.vhdl
-- Design      : interlaken_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flgb2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : out STD_LOGIC;
    rxresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : out STD_LOGIC;
    txresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_all_timer_sat_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_all_timer_clr_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 is
  port (
    gtwiz_reset_tx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 is
  port (
    gtwiz_reset_tx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 : entity is "gtwizard_ultrascale_v1_7_3_bit_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer is
  port (
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_int_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 is
  port (
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 : entity is "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer is
  port (
    gtwiz_reset_all_sync : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_int_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 is
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
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_int_reg : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 is
  port (
    \gen_gtwizard_gtye4.txprogdivreset_int\ : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 : entity is "gtwizard_ultrascale_v1_7_3_reset_synchronizer";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync is
  port (
    usr_rx_reset : out STD_LOGIC;
    in0 : in STD_LOGIC;
    lbus_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0 is
  port (
    usr_tx_reset : out STD_LOGIC;
    in0 : in STD_LOGIC;
    lbus_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0 : entity is "interlaken_0_cdc_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0 is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk is
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk is
  port (
    CLK : out STD_LOGIC;
    gtwiz_userclk_tx_active_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    interlaken_gtwiz_userclk_tx_reset_in : in STD_LOGIC;
    txoutclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk is
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
l1L3O+yX58ImSjq+CFqccv9+YA38kkGZvfOsWUHmkbsUL6F7uyD/U9EL0OVfF0ui+dTgSndrB4S+
FZFoI9xKCUQghkBcOWMYDmMLDJN5ZaAW/hOXObQrkkrolxbLpNno4EhCHxVERq+gWMw/6Ov9uzVM
vJGl6Kyt6CVqcB1aIiWgX2IGhgP8dp094bzmOLRtTpwRJCpadgnq72W3qwVjkKKsoIUQX2Tr0z8q
lqGUt/yrYD4TZDX6jbW6VDdlrBHeXBR5W+U9ooRf1AYBYvp4DQWzIGQoT5RaoTf3rj/5DkOwXc89
LiKxtXH8QVBu8x6Et6VE4dLAXfxeeT3sUQgxtQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LK6CqkrAZLyUOwEKVzzeTw0++AiwU6n3K7JRmXkPwkwfu0xXXDtzcyJRcLK8h13ZReJfaOf2nuXD
kWY8N70BykkTzjkegXZktVpQ0Ipex0GqyUtIwakO1WshltRkAy0o0Dp9IGiccKx2KOUuFoLh8RzV
e7XHlcXSfHPRFrVKvvtIQVb5LBbd1xCVhGl2wc/fOrJks0c91FDt62jOoTw6CSUi4HMNxipeRrqq
rgoX+1zMcpo4hnNS2qzKBRGQwAM5MagDAeBL5LNa217egMsDUq90ECcQ3nctzPFvA7CEbMUABxWD
Dy1uUsdQyT2Mthgx/woZ6ii/iVVQ52rPMjLjRQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 135152)
`protect data_block
8cfEygy6FbptSFSNOizF+kAGYlggiHR2BVpi6bRb+lM4obmCX4zVfBmsMCv34O8UEpgq9HE6K6vy
cNoIYZ83zwgS7FuHjkkyDEEUPhLyZUmmsTafE2kG6qfjCems/cpARBvI4R2rjWqh+zvwdr6/4+ke
xeegXllPQ4M2sqR6+s5rSQe+FgRZOxDYyA2ygDn1z5XKCKUotapCYzdD0kz4sahIl81+x0IZ8WBI
P8jQAQHfxOSlNXHGcZsXhWjAymoauX4gJWz+dNpjiVkr33DLEcpUjwBBbAwMEKLgMWyHzjZYo+V+
CN2/danWFrf4b22wYl1JwVXLMVXDRKzHfoqipc3WYKzy/taUgNYUYAV5gejjXcR6lQyezeXVmFg8
9YnTsrrUAlrvzxG4NdNisHBW7m4a1dCwsPhLlmfPf5FQZ6l9ZUv1YHG7Q3+dpYrVOHv0IAntpP0D
sBfwCVSM2h3bme3O08jx3zcHkRgQm0oRMG/1JqcT5DcEfcHmscrN4n1VR53r/ft3JnHSplHOanFt
UGuzvm5YpnfBr1mtH5w9MEv1e8UD15FgNkL9h5pURSkK0iMXLCJ7rq8dH5rLF+uYlhVs98YyKEB1
4Yyhk2XsaRow2iMH2G+2fJkTlvtujF654oAm/+WE4PghXlP4+zsOkhPqax9W1a/Yq/NF9OSH4N3R
0wIcTPOuOU5LbTzFGrWcNNrY0RvpH21jBbDV734lx99vlxRCes7yDgTjJbZBzPGeZZaXzk60rNr5
ehQw224mpZPqF7lMCqCZhAgWGslX/XREPBd1rc1nTj8uU2rjgPmH5lQOsstyMIFx10IobndGruRi
uw+GftYWoauCIgxwixL7g7oSyWQdX448VHwOtZO1EoB7B1zwsIPYlkr7nyFO1b/4rOgSwgyFKwD2
WsJ62OTO1qMlnPyCQGbNJ6I/JNJUeeKSzZD7ZylhqJoXxt6XlyIgS6iMqOXFcoytLSEilI4rwClP
/4LWBCU18mFZxPJhPuCLkQyNFn04rlK2+9/RivP9/+uDDBd8QWBRrt0fNxunn6+nFg/9qW52Ki0z
4JQrdFgwBl3h6K4eLDPWEnG/N76kF3VKsQY8GjUnfWidJ76efLbmBcxjxkWKFWhPKe8rzgPFs5BK
bYj7p8ftyJZpLQ0NchkzcgtoGp/UrO+afAroX1rowVbQihFc7bBAFSih73XtSBrOJoU1TDMIkgqK
8B93nAwHd5ynP65dudbOBZhzP9AYQC2Mj3+k6SysdVRwBnVc7woI+jt3xkOKUXZ8ekJpwYYAhLzW
EEMLyoNABBV0/QQVXcBL2ukhj8frfKnn2regjSF8IwxR3EU41Q5U+A6026yufOOp8qaM5/J7ts+g
fv5s9rah9bUppdSW3s/d/GNW8yfXUwoJkHhiLsV77EueC6kEM9h7YQXoKzHKRk971F60z2iTZFzG
2NoK9wjauJf7UvpNEAQPj2NX4zKgEsLdTJRUMUhQUKin3rm0qwc8DGnxZCfM757rCRzy2w6x9/Or
7056OYvJZLy0ZZlu9W8uLoJ118Unr6MVXz9B/tYJCNk+LFKk53ado99d2Eg0B1l3IaazjFBv0bLb
q6NKa8Y3C4fnMTvsPuv19gGy+ensGG4tz1YoYR6GRTgoKAY/9FM//RD6EHOTdcgUenMc3QEfPYvm
EBHlSoEj3qFppz2D1l+Mql75iKyeLz2dlA2E6LsXOlherqfUPDqlz4q7jr7ar/NEkYjKdC67PG9o
shu7gKFu+ofWx6mEp3YSwMKpfAPP4Ay7a8/bEvVmvnl9nDNE3BB/mvgjY2Q/EWIL4MQMMMty+VGE
5ggz3X9kuIyzdulTIqG6uooIS1GPtKbhSXTSUTxliY7iO1qljwKQUX8BnsdM1Nze/hgMnGhPDiu8
CjcaiivFwliHSnNSHG8FClKuDZd+j0wQTXE+mw10kITF2L9pc5eEtIEfS00GZjIKcM2ldUUrTo9S
KEp/If3/C9lVe9rzVQRMaYOBfDy+N/GRIQO8rANwkl1V3iZxyKkriw587qUProy7Ze3UUsPN1Vcg
Jfracfaa6loC9Nfq6L5gJ57PjbeVYFoMUeEal7zMXqphrkye3yuS0e5h0Ux3iokNak/dRIWswqL9
eKAfkMQ0LuTvFmPlashdYjrWV+nPEts7Nr732fIkjsMx3czioTE0ux+fRcpH1c1O1uPTnwQTcR+6
H2fHQHYlsnURsdVACHecdo9jfSGurFpvLwU5Xqxz5MhEjCxtyrN7Ugn+aKJtfnJn1UHn4QMaUNv7
cNLLAaQVI2qIgxszKbnDhPhnu+j0ag8FwWtYPJ+82T6fnakMvZjB4S9l0Nad5eZ6n2lx5J8SuvCI
8IbEfE0v8CD1LpJ10X/lNUBBBSTr1Lp+7/AL85zjsV4vzyC8F57XYs1tRMorJY+HY/qC+og/Lg9B
GXwXR0FNS7sf8+d4SnmrkSocauwA2koZHNu84L77b1vnQf45/JCNJOA5oemKWovGgdXyrWbwCJ8+
lPoBOgyeRqRKFjzbHotTEl7HOPtUYDuxuf0d7Z1Ri9ntszAfB2W/NaBIxZ5JhVSLZKKdpBVuFnrt
4mJHGZBR3Jqkilw+8Cm3PXCJql1ss8cClOqJU37Xf6u8wPPu5fjAvOwbXxQjdCmZ61qiJMW5Jamj
n4GBwSa6S+uv5bF2o8axPVR4ecL8JUHiXRpymNZhm4m2BPO12Vw58rXbm068OKsz4qKWexivZCzH
r2kgm7wdxrMLemVqKcmLC4ChYZgYhVLabaKeC1ZSrsA5j+ViU2M3rw7s0akX4PQRSmW0BAuHU6CD
bQOObyP+vzy8IqBcn2WLV5GKqYNyPqyG+or6i7wHJB7+/PGsPPKQvnJ1JswqgbfQBMWVCTVEg/gv
CgZIMBMml8LzVo+Tw1diOYX2IWxcPaAjbvmpSacTEruVoBrWSbC6FxufxjCZVJvFDyZqC6GK5SRb
+Ou5AXIBY0Km/I6oJpmhBhknZCxx+CQlNKb+61TM5rVBBoWoyIYX7Z7O0XR3h2eC7CmRwyVNPXnB
+0zAxl8zSHw488TZnN56PpoRy29sQCsyOt6RJag9jJcSslBOxzWZrOIExwLK0607LgX3IJQWRdRj
w/K2MJ2KsGM7WOl7nNamYSxDvVGSxnWoNGcrbNRq8DBnGZIx4cpGFob8qNGZbGHebM220+3y1kva
EHUdccvfM6p7dlFGRTTx4lsAbES+A7JvCGGZZfSA2HRbv7j2lRUxN3jhq6q3knxQK+qgvR8RsGU8
H9/P3Cytnm1NW8mZWKtpI6sItynJDmgTU+d0N2ReCvjFk0rpHUtf1Ce0fE4G8y2AKFCuYoMSw2a5
TmnER5NSbZC0L/QiSUyECu/98QcoNxiNbwkwIQAovw9mSmSz6S55z/irGGOrZ6t9QvIa37+h/3/A
VQFPpIn/SlF63jdYqYqWZcdk7xD4Y/qwZagry+9jDnY1I8NHN8u1ZHsBTOS6LC604pSr+kdb3ssZ
58+7uKh/xYKmG7oia8e7z77z+RHqxfYaahgJtFLKSK9Ayf6ewVQ3FihSqvyGl9vFxSvy28dZqFo3
7/VTEHTf8BNq8Hn/t7aegaho+QH9/reydKTtUFUHvRwkCcP8eW/3yoQdOZIWJ6Y0f29dw5PiVU8z
neki9xiRmNjQLUXXA3yVTCqjS3yuYV7HeR6SsSU2Tt3bcB/Y/H78kXrON/SalAWEOtpdidgUFCYA
IrfqhywdZilneqLZRBqhE0IC00qh4/scbtV5HG7TXMsh8XLczlugwLlbtYP4vl97xxrPsKGK84F+
TRu/vF8OKR8G9d4DMuRnVtIKpnVyCEcdnCUGNdZSGto3MCnDatEWV3khAGL6Ijrjw/CMe4Y6/No+
PXFtPqj3GWWKvCGUDDhjq/wUmtAx62zROihDlLbwQfSMnTGfkTncpszr+DNvZ2YdNQUNUu6wXIC+
ez5DQDGfrF9BRnmq+LJePE5b74c6IRpFXpASwawn8e4/a9QxQJqBiGweQaX9zfzFRNOLMLy4Q7pO
cNtJYK4muybRtsRnd8O8Ukys66E/bxyo75pOPawfAbdnhkkLW1dzDaZZnvpkgUQiPaXPvLe0abkc
JbxjMgmUNzClvmvElk5WWT+RLVtpXr9zaacU61NIRmaYkrrDp+7uCwiqDiaeJ3YzhTPajvHwAbaS
1Ebw4MOfZrtgn8YEAQpcM50tSuKdffxvjoMJXk8QmysF+gdIz0jf/wdevDuXTjFks8MZcx3dhbo3
r42RBx4Nb8k6qi2NQHp4pQYWU/dcC6DzPAtcwD190PObOp1NuTug/J4jXlIZ3VpY5caOMJ6sfU05
+QifByl6yLyGQxf3Co3IjjMcnHnO9k9Dbogcqlns0cJLghZEDerGL+ul+ZZwjCTwyXYzEVwZGjq1
34m7l4YXYJpk6Qc//uFntgilOZw3OtinjvyiRrpIRDrLgY3HZ0A1+vrdn6G27wPJRo3TegxU6mh9
B6BWVlDwz9F5HDLy3wVQiCX4IXqUmCUKAd6CNRcOSWCGIL9E/CTu1ywGWUwZOahnVcbvDCYIjkxR
hQtf5TqlbrswIhZJFLT9qLKO77fQ1wOUrVRetlNPex/N+YS5zhgekAaPSui2cvmUXu14LJI9cJE/
Ad6wbgoJI2tKOQllfgF4V8MXvM2slnyIFMGC+92YhJN3UUFh0I5hV8FFWicQ8HEhUeen/tO4iULI
oY/kojAWYmcrQA7RlrNGIjwFPrAPhiYDuxEVceexvzOJSj07sB0uroGqnF6SaPtVegWvkFyn9pD3
nvSacknFeZpwjJqh73y6OlDvscZf0OWQl4fj/+u99TZf/7fQtO/2UMYhBYuOBG2NsLOU4jhZjFum
vulxReWj2HZmy3eMaQGt2L2cf2HkWQNQNPKvkYJJojw4cNXLqRHvhNvIX1As6DSHDhtxxknw0SAX
Oo1YZjEFhlk5Q5OvMARYOalY34Onyi8QfzjoG3KPH9dQxGMqWVsKF/gmCoTeXaKB4xrI06S+5UDk
IqEUUAVxUrO3L0F+t91x7mLM3qPZymob9zyz9C8e2BBzj8hin2ydIoB0Mhn4Q46MsfQe5OMLMW0a
LUseOBG0xQfzuPLXIULACO6mtRnidZfrkM7M8zcw4FDLhAShdui9dyyN2EzKEQaOfQng+9UZG1Ty
XnrGSk8xOBbMHaBxLcH24hsK2p7Vovu0fUpwQf9Ou7Rn2/p8kkfnffap6jcuJqZ3rJGm75xd5ROp
dWUX7yxRjfNDMJXFqbNZPmE1jrtQF/jTSc7C30QgnLxjpfbie3B+sUoGFKXP3wZB98P+AK1DJIux
+zRSEpn8Cw0BjmHeWRD7YO21cV40SO96TanTNhYB3Y7wEzip/cKqsu3031cJ2rZLhqWCEI0tPgh0
aMbSOQLzZ5kyzvNmZGbFBvP1eJmKj3+YMGwmLcXtHuOr8Pw0Ff3Gf2pxBle6Jut8wBARKMH3YwSZ
yTyCSAWPwmHspEOouN9l842U7DVDME92KWCMW8PfrF6icIW81nq+9AuW3F9wnYJJnmPrCXCU+gNe
Cpg8Heqk5lxU7gXs6FhGqhqv0q6a5/e157rW8/hhENNkscmbMsSbdP/+BQXujZeMDPsGZip07npw
kiiEwxybd+THdZt3YZvSvESwRBjgi7GrmEgCcE03iKvdBvpMJ4KNBfHWmZ8kUxEv8AOIxluNKcPj
D/6DBEHhEjG98gPlF7xMiJJBTjfd++r9groi5dm1XMTdJ1VT22mxzz1/yzCY9yaeS3xLL3VHyniv
BGne73pRPWAOdgaqouT1EunpmskEzq0BnEAmzN+VxeqP0q77zLPvyjO2i4lj6E4vD1v2RhtOddRL
tbzgVsqvYsFNtTPJ2Czd6TjZ7QjuW5oX1ux06VdcUs3BT2Ci/0USCWwAYTq/DOxesPYva9rCxuc1
mnUnP0bKJF9mOIIWa8PHnMAKddRlKVoXce0r8QxtRA0VPInTuZPnQSBds7chHqRy5lm5js9xzdFz
du6iqyJJ7CXHQC4FF7hTmvstjGDCtpqreoRox/9p9FI47X6tRel+3O3g236UATTF3UzVdcPlGuRE
WsAHlwNd28G3s4xQ6GKCjCMsPmyKayNa36jb38nUUt/51VdwjXXSCx7pIvjJNPJC3rlv4KSL4wID
j7PMc4iNyI6s+AHIb5X2okuJuYVbdgNqYrOj2MV6rYDIO+mF9mnew1Femi40RMGaFUW9jj1l0V23
EHG+Rt/Qt0/yf0mQW4+6SQKqfqOwMIr+33awBBYDR+0RLXS8kOLhuwn4gMppOVFsNPidEHTLGfol
mmdCKstA3yzE80egFRQYBOh9I7ILcdTO823eWPKu/esFkwNAg4bCkOhknuRnGvDtHtCo3/jT1F3O
amhW20lkMsHSG+mcNX7/SUGrSgDSL6vM3XT7etg/D87H+1omuyR3Dwhxl3kM+BxsmcMahy60dYPp
8ANk3HsE5LVNIt/Vhw3fEBqf/2U+LHMM+QIgZMoqTpaNlHPYEs0gszqgdjUpTwjDhpU3wBnsDl4U
yDBlWBXU/VLztXARPf/tzd3eqwQVXtu9Gzyve7D7115xtAb05Xy/PrOK0P0kf1rNp/oHN6j+7QBv
Jplr0czwLG6tSy/yqd6GftpfpcHpJvcWIu6z2k5DaCwsgFJHIc79doQgAhnWj0oqok4NC67xqBV9
3p8QrrJ6mIRaLMPbPwOvRMzIvLWPpQACPuNWn8IVsTyVsTKE1FDWAg8sGtC4Cgz+5dm7BuFWUbq4
tOqSJWAtZz7epwH79RmYZlR41O/g3bilV/MKc2SdEtNRnSciyKk9gsq54CiA+ztSYUZTd78S5zcY
2OmoHXRCpRcrHa6b3UCEP0CprZQn5DYCfWxNY+7/0yJzbtiaj41PPlYRlLDK6f5ZfaPF+CmwkOaa
OVq0iDhYc7oiWcurxqdtknv0tzf9VLCYiqj5YM6iNql04y/FbJDqnnLU/m41F7VnP56W8j5RuxlZ
TXvl4eWh7tmHlAzIzukEDrHvjX6xdkeV9xJhabrVz6aCumLki1agigpZbQa6EMZPZLJZPyWKUBaz
cXdEdBUPZDmS0NCkL70Db6QhWercTtVNyuyNqbiCj+/7b3d0UqRXzKvyGZcOS+RXTLfblXgZsq8F
bTr+Do2yd93V/IlnrVsmsqgKxi7zh34wF2KE48qhO2XCOCfUY9v23CtovZkIamXdLtWuMNYD2Xzd
4HjA2uAEnf73iWC53wTCAEshW12QLmNgtwgzNyuzlvBiWNzK0+rRa3dAD3jopNbSEE1/sPZ4Zfx8
SOMY81ADWwQy24L8HsyfHNuVj+laPahTmgajC1Da7zrtrgYwVb5q7Bwyeue/bHYa2n0JMm0bBLKw
9wzscPN96kBcUQIHPmbc7GNuWSgh5Ar47pjExy5e7fjfKIpOlSFx3/Lm9twffGiLS9M+mYKnlkpo
Z1KSjwSOwLUfRXA3eaP8DDoopQoJHOEv5JzqHWwhOs3MsjIlYZ+HLHy7KD+PNNqsKN26XIJZ1ZZp
GWfiywTA5BTMOwGwawLJLQmqQtwekmOnz5rHtQ6LXUYH/HF79YukaF6Neyp0J49rxd7CF0vHOlrE
6FthzcNxorVofGZFQNudNJ2F6VdttJh0ukRO+s9f4G2fBfAnqDzsPVS9wchGbaIWIu8M/5XTLs6k
U3Hm2BuWwkO1WRPtlvSysd4m9obAX4/IuipODlyySbKec4TwQNIrFxwlk9EqBJ6M5g3EpDKcR0FA
kaOU3ZnI9QsBeZ3rBcsLePN/M7yRcOcgjs8dyJb+r2Kgywj45nAtjHyoTgrJisJYBi2gOwHjZ3jx
01OjxnCAmMTMi8CvmNYF7QvFWBAik7OjUMtoy1dVrKa4kQAMRAQ9XDRvCSTl5L10ZKoIY1Sw0bfy
oSIOsEwnvwB9o6YZuXU8hTYp+NIJ19UvDEBoPaPoccd7Jv13uSPSzsn2ab8joArCFtjYMTphPoub
RxZuWPvIw7nVR/HLKyNRBXAg/AFzt8uO4B/ZryMTV7iHrypUNTO4RuRwvvdXql7v/KwawyYPFj8L
QiLAYXq4s0Ctbk7n3FLeBTE1z46AViRCZ1LOrhQ7p+qLsnji5s9iJeydH5onDhYtkVspjcLZSutm
Q+tj492LBGQ60LUage8l4mkSsS+BRoQfIYN9CLVLRZxsSL14TxW29aESd/S44NIOSsFIFd6i7T0t
HP6Ln1VZdxaI4cwjYacRsqakVXw7rRKYezIPmgE2i66+s00L5WFfxRxuYbVXUW8697wBxdXIq3+O
0QG6HhQx0BHk794Pwr96pMaLakjug2Hdi5/BrbHZZaYXDoob3C3c4+mI2Cltbxxy6xYCk/Rn4d9Q
NtDHp/fOSCD9lcBGzQpbT5358nQXgyuBi9LQOXMpARLOTNLonoyo+UdU0419EcC+R/Bq5aSlT8U2
ZfRYDomLV9h2beno4V+ZIANWnb7y5bvuRRCiN/6dpJQRS9fEX0LTY7CKjauB3mZY0MQeRUVrhLTn
OpYqKmXSK1kUwi9kP0rfIhsFV6OCEE+PnSIXq6D8Duav1b+Ds31EK7bOl+i+0MQMd5r86NuL5Hel
bvJJP/OHCpVEOU3nB56mHoREMcD6RXnLYTNxJxNRiKjslqwR9xIfkaIsJSQ0LJicQhOeLRO2kCEX
oG8tKbo4pKxNGcwbuSh6vAqmkAG6utveBTRBMV+Hpe3d8ckSDkDSWN6TmA2vUL/6GSjVItqPpphE
PAcxdEflsZLTRdR2CDHs703iP7xfRRm3uWDBMIs14OubBPSwS6IKy8ZPnRWxovKEdPiVFl5GiLPJ
V9sehSqtE2R1iJBBWbg8kfhIJY56iy9PX+TGtecMij9vGOhOdTa4ypZIiC2Gj1BArbr+7Q8BOHDe
nBsRJkDFD2m5vuQ/xB4JduiAkop8mGAYwvOGjZRRB9kW6Ol1u+vNWS5KG/1kTuQs78/mlPC/nIcT
13+wTUsxpCtfVbfvUFgCQrTMYs0xUaFsA0VVyg305M+1ygf3QiOsVI4yTAuQ/eTE9sK2j04ND5X6
lFRnDp+9G7XXcS3tyyTrZ5gu+MxDN07qVpdfV4EVWDTC1jy8+kAzZab3fhwtRUB9CQgMao9Jjf+8
VXEAE5+uI4R9H14llr5i5kwSlqmswB+qeghzbfaj6j38oKh+0mtEXngmEmA4yIDueaWsqGacB+Gi
vYuoLPq0FBoG86/W7TGfIM12WaQPeROsgwZh44IMtXUx6EQP45oSZ4jpAbeByD1mkJH5u0cv0bfg
W3/wk9jmQPpMNtP/MtjH2ftwQ1kLlvo1HWMUOQlRhFije0XNhhyNEPTktkZsltspSxM6dNT6QzZD
CYSLui+an9N6e2q14LRLZNk8mwwOZvifacplMT4PT0zWrrRgAUjLUesWXHDIxL1SDKzc6loI16fc
/S0LI2pdqQPmkpXZH7X4Q8PuUqppPLa7XX3WEvVz2Udp/zBrwVDH/UjOzbH9r0KeGVNShDtuMF2m
Cl3RIsu4WKGMwkTqMJhLTcLRno15tv0UBFPyGhfXR4FMuTEcv8kmmL26QIm0FSmmRBrMx+0HlADY
ZW9N9fvLBnRB/MrXl20VtoCZAHMI4zoXexMFEOnC9sKKtjQyu3NDf9+HsYwYE+yVVRCl21NuZn/P
auNCXCTASnKAyZlJfdXBHRHh3jiBFEuUzbcLM6kaznHiJXTlfmcIrbryhzBQsT8wUDbA2wGdk00T
8NfZp2PVO3xrCbjfV9XJiR74Q4Ki5Uz/spqmOOb8LXDapkRDf0ClLS3K0RGDmH5y4p+lYESftgF3
/tbweLuQddEnApPiuUW2nWH5Gg33axdQyMHoQNnroGlmYCrkpHlWjJ1T4ePjBKVpdWecztn2m2VB
pZWLwr6bueAEqSSfg8XBox6pTN7KmlGCah5Fofnio6KNeJWyi0W6BXVpIEdFQr+iZHcoIjxHamhI
2zrJx1tF9Rsv3hvYllY5RzTtSqfqfLvtS/jRDkDW+Da537exPDj7goH9keGAwCMEvKNq5KsEoIUP
3dCnqY0d/ANzFGX0mHTIBl2tkInjuXnQnFV1CmIVaA3Aer26hBuUfBdBIkP9qIeCh60qaNcnlW+c
hGlZFXObHwDsJP8BFndsoU+4Nr+R6wA+c16Yes+JvcJV0BVLvPC93FdEnQmLpYfrMFrGiH0jAhT7
LNKE/+JbPkhG81rxTfFx0UtiAQBiuNelVJq+yWtB0Bu0xNjkYitnVHfl615uIwR7xI6LpY3qo6FX
hi17XFMwFFjLogoYvZNlNcxmILkrSeX3mYZpviBuEBJkSe+cWjk2+10uwto3ROwxWX/d/aWRKN8J
Ysvm+nViIhfP0eqmhEI5+qx+trDvctkIJolMComv/jG6c95LnL5skmXjiNtB7aj+3Xe8UAoniW/B
1raPLpsKjYBu/PyIvOoNHZ4MXHmMMVaOQ+ILPuXi/z+k65ZkDOsLfTyp5+6ryxkaYFH5L2JD9hqT
xmVMw0Qlwzrf8N7bNrplmeoTA4kZQ9CFoax3mKWEMWuzO9QSkFhRamzyCsCgOrptcS6ZiT8TKB6g
7IzZhQZKPUGRg4ig6adNwtqDK8oI+aaXcMtj8DRhvsys/LXXQLZvay773GGJpTYonCVcZt4D8pvT
gd9oSS9xdhjBObVtNsxAwyb2+xsykYEBSex2TD+hOfKKxl6zReRnrJ1kAcSq72IQ89D/HJ2jbeNn
qEZ094h+f6vO6zpmc4FlHEsUpJk8lhFOCM32FlxLM0Ujx7wwtpG8DoyGCwHIiaG7LOFSpIJJOt7o
ZeiT0wbK1zyeT1M6ctAxxd9flTU30MXiWzzC5vfIoA2m1lux7Jin2FIcOBolDfQCPsYIwgW3HBgc
EZYu9tQd6sq2tkf0ezoIndVXCScFJZba7DhHlntxw/xb66IrD7mW4XiryDjlbY8sQoKuX3hHicLZ
XdTOHTiAv1Tu5zsuqfhloul8ZwILXDDcAPj/q9UzAh5R7YzXyWXont1c95XdUbbJDsT2TAmvNVNy
KD3BYtr+8ATvNm9Q9THmIqKSp+NQtIjm9+uBxDILRbM/bLDifNImPeF81FsHukzBqiEHw8MW9P/N
KRmwF/UKvleDSg1ecHGF4uHOfLlZt05PvQFy04AUu0O5QvDgKSpy2UOSlsIntcbZPg4kT3Vd8R5H
QQrPenR0pT+PUke6hM71NVD9Ewqqkv1irk1gmvrR361kaP7ZfPz3vhUIeak9EBGvExEj6jMsC/qD
zg8N+f4oHSdCqOUp/IHU2wgxOEBPkeCW9XP65uPldACiV/QcMotl/RwpVkn6nM1Uc9lVOalfOmTF
P77lPLSDAE33++/geGBwEo8TsKMVdo/OSnoYa/kSaqAvnGPIatpN9POlkOD47lyOv3n/BbS2TxsW
ykafj9HCwa4eZbnzrFPS4w5Rrux6kHU6nUKR0occ65X8mm+kcFtS1TTPosdh9OAsg46qG+7nJt0V
ZZvCpOdkitJGpas+dGF8kuUB+Q0HsICgD0Li6PWSx6WUR7tQ+b1fXeLU7dMCJBwEHdejy0wXBRdH
9tssH3z2bkLWmFDIFD1wsPIaAg111sm+H4ZVVocI8fRPeP2vngTsa4m7cXeJqIs+OCJncTZIFue9
2dW93ZGfjfYfIC+8SKjHNgik3BE19I8WHyfF4kATUxsUgtGomZWQQMFeY09/Yaic3GJ4av46buhO
J5FP02S7D8ZQiZwtkTF2qoji1j8RxgZyG24NQdyKUYW9w21CtYx/DjNXHCOTrdpZ3edipS0GBRQN
4CfgNrlI9CYmmFUUvhdrpoj4DaB+s24fsFXK9aoau/hXWxoVHsjdoeoqz6w7zMsW8mDCvTB6WZWA
8lKWrUeH5IicElaaFVRRb9qCt3sPSRDcALa8u3wYoNgJoIaG2gpkgbfbfwX7c9Qop1ZnHl5gRaYH
XMBjMS1xFKDJ3hPVPLTN0rsBHJR4lrSiQ6oWb2eH0iMo5BSUVAv7OAjapgATKNiQ8cROG5P/D26S
z+QdtFMzX2X/wH0/4moSX/vJVlr+5N+769Zy8ugQC+CZJILQQwBQ6/zuvx0ZPyHTzamqvCBwGaol
vAzyG+nS6tn02TQOF2sC7YPOIMn2vkTcPBGdqSGn2atBfVxvEgqCVwQ/Twsol1jeaY2Y4iGloSIA
5r5edsYHZ7E11LW5MW+cGEcXJBhvNzoDxIfVHJt3lCNxiwao4HcwUfWD5vTo6PA9iSLKiUzExKF2
cmY/O38TdWl39Hx5pTrPo4n0tdKpX2Rt8RjOPMvwOyiHwRxYwsaBD2TC6YI/0Ff9mSCWazKsdofu
Ra+L1+4P+EUyQDeWslx9XRAqQfC5LcfS30o1daMAicOLJiO9WSv51EsEJQonFjg3aVplN06GZvza
A+Cxlga37FMZOii2p0Ay2QIUdyKWW5BVEjxpgUEzl+6EU/ZsR7StaWZMsYnalfRrXfyhd7WDfHPd
XsAVFtCV1MimprB0DL7dfmKp/Xeg3ZP6gKvmMh5ri/xSIBYcCdvugQfK6B0DL81bWq07n74i7UiH
kHPXgQFYxNhhZw3MDRo/75XW+a902Pat2ysxN+xfq1G5L1X1HCzjI/mTNzr9rMj4z1R9HvdN0azn
wvTv7gu6CnjKWVCco5DNLWPsmFwhwvRUiwnzfJraA1dgUrqrF0qXesVOh60vfnVrc2L7Lx+tTF8/
W+ADonPl/ucsDSRtNLm0Eji+IKNQSzoplDT/zXv8VbPkUqtR1LlTh7BrJWT0P96PLhwfboGRQyJe
DIBU+XGgh83yaOz0czIx7Yt2zNeS2rIEC31kIsukiYPEL+9TMTBX+me5ANTL0A2r2cQ7mbOWBvsb
tsMeCqX1eDtUnPL7xD8hvQujvBlppvKmwSKM5/2fYjhYkC/oZOgYkBVLRMwbuTkA/JnaVa9L9SMJ
wyUJgUIBs0uvDde4IDQx92kL5d8VyEoinsOtnW0nuE8Js6ls+Kd9H8jx+/wRdsKh45yR98zTsEqA
mCypurPUavCz4G/YbwbXDYeR6be9ucAwM/e4+AD4qL5LcxIHk20awKLq1vXuyuHoEUE7hlmSHGxm
VVlbglyDJB3Tjl6My5OUUjddfeNaPT+kBe1uozl+NjQg7f22pbHaQUp24PnnE948dYf+fyHUMnB2
Q+3/JgAFBnqVczPiexgxqO9dgzkwXMiPq8D8Uu3MrOJUdf6b88EooY0QXSvv3oEW3aUH28wU8UYB
pfiOzGvkKy+Z9PNosR2E8+fHLsfA5Q5gylkIyHLIWHpm7/dnxPNDZ9FbauAh6R4EdzFiV6xSQ9qF
YuhJWGpXTd5+p3fajpi+daCwa+c4Lz9DfSzRIaBZcqt0IVSITQxO03H66wOsBtnO9BRCIk8lsNc9
eSMf2nHBcswc/jdp1fWzxYDcDG2pnWmd897FDjEj7RFDLgAfP9pfhOQuCgjoyMw4CfjCJ+M91Gtd
HdhzHrQeKRxmXleVlC45pL4ibihq3csqqSmDzo7230ScvJ+N+rJ0+ebFHltZNHjeuO2swouJS5Kp
yCWQhSt/eaVpup1GX+oFjt1yHl9irn+YiL2NMy8EsrYkvTHHgDbrFu1ZPt4VIxV2FR7yUCkKxjsj
+n+b2nGmS9gxAahiOS/HR7Et5bjtW0mHBhX1R7fL0X2uxN51lySmbYdfxtnk4lAGQWWHxRVDlEgW
D/1DG4vtwXbPJj+gdB/KXWbylk/nQJhkJHtl/79OdBpNyvKF6oTyFaIlWz6LmtXzW+oOrVnQT7SO
iX57SXR7carTdxyyFVxwWFdCADCQrxKTIlZ0MMdvaoir6/6fJMPA/sKR+ZqnkgRTPuDmKuXN7zn2
ZPUQbMCKhYGD7EqB8Jo4hBWLb2QIYcElVF3+Qqu6UXrcC2qQNhDiVBVAJtFqYYWg/fPQSC0kvPA9
Wlt5nfjaIkXiqQasMqZ92nIF1PuI0rSz83d7aenuJ0c81ZONhjYA+3T+hMrVdhYRXW2CakcIE3MG
s1aLBr03xjd3SQ4xVkHnUnXTGdg4PV8xJ5+yBakL8IWNLO8Xsg7dMuOfHAOYrJ5B9Mp8bsZcZcsc
q15l70i9Zbn32qBPDqIR6yl65X14Y0Kl6FZ02d13N69s29vmfonRUP5t9C7YDlKZyd7Y465HZizk
XaOM8UhQxvEAd4ahZUfXkneNtLAQDOMKx8hm7yGRSF0W3yyGhfNvVk3R21vBD8kXeA+Wjq+jzVgv
qOAr5D79fs+S+86IzagRXd7cwdLvyC8jjqkxFe7CznwA7p3VvOQUp5nKGh55Z0daEN1NXE2AtlWc
sbNKHQjN2X9IKjUke6yW5e8FqXlaP0n3+bxMVjO1OEDxfYxGtxAVM/NvgaWY2L8/C8zxdx+P4HFn
qsmi5LFo/Y99HZ3tg452YUF4k60FfvWWXdr/5Dd/bh6CyYz/qZVh2AX8O1VFsJhtWQn2wdKBevQW
CygeHfAfTxn5yXd2/SxhfpkkeEhk7klFCxkfl7II9v5MyPRy3/wtcYOe8ubLpwwNO+vS7Em7G08Y
FN8rHXgcdRx1sxBCjZwc/FQ5KDP0WuUfu3mmRelNylQL3um1LnameCqNEG/k5ojW1wnB7+SDN6/N
urVbyb3mFFUudHmT0YwlctDR5pqGtbDnXR/ZkE68eTG65qyykTD3azvu8YbDGp1N/uEUluBGYycA
C45fOeq6Cmf6MBGAlEfnEga6FOqViUcDemkswk8P4OrBFxZx12wV0WsXOZ+m+7zT/o1tcPKKD+YY
KCNdZwBwC91JOZiuNb0mlrC+h70VhSPxZ6HNEl7V1npz1KdtsueMwj73gjVoW+hO7o8yGlJzzs+n
rGgUMoNfoi68ptir89NegrqoG8CzuDjbFaHgnlNgk+jmerQuajUTMW08jppY4EIZtjrNXXxWjvGN
iDbA5pJ1IpJ8KnQ8W3Dpnehd6EMyB6nolVk50LUqvYnBi2uuh7eZ5lCc3cGJNP5w/W5AaIhqQprR
TYUcSVDLwctLOI5eAQryHZnB7etsnzhvGhffYAoeb8wN5zhVz43X5LhSNGpe9M5eO1LfxwQbMcuZ
OINtK5F9GbFbysiUzURd22RN3dvsfY6FmaexYdhFEIrC5cHgH1LC8eSkrSMnFUfyEd9K2T6vzxfi
drwmiyAi8Xoo4AI2kFwj8iocyoXGiOxny6tzhGM6PNNW2CDfCE6a5hva22NAmwb3QArNFFIqN0t7
1z46tKkeD6oiZr1nMeQqkzmnR2QXlfGCm+ty9xdIGusW9ed6q1mfrv8STJWVIFfRykzu8qxbuxxV
Nc65/OBcpDUxVSTsjOLGoXjaO9c57uB+thJTA2WzSAP54abxKJwLeZNFHIA4sqU+A7AYW7uFJAHh
WyU03JXJDHtVP0Y+wiPAQ10JxXR6WMFCxSGCFapgegn57KIwNYQ+cr41+9kXGPXXFw18vT4PYF0c
b/s4/emU/zFwq63bFWDkj03xXFipFVrIUEpnfAZpFfB2C5Qzx9fxrWXHkTfEbwJbbvCYXpizh4vC
NkRSIcOiapyUhZErnya+ADIKv1rr6Gi8LFWVIjsxii9fHzo7BzHdDmcYKj5EQl6cY8hTCLO32Q7E
0o5yvFwvxR1QTgVp/WOR6/hQ7wdaHPvJApA6BTwXwFlj4jwNQOT4XiuYKufq8JAjZ5Obu1X/wNTC
yQvfB7bSDFwKlUJNFXQaasfVVcvKpO7r5w4fYlTBVehMJcVGKwiI2ZxmZkeZgFXBkNecj/Id82JT
bla5ECy4wFo+4jRnazmR42kf32WS3KL82F0fwvfHvkI6E5gooVYqKjt9YxFkVtqY0Da2LWA7Sy6n
IHU7fqxl1b5UfAp4Ft2tYbgR9WhiU1XIN0O5gmlNAs141VJJmOFjsDPab8WB7LAPGOi8YEwqCK0U
/eBg/jFjGnAo3kXiJm+bj2S+wYkYwmGA0PgXiuWhCTVFY/Si77BIW/kQcjgpLf8qCbMtHf5p8Aay
CHhVEjSQdEBR0JcjZps3maVbpPpR216dztUDev5AsL4vW1CDGKqE38d7HNRue5GPX/c1Xy1WG8I2
d1OTdKOUq0SUNLFN74rL5Nz4gPhsV4f+favdXN3AkyCuH4CQz+iARZ+Ef8yRS3O76TZ0DV8PK3HP
EQM8/zfu/VCGEUMCf4kRcET/vgyw/3nQIkSf9PRe+Ie7Sh2Jw4GtLdSSQzh6Hk7H8+XaOSkltjP2
W/VxeJUsS4KyUN8LsYRBtnBIV7paMqfvHjkLXUWiTjQjp2bCvwEMYXteoG09Hg0yPu2acphDc87L
6u25L2c5jlzhLoOLu4owjE9vi5B6g0EfnhI/I6/dsbJLTv9aPcYItLgKQYixVTo+rFrZW7UX9Vcw
EakPLCRSGDvoBI4xBtmTob+chJJc+ZtdNHL9fRBZtsEINQ6UFFSIRnDvWJFLvoBOobiMLWFBhAY+
IKJmoQExgFQV6MEKZtVP970HkHjkImXZPRW5riEZLL661fErixv2ZWnkKKAPcw3fn+1djQWQGTWz
0pVEjhQqJP1DCBj0yn2iN8KVlVdNyzprV6mNUN2R9Gc5eYV8kqCl6AF6KrpfF/1K6NMz0lVR7kOb
e+0opd9Pvepj3fHD7oNhveDhb6lWwvLlmsK76m9k1a/zu3QszkGu38fwKMwgNf0at05SKAAT8i1l
YrRPEBtFrLzDZy8ur+8AygMghkFvJY2g1nWa+T4Ci+GuzcCYF7MHW/1uusSBIgHo7dDZ22DAEpdI
2MAgUCAoR3ERf7jPl260lWYsSelaK6wL0MDrx65TxmWnBiz14KONd4Oi1swL44+k3mNVgvpQAdGS
Le0XxBjc4aoUy8ECcgt0q5DMg7v3tLQ6Gp5ADocCH95MICybmp1m0ZLTz3FX1iPEC8woP55FPxmw
a3DAUYSeXGhTFOyKlfE8mW+PGLbAbM7+KgJyJAb3b8T0gG460P1dzdNrpWdv8cfluy4gzpOGNbHI
SSInWn3UzJdlqTI5Lc/0BKMC8hRtO8f0Appm/1AuvkebCzYep8BXjKtOmPXJH6xErv7Ia89Xv82Z
Rkr0KJQyn2+ZkRstHD9upCIIxPDb3ZGzod9MaUfjuj+Du6Ye4Z+sbR0eB51829i6zkc3AYBWMZ5Z
ZGEla6YeURT5zLdPV/78C6aHIfw5DY6Xuzm0siHfzfxcYHsT7E8WM9T7beGpM6iKX/Gm8cAjgkbd
o+m+KnWSpjlkk8KJAUofsNKFeOrs1wywrbdZK6JiniN960s7/n3HE0cCC2S/hxeD3GKH1315onuG
9PLnDie4XBaH4y7OvANzseSZ3VEgT03VdlMkAQL60thVhdfbyEcu/kO/qpyZtyv1uXA4ISMC9kJr
k2CfZhxbUG/RqlcAWHoqtOx1gFpzXAlMe+jFXcdAn6m5M03zGSIxGbxjoTacRGYiqO2gGYKm/4iA
RpnoDeBtWsn50mC4S4Cw+guCpnCl8yuzJ544Kqt5t2ryhqkqKBlHpZeIXIMGts/d/f5O3uVIXMv3
yGBD8WVGjm3DqF9ai/QNwS4pKHpq/GkSWDIt/4zWm6nCiP5X+Oh5HaA/mgOLlov2L1EnflLFtnf0
K17HXP+4ewKWvf8rGj1zVBQfjS+rBx64ZMp2Xx/PqL4xq4gWzlEBMIOFysLiEjsjfgeU3ycWFNOi
mLmTDUqG4IjHwrWHqGy64+h3ALurgEPQh7PM+fdt93YvTOsj3bpln4Bn39zi5JfwxWU0Q/xtJ1Z8
5oPoCOt4qb0B5lXw4RjS+8lNIzh77gWUR68FkYbwV3jYZy68+4nkp1ebm2QshPN//35GV8r2QErV
uK1Lb/jY9eZzbNuIZOKQqlcRv2f85wIhIcb5gK65Xk79Yp9WBojqLk/4t2syY5CMM6yV1b8Vcwok
5DozTFecX4xhsRNihF8k5NlJ+nVE9glTWeKFrML4ruFyEVVsc20t9QRXo37xCEymaYX2nUDNfRil
RK20tYMzNdByKQFPDfATTRUo/KAQ6sjxxMAih8WvT4JJ7bdiSw0fLkhDk+fEBIE/yCttWRDWyT7X
EKfR96rnLKn/6dh2kih7qJfdIxonjpOm3lFAKNeY0Jx6HBi/PwKWZbl+EXNd8KeeOd4bIdCme6rQ
sReG7ssvdlKwfz6SbL8zGmzrVbqxWyMt98S3OP4w+T8erFdMx97Mj9OIWGH2m00qdrVdPJiLWE47
UmgLScR1H6KXIils8B6UwJvMAGuLkLB8k854Bnnjm1QYtthuYrfDOI624U7gFhlM4MXVGZzOEfbF
1gJAiwRZBq2DvjalOH0rF2wydRorGyJ9meJSfJ6Z5G8hALfDehpxPaO6PAp/8RGod7zykbbPHWaL
IwkLEQmsvHOzK3gB/boZoDF13Eq+ohPbfJvgj/HpHuIv8yKkovDbECQUxztkh1wOb3wA8CLlqeao
RJpRNE0OL5ssL/YB7sBkjeqWCZ5zjfSQplzAVDZJNnbcgAs+dNhK3rdMEE1P0VKL+ZxpOzYefvdV
ozW3z7JnI4LMjZUiPKiJDGHtfVOFK1bxSXf/yM5Zz8dmHFOyPTQ+lFi+E+L4pVqx2ySb7PqxgFX3
y0IdEKwiUfxNmR4Wh836XADF2RLu/JhWsPOvktaJOztpGMQIMu8KjW5Bb6hXzsuoTho0IpPU/cJ8
krMmjqvgwX9q6SPgNP8Qw5hCprEncGZyczAoBtj2AxQ3Rl/Kh8yS7l4AjEHN/n1JVSBPxu5MneG1
rLIGxIJ+1sWG+zRoijl0B9LNTkqLbji3K6Zs8G4Wo6eZlz3j9+8j3CQoqBqL04NzKwHeNMEze8J0
lnOKoMezGv2dqVgjjehzdhfuJeNWaV0SlhhyhwnFuBGyccToVkmdzZzZKdvCu9XXmQ3r20UgeW47
mWPGxYv12VXGK/RbhHcGQass9oNdOficeyHK0PPneI3QAqbOiEafx+vfAAXUtFqx/tHyaTYI3MUU
JvXvSmMFhxQRg1q2Jlu+9pKg2tXICX53SVM5CgfuHvE3yHTUAds0LUwvkW5YkmOuKVTJRxIdtMGU
yJMBqFiWlsFGaSaAJdHN0RiXzHai70VSFj5TNt3Kls/cRkltrWKHFr3e3QzpDYj0dWt1j6ccjuwa
OMXhu5IJGD0dcXeErE8295GWsWKY8XAbnpQs6+U/M93vHr+Pp5VqmUmUyEnZerYsmKeciuZTjJS7
3dtm6cXMfOT5TZTbkd5dEsNIuyDsvMAkJHT6/raXHkjNyKDoCkCto392xf9sRoYW4L5n1jwNuo4J
a+z8idoQLPYcG+DlYwqJ3pbRInaGc8+mzRHHk1Nng+MibHjfZG24Cf+cW7nROdO/ZCIMe6+/yiFk
DB0DPqXd97MHCBb+njbgp3K043NGr1EtKowssvFmlNNAWGNK11/Obe/mNGEn/lxmo9mKLpL5wiZF
GqgpTPkk18ZHNb4W9Muyx+bQGX6adaKjje+OfS6gJPLqr3bdXc4a/nrfaxqxVx3P24uXF7eWcbe1
ZgWil1Fp1HBu5gtW4RGQafQZxIMBHRFiz/eCNk1JrQz1SeFdhoZEhGuXAq2r69LyRP62cHqEIa+D
YV7ID20HuBFyPi2hi5PPjkaeL3FaUAGSp5xM6liIt315RtuE+1PPdpkqFHz0YswjWjlS+iSV0xtq
JhtMe0mI3Rp3iH3gLtacTf6ZuRiPLHM0s1xaeVu6NGSDVZn+ZPd0+Cj5HcQQiDxt74YjRomShcwB
NO16xv9vXT3qL5+0u8p1hs8tmZGKT3gB4Bv1Ujj3ajqxKFk4UG0TtZqkciioZGdycohRJ2EACREV
8dltObGhGEAffUFLjso6Djoz40fEtulPo5BDWmu6bUEYpiRQIq/HD4Vx/J33LC2b2/S93iSjBFUQ
+ol92v7LXrvD6BLtxjLqsia3QIzapooFyrBk6kvD+W5G0h5A6xu6By2ow5zOvPSo8wI3rYep4tbI
d0UmjkzkJkNb4kZ0EStM45unCD8K9Yj/O1W4uCIBK1wtilxu2gyOYfDwzQMSZvHPdZ3VBvDShZjq
Cw1TU2A/h98qV3GVx8CRNdOfJcYlZQd0Zv5EWqNzJm/eeMiO0NjgjWo2a68xsDE73rFPCkhQ8oPJ
nwAnATWuOWN+kh21HYFdzC7x7P/gAXBSuQbnjve/fHsuNyokPkj4YwQ+C5lvuLXfdL6UW1fNxJ0Q
EsYW+4vKDUqw5Q0ZxvQ2OMVbnPIqNUk31nuzAthpq6f0cc0IclEcJnlrhbVcPnrL+0XoWC/SiD5v
sCUOJJu0tUix5XDLlFxK2rWfN37GR9QtUDk66xpGmX7N9//q5OAvCWXaP4yyOL+bph6zgaEDLDtT
O9f6XXG+L4AiNMdAv2oA5EzpElvSY2Mxc/TEFQgbOHhFInst/mDY/L8xknvbX140oHBgvF1n+6Az
tINrUxcjzYRCt0KfUDbyLvSeSwTOBuH+10RCoucZeqjFoKU4fm9B8ARUqQEyd/lAI8gen94HN6ej
EYSZLX242cMhmIjQ1cVMIHGJZDq2F2BkEC4rIRBP4m9BVTDvf9/IvuKiPymEBREJJjt0FRWm05T7
1f5y2Qdp0mt6wkhl/kBCcgwDVyMoj0bQvQvMs94oFX6Du4iDTu7WKjGpirNf74w6wjSLgA/A1GsQ
eBSmJD+jLJdbv4RFFXbDzQ8fxqxf9YQEvBwDA+3F+zjQF0dwH5kwqgLBPflg+lTIqE5rSj4tlsGj
kMa4Y33oJFdt0jyXvVvWF2PDp/q+M3JtxvhU0EADDj9qcpPrpsLR1/XAQd+p7yeQKwhcr8szIhIM
QdzTddX0QG77ejY/DjRqXVlmNRFwPEl8g0kHgVT//7ZE44tqBr2xVBK/Zdgc9+IdqSLL2CoDE0tF
HDujidmJvG+fVaZkvckDqifJsYFYWCMQLONel1AdQmAgLVBeXYo3RCjjLAHr81IHbYvNbyHpTSAC
LTUeSfwrPg6rCQAUwJzQGcajDKa24o2JEec3WQJPKeUBmrHNzovvPsIZCp4xgTf0NS365d/UId67
sJgzQR0NeHuLZk0Ftpcqe01A0jQYg3RUdRVppKkFqTIe0yJbsDquSsCL2Y3PS5THcPOTk6IUViVC
1klHSViJL0vV01lrP8BdKRLohppYvQeNhRfHkrGsNuSohqWSk9Yk2MNJ7uE9WWhIdu1dSChiP0ZE
L8MHF/AnZ5EEspt+GHqDZRHzkWg0boZYL5o8s4ZA44ir89/MKYu6uWlMwYeK7aBRsGicNy52g7Wx
GoVfCXhqhgBbPXCbXt18lSIS+bjai3I/1WuqNRpsqXKEEZrXR/DV/lNPYEsMbGlKC3/Dr8qj14Wm
mOQ7LgPK7jZsKS+6UBkSH6THnQ11dIjNpjSdkvaAI8QJSXX7x1D0UjjzqEg4uUy+cnfu3MBYEl0n
YyJBSRJGqjSOEVf25o4mE3233XuYtDl3WLz4rH0BbqA5/C7nIJzDV5/3q2kQTndBzR+CHQzCsVpz
Skd4qTsdJTx0SsuvNEXh+0fCrZUgQoFYjxVK4kp0+/Hwfj4dsqvfh5yOuLn5uyKPoPFlBoZtyKNQ
1Bn0A4v+TB1q/u9yMtAfNawqquCB46uxxYIATx2ORk2CGR3UiEZ7YD55BMditkzool3ri9Q+tH+x
/U8IciXj55dMT/lrJ4uRUTe4sSVi6LK3DdwzAi0lw9RBoRtR53t7HqN4Uk1oILg9SgsD2ly6cKCt
7G1dlNKKrtPMHj0+CxVWo6K/w6Y3l+/jDE8S7dzawTf0dCTF2hdZAp7zqk50X9j7xD1Zuub6EHWY
r4wLi3H2iS4FNzyaEY7JCWlakUst4kuETA4lwl6WHZLfRdNRgbw6TPGVuk3+umeCtNutorylmwUA
wqqX2zT9k0YPget4g3KM50sINpDviTuqR4cDlXva3dz+KdwOITtvxt9tgh5qz//sVOoUAfGcC4aQ
265K1BgLd9tf5LyInH6PqM0E9RaV1Chitn5lfqzLaFMby3n+GaSvTwvz4M2K1zjE0wfQ7sEF0EOA
+zux0KrXE7esZDJEF7rWhY4K7yBXURT1a96Gg/L+1X0ujfBFt9oBrszmmVBkt56G+cQhiWyE3wt7
zzgWRZiGSDPpY5qf3D1TNIGSjBszE2Yx+XyUaCKbylSlmY7scPscMLw99NH55lfUiUCAZrYOQpss
JP9wucJPDLSSVKhhpCRw0bcm5cmSJWEVKwDO3MWvUfAxNNeku1m2e1wCVWYBQp2ftPRdzY4etwfa
QoNV0ntB1qtBRlHaQK7+DOFQYqmruRNzutkaUSwzpnDsl3TI0olwJ/lSEsPggsnC4CHARD1E7wlJ
K9jsYMHWHZWCeTKJc392Y6znLYc5r2l5be/1Y3icX7DYvD3BO8RI/UxWgfymFXSx5kTrdf4tdIbT
b43f4zDa8iP+eu8hV9O8s7DnrrFBS7j5S0c+MTevs127ejDB83Kb4+RlT4PgtDLfHTF2YyAP/jWA
BANpEpjbLwQCbewXX/vhQ41oyd0cdd+tdk11ayBymgxCLiBPlA2/AjJbKwy/FDaLK3VmdFPS59cn
m/fdL0lDli9CFIj7vwpH8NOuksGcdCUO74iP8hX9zPgsWWLaGpz5hMketrfm5z7V6Al2zlgQ5min
23bPs3VrlI7mNIz3tOuC38i/hlm99whP6WMawR8xuAfySXVf5qsQmXM9PolQqs0jSz0j9aJUrx18
cwhshTWVKzGguwRFnMZhVnTzB3sZstC/5EqiDEtR/aR66nPQYbd7tVoc3UvOx4gSfEtnkrGNEhNi
pB7OseTAHpafZ3sqvtA+xmwRGh9uNLnafNGPlIEKTDACJ6upvEi3QB1+uJmovV/Z6p1Cs5x5K6u5
nZHcJj89NTFg9HFPEcQmSm+ZBD+pgrBIrnD6ijZ7vadygJjm49MDY2pq4NpqB+IzBJscVXDibw5/
XPymiarod3fcxELM7jSyd5tin0WQeDy/cBFnEtdYv/iiVE3iKlOrP0w635PHnU0p38zCwSme2SUs
fGhtnWfu74gJU8CMgA7TgMG9BIVORFEtSLUHoE5kBDTm+tJWo4fv45IHu/ntEWp/8wG29gHaM9RE
2gyiwdZLn9ozKbOK5nuHOG5uySdFH9B3uuGH56c2WOs+OrzSdh9xQ6BD+crd80+4HPXskJ5MsfF+
8GwW89qrBcvgPvqPvThNZ4SajywNmTkjWu3KV+kVf/2MhzznL1FZ2ZcHiBv6IPLoOiAu5seJJRSF
e2SqnzOsrQcLyUg9QUBkLnswbb48G54EWLJb08ce5cT8Lq7OTuKpugH6/Kcv+zRjEX5kezFC5nyZ
y8uqWLrr8M0ZtTOUNtFE1O7fe7rSVoltqVSUvxdABYH9DVosfgjBDEy8Bq3dkTS1j8PbBNtASP+k
Q2rcY6VKcKc3zqgUqFm77Rt58tNqTjE0b9QvlCka65FkASjmm+ionskJ/fgNCfYb4SL7+wBVUyUZ
2SzUz3qk7/2oB5mn7ssFIYVD+NO4Q12LRIWAQV0gEpTqrfTrUGOWvHS2vwDK2u8TJwqlDQpkVv57
d/V6nxZMpwBf/ryuqQVrT578YWh+DgPuzaE26IgN8YpYPoWj7umHRHSFSczw++YaghlvY4aJDW7h
ywWv3brBs22R5RGuuHFszhXB1K5bYR/vE2UWBd9VG31Pcfs04rnbwBMBI+tnBg75x/WTFNZD9T1s
egPdHCdHhnrdwv/YMq+O92ZwW9OMlgFM0s8tXSv7HK5vY0aKSEDge1/wXJWQONu9leRcO6xynWSF
lnDgfpbFnroDVoKgPiiRdbUKAbJTntiIoAGXKJWoehjknJw4kkcJhtwBfDrHkAsEoU+NFjdgbayG
lcPW1fDPce4bhYmeYn7cYsPbpaURk/Mb+RmDDAgonKAlfkNHAfbeIXSk8j/vbvHN7CGk/TnhSsJy
CrQWyNhw/X0rLbWsdOnSMCv3xgUz3adHchyOaLTP01yzs1ja/OqDyE3L0E9gIX9orrmxNvwWYoEG
pCHiav+rNN+E4sQFP7X3GyWrwa34Ndwz0swuExF2H23F0JBpLBdoWajER/cCKL76L4ws5PQ6IDTo
jPk56PW8aRNkwAUteamEzK25jC0wnAAbmEg6R+kLqw2jjB9fONZmLvMSXlGA/Fu1P4UMdu3zS3uc
G6p4cjOFHoK5Lxa2shAtKTTLC5+QVM3h3kEMtiNobLvL1ooSCab6mOKWWgI8tJUakOceZplrWk6I
ey0WgLROjg20R5JfoHiCeA3MEq0wY5dGICGKzJyfoDZDPfUDJr712QPpDmfmsCOdRjKgS32CeZ1R
ouZoEYjgYzVLEHC/L5iIj7FEqzt84fuX3YKF6nYcBl3GDPCFdjYi3qE+r8lJs7ZuLIxTcOlHVySz
fQhaDMyRPFdCveco4WcDyWBIOxXj/p8jD4xp8jIXM+QC4f85nBivbknR/IyiHX3ATcOGY+P2lbMf
p7NXPtCKB/5KR7cF3dl/T6RVkZdx3ShPJLSqikGDEHdDMU9MAi+inVruAd2ApHxqgLrxH1YR7cCu
LW/aAVJIjagn8kyqx7qImiGK15U2Yv1tw+I1KDPKKvvXYtGhEPch43fvrjBAgqQXxxlD7V+DpswH
Eez7vz0xDddXvoSqR6RsTuUXFvjNArP/ku43EqmyKpbubSzOdWrE7r80fsmKe29gDt+SlCQs7ZpH
VBt3LVnanBrF+ea3d8tuwnvJoSYuw3ar7HUUXLE/vJ+UVXEvzk5v69qLNhgjkBQ7UDYd6nz4IV85
tCU1ECaG+BMfv8YBvWyzWQqB9q45Gn7JLp8wZEpSU6xMqNKveNUzyxNOTdB1fM+TArRWVmN4CqQl
DYazcUyYAYM6jgF+3KxD0CM5qeyLqT0MsUsGFAx1W7e+2YuoTQZKq75SmedausKoUkul6RHET7MQ
hMHgbvB6SP4bsr0gxHg/hLix8p5JlzhuF8DrF44ESKsEaUu3CORcRr3dslfpjs3vTxWL4G7OTgb5
aZrCmrZ+lmYxYWkuA2lNprP0ulzNaN9uhzfgKtljbi0ihgulsxUTWQq/93n45/h0Rnvxcz6mxj08
QXPdgnuwTQrAM0Fn4dL6xaNjCBGmRgdb6AvG/awjfTmmrT49UtCGBcaB28ulAl4WlK8OgN36DQQE
dWxXa0nlDL//1+9Jt+Rf05VRAHJieGRT/frmsyNW2sZyUl41tvaQ7NtpnMNP47Mh7ABvw9NtYBfn
ELAIWbcguHYwMvfqQdMCnkmPGZIWW0ja8ZReG5oaJAlEZ2m8J1IY/WHZNGkx54z4PhO65aqeWkOm
5WVD/AFwskKchbxFrI/BMUBdT1Qfg2FcAGE6UXq+zQ8NCukqaO7FQZ6cD8GVYU1j9/7A/Qo9CGF8
iMmY42oZ0nNFXKKZxW8VZ5GO+JZI62pioJ6SAPv9v2Pnyxo7p6TS2z4ZAhwFS1AryGmWDp+sIlAW
+qEyv8SRQ/LqR9HPBJQUoyVTwZGpWy2Gn8rMpwgZAY/TpFuO79CO0LGR2hH89xEUz+/VXh/y6W8r
Zr20/pg0Fl2foGD7EAmKgm+H8NhavY3fKK1DDth+prM2pfDMnRp7lRri4/fD+lGSf2xDF5lMcdWI
1fcdrO6hGOzYuBQrUl+Abmo9GPdPE/s2caiUY6ky6O1L434r6E7qWG73nFYBP1ggTNG2sGUKk4NI
pw2OaAaDLusZcO6jIv+IP/M+najR4wCR1O+dYrY/NDbUxnH5elgycLIVRTMHW5MCt/YbcPuTl/E6
DHWQ961qi6OrCYljF7kd9eVKH7nIaKSQKZefp8brplCqbiGr42kxu14763EKyBUys0LfJY4dfMHS
H/O267KlpGrN/wZ97z/D6i2vMflwqx9JjdNzNHuyKiKZOkun11hKX/FKMgB/msNZboEKsHnbsnUi
G0bzfttshF7Mh4rlAYw14FSyGlDggeQ0qA7FrcV/uLKe0tOukyzRQ2hOOoLXgAZt8xaVRm2zeOqQ
TBZ2F/TX0cQz4AP0EZB4tk/rvPawzm7IccGDd8PMaCpKf3BA7djWJmT0OgtTxKQPOb8rfVDG/1Iy
d+5SEz+lpTor7distwbtGtUu5JuoxzsoIwyk7aD6bxDwzxZYieyshW6WCXYxc64lBXmiDDFn+Z/+
x9xMvanAWxJBsP7U4C2TYtetEEvmFOf56ncNm6phL0k10mOCHb90wZlG9AsgwLESqV9XrxHlI7ze
KJLoEvluKtphnb3O3TRxU713J0UP0vjwZmZ2ZK9Daam4NYI3LG93O8keQSDhWExRjkeCYJNeEmcp
1yNh6rDQX2ZcjF6FTrkpu0wGchiaF0unDKV5kbmwtdKgdxbn1h3ebOfASSpbHZrNByg2HuKV6Tgb
GHgcwi/bCP7m4PYvUNgmKt4eC5KaRMJoBxoDK4DxSRarjNp+hcnrzGxeQ2KmJqGwmFK0GMPDVzXR
+Q2I7TvorIb0gcD4cBkbT4Ymc31uHMnf4Ht00t/BZvrQ+6NmA61SUtmDjSCXtIXiv0HLky5qR43S
sq8oDY+xeoiikhKlbamMoXDKye1IpZrw48Ln5ZNHuliDjDRYL3VY6Ic9x/AshHEaRjgsjZOlMh/S
00EoPlOR7m4Yo/ztCffllY9durBqrNZxvkYh1OcitLsuLJjyGVfN0XxaRhe14mgdl7OIaPHgo0wN
KV53pVx8wi2tiL8O+Hu9EL2rQqGBCPkRehkFVPUMkNY2W63J3lUqlcnbYCR0thGOwVRxvgpJM3RN
wfHRXtMFO+QYeqeJMEB8GU/2aMR2rlJMAtdpmJNUAzBDqRQX3PSLH+uvFyG6GoFHsNVGSQRTS+5j
2hngtTRxleARhoucuvJIE/coSZqWR5y3R0GZLcql7Ht4nmjy2awUTjpf5JvVlHBcZb8dlzyq0d4i
yzGrWTK/z7gqr/CKc4bM+SCPZHgTL82epusHBd5Bmhv9I1IYEwrFckzCbCJXwIbViZeWYwZFpJ4q
FfuRFiPoGyjsfqME9mts6RCwcuKH4gl0AFdA+Ito7v9rw7dIMez+TblH/CA+82TXRoQsZ22XJ4bz
ynVNhAzrFe9DqgVQ+ux3EOOeSYvQ9ToCiBLblHFQTe/rml/KdyOFwbKDoWJdtbQHidHHgsEXEfRC
rne2ZmkF1SLXN55+oUQhyHZfS8vdpNNn2En/+T31YcFWPMKdUxWUI+qXEWU1QJnoRAI/tMyipSbO
RWNtCwsh7E3VhCPbjewWtZrUd6F/CJriTXm7AOXwH3EYA3QWFhSg0AbqXouM4/AXP4fQZIdBW6mb
X+dWJdM4hXsJyopHUZ3/wgiNzaJ6B3YLM7FzeGWNsJfmH7ztXYmpDODh1WhffP04WE7qi7y6X0iL
EnIVbH10KtQjUvyc/h+1ixBuRpkBfqzmjA9E6q/J01WOYYXRwqjahT5sh3Hb5trsQMEuK56O899n
uHMynJ7VmvueTRfl6PfS7hKkvjjpNpQnqabY3JhB5+WgM/qkxkJ9kx7EgVjcCU8tk2zBfsu+1d5i
c0k1Y+qkbUyYOn59KPmcTKGjFowHIUW0qZvN1CeQrUpdwUR/uk976bbnwBoMccIluGYsSV/4sFPx
BB/BOK3wPeKr/u6Z/nyh3aYz2mCDQHDbZcnCm8MUuWxgbL7h9xRQ40UJsGew+MCsCmY8w7DPIkrZ
QOvYQEXHmWaItQhOpg0WwTcO2nngSR1p1z6KYZ4sj2PkHqtHE7jinKXEFQSolMjHb/t0s5kYUwB4
MVKMD2YwPRQD3+rdnY8i6V1peNcO4agn5QTJ0lf1rrj8GMSyFsM4FYLurTt3jmDsSUh8+33PhKAX
AJ0qYo8Vf7h1qzdfQo/aDvbQHY9TIulzKxJ88KSo90ObsjY0sTqyXrWFnUC9xTn+vY9ixn6qmxMd
mNrmCc6Sw7+vl/W/jGmb7fW9DqzebmThK0ylN855jaFflLg6t5EcRDVVXmxnJpst/YuAIh6ZNM+y
KsJGnhtZ+ab49FAxkNd1+mkIHAxq+beE1rmR2gMNh9sLMQHIsBZGLtKNR1W6g+EgkRtwdodnH5KD
h8yeRTgTwFFfDtbGJFB+FLyVavBEsMAQxiWmjjWWrec4a9THs3almz4xIS8ULBv4qBaqVJk9Amkv
RkLKjGsVJc8NaPp63MVQoloIQm3yPc7VDIgPoY+AgoRQN8/APpUpiOfXhu/fU5eP9DKNxhi8FlmB
NeE2QdAENy7pNT+C0si8v09cw9hhPgO2SXqJGxFgcnNbOYKVEsSpweHdvWEG2DqSj3MufFFCrJwG
+atzcAXJOUbtN56tEis023vKjzCyZPbha2iNPW/Fj3VjAJBEWvzoNZcidQv5xdb6GgUxadOk1+42
GGFHblKOOq4lLaRh99Nsj0v4/277XRpr6Krx7Oy0qplyjxeAIv7N7+7fuy5pW+VyC0bpcWGeemtY
wE0lq6ybTSIo/I9k2BtQoKHMA+b6KeLXNdFxKxHwN1n6AFTAm6nD+/kEE1IwvaApI1zSfD/3oE8I
g3MzQIU1vl4XS3njIu71cWucZNd+nRFw19Enw/a1WXJKXPM2Y3pnDcWTyRyc1xeqHQMWW01cQjlx
ucRiYSFkRD8BodUzkbI7nNFBAPEtvawRdyvgC5als4D4gtwheIPJBv3cb9O0McYvdp50g0FpnbDW
8uBgZIxmFdD1PCwrTykF4Qh6gpBGusnrYCYX0wOvrBIM6/fIXIv5PLLKrkKxAEmtl//UQdrpbjh6
yaNgsD18/7dcqMrwF4tw6Iiqb3aZdUG+R0odjLWe3rcCJVH3N1i9reJsWRuqQMcgkUab2fP5PvCv
gTK3C9f7RT5T6dWYnwIqPwCo2yxfRTqe9G9EvAWHSsAK7gCd/7JIIw1TTn0uCvPGYH/tY3e89KOH
Sl6qXQTNnDcdjF01hrgukHWr9W6gteQCCQT3S74WAj0nAjSAgKwuJf0NB8bPWOUxM1XlleeoGwaq
QeoqpO34nOL0Gxe7kCffk56E3tk0vNeFmmUmQOlOHMqpyDCTZFcKl/xlWxpNNgiqGxf537/00LBO
oMJuyAZXKk2pKkKFmxJGB8+6uJmBx1OnfqVbtiB5YkZs8vvkW4emVjtGdTU0BFIA5HJb3KVcZ+Yt
yjEXLerG85eolAsX8bWDokDxd3IWPQT6noXLU24+qwQHI9bXJe6WiCt6ZHwzM6xXD6MlEwQyRQ2h
K9k/ikYEGBkSfC47jSYRhMv/JQZLSMBRQloAlqGQcA9+39cPDgOa5Oos4g+Rk0/4oLa++OVXTjfa
O4q9sMC2u4sMtWwnCxmRjtAc0z6rOYjFm7uzjjFVN7bIm9jydupJgU6Zw9FXo2tqH4PNhYFDod9/
7utjJYYphNYDEurG5ImwSV4nn0eVnau2sHMNRanN5lbYFqTvX8q/Eg+Z/ikKVuc22FvWunBcJVMy
mroxMGYmzLawQO5BZAYWd4ytQPHYQv1o44AbLs8DcZcpd9QCpz0BUNpkDVkTtmHtlzndffdjeJgb
2To3Q/r6SdrwB2CVE0tgUIUMEgRkO6z96tEihzxn5133hnOu652kDLZMjXSfHYZnF3MC4Np6TpoT
RFDV5XzLuaU/zlq/b/niEq3LKfC6lxSj+pBV3CnYrDnNJoCDMIpGLoscz+1hMID0ZrHL41RjHg3L
tmjmefPEq/LPP8W89dBjRu/1oersRTGmnw6Jthsq3IVNkTFRyXBs90ZXctBoObVhbRgwNTCbnw00
F9aBLIHBSu+GTB4oN6jFGI3nymtY9tKX4hwNzgDJAZexECB97o/d8PEZnNOi93V/zmXtQGPI4Wgi
yd2KCEzthpX8mUyTZLHvvp54KsxLSoenMLmOFWSjTEH0mbCAuyAJ+IEoZB4SCCb7o7DU43Fb4W7Y
HW67tSzXk4sdqSRJrVRpj5YR+kmFVCXN3Uu4bBEePWYz7pEarfxN/63ZBf2gaU/CfbYmoAQAQ/uf
MD5mNMuGOub8dncUlenOklFBSQwH8QHVhqYz19RKTarwXHZQV3kR7mSrBjM7CGfND1blB9zoKbMi
1kv8l4eb8jZDJ2cv1AB8LDDm06bAFIvHmDL7xQL/vhH/MuWLFYIh/d6xwv7K0Db9fGKy8J5oH4Ep
P7LRGDhc2gz8NqhEI8ksZY1gi8fFRhkq72cmTgcG3rPb0g5jagdjU5WYFaI/pRecx7N+lqZsfWF2
+6EXx3TRwU/+/Rt8cbsenEL4GVogQ8D+A1Yde/hreOYgIpLGfbQNUJ6D2P52y0GXcn9ZajnZw+Um
UhSNh4VwllVSBY2uiaMK1Djxkw7RUGjuRI0adI/We3NcoeKlYH/1QDC+YtcwxxCGbqOJYa2oiHVU
MW9kxMeUhrQ8V3yEjZgEk3gBFIOsaDRsRBZqYWeycjWljwOsIPw5k0cq3A9OEF0T41FJAjZ4RD5e
Q0Pjo5EPLUI/oBk62RNd4njPhMIx7HaJ/jaT3bYpBuOtQwZu110GGW7ULxHXPR+YXTUUZI4Ogpfy
adYI1pfx9aYmW0dYC6xRnLlHPAoQWriykcnc/F8xlgOcABCuDf6FtiN8dNm9hO3ZLCItcCwq7oN/
/3R53X8Z4uyOL/o7xsIhuX5HJQJn0qHfLMHih5o3PZmEAIyGXDcN+hygj6W0C4TACRvKXJAKhNVb
vAdW/gzorbmIYgKsCBeRKuVI0PA/yGq9Aq+WguyME534pQOnTFgw9y8Ywj9CgfOMHdjAChDDRInA
ZvHPVmeDZen523RPJQJwrS2qeyAx+Rnwdxn4GqOzQaPXtkUjVMfvy44wUnTQ8sPBodf6jlMV1jIX
Abmg2rRRi3bilk9GjmTig7dM8CjmnCJk5IzFT2hi5R320rZwx/c2sehcW63NtONbNXnGxs5ncev0
bRieEUTfODPihqRnbZ0mjgJE78Ggemd9jthbwIGrQis+x47Jyi/espsfzDjzzUSyaxJ85Vgwl61u
JvVHFBLnGXDtSaSX6bnOsG86gbs0hkHqiq639RFC4oP6FggtFQC9wfWZeKR8iiU5ipNQ8gsA67kg
fulY0PaL7r7zq5SroyRbdgrH3eJWJeKVp/OOK0U3nwJfb8fi6IMcZkUrB0oDTmBf0+nwveYm0gOz
xFS6eHeoR0qHKeu9GLpx0NrA0EMGyaMb3mNeadxTxdy5PkPmenLJ7HK7t1pgBDWKkELVQk/IUUSH
ttQYMRvU+3khFzpFzHRakVDuWNedl3+3y99aDoSAZZTrLg5qXuoqvw58oI3JfTdP/48fNdwwiE+Z
aHIizdzy/7NO+YEG1KNRHOYI/3N5rEBsOd8dqkIXyUA1Df1wbLI5L/QIUUh85jH9FpITVa3ZHXaQ
l/RpqDSt+xLuz9nxlTN7CcBctRb7+2HwFlUSOFoKpdKxV5QbB0WTuEqo4DfjBheWru+LHQ4zpr3O
R0jB3Cp2czd/bqbz4ciV4MBBGYhpkNXcj1KWte9k/ANCpqC3FJwpqSbWAQus0S3hKXlQaPCpD45j
QTAKjtVNqjBI/2Q3ai1BEIskKhoe3FxFJRoISJuwXvePcnttou21coGysZETkMfPku4tu3Vp0IAW
RIMNEnEkq2QGw1uMwIYUEG9nj0BV0x851/gHMMbh+NfCQZigIS6qeKosyGOz7Jmq61+m4iG7kIbE
tbdIExof6pMbSXUk2TzHZT2wPCkeycB36VVP4WWHvjv+lRacScGTIdPhM79wuo1LuF/fpiuxJqgr
1AWFHztwHfTutptQr7+jm/6eB1AgfqQIb6htqqmzhL/TjK1uj841mEiD60EHfbgG+wc8TlTmsl0R
HF4Dg2aTyziZIO6nu62dlo5j/zjIStnnNf1LHKJmZEauFNFyCdroFIR3mueh+Ifw1AF7XyjR+jam
orH8A/RzKkH0h5Iebr8v8YLxQdng7E3+ctzrb2XtdyORoMlTWnk0nMd/z9MuRwCtmTcsTlDUcXT9
nx6Clnqh8B6Tojo+0/TpLg4sOgZW0d5j8LdjZgNB97O/aqijlapvBuBTYOUUfSGvQZYapic2NCPs
tYT5m89EISscuwrCupgmW9wE2Xo1gyNx/8H9zdh3Hp8qrSNfpL6Hb+ngnZdlOn+qLyyoEqAGPwBK
eqoT14AYzVQkm2sVL57ILb0rUYzAuCU77zIj13psQUMEbJlvmSu4lzh5eviEvxHgMygG2uByLJpL
H5oBOQM1UcAxpzj4w721nn1lHVdG3A3JAzsMK8aMiZu4VQOY2jDQfv97jbvq1hKAchsUY1Ts9vx9
sUT2Ny3eOcZ3OVIYumtCmGY84EtN/NL4WOkFuKwPYlS9pF1BRcssej+V/7rV7NF2B76cvc3QYL9N
qwx1DxfPSxjKUObpXCxEG+Z9zBwdr+0KA3JUNjJu/KYxEy/3Qm0MQWEIrISIvxsdghXwJuTuJ08f
0kFLOy4zbsrNVTsaK9uA3W5WXfgz28XBo1pZOOXmcbMJTjCT5wu/wFgRTnDzAqeRXzh1cFl6Q1Tr
yTvCLCazpPPUk279QK+hZPeVnO6jKZBTHtonEjXPCv6QSD6dry1ewk5Y7D8lMgylW9DeAP4UUW6r
9+D/MdFzW11xmFFRMzk5aQTynCmV6P6r1FbYHQQIbSag6FQRrB5vd0NFcDMY/zjYg95inVBuGgDb
O+BZ/HY45xPSunFDwugt9BHW9JJ70VM3/569xnYG1V+wn1spr7z5bP2fJI7JbyfBC2Tf6Hv0Fmin
sk5r6QkGu4aN4Nk8Cvg7Wn4GHY42upsuDcHi2r3Sn9iFIUuK1Kz2+LPd8WsWNwT31DedMINTtxxz
LJHq3KQ+Y7Qvxu4U24YoLMcQtVUd4Ut654buz9/AKEv4f9ySS/7ydv/V1OWrc9+kx/JZluB3W/Tp
4WLBxpf9fWXp/yzc3g1bm8kuAS+H/K+qJLcKIJybHVFeOEYEEGm/3kebDSUIpJ4EnpN/6GhmfZfW
0q+dxvU2Xz14HwfY5UGN6fbmx1pJYwMTu4xVN/OuUZCalIIPz4kQr4maLA3yNjyqoLFLuEMB0p1Q
8plYZxv5Q0MU2KlcixLOk3WkZPOGgA8MY3EMHkxv3qSSS/R5ObdfQfYs13Y/1XJVMPllMTKfzWfC
Exl88DnmpQyR/GRTK57CDOp7c0KOEg1a9Wg1VfWUfXME9aX7WI/Z5gZj/UD5YN4VqVeyP9mV/PIn
yH1agNsvb3L49Ot9dbY9jnQTpGYQJozz79J0yUq1TBe2vv/3+WQib20UY68ya6RpHHVYH4g0Y7bj
ElNcqWz92P/jp2kl2O6rzVHjUDlp4HboXrIBDMpbE81E8p+l9/WckLPEM8pzyYm9YFRfFR+iQF6c
zQegcwkPkdhs61EoVlSyIKlBVFybxZDskEkHqi3jepYOM8oMOtAwNIlk+pRZ1LgiwAeFiuyvdDW8
gubdYWkhMbQ3FtOz1/h2DPgipbf9JY2XmTRKDzMo8Xn0wxPNoEcEPFpyST9s0K22FV0Fe2rsjXPp
71MUNPSjq+oNcoH8Y7a3wmEDtaB1Pjz4deTtKNTbkjKDVoNhwL+v3Ti8fYCDQuBKP7fGRpWthxlO
y2eDFBqX0wTQlV7yRuPqvfIFbz9TksEDiWkdOHocVOZm9QLdpxUUMrhsRB0+LNWOEoUxPp+3P4U6
RHrHv2ZPKVopAHhT+1rHXEwfatXlrHmXJiy+PHKIqUkvGTdbsSwHrEITkYt5zLyp9ZuQWIHbeVsl
f4h93QqoRMsELrIvjHZ6oA7A/ZIi++Pi7N6ii/pcz5alTejXM6hDzrX4z9vE2we+gloGiuajE0es
fcMvrPmmnrMGIZTDpukxRTl2aqKkThCSkvNKd10jhl0/RhW0fcfEuKxRwzgcetiVGgla1eDOSgud
LZ4ACzqzCUUTPmtbMM0v/QM4kklYE2Fnrs/2r20m7s2LSF90jyRMttmi4KVyEdGmGBtHcoYxBJU6
J0V31tj7Y7KTBqJO00d5SWrLo/1ypL9FZXXB1Ff4sZRkK4V0YAX422SvaTU2T14k4vk0W9qXfHLV
htM5mITm+aPoy3EsHlZo9GCx81d7V+lYj0BJtdgaxtqf1tg+bTPOeGtoY5qGUcPaEUuXEJCiQ2QW
hUlMp6f8Jn9Z5Y9I5cnQLfF/P1p1/EQOgT7l2OPkBN/JwyJ4cY1sIjh9YC/ORymabLpPjeNVuGaB
fvj3Arpf1ohJjj8th40MSnDhHzPRYYZPhcAcXI4omeWUpPwdDqYldmDtKGM+FDZVZR/QaU5lja1Q
7tgaBgfYfjMNe2gaL0GhDGvrRObaLfFFbfm1kkHg0z4JUZ+DyTJaJDVim/hVJDMd6Se+qaqevqvM
OsNsgqk7Dx9JUU8MQfl5KS9cq6YoXmIofAFbXffnkpb5+qVqNRTXPi+Hu4AeVg+JCVwANQGQBnOq
XNqDRXvBaeCZ2S3aSAUrgoypzq+TEOYbrSoetJo8EIflh0roiGqJzTpESbmrqlKvirXu419VY0Ab
Rm9+uVOHX9UUW4rvUHHuhi2OGBWHGyvR8dZCnZdxYgzjvxo8IelNx3xAU0tMQ4GG/Bkm/T7cBW7M
WkEtlqpWLyqfwB5I2WBwiJPfVJMyZf/7ocdiJjMpZ25frFqlqqaav7G4KHAjYdxkcPBXdaEGcLFY
r9riJOklx7Y+Tmp32RlhIWaT39LBP13hvY9E539gsvFcuTwnDuyBUb6TDao4sThPDpYTKPMry54E
tTsO0MzKJyM+zq+DZY7XsKx6ggtteSeTTuYGtGsEIbnGwrAulOpM6bsnGVWmY1+7HsGDFTwp/B2c
L+xlBYDJmFL7pCF8B5V7DG+x5P53wzxQm+ol5LnnJV/tybgxAcxT+6oQN3KX7xDFvgfBBarDEHEU
oSAuAPUz1zjoNmLBBUeL2yEr4LMdZ0WeOaezfObDzT7Z0Btk2CcKjqWmX3mq8ZeluqvvegddODE6
5U8pXE0B/OLWTN5D5NqaGues4Y9EGj44E6UAtwwl1JKwBJ59FTkNHbh3k2S6KVORGS+ctPscQzBC
WRBhmZK7qRPi3VcEleUKPIg+d6SEnlfN5BecTjXEUHoxuXaYVtIwosoEoOBrQS+FkaeETBiYULIx
DAG9wvljan6TS+ZH3uzOOMjAo/roRhD57AEqxyCsIpkOgEZRgunv+GxiOiGnO6XPyM6IglnYZyW7
83BaYEwXxp4fmd9QJOfGwhq9yA1cDQjKOb1voKiq/MbprWq/1oUZSf8QbJ/V781ormoZmphyBm/A
bkeSYHTYY3jNnH3+iEzvq8H6d2rX7VmTdA7lv9ujhq6ID7D7HULc7gkEnEOnuYtXfqSiVxKEXfKQ
O/B0HzFPk4poC3IXHrcjDTGcqYQ82MuVFOZn1NvwGYWz9HJ4Vck8fV1EdMnfDaH/dge1UeEdgufF
wAzGa1f3jMjilwZ8svt20GkqR3lILQf01HUWJSMxk44CnG2/yJIAEVoHz9vP0DZFB6+3WWNI1qLh
HFDFVQqQLPeOflLX00wG7sOI/0mbhYcOhdVL1vV8F4rDifh2pLkctSZ4xZnvsYkqXEgT6SsIoUAn
K+ybGZOw7M7BtHUZDmxC7oVZiYhwYppCyoFd5u+aBaSZLyQT2f4bzLkwFYazImx/c9jpLLzaScoE
fDfLG31Tz/OLd5InFv3T36fP3NiLdbMiobP7uwPQ4m9GvCmpMmlHB5vGMvW93g+CpJ/GCokBxM+K
/Bsd6TR3gXnufRZj96q71JBru1XvL1NXCqKpm9IdnMP5/mckxJRoOzB6UzoAbft3W/w9ZJg+z+CC
5SDIGVnjanpZIkLGdWd5dkc0uR4hjzvqizo0cTIuIX+vyscourNMmZqZe0YKXrGMVA+h4bEOBQSY
607b0SQ0MoiZyCqiDzlGAieaOhneViUbB0RhP7Pp33jhVMcDfsT2tE7Fw1aLislwrKL/srwoOcq0
LRgdj2BWSYgeAqWnF/okWj9pfRKWzihRPStwREgjSKKLyGa5sS3aKfi9S54jRfITpB2k0eaPU1Fk
mkGk2k049S+q9eN+aE5/1T17i1mx2sXIWU9KuloBPJ810KUtSwzXhLVg60jUzB2zaK3p7dD57MGJ
9U7dpMJRIW6jdXKHFCYmYbhOoSW9XP5LF1qLrsfygulEXblvuFp0VcbZf+kOLxY97bxxteL72+/J
R3+9grkDwkpKFZAiK1U7leGrKtvGGfR363DE8z6q5/SZ+GuaidVdcjdh/LhpsXly6tIyknsLU0Q7
K0AW4f4MKgUBtRbjA4xdGHPfw6QwOzJoo4WTw1ruvNDVu4zQzjRshutgZXspSQHrcvwxyxNCpP4f
mxJxmudxiQcPPPicJoLPqeWnMjO0dvtTzQA/EJO7RLFMLDpDHTuh8O91LbIEu0aAOTQNhYT6kq+h
lQTkrvUP5Oxv/7HOnId6uImOl0IIRPxjiItpPQkstgBdB/ew872L9uplf88WAmsOqlYEmqQKcSOz
wr6OPgjvSV77NlrfVPzKfMUh0rwGB22E3Hr4gnwbV0HfMR9EgzK6VjGtNXJVQR7BtXCZQf0xiHee
HHEqAz/g8Z5h9uFbVpO35A1ae7dcWae/4xdIC2lQHRNrUEhnY983zjrx5DqZijZxXLxb1r8vx3i9
ZctOpdjhSgtUKkjpIt/U8CwaJqgfP1VWxsh8vT/qEb4RTjyxwL90qNSN+NGq+zgGqahOlAvUY3BV
D+DKPnxak+7hH8nvc8JyNR20lsCd3Yl13L7LPDOUxwNwog+GZh7zcHOioPShFT90HSSv21x0ogt3
i3TggLLfJAB47w3zsuJs8+xMfLUFxbWyYcokqN+tLCg03AqNpdEX8/M9iDvyEYKHwt9m0HeiJ8Qo
yH5tPu/zQRbTtGCu678A2dkHCmsUxty/7HlaDmYESfvFd0a176yvQf7M6s4ro2VSfuX6VBmiuBVY
MOkwuE0fpEsZJBlJCeCQ6l7OTynwymLoVHUwX0fzD7wUOllSfEsYjLw/mw/CD/qxXXhstGFZYdDZ
XX3C9yZ0u4f1j48ciz7tIzWAx3Se4TLlEYMnJ/N8LdkBK44VKJWRBUeoJ7PiETtWzSwGE+NqKZ0k
/ao18purc4gYyIK7mByRMACK3byX6o158N/iYNmX2WXOscRAwIhtpBN9TksCyJYY9vjeRA7VSpGr
sr+fR5CxGlHgBuCpgAdaQSoUmAelgoT03OyyfHuFvjlrWkIh9d7Puu2W5PUk4++UEOt+FuvthoYI
Ml0Ja4FoXLhQD6H0zI9+bjeKrT+q5gHTfG4ivPxof1kwtkeRpbje7CpdIKd9ss39OaTKAQiyGw5w
7YWbzXNAp7++OekD0iny+qeVrHEuRhRAbdD8XYaU9KSXiOE8XbK6w/tNe3pUeQJOhoSdMMrl2pkO
T9gLLfcZ1L/Pb+XYqBqzihsMZwGz+1XnS5yIGLzZ6EmwtGGjjLF2jLAAe+OXMjtjnb2b/odBZuYO
u3L+VE3bD1i4x0DIZgMLg86pIYKVBnRvsLUuDiTptbRzhBqPsT4vqdhOUTNCDmCc8YnUnaWeKU3B
8na+mQNcy3XDJRUuzFF3HvEF37H9L5TRKL7gAyL+utqvc/EuRB6frVCntZQpHrenzUXfVgbF9MtM
bv29mplU3U362QvNPbsAnIjZXKPxjZ4QeokD9rDk19LJ4Suc/ebtmxO+XEszuTWO+xKdBD3Vun1S
QGpYZKKHPPXWeHrtwol+hT8pCiJbyazRA7/e828IN5MUcXmildtcyaR1F0TfDmQyhvUOTdTV1U02
qPoqbay7Xt7gpBSKn7odzZXoGNHh7u1tilsWzdctzjaqaSx/JhvJ1UATRqn9j4Pbibi3y1ReTCGH
r8F/XIEnnLJBRcjeosantSh4yf64pdjxqA2KH12+EYpHpW3b5BcXxbzuKqDCVUDQQdMUkWLfOi5e
SJYdLa21ciaKmhH84w5zZ0+bhR3bBmifsA5eLPFWorOfzyALWEm7BQXABdH6uslkGwll9Khkt7pb
bt3VUWs9LxxIokfh8giCm/QuHcvPGl63Iw73NSJNdYpcU2CXD0+NY9GWoDowkvV8v0RoT4h3OjI3
C4gwq1YhmYiF9umFGAPqSpTWHZbtNEcFQDAS8dI7RCM4z8OIMavpBMr5pPuIAzGNv0tzE/cQRELo
1kfMWPpJhaJ9jsOT/I+7l9IEACPADuUzEPSWv2adxJUYiBckFuZxhZhl3D70DykxfGNwxE2IUCe3
rwTSHerHEwwb+P9mKfA0EMzUl0Xwk1WqZeruIRmGKs3uiVT7nzEDIVVcvZHFqvaJmGGqZobCM6jW
OtszqeGkvWcUKXd2NYuCpwN5DuRlDslbNitm0PNgHnAS7qFTyAj6kBz+/twjOp2KWcpc0SrgiuUn
BDyEbwGqWMj5CIpYmBjh7Un+uUivfuwnyvHhgJ0k+dApnYY274IXN171cXb8pdGXgvldEwlMR1Vy
Y4xbnFAOmVYwo/IXZIqa8Q51UbJpUhS32QygJFLezjjzKCACCTeWVzjNMRdPdQ8YWiFp0dkXcRgQ
S5NEBlaRXiVJ03AzhucpMkNxCpbGLb7tJUnMln7rmFiYj/jFRqi+eCESScLgoyiE1tS8Uh9+bQP4
jgC2yyXcKFdrc5M6jFJjr1ur66/XDrYfF3HO0uXNgNnWSo9mScVhsnbGJaROq1SWCHZFeJ1FhfUO
qCEJrkeSQejzkvsNM5nJsPvHVmdbnipJggLveovvdBiPL3ea7KQxvbUfRdWPpRLgyEjeuONOZNr2
5QaX+cRK2eNEveVXSKkVIuzaImmDMWJXq1U/2ESMCHVyJffVMjOBQAdoNO3QFtIpIqVbylvKqABy
XkjIiW/d/AjtBEU81pQUtb7IzQ9MKaFl9LNy6Ly95oxhzQQqd353dmeAMiwGORL9E7Z8bh7p9qrq
T2RLiZoALJpLYqGg6dt0XCJPfA+sqx0TTJCLnHGBrw5n5oyxR/qRgBmY6BLAIEkvh9em3TwekCzb
DwGc46h0RQqpr7ATJwh9EeIeDVlHDP7QWazZ95I/nk6Y37kIaiqQOf+0VY/Ao+2sYqVgwKICKza3
gVQNmIIUaBaM36B4DG7Ov5sinXDG0oV1lx9Wpu91dRYvttbHqBQ6nsMdujwW6XIpR0lIsx5LI8Ks
1DVNvuQgL/RX2NXaGFpj/FGFNX+J6D+97a9AfLiZzjDXS3ZGhPiVTgvnlOXWwPAUHFDwzYyEBgXm
/0osUZyplEEq5IaOPAmWknFadH2nx+iwMNwB9u8bH6yXST761o54/Rd/FCgxIY8lTvI2yetqZg8z
2blKGWw0/ma/ekCflLJ6hbp2pnmUgH8GDP5bf899LdkluGJNUO4+bEitwF91Bp7RNa+NPBedJePS
1MhqhRa4DHb/CjlAGY2Ca5oLDqIP0eM2XliI95UnwQf3sLgIXoYmSAbXe2lCen77NUOGm1smXL6l
hCg4L65EAiSvNIBvchXl/iQZX85lYfC/n3NTFMd2l4laKXg9hMuTu4nkVQtlMKju//BujVxFB0ot
rKwdFDfQl+3YxN59mWaBVSH1L41rxevRdqjBCV5jXd3GdHyyouDXZtlo1p7qtM4Pj66dCpCLPVON
hUxXmmkusEzeOOoUXbxWSRLnJefVQTRiWRU4Sk7ik6jSvxIcCXAC5fZnekZLVnVoc7JH3UNGcpW6
ytKakaxr7VSVr/fYZo9uX4+riWmzSyYgjCgc1jx4SRFdNY7g8b7ze/XKExDh61FUFyZAi+9Hp35c
0yXdmLhwKe9TcJLaAvgIv8jw1q6znXdwWHI4Po4EQ2Ff9izAdP1Inn6ikKkJ30y4yjTqmrlqywoT
WL//AwkiuZoyIMOw/e4E8V5/KO3z5VUPqI0mT72SSAz/F3DFV17eOcqq379fa4sQj018H9FFoTIJ
/zFM5Icwfwa/yIIi25UYigMeB1PUA1mnzsYqPLUyeLMtoDM3bnrLax3JMnl68OEufRivDTTzZ4nv
I9euWrK9gQP6vPJ+tSj4pIES3G5SLyoyt22h2UrH9o41fEeHQIMgOOytQLk26zltHAEuZcl4A5Dd
2CHy+u12oaVNz5yswQS9aT1+IF8KliY0M+W3Rb2OS8Em6NBvzy+PDdxRGsnVFVCQ4KZGZQzhWIY9
eBZglsp0AXs8EMImpw4MOUXxWW2gF8ebpWb2ICgLlKxoSamfkMUm4y8cXqliNDg5kTXndzd/jGc1
NAua6n5UAI2v8MDta3yd9Ex0ed7oCYvHXibvm34yMcSHtNi13Pp4yMA4ljMWr5vUmeHFGvHQvFWe
y98HtTRs+ADkExiH8GEqPVP/YLEzMbXF7/pb764AFe2QiA0BMM81oSVXSIW4zuWREqkt/tO2sna7
bIpXoDKzBIXUjpu2vIlDlV/JqFx1pSwC78M4Orfjpo5fiihXacr14zzCxoVO1Yy2vw4PVzHiBW2o
cBrBV9vDWlbxXumrzQYdqAQRurPFBsdd3AO/LmKlRmaGoRKxaVNt+fhISkfQPZNehzczrlQ32Ion
QriSNwQffGbGCWRz0G6a9ih3FQFXF6011DuY2nZZ0pMjbmWjypUGVCPqabBv8zOAsyAOEPHKFv9f
OTn7fapk5JhlDUIdfBPjQra0b3PcZ5lCSTIynkh7/DFkEsMT7/xUKEUy7jt0ffk5iFxc5tBzqvk2
y3nZcGr+NFcaYtCKf1sfck0Cd6qXMLTqo5sGLRMx5acpwM70fmLFud9N7buc4qqiYWotFr/Vu6sM
Gj7FLEBrbshsYkVY5dHgNtvhi6povw9WmBCdlkgGnR0s5DEpbT4aHxXkVdgV1C1EvCMS2C0MvbOn
7mJQCZawPV4QUqfMC99656QkPv1730DPBvbzl2xAjxe4j9fJ8D1+8uIbAbW1GHOXZgawfX7Keb7F
2r3/jjQtQjVDyuwjS2R50QFCJ5qZ431LddPYeJgLkVmgKIShdUxAm/WWrgA6OpByt2AqCehjWpQn
jVAzV2r6JIR/InYnymZA4OGqA1umOy+J7F6xNy8nlR0DrZFg05zcOjerKZ2Qy6g7FjpdXe5MXnx6
r4xlmCyo9yLNuO6uUDso/cCwLp730ytC6IPzo8f68z9/s7qlQ6ynZP+h0L9WG67Y/LIIwEvoGuqX
NbQP3NZrA/jzyxj61iawtpPNF+l9pYG3NHph+AzAnd/FGUBvOR3zjN+Kk+k95hBCHmY48yHYqMnv
yG/IS5siAHhplJ1AokcVwy6fkp777tICBH3Q3wII57qlgoOUNaMH3qJn9rJAtRcIZOlxH456Z2JB
WS9Ev33IPBrKGUFdrkgwkwJ/PJH4wFeNkTsXW++Q2iMTG+DVQVxB2YeHjY1IAss9hAkvHVYioQO9
cEPxwsq26JD3WLVCn7JUDCKd4HBc/7hxV8q79YT/oBCbuuc6tLEVsf/J2d0bhEH3wcWmSXJrwH4J
21cIYk9N/6vJeGKdwWTB385zr5V2zE71jCSKIwlz8QCXmBhQb7LcJBllUZBlubOP4GX9K795K5Y9
iVJp8B17xOLvw+wj5Sfe0V8k+lpj4JBTAHE0ua7KkJE3xBzt66ZXASwhQzA5fypUcK959dliUaD0
lRCPzCDvODpThpiOWCnm9TZINNPWHBnQ7LN51x5SHNZ0XJn0p1T4gJDgr9CD0g/NKzNJkOdG1I9P
hi2jGVwV5rxEzpLVVgHL2O9S1YPb26ymxAobDH+x8Dr+x43t8/JmXgF2Rawt8zPjja0HRFUCf3kZ
1j35ffZ3tUa+vhGwAkHTxqxVxutNgrUXZ8W0xLhkiRBtV15Qj3AwGvhyjR9tQEfZu3OboX+uZsaW
sVXxo0fZSSIjUfwq+mHbO0vZsSfjQCguVG3O70ovikFsjoT6z7+mlr7b12pn9KqjIa+RjEFxFl0l
C37Ap1ua/62nmVKr/yDLcgpSa0Cp81msxXvgM5oPBAKgaZkPUver6aG0MPKCYzrrHHPAP5TQCA+s
jusDL9GkNSsnl7zHMfyLl2BERgTpZGgrKVuTWaAI/SmIFlg3N7qDVifzT5FT9ZyN347cn7/mAzdR
2+rt/uCXOFqVKTb++bWlQSjDuGi9ZkZXjgtGubh9pQax9MeH/Av7NytZ4vtBVAXyAbQODcl7hKVO
OZYTiYvtGM/wJIXt7FpzbiVNrtgG+FQDXGeGy1wMqUFDqfaE90snLJpMri1LuNTI4DEtUtcPv/Hc
RgpYmYDRx2iC2ZHLqI4YCTF9qIs5vnKnIUMVzic/kNCu8/XkOKMgnsUoyjUQyCG4emVj734bCmcM
FGXIOBjUS9slPEds0f040tU8U9dYudfLoB3BtFaSh7G4JS4FRSRE4n1sayx8ztXiS4RAsMt2uNWE
V6/mDpDiis5RpIZ2IUyPqEaQsBSLdQl65hIKh4dvZf7NloPxJVkp2FVHRDi6RiqyfoOLPa2dGcMy
wP9DHm0ICwXylTnyZ3Y1o7w5eaVfnFM0KdHv1mt14SNzekt4TiV78ID0dHF7Y91q4hgAGai4H+lM
9onBCrlWSc/IRYt6dfGtEZE+5qf9/+plmWKISzox6+3ToReBDCeAnXTUXIq90I2458XqiI2jKDSy
WnKt1VLvWzRL5uzlkm/K0Lq0BNoLA97aSKipqeTowhUYCc7Zict2kXj3yBV7rZA1hE1rfwDHoG7H
9HqvimGXy8J/TshE15u2VmdleQ6nGxlQMu30kngBEWoSRnBzArdKKns+CQPsPmM29z95cgZ/d6he
ca4xMN5UWTKOV9bAForLzVRAONl1PrxC/EhdboSFIiHfj3R2Q3fOHLyRHWRMRKC9xEsumrKX1Plw
A26hnogMfdsZKiinm5W6umib5kFhTqtwncrwA8vZDs86AW03dEwBkbEZtl3DjigWK0tquecU5DJ6
iCaG/r42aTn3MewXaYos8Zs7WVJBLGcmljawJClK4uuI4DUCS1k6fWoQs5lltn4CkcsVfI5rpEF3
IeSybBRBg15Gqo8mbr08Z1+Xt/nuzrr8w6oBJdKNALVY8duqIIkpb1DvvhFWXhbWDJ6arejGLvi7
WuQDZkKm3Xn2jbtz6ueZuu3cZWGH3sTL0ieO28W7vOGvfWL/KkyxSiT2LRABg82RucENhKJNxh+/
TmBbrLuWOCMyRhC+bgUsc6ptURRQI0vgFRGJHxb3ZBm2QpmiJquxmm/Xa+0qQ+ukJxKbm7VIaTJH
Dt+NAdFIst1YtVtBWKeEDeTMqu+//xSuT5Z/VlkXs0QZAL+GEkGIYmifwGs/+yQzlOnJi+1Pap1u
qIC2byMQUfigaj79ZlKDDtm3TwD87AN3+1AzWydnUaKPVz14zyuHTCpplDWvSwJixFU221Ft6MC+
mAwwSTSu7UtAJuzzMGayB/rxX5GIZiF2GWDcYluTNecWRRVZubpv5wrvKD3+rKRWZr+pESKgB3Th
qrmXxVtc/79aVJj0ReKImN7548h77MnTKFeCVYNvbkgmthiL5F8cDgfkVoWFae5Gll8+JLCjX4iK
czERCYf/bzPaHZBBHiPahC2K/yIuhaqeTvhGHThRvCI8WRLST69uCMqykM7zfCtYUSNQHBVoNfTK
ogzez5yuxtsq6fxZjfh2AxCHqMsJAVpeAPnsG/iDBU9vwYbXBsNRZH/QLO/edgyPqxsEAg36y4R2
7QXdnVjl5VtvlOl9VeMSgObksTkElEPtoiJmhnUI7yyBlyvyJRrbagvkpXKI6UkXE7X2UO/G7Qor
yjt7mrvuJhUrhAHY+ZN92SewvTzJal/bjGNBlTB55sYUEfykA5lL7//XPClCU19EL7syRfI/DzIk
hgOADJhhhMwix9TOUtZ4yEU71iDRSKWWfzG6D6bUtTaP1Jg35WtcUFRdhWZKCr+ixgfB5kGzOtV9
xu9Q9bnT3I4KEL3ENhnyOWbGWI1t1RgPmYBFqTchQi71GBAsglh1xUszsMqaLggyP3imGpMC09/D
PJu98zlU2Akcnjl/diPtFxNJdIwliPc0CNJNmpMVM7GX3ga25h/ffWYHvufPYjGs4Y5vkp9boUEY
OipKsGwfQYQnicgg26E6cohgHoZTliQd72DvJklquRCGE0kJKq3IIxt67ycgkm1Z4t6XYqeogabA
vNKVKeicEaUPGjzYoCoXHGETKjuSsD0LK3XiyzVeWh9K8pdfViW1XKXI2qo7/ox7uTwmkBqcAraZ
WnHd14IUUzk6hLdFRPfODomznWI7LfY2sSr7Z8mJpY79XW7IDUm9x6jL9AJWhY5pXDKjcYsanhBC
1evUOrDPWiaO5cLetGKbaMVbv46KgefbS1CkKb+m+q1tgO7G8osaXQpqbGUVf6lyw7ghee3z9YWZ
zceUOj2r4IyAeBS1pB6s+rwDfku2qWoeOLtITOqzsJZN8pyVlOvdnjADEdCGJy2GuXzF15w2D2kY
IcgQfe63HRKplqZ/Wj8zqSsc1tNrvoBDZFUrv1YYCvLH3UGhkPvhqIFLG88zIzzpciG6o0kA+xr1
A8gzF7vwz5q3Iv/n0Zj55N3g5ydSOIMA4lpJd3yxtgaoxVPFTTOEr5ZVhGL0G6yUuH32V8n2xWjV
1ys88wlwuz2s6/dTFz+5ph98eW8M3jNwFZ1XA5Y79ajMvHqUcrLBkOI2i7d3ViM8zdnnnGerCpvo
IGgLHvw3bxHQG8Lkc599AGV1DXOb7KJxaZ6su6FVBBnHpVaA2yvcWJv79G0zjMjni7hTUHRHTg4/
wjQ2ZpvMriuu3vpakf7MDd1fYdlsepDlMCCVW2lR0wSWlAG4e96w63hSOeq/7Gt99KsiMCT8I3lC
Y1qNu2ZAoRt3CcETtbtutvstGYxoJx5I+uV5G/AqiZbO7GvvccH8fPe/H7tg4BA34ijlriUbvnVU
s3keXL8LjYiGEpwQ4PGQN0wVLZW9JTmbPVP4SjfY4j2HQYFF7LtDP2a55nYXcoxZiCX5hyukkwIS
oQYAIljgieM36r3TiYjtdfQ4RGmFLPmAj+fae+DcfKJoaRrGLNq78KNvrFAPgSHSrxPWOb8r10WN
jhZDe5GheGq0lvmjnxSnEdt1tFsre15qceimZ8v3CKyUUZbSeZ/UlqYmcDtW+1s48d/NXE5g2udJ
2AdZfkNcm+QyJx426u36cIvQCELfHpLXXixdiE2qsP4ztt0jlpnAdr16Pgy0/rJVKEQYFANbOtsA
uhGbSWuu7D4MliHxSqq7Cb2R1PoLODEOy4fOvK4tmA4cqKJe8+5bnN+v0/8fFE+ObuqfDkfKgXtm
vLdlv3CHVzNS7SbzMBlU2PxuwL512GNmbJ53BBLVOA7BQZaxlJ5U1vH7C2Vxl9mzSifWIH034XAB
DTOUfFvfhSLSU6YYrJmZsyiEEin4QeBs/290WIDuPSYUROFCT0EeKR5P/5ltotEuVWGsvLxusLFO
u+29UWYJ0ykOrWpG1PPzLEJW4UtH2/YAPgJh38YFYw8EpYmXHQMV4/gxnSk9cXnQT83z4Ltpjidf
DyUByhe5xzdjheoUTVdm3E9dbDJMa6Rvgp1foMgn2hDMx+AQlbrLAC7h1Rn1wB3uuXdhwGCOjysc
VZ2fzV2SbgfI9zgc2MHkajMBEe2jPNu8/Pfsu0YogjOUSX9+xg4zZo9d8mmhwztY3t6hdMQMV8+x
vuFdXalf606vs4eVnfJsL0LaC3ru+QCymDrv9CDFYh0KG5J58za/PwAOi8z+ZXY+1uHv96rvhv6t
zVtP05r9sanWy+pFlF3TdWaGV3wC1ZQSCcrLiwsY3PuTiyNcKvIv3IHyuPBIvfOMyhzYpcE2bwO0
a8JrF+5rNCwh77K398OBvfs2K11C6jbLrIewbJpJZSis8vGufRhlLkmjyNXBn9fIl1SC5Eg8ca7b
PD9ADq4R5SIJ2XP1Tx7ZqIZItqzoyVfFX2pJjfxpX6TLy0uBKCfCgOfxJTTTUGtfCRS8Be2kQv7D
3TTFIsHCgl9tScbSsCfLAMj/2itbsuvXigPR3uKGJZZMzX5KnNgyqdHr2bNy4rZx8I1VOEHt2Y3l
yHRA+q2p9msb9HHwKYQK1i2C+4HhpzSCNgJYJ+ObEiwWulxHSAUqN9S/aXAQh0oRUtjJLZXqTFzv
+S5EHN3zEHJXITiOfpStWxPLhyFg8hwb9BBm0PjJ0W1RtX9Osmfc5FQKEHE0eJowavZqVef5SXS9
SlfHVqWKTkfURvQGbUHVBfClKDs34nAECtXJr13LYoWA157vVBBI959POpPercQNXN8eULTLch3g
yBMGTXNLnUnUsu2oVqTEOuq9shqSc0mYf8FEi75+SLkiBmxVAR5Gctg8WTzaGJd6NOmGjhFn9XA7
zJ+Ew7sfz0GEKIAnx4jW6NMxjOSRL0V37XB44HhaUKubDinNAr473XSm0OiyR2JZ0KM7qjlAWqrV
crbG/D+gsPgYpN6rEiOzduTuXU6JLq9I3WYYwzB9hisTB4d5TV4TiQwmIRa1EPm2rhs6yLgxJG/T
9TjiRtuiUuQh/eZOV8ttIq0E+onZo2k9RdviN/c1QPNqq5Y9WMXvx7LmJHle3n0IzrqQ4dPa5Es8
bcCHwDjQE4SIREladKSQtHb0sgtxBrOQ22podVzfBbb5/msoAFvGq8SUSS/I4jDU0vik5qASazYQ
uVgxEBhwl6oJyT47wLdC5fqvt61Kxf30nlfM3HhCi9qswItFfyMsGkNHIU4SkyXgPtny+5QNtwWs
z3LN7LPY1XTpEHGWTBehH22oZHpr8ODNJM+hIQ55xcgfVgEmhyd7ySJc6t2PTuhy6QnJm2CFjPGe
QjEwXF4N3ySO9eEsyokcT2i9SWD2Qpb0aH+NDHYZYcd6acndmsuSyPTnOv0B2kV+iT2PemyHTfxt
zhuD5nL1ULaov05m6pWKyc1Yy/ul3Bx9pnCdc9WxVjdhxF8CvqKPWtEd3XdJCcNEG8IICFIaP6Sy
2J9Gzh9TOqTV/obsmm7hliKa2ZVEatnQ8/fOqlLSSk14af1ib+23Kno9GYM+e6wH/Gxq9ow0BpAb
ehoAoIH+M/CxyX5sdW1cxB4ZBCYIRoongGuGpFfD+U8nKJTK9Q2slLRBxjvV2vEaKN/O9qWdkkSa
QJgvwd2x94a97110TKpYO+pvLIins82FZpEIBBmW0X+GrcIrZfkzITxIZ1EGbEycBD5JAa/k5m6D
xklMlKgYVvu3Lu2f6aSD96CKlH0A/GRK9rWHUE98NzkHms/LPKKssZQCsQaUFqS2xpnbx2z6li9v
NnHOQPSiM4K4tg2LfkIrHnSUnlVAA+x+odXf8fOntHL9VS8eNSfiHIru0WNLLsmDouW94HUcVY+4
2NWt/xeeBS9UKh0/b+Dzby5q/fH16XKz9vuVAirmHycUm74lUi9ZhZdEBdg5qxLY2F5Y44AkksNt
uuV5uHKX7HMquYkvauOurrsfwKmDoKyGdzvpvGpNUaEKdfldIvnE/RFhUs5SlgwDkmPDRU7bB5ZW
kdBpFOA+bZLncjmQ1enanqXj8wmk9x3/uFLyGsMpGugUNI8plc4b0s7tYHoao6bHfUXDy0nAxdMo
99X5wuCDj8Kzr+7ESnm0snVnLm2HmhbeFZAl3+Wk5eQm+fiH8vjU/rocsHXk9jcBsQz0uKTu04Om
SyWlYm+kracXvwlTap37VNdL3wbjhk9jkVA+D4g7NnIhYB6ObpxIKdLnYXj9OYwJ4VnwhF7Qa5we
nSalpSzGy0sFGWIS0E379CTX+AW/d8E8zBlYkfp4J0eBDZqKB5IySMNA9RRL9HVbUiP6vzW7Zn3A
t61QZ/TbSTMahwDPnsOvLv+m5BCzK30q0oYhEU9oMeqM7AX4Bt7vZDauHBOUtcPUWd7kgLt2/2c7
fDRooccX+u2+7OiduEeOfFCYvSPHcneNhPXbwIi7BPzqE1h6BwY193hmJDuzTFnqnZFndN5Zkpgj
kPR/uUBFrsDJR5ro21+U3ImtGry7GAUcVMsdeszv1dAW+7hAvLTnapg+EjsohtancaFU6w2VOWc2
lN6BWghqPTzLrYQqfiG24IMjNznZp/2j/+EtzdWpKLRdk/AGkX8nb8e5W/I4DNw0GarM36Rxfl0Q
wr94ipCfsgFV50hFdnPx7lZUJtsyKjwT6P9qGg+jtDJ/JivY8Evo8nSOGW3WXOkqPxLXmVLNT9nT
EQI8M3WZ5/ZgK9VQ3VydegcjB2MeotSPH27BUxmuMyyPXvs184HPtfe32vcA0wp0y/G1urDm9Csf
AZwsiTCNK6hKd3zgsSoegmqqqyN4DVCB9pjVxUYSLaLz0T5yzX4ZE+gA8aRRVh5uv98Azz08UWrk
TEVAtTy0ptvCHaL5Hu9p3mEWcraE7+pNW+9lfgFrdXLj/YpU4j2jtejNMFIGZ85wmHScz4R1ai9w
K51s1xAUf27zC/6hs5z8dpArW6MciHpv0APCjYCtlRPVpyIDBjtausC72IRH9pR//Trr/V6n8z1J
deXUcqHUaO9DVtp4B2arp5JjA2RpiX4O9i98fcGFTl0xx91iXoCP0/6gUgm0xrbMlmtHAzU/kW9j
nJM+2H7J4ZZSpANw4q6M2AtHAFutzJ5L5h2Y9aSU1CjqMQ/g7PCwFZUZmywLmWHIlBZuHCL5SPZx
trshvMgeuUUAOYJVQbKkjT888bR9bpMVrhOxTPGIsUm9D1u93E85ZSQm4yu/eavCwCSYK1fChO+W
KJmW6/r51IE+yJYz4h8XivsVju6H9wF0nyJ7jO53SKrGOVOBWsKAjA5D8W1AXSFf8JxP/8IDIyvp
vmtUrL+6cuSrZ7SH6owxm+bjyFRXG8uvUpRKFXQ5GrtNw0ul7/gOOieipa4sKy/gKwP798IbnmjF
phJdrVNAAnDbfX8uzw026tRoWAb3gGbKtBEwxDuG3tZ84MOGW8CR3280iKz5UkYWNw9TZJTevzxu
Bea6INZiN038Nff2mBWu0pT4WAb0Qd0ia7k1BpTbjMi5M2YsknCBj/dy4NpNggWFiDOIRGn/oj28
acXqNkK6s2BnJaV/LJlbqXE456Ia7um8+k2lylxlOW2Y+NjxO2+bo03y/c6/wl5clgdoibqPl/7g
E0WK0WYYTGj1TmQRvIkXOBU59urAoy8agZMuHRmuqBQ5xJ+VQrTTZlKsuAAg8EQUC5cvWFPRrKI/
PMkUGs5ufKNGmvk11xgCSAYQ1L+kyU7Io4Z0quGrOfzIT9hoglHsKzEGwsiRy8jqmeFrdwVbC6wj
abE6h+NtGwfwPUftJni+HgT690+rn9W7AThW86Dpj3jRUhArAkj+iAxICToQwj2k1843hnZgsrYB
cVH+MpQFemOFU7T6WNXPifTIq5edQI9NGoO5/0wUuPjxVcwQG1EI4YrrJyAoICofZnO2PGyxiwHJ
0vLEyyL/GRQz+f7EWLFkQQmGhL+XZQ7I7qqe3nic7Lfzx4bVynE9Jpm5rl1N90HL9BHAkGtXU/rZ
J43rAO3+Ajxw9+W+QwVnmO05vfH9NlT3HQpOTNmVPcKusw1oEPmpkqdwIgDVSte6Z1inv/yBCbP9
tAHc0auqmHizWjYft918znwTYRuE4RoAmIxacBMv25MT6HExfUux+aqed75tTiQuWH4Dt+SKpP5L
rKEo3T88YTX/yBhLY/fyC2d4bevYPdZfu6AO68OyfT0crWfH9QZK3GMeadxwMClNJ08aZBQ4utLR
Q10hjVwkovHCXI+qGVW+GzWHEaDD3WZ38IloRKQ6p/EzOdf7FZBTG2jpSwoDI26H45i5uG98rwle
8v8jSTjJA1ZR+IdnOodsP5/5pmCANAi8O12BomfVx7125ZNXiDAVzWUxCZMLH66FS9ZHmAzUMh3F
Y6KSciZzzHZ2p+oqq+I42Q4sbmDS4LKdvcHe7nRoi6LR9CWXf+F+crJ4/CiPrzueMcoOGWgWZQ3X
s8/fnjQJT//Hz7Y12HuwYvbib+L3RDcsD6FIfC9IefSNHh6sGDi3XthQ30GHJGQphpbLgStn6BQH
CiOhiMoNEpgVE9oDjfctaUukVqakEdu06QaclFg7n24qOfz+BiyW2BbdaK2pAolwo6fcggYNBYYR
jiYp7VSxh+Qdid0/akTxkhhp7ti3O4CQC180lEi3vrg6KiEVYjcxy6yy08q87c93j0PCZFZLm2QK
xa+JJOzC97wjjvfjz0ICM8R1OzXMKaRvIlisG7v7oKojhbPIapXovMYKirA6FQalYmWOPCe/VvPx
c69DOwvt9HNuH7I3pR96SyUZ3UkwCsYUKqwlja7yvt5QhRsWus+YtA3vMSQ9TOYwrbzbqj/+ArWN
WH8BD4gaBLE2NyGFvqxqApjxEx/MqcpL9BlnUHBbTPjWOBSIenyMl8lcCffDhX13LylZrx+ohNj2
L0egiQDKow7p6QyvrsEX6Erwucq61OerCwwGZD9+LUW7EmiVUBwkbAbAOw6xZIyfckVmeyIEiJfi
JMRMLD9iha4hA8nNwz2SfTBQnGRr6cJxI9Lq7u0eblirviPguv0C+ExZ0ptXQ/7QrKi62MWTSwZF
bCtb/LKpevsQOQAjPw4AXPk8kO6XZlLLriU2SL77htzc53vuZszVJAOqDX7D2fWEMcZbAW/IuZ5G
L5mz1vucP+UcDBgeuVOQxlcMAxk85rAMtfCQSg1d7AKxr2JzcofM2b6yr+V9l5LMwMT5/KV7S0mZ
CBfvK2AqsyYfIsC3hl3KAiL22keBKuIYTSJdK8q2IAfVRhWak8Nc9wCyqUMS8pYXXH8kb8Fg9vF0
ckCCdQe2C0GiyZbWBm/ygZgAfIE+g5MO668r5Q5SaJEnOGSFxT2WKtYSI7qHyDjhWw/uJv7104wC
pyjkA8ogEO003qMUioCKRpQEo6+llkfJ38cFbf6jG1GY1N+ePbw4LrugvJ6nTWXhHLTvKBxORlrL
/kETPLx5YbnMRKhbiU4NaMakxQWTFDgwtqQ/aT/cGAp3SmiQKZMSg2T/Aln3bhhg4brV7okmCS4K
Suw53hZZ5aSnQJu0lZ6LHL/bmFC+lIyBw/RVZZsdJg5FlXp/nGDvyIXSN+kiGXaeMmK6gQtYz/rg
AgfMLazV+L594AZvbnXShfGaxj6cP2CIw9PGWnXV0KTzQKau7CjM4V2VPEJ2d+UD3oaLW3ftuMfk
fxGW7WzP+C6KviiGoYyNrfcwFPfTuEXNtgF0E7QmCl75u4am78bvAbHwzR7dKjoSMha2ooFcqA2G
qASklN84vo62adkqgq8Iz75utAwJIMHWduF6nprUi6tgNnT6caJGeJaOaAoZbg4JzCU23tzlwl3h
AheXUBSH4P4eaovKklPM5QhdUxZitYB9+SW6WCal5L/uw2E9B4PVoBYlPh3sBq24CFB519kmMCSk
K3UNTN7RIiUBrX652rQueWrxZpkvJdg8Wqqb1+meAwLP8xVQRU0JQWNxp9Sxt7bjeKy20USA4TqR
s3SNEvm7K0KuUxforuHMCzD/PwDVraWGE06Dy9o6W3OwVCdqY7k8yR0c2KLNhMhn8xNpjH5UebfE
ZQBgBupIJEqZ7dj53PHhdgjD8LFHNlcmRicva59ETLAzOcbTgBNum9ALgx+oyspvIxZ+tkVA3wxy
KBdPKh2lsqps11jYfLs/dcq7Zc7RIPIchA3/D64ShUMXZnaFKSKT6HFlvbC+8OLcwvonEDsrukLX
zK/qLPJZtb/38uq7lPNjUkcztwjQwVCkEpI3RSthNG8HXCY8ZC5dg7577wb/2VdUmk4Lc/vUg2xv
aZaHDSyqu/Ljwmfo3TxRFDf+BxYnb48+0fdGv6OUqJwpZcSKg5g87t2c08aRGlK+0CF1n9DGufGR
3b0SQUFWUeWGDVEiZPDxy7inNltHge47T4cw5P2tgXEV0YafAgBgyWAf7No+GWHCyxdA6q+dW3Vv
OXaVYPiJWGNW7/NjrRiHandb3lV6KSYqTBqV0F0MvMQ87e2dH1Fyd3o4SS6m0UAjtn1w9nCFOVdd
vitV4pXZUUN+JKCK+H/q73LTfdHqW4GwKWUsxYbwxKLRQZi3TlR+jEksRncUpY6UkiZ6whjfejun
0yQzmSKgeyLAOFCPHOmC79ta/LwCEIaOU8ptXZ8ru53ZCW/tf/FWzihnEdGJMgs8ujJ7erv0ihb1
AvmOqN4SJjEyseBF9WNmRY7RAMXpTgpcv0LdOJDpxMlSUWSBrkc4cxYQDFgFagXTbtP+h26GrUck
1ZLgqTHfNENuTh2PQ/UrL4nLCgjZ4QDLHPXyAZbjKWFOqlwXX+ViSx6DXbnLxV7vkHWUoYLPVQtu
8vKLIYSl8WLwib07qvZU0MrrI8Caxq4z0n8A+sY7l5ji8xeqYl4zr3iK2ZeBzD8LbC9h8vToBznf
6FjhIWHsH0X+3j6KbSAanwAWRXMbzxepTKLoXChUbCGeHovyjBkbtWWxhbsVeBtqthi49KwIB7qJ
xW2/4HsnMev4Iu5qYNh/sW9Ppph0v07D2MumnogKq7Q7vVT7g6fx9OI/SPHMiJwDWKFRL1qbPan2
jltIcIBCrdjPmsR+Ud6nVnZ2CBFW8YcctC1jpAszvojzxHfXPDSRX4YjIRpVbzhkg716zeWksPKK
yUio02gk5b8uIvM6j5zCjcWolddwblvOo8k5R4XMZ7UT+kVMxquu7hFr+gXPi9gwAqDHw8rXWkGv
9ybmaUzKIxaJl/VzkLMGzLjs6aiY9aqv3VRflHINBaD7Gl2bDQz84rExahmvhEup4MLCfhz2PjQR
AVy3sEK1I3u8k/MCrZiBZF5GwojrTHaS26iPTO8athqXplJkcdJVuDcsZ0tsD89ubTWcbQhX+XuS
Cuz3l9XL0rKDGkQDqucDEWXco0zUbR8btfxJM/M/rEj5csmtE5FJZQrf4Sg0Vsoohyz0sUmReXMx
NGKmoXs/cQUwX3daI0qrdrinY2RDVZZIrFOYX0xpEd4tNEh80vXGG13ntB+ssbOjdU6wpVkpu2wg
4IRmyk5FQ3LFgeV04+t8lUBAKvwOPKZSAWuy/u7r1b0wYfSFllEo6F88Tffw7Wlbl3lQUCX740sN
XPk5pXNabAPDY78aQUrNZGeVLJJnYuu7enXZl+GLWUC5VgncO2I/djR7YTuMiObwcQgPT3q1/h4C
fs16+tMqcToxpgnY93xLg284HCfRaf6TTKQXGmEs7YrBCmJubuA+jRYuUOn5SBVujIjMTJlz6u3j
KoRfkJ3QesScQViuM+2+JgKTxEsnoW26AYs6etnYxE2+QlgpGfh2FNZPERpfsyk+SHjEEZGyg/G2
gQ3HF0rzD1PYFVbUasucn2TMkayQoDKpOlz7Urg6eIlOS2bPFd7oaXLw8zQXY44CSRsmgFikwUrD
pYbl7G1azHDI7EP2v6Xy3WH3Rv6rrJgi4fXHL5DP4p1cjiDNduC4Hfn8QApbLRmr2fLsTq3Oz57s
B7Iq11TUoHcqsMDyoAfeF9ZdjXotJYsZVioxTaTZsavkYvzsnHnwql2sReXglOo24BSu5pqaj870
VeAftrD0vzNxFiXx+OnwlH7ol/8Qss6MqPLoJ/U+75zxr9dihiuLIFy+a9kiczS5QA8HV1+X0j7L
qcBI5I/XbPjnJaw8LyGo9bT/JUuDuI/u9RAJrMr9ASntLpRObUdfwpcGd6SyT3uCNSjTkFialYY/
W6yojTfmkjVGIoozkSp/aoSxIm6TZz4+oUkFU/z6cC6ZNFRTDf9R126ikPu7dXiQJt1ZwB7HZxUV
8vKYolgJprBLEZ+JPuW7HymH1n3+cVHubwgXMIV2KgUdKpvrqpUCVIkEIJ17RFS3wZPGhZoJvD4l
l7vz8Rf7Trh2W2Lzeb0OnhGIlOqOPmH/dQdirvkdsg1BU9V6SuF22eFmnjwO9YhEFikIY7CcwUCt
yUJb36ZlQS0EfvGLkiZhLpUBulPoSW3gaM8d8AvHryp8JH8VuhJZvuJRb9D8gZYAZNzn+SCCXMBn
VjketTIwWDh7hvOA+0syIaLST87sJ3dMsFZSDBTtCJdPyLYT9bpJ6wsQFjpsdXfb4x1Q+83ewSRD
z5iv22q7WXmsAj9dkEKXl7iSzy12qppcjGm3gvNgucp6V5I+NEy/QohD3Nzj4vvwmdanLCFd2xOE
l3ZdNAAh0mgeNsc8pjO1nocaU34AbrSJatvQIHfJrVYOaFfTc0ug4SxfB222gMiit85mFfrqB0NQ
PEmA/GbIYymK68GFrytfgql/RuwTs9alGtrGkUOl3gWntY7WVV6Hchp1RHqnvv6QrNrVTLes53ML
XdPXOlxzvW+9x2241rW22UBsVB8xs9ic6rIEGIzADMV1Jy3X+cn463YajPdcm02RWsbfeM0rB7z2
rzxUzvTW51xVoJNolOyXeI6WgOxaGv6pMy1/vZQz+Bq6ZbpwN8FRKeiofY0Z+WGG7lRUgvBUL61u
Wb/cqfEsHpCVf/W8SMSIE9EY26KJLP3yxL8c97ddAxMuwfpUy5+fUH5JTs8459RUAHubn0SdX/CN
c+4iIcuqDdGnYOVp8cmZSy/u1Bya24JGffpAaY1weBp+X7zPGAtEEgQwrNAOMriWQv/cPlg557kI
8ic3F7WYp3U6AglXSl4bMXRE8sECI5fyzKcg2fl7k/glvlYU4WFmJ56NknbRW5GN31X8jfCwli5H
XHA9TQOPHskqonnyHwC5MZXmOpwVCyEJeJXrMT3sXfsZy4LIa8HgLnec/hQ6rO5MzB/N4D8coMCP
1jYI/zfLeUK/Lhvpjs1QyAMAxNC9UHtxPSp6cv108fTkLzNkSHUUgB5vRjwDYItfnTRkGOFKzxL1
WuHslzF2NjlIKxGo+PtJCJv9ZwdNd0q9FGIPHSYvL8VnkdA7zFqTmcVnbKowF7kYEvPNDBH14dQY
a/BAbjSUWOl/hgxzx0eeEl2bvM6/7JqPOm5TCOZhJIZLJ3b4/dA5STwb4r8x4IzvvnIq0+8ZwwpF
m+FLYSr/UIx7iZh6t/TL++h30pYNmf4la1CZj4KbzNTU0fw0Px+8/V+zasawS2Zd1RwhFZc3/gLr
+LiCglVjZSm3PIEKrfHAoshU05v+M6Vm1dCWWXCJ069ZE3r2SvFQZXp119k0sDz+Y/cgibbWWCur
Qu6cnQr+ei09HiRWhNoOQ+zQc49eFmbuKUq4bjTkCu+VvxOimitLnEJy3rJgM7cdztgmm3o45KRq
i7qyJDgdWc3ESKkAKRjIJ23AA72HW3RhoVj6J4EVEukls+q9eWCs362EckpYIK0n2Uod1COpIsR/
0rSPu345KlN7AsvpBT1NnaRVLUqB7cTRKjgfkXrXuZAVDxpVZ+tIzNyEkqx66xIGK/k64gHK66Qk
+Z3+HtiW2pSTDkLF3JbqmU5USNFgYrgsx/lXd0yGP91QyCt/sYnHFysPi9aj7HJQDO6IfJcGi89o
C3G5V9u5zQT8p7Gr7Qsfq4tLzjZhNU0TyZ2nPaftTAH5Vhw5xT1SsqwtLx8d+66P/O3KB6cPqKuk
iRtToG1eACkav1yRKZUCRRxW2cIjWyx09c4mV43je7w0JDabA9lgPFWTttKGzsSzB3ZRgUphTO3R
AI0x9eMqcxUj9zIMpG6i2yfIPjhh9z3D8rEKlpySMkm1ho/QDPH+Pf3R6paL2FHGoMWTnAA84z1b
3KuIDTtr1EllvwGUHCkSog0utC9biZuJtuSx7v4UUe3SNbX/6RCv2HqQaLGRMMpzLFLn6OqjYJOn
kYVm82hjyroR9GPQi9ekQwzNDYmpBvz8gAH/jKtkfgN4JEI5k+uUVFqHzpa8vbMx7FoT0Lix1lQ8
xuxaCfkplI6hk4wchFI18EFL6gkbbJwy8qTsF8zHfA2/PwhQtdyTKYj/oTeNk5+McaTb0OOngrKw
s64An+R/ZEFXP5Nxu93ZZElLAwqHkJ/4Cn7ut1SdFFN32jTcs6EaOlAAEV7DcPVzJRWOxhBpTNad
6nW9trI/oktUbO1uDX9L4Agbs17H53BZMJJMSWpEosJ4I+AMpKFcocaNT6vrEl91144rmekzIBic
ZMUufR6vYDAmbIMXZs125gp4g+dqLc/VwCtVKu1jSUB2eKXCiTJtisklovv3h2Eya8OEdbnsMqMD
zNX17zrb1Bc3VJNA84+fzancuCD53EktXcpOgeC69rLRh0S0lt5G1w0pSNNziXE/6nTZSeRjUZQE
XUeiga2xT/eckSPQscIDJc6FV2tOVyFy/e/HnV+LgyneaD3IQFepsoftsPcAW+wU4r8xzPPiKKXO
EPJbTyhPue8Ciyk+3qEgyFy+dTklwFBNAZT9YvHL3kwJZUnU8raZ0k9TghbKtyYiQXM4C2OMEOzt
B2QwmdsZMcTHGu81APRVik32XxIWKNpIr60BfzFUwObH2wEtOmlNFSAXtWUEe+s7e3mER4OJL0Sy
idS7pZFVsoTTHb/1LlZYqRaG3Gch8xgE6mn81GnuJFPkIl7LU6+qcoNOMpUopwsauokDIViEaZOT
Ubjrp1NJsbsnooN8uISX/EGtkMGL569nZY7f2qCtT+Z6axn6m6Kss0zQlllqNKmTbdkCyawjAiSA
eULIPDhvcMlXs1mQWPre7uSZKVmnoM+fpmRgs7Lz7vboLhtowKRkgU70RIpGU3OPqwqrMUptVQYq
S+qdxokkqb2rKf7Lt3KGHd07wH4MJrIvnxnBrbCYA08IqlUrRJgAB3fW33R3aM3AcMY+ZlpO/uER
ZuJJg3mGeM7/Z4QPAVvr4XBEn6BXGsKG3z9rA2OAvJEj/D3A44ZmAh6WkYK7xdf6FsJpVCO2U6Ga
7YE2QhoEpnvQ07AX/B6jfReTWVuuJlCNrMWiB3rADOIrrkyD+yV7QD3CmMlFtOEUiTadbKjYhHTZ
HFJyIGYwTUH8gQ5hWKtcAFiucZglx8wASfFYClI0GxzRhb8CHGItuPUWzPPXgDH5EDnId5rnShGV
l12hTf5xHidN3Q2wI2jO57NsCBUGXfZqdPe0uvg38QU1xwQEVdqCbMFDkc50WTZIAfGfhMebKnoL
JnmE6XsTdgnr6RXjuNrwbtmhkGn0zgmPsMlu9lzUn7CBZ37fFNpv99yMg5ZXEnb0J7PgYTSToAoi
BPnyGqf2Eibza9/e0CUqpZEzlRWA5lgEFq0Y1Yke9uluXPWlw6RrXDJZlX150qTunq+YVSy3+F3s
rBYHwe/GGYzeFvuFgQgM9rfTFMV6rgJWX98okgmftfgjbeUurzdIXSEsxx3BE1+fNNjXgMgb9PmK
BJTTH+k55D+eULxnYMlm3jfZ01UY272rYX43UsNQsYqpSfQoAPwRwUk93SqVBQHixrS7oGIRPI6d
tGSp0k2uqSrZxautKt5qyUYDawLxKhLHz3mD203mltlvmUczp0TFlbJKUf9r+hKhYmW54eMncMcC
oit2CGzYiYE+6mVIFvt1mSWb3/RqwQHXRw+MDEgCBUPXftwYAfBAsk5/r0WcM+QWUTqZKWJkuyUf
ZqIQ32TLDpjM/Tv6QKD6QIJ91Ow30CRHCgFugB5qWyY1okd9KAR9Hjui8CVXsANTsXkG2ICF5t7u
rYCcTO43JgjJ99HHz4VDxDb2foM6rWrYT15tsXlGWNlAhnusym6wUkPzEjN98mZJHTqY8NvWy03F
OLImOo6m2wMx052Y9iNK60Ssvss1LMMEHMldRkPq9+VgcZ/4dn7gGlHWKzLpsPa1WuCCge5coor2
CMqnpCwM+gRlc8VCi2yHmKbYcjhCD+VeVhOMG9x3c7lRmCaM+M7Vn3+YasrBzFUA00+Xy+182bbz
ayCboSlZiEfC//kQvqtqcLXhqX2h/Gbhnsc7ra237IIfG09dZxMUG+kvvmaEGNuYqu+Q3s2JEHge
DmDS0SnH4IIr5VgLU9UIzqiB9LlYJqGRiY+On8AUr1cFhhrFlfY1EO1jxDjTKms7qRmSkhJz9u0U
xfBmpX1+Eg+5ybedUFvwGnB1lU6WsYQ/5S/CV6DfJkPcjOeoUIJ4ZS5X82KCJ/+Oew5iTSecX2Rs
Pl8+QxkvoVw2YlRAfPA66DCPoIqQAlup0GofmnI0E5q1dDTbqk9Bw7nwCO4KIPLV26neOugbm5WP
iUOLIyRIrHq1ykz+4UAsywT6olEFI9jCkrj8caEe/R9Rj0t8CeF23QNYZreb7qK0UDLHJrFYIbD/
rgl+qD5LEOegfcRVajbtTiSsZQAj+QEUBVqEJfWN0HR3jkkvO5R1injvnBgUXYSklMafXdNqpNLo
xvABaM8DnmcquhyrkrbIGJhZ+r7j0RYKUq7EGtRf9iF5VAVN2AT8LkK4NdW1w0fJxbb7HyLAIrMY
L74bHg+PLax+Cgy1IVNlYMMsh211Epc/YByY9OyuoHANNJUhOYlnxCbnD+4VndAVQf38jQbiqqyh
2LVyo9naL6Mti2iqdFiylCP3GrfW1/5PjgZU07AY9wYFpXdy1taHWVsmUyknrDr3vEoz8bkNdVxD
grg2p7ItY5/mThlUWS94nhxivaHgxjtHdV7T7fwtFCawHhw9osuWPqf9yfhCSCAHyHgqySliJF+d
+67OqyNxLETnPVP/Yi1bv+1pwPPErrgyagz77fpeG7GfdAJWeO1WoPZtvr2kcOEMM7nqbyKupLLS
tDBcvQ5NN7OSAHI7HZgLGu1hrrlxzOwmL9sU8Hn2sDR7mGXFOLyJzEvC1Q5XQsO9Ubfs+J3lcK/9
biOhAACmwS4N4WwwtOaVlIXIUXPPuHfyEqYDEsq6p5MRGnVK3rebhpOqz+t+oYpEvDT1cpTImDsO
T5nldZtfNMF4kuZUTZ6VbGB/NCugRZEo4pRjEQb9XvvEU0hm1pdPdsNGBe5V/+HVGYDAWHG9yUSG
jIZMpPosPihCHradyPpZaA4NQTYU5bLMQkdOEM3nJpzwHS944wKn5AI2EOuwXxgHfAZGvIN6y7la
Ik04ionVZsegBhKXcAsGqsbXyxlO+w5qy3UjsSo988RmfniGvyogxA6y2WNUG6SFk7NWZDIQjeCr
mHl+IDl3fDOLcbyh2DVhC5DY2K496WKV6QlXaTRj6isZLXFydNwFO0YusbAuLJSAS94k1M4F4XXs
3PqucZ/wDI73gN//kFKKZ9/Pvxknxhnkzf6jqDfQmGR0e4SxiZ/80SQFWc9aw35ih5YafwJw2bWK
YsyPDTVfM+oCJdtjQ0uYn1pW7CB6MF9eB+knHG1TPdpr1YTBLR0WLWveGtzzM6jL79xcUW50cbkV
K0S4fG9KdbN2dARhk4rCXrHOu+NguJXHKncZ+IwNHFkEkszgAk2Tt+ZnW3tbVvyXKjAzROdwWK0l
uFMS6sXkgHBZW6pg3jsxB2HsnQ3D/YgVPY7IlFZxy+dvUzsFN0FsMHj31tR5nR7HtL+ADnCDuz4K
h7VeH1ZWNE6F7KULSVD1qxHyTfuFyADMVkCXI2/3HU5YktqluBiL8Di3pMlT1ujC4Vqv6bbZ99z4
eI7fugKRMBd64vTcBwBmKO6cGpw9CL4PhbQtF5tEGZquEsYWVvYnBBGWJZOEc0jGSDSJpruwQUra
DL6t34yWm/nWzEInxW3zpkWPyHJk9wfwpmGYIL5GVyNufzBHb76syek0kDsWw8ID7zqMeDbaBVk8
pBx1tQJimfJ3wQ/ZSqUvciYZKnlfj0w6BFiwhrQWiYsIxEwF88wQZr1jEowDp+lg+bb9S1W3zCxf
b/8V17g+B43heJC4RmXQeYiIp/uVP1vlXzkExhSq12oGLi9evx1ZM10Nb9SBK8p865e9FgAxJQq4
neQM7qQZG/tZOoxuYx0MBjmFhcVdH54Ij/MDmAWnzA3AFgW9MXYkQGbSrRKeFgXY4DCdULGTCuz5
jpLrW9KKrivm7zLkVXzNoHM/VJAu334qsCER//ODyagg9scpOlbheNjQtB5hRCDFx1m/i363hOGp
Pvze8+42gGb6lfYHjK05txBAqSUcmTrlKhRCU47NiqIF6m95P9EuNaz/1mW1FrU5n55xw9h1hjcy
8ch/DAWaS9Vj9rpMEw2iVI80/6Pf6uxQhLf7VN/vsGMb3/0qTnqIsGiBwFYJxbF1eEN6N516D6i/
beoRiqe67KXGhwXqFxzh9kDd2A8NJF2ki/2u5E0nCN0S6FXVPAq1FAvXc23mEcAahHpf3J0Kd4GK
vQcOct1zOlD5ZvltyTfWLP8Jg46MCWI42oq6uudZOuOaIbvnAfzLwyjYK8792ELSKm/bHwdSqTwz
yYgu99j1iN615O/gQKh3ZDu+0on/D6QU+hhHk4oUSrrxZE4HN8gf9eo3EaUZ4HoAXTzZzN6FpENH
llMNk1q1Vsce/kDp1V9fEx5N9xrHEnva4fuJED6JNrKlAmOmnP7XKCom6jQnbnXxQWQW65HIpnIS
HWmM44yEJIPVo6YOF1p0oxhrwUctSJHfFbPnNzKsjRnHH2gSpsal9pc8MqL+h5kE0rpzvjKNGcl4
WCuWZp14ZIdMnxC+fV5oEyRI7Q5mzqyb97qvxLJMuGG2eVVvADP2zD02drg9gf3cZgoxhqGhbyzz
u9vGqTLMRZfibMyOSOJxOVMditW9B29zQgoa8fsmf/CBqWUQTJgHU9R3LThCfrvosQ2Qk0Ap3gWY
L858qjm5IQptbMDZ1l2uqedRJ4sc13mqWDk+g3xBgFrlOazPZ9/axjAbnCax/iZDA2h4yyHmPqU4
I2bSJDnCtht/T7A9U+2/kpVd6hU8IDUDYK0sIcHHSW+fTJBc4NWhCkXzTSwLDdG+mUR3Qc0SsSqq
h2bfI61XWwl/vrZv4ZNG72iN4FbkoVwFOZ+cqB5Du1No8g+vAn//wk9MNZzHdPOBtuSK4FzlDSkS
V0P9X3garUpVuqBZdWtkKs1OXQ3kTHOVrJBopvnW29KB5AWbMlDcw8MsS7AJel8IMY/GpZAXsSnQ
x/9bud4z/9Q0NFYFHTx+Cl18W3DOGitQHCRmO8RlP+4kCmLjQbXvvtS0xwMrdI12TnU6V/TOayeA
GixAXjRtZqz5U+FgXq0eWTy0IEMRqUTIrXDme5wGjvRyeoDkRSiJ3fIup/H+/zw1JwLq2CoPNges
NYi2vM7H2KabMHNBlo5eHTGS+TqBw53TqkHBkxXlz6IE1A4n6GMDq6vCQOUpyIiFgHVYyT6E8QT8
Uje2Y6XnBVBE7jZz8T5YpKm7Q4zgvHKY/umb4ndbuG/u3MiCjD2GqFI66FKTvqd32FrlAemSjNhN
sgyZwdQPb75DTCPuJS6NFqvtdp5Mux4kK0kByR2l5vXMomH6pGUq0YCKaQuAqZTVG+SQOIx/F8BC
LtAZnK+u6q13LQJUcqjWwRyVJWLRyyZfkmjXVxZA7ijf6e8NeX1ixH8eftZX1hrmL07aB81YNPBC
CaHgz8v+w2doK+wuzta1f3h/CMqPhaq9G5n3cOx1zLuURjU+xb36Zrzsr37/vJlk0Sq5fwO1TO8/
5qBuanU4/zuveJqXSOkdtnbjdDPG1TxLh/v8qKQcvU56d6w6tUrZ6x8UFN4tMEPcnwHNJ/61SUzn
WqH+vJsPZck3tMKwKyfBsTR/Dxoh3AZ4yMLzGBYa/bszD6ai5I3JeRziXciQQPCQmXH3EYhX8yFW
GnUE07xPYC9AiZuuiyq1thMo3DoPFJoP5PHrjRh4EcV7JnH7ztsFG5JmZJl+oDDabpfhI26brjLQ
wSReFBZdaVqfyVG6cHi/g5NuwvSN/tCRP/Z+SR7JFQn101NnBfpxbmSpM6QXCU4hf8GGWkkMA2dO
d6maku+cZfR4gKQSrXC2BlL2Kj2mcY3SHha5655mlKUOq2daqG+tt2mjrt6a4Db2/PUZxu8miGM2
7KF4dBcaDd93hhYAvBLzMamvPNF7fQc84NuHrzx2n4SIDUKQ5ciphzA/6CI7/IorI8b/Z8iY4Q24
Fg8a1ruecrcdeijYAqbd2OAzZA4WQBZsxGu7eYWPbTDjQIBuaExQKAi5FSjAJ5vbwg80w86vYZXi
XZqv8iC9F0jmc/4mXjTJ3YthGaxurW63pnbfzQ3ggtTfXPnV27af6iDimoQ+4Y0sLw6sedew4+Af
SIdEwWdAU25uKOZskzgEYIQ7xhEch/hq8n8TyIRe5ka7pSRhAafo6NKdXPhMEvozTk/Nn90cnl5T
0MfcGMpcO2B6VcLef6H3yP9MZ5cRJo8GhjAV9CTFiCHspugFu6jxY/ctLiOM4szsUcv8kBLDORSG
O13uq/uGdiOFDi6GcJU/c7epLjQxBVBmvfyRB+ybQLufmEVe+d3njR7bImwatr4LXdWFZ+yeIyoy
ubScLiRAdsQgNyjb3zl8DNqjShz/HMotVx9ulpbHLiHWd//JAgNat3Fbj7YabFuf1/tda/jEm07s
cPACfh8WwkbmXV1IGlKsWb8ZbabsEFqYUjeXxM9jowpq5Bo5C7vSQkLm0CRmwTqw75lhTMfV+Q0j
opvnpzebHaOzkdpIEGcYG6PK6ju5eoGeHi0GFBQyiCmk8gX92eA7kiPYncHliBzyv+uZd9JkjJ19
yUglTgz6CbaqG/JKf2a6VF4wKbpMMIgTWRXA6uDUW8dQExdjii6TLC3OWfVtKEvno6QjF8kvN3bC
REkKdcr4qmUfnj7uDQ9tp/5AQrRYHxPdjJdSbISt+kABQdD9OKP7gWRPzhmjh0yhn7TpBywv4fth
TWAu0FMjdcAyONvN5lP26r1XKueuytggzkibR7jzCI+i3RCFc35d9X6IcvLUfkFq+RWz2BA9DoHU
mZalSHWLBATQ++nQe14aU8hEXaI1a6olqikDEoySpZdszhG9xMurkHVGhbHXDg0s3GTqz9Li7d+8
7XDtc7Rs1fd07sSH22RlJ8qGZmJMlY+/vWN4oTLqeSK+sePEA86Q1RRPMeUzRz359BCH6onifjxm
NZuRdPiEnRBVhSG5Sk/fUWVZTfQnfLisvdMLH46PN9gfn6MRZ0iCp53SjduOXJ6M5qjqI+EBNEsd
R9u/mp86bfRL+ph4G2gnySenWTLnFd8QR5Af2S7/TRPJty0pXaZG8jPCD92gJen0ArLlJD10ipuv
pUVCGpVJmGqbRVJ5TRc/dNsXDUGW3Sgbr3l9a17xlqWjaVOCKQuW4pk5spynW1JHo8HXYzyXQimy
UElblLATMQTHvHFMGaD+WjPxOU0Jj3T7h1caB8MyEOEnKtE5n/dTYnD/xFRYv/nn9c7sL1l5fs9c
D3jR02REyDzrj1OAjeKb746mWQXYG/9N9U/Wg2sYhqULfBFpV78xXP8+uVxV2vIT+LsIMRGp3rYZ
j4wSW2t5ZcrowK9xZM1rVME5GIApcTf7B571gWfGdVrgYTc2a37lEF3tkrKwK6KFHfJDlIgIY5IO
GKP/VyccVSL03CboplWfxziz6mRXWNKea1OlGaTj7DwF5EEF6yM7lhGP/rI4Ab4EY6Cef+E9TbcV
jo3XXvl6lop1NOP80oWHoX80gKAZS+xTEv1faesFi9ElAJD8AVfpoCZU0i1ColwpB2EuQSRt6hnJ
tTRPetnTCuiqk0VvvQ6LvAzXfxDH5qMhx7ejaNoMT33vbM8Grj+jUBuFEyb1Zz/CW3lxVKoQIrcJ
p99aNw571hIqr62umg1v6vPuCYJZxxvBJ/OuplxxYN9j4YNE7PyLeJ2cX7ytUufU5RRZdH6a2lfv
dJY2/AY/FPADEmMLyYXZ5sBZsfuZlcB2XJ309kVTq4F7GsPhpfPxpgYeGh6uvBZgAK7+aVaEcWMG
ZjK9vigOm6eI2qseOeK5pxYZ13wIHc615rpB9nuBa1x7/UJbK3UnZoOueybPxomemFDZr9/wjBoM
4wEhYgqiaA+4md4GErQCQ5VY7oNUDv4y6P8JOvlcIdcEEvI6Dyd3uEcg8VkJFyJHPxYJtEz+beb1
bjeX7vJ71Os7AIc+bQ/ifhzhsqaMNHalRUn22OfBo02ZDcCqt1Uf2yHoEOBQpbsF2Iw8KMV6ZkvZ
BcuN3oXjVZ4YfT64u27OlisZkkGrsAS12y/rghS2tx3zLr8SVW33hKxw2SJdIIKndPxwV08JYazZ
m38wWxDXqlRcEbSB3of2JAhmyosQajiyRTerY+xMa5KKYudYn2DAHYeFYGnPK275QfwTvq2aJq+x
Je3H4XDAAat7AzF44fCfQvhfAhSJP5Jxs/zqudzJUFFjoAl2PUppP6YME0xxrozVuGDVodk9OfdD
1iwo2C1O5VvQuGZ+5s3099cKcleNJS6cXAL4/iv/dWetFx/Opq2m9VnPjnm9U1GGHWdsyXSQS3Yv
whTsltFDg5vNld36wHa78og/ZbIoJ8Cn/SrWxZwVqUtK7baXNnqh/20RR12DfPd3Erm+90KcT4Z+
U+wMgAdAzJ9j//KeERHTTZcCzhcsNKciui0CNjESKEd6ZtN3pERHEc2BcQ1lAeieFaYvFGRKqx9k
AsZ7CJczdkZEnPKcquOIlllV2WktUJKHiASG1eCxCB0UYNaI0A0UCGoJ3C0ctIhYXjFOtoDj5dH8
qG2Um1hdWD7ZhY2I5s1Aig9mjn7zIGDHFU61pBjznJr8IjUBlQotTF9FvU6pF/vyUleT2+5zNR7s
8Cshv9DXpwo5Lo2MWC4RqFGSqM5LluGvNM2OsQyPghwdXWGUTWf5/l2HhIh7fmZFf1+5UEyvHMp2
F8O5uOlQsqnbhlAaPmak4gmw0Tt5GsYZMV5PViZ7mo3jA8vhYv2CpoJ79LqcQf9fLJgvfPfZlqUd
JbAc4bYH+fToJHFObCrZnOyS4pgicuXlaIJrMasMpLOzQBwYDWyAFjdW8MUl2bOnIC6y4T9Qxl3+
fndLOPyQ34WCYW8a63UyXqcohtzlL3/RKgrvCQ5uCB+cAeqJheT8j/LOdHUtoLp4pPCcrG2qwu3l
WOfqcj4LznjYCZwGwUMs99ugjy7jgXgZEXOLJcK38J9iQOFqO5oX7fZlb/Gbqms76mfEnDSsxwBZ
mA9vanhy6s2qIuTIHr3Uo2jYtsF++zERfuAJyb48EB+kwl0daaAR6DWd2t/9MoC8FuXyvYExGbnf
V0pqrdcR8rjr6iQPQRlNd/RRdRZAG5mPHlkTZEpXMcWUUTHsCMtKTPgqDdZm6bxzaP6VRnRe6IEy
0D8BM2LmHPpCynpjvlqdo0+rErDnyBgeLWjqWVbusmSy4ncY1VxxKhU3Ka1LOTpjUqG1CY5Iet7w
n/hqh4a8IZaUavIq1HvZFNkcWa6kaanHbHLxIAYoXc1QY9z4wX9hWJT/toK9LB2NnxBLZFrjnRgQ
O72qPYu7PFbT3R5QvNMmnO2RV5GfykT5dthu2V7wf3hzN87BgV40GdEubcu59a3dHZZigaB0HqTT
GIF69FJ9OSufuk9wSTpF0sJa4WRqVpeh5KHHsJX0IccuQ8BBVhckyxoIVr4dU6xUHdjDsZpiwdjH
nlMO9q6+Gm+JhertjT+nrAyy0VpN24naJPCo6nKzR/lBuLWrdau74xyHbh6nTLVBcAVplMzMrHoc
NSoWWVPZtX4sgkJzukLjQmBpMEfCP0F/kM3q6xLzwiN1af0KTix5QBChXCV74gPirWOEcBG9wZ3a
yqONZv/NX8kJ/le8vphHdY85c6cthTvsOyw90y7TOI8wfLhQOEEWQ0YxFsJG5oPtH8pGHf6Y2uXC
Mv7r3x9jKzothLc4JKFPUQSKxJ7mb9fTokemYVK+7RsOb5t0LQS+DnumkQYgDucGj411hY5lGqnR
r7iWxTBTJGylppweyn6UpqoQd5vvma76xgWbIaKVXLRqgu3ZpWk9peQ8AvEZLVUuTm4ABWLU1zhq
+SroJjex58xySTGzGZfucqQswJT/Hnozna8ww8iQST5k5/3NHzP9IPxtg3q3igBf5NICQW/ILElt
t5ysfgJq8VH1p8ZOuGoC9/ZVCLFwRAQ+a/V58MuAO6X6Fny0BmbA828IAx10K82wjzpmBbmhizI/
jLEo0j+Soc/vkYjV68jhtaGaFFCWtNKCk4zvSB69Q5lBSHO8ji5AutF5MJ+K5Uu4+QBNVVmI8IFd
g3y0x5FEjxGLdl7rXTv6+e5/vH0f6GXLQX2N86rDXZGBJ9eK/RWu1FPgXsv7rU5meI//35DIXQCb
hRKvQn293wq7dgi9uAtZYf9cj5XAbuPT2Jj6uBtvfrqCp0PN+unqD4MVHfAmas+WplDXQBIYAogz
B+9u6awVE5HcAxqMeCzixXm/c2e2dZgl3yrem83T6hCR7OMULHZ7tGgLr4zjdD+hLcei9xjWCFR/
bj8soSzu5m5yA2c94d+10yT7uUyjz0w+gNPrxjXjMe//rsRNhr3HvvrAecpAXY1/HoIuj+/K7MkG
Y3CftwDAOufyWt94xgNxiDR7pFnTiWoEuD8gzy4Me6ZTJ2va7A6+cRLuXm7hWBkYm76f/KFC7SFH
3YhGx+JyNUpTR9sAbJfGTw1faK5aM4FghZXLat+Eue1MqO8dKv17IZTh/hN6LSAdMDpEponr4Nrk
SXGQnyU9sMAaASQ0o3i1oQiWnn4eqOP7puiwjzmgbWphkhojcdJPvUwPTZTpp6XwA9jH3YUilymP
tmkOKUT4QSirKXabaM94dqDDbWxlL46U15gbsGkZozPBFsU34nZk77QUupZqlrEmlViaa/7IqsK1
ucCdZPBRKp/4vOKCWu4VTedFHSzoqAXBEU1JEaRk0HAf8JVFO/H2fX1ZjK4VeojjAKFsvABW1YeD
TD0vnAAym2lexNYqDTpuVVVQ54I4xHTSlsfATCHB/PxN7Sm5eOjUVshy9H8zBzSvKEXhYaegwwF5
4FdLGLTdXeGuQWA6P56f9f7knHloWk+Jhiz/IvOJPKzwtxMINGT/TSaGMaW9m+Wr4iq4I59XpPPG
Atq1PMC0t1bniE5QS9ubmy1MtaqF3msXkfCK1VlosYsOQWtHnpTE+EMttmqVf9weW76xEOj5u3iG
IucjV2yfVmLJsM9JKuV3oF2pIB7AadR5yEQm7aLbCIVz8Pr/ZxmOPCOnVdeeg7w/rZDqjcIALv9+
e2KWxHCBRcNIcuc9b3z0pMAGFqs3cgIZydUTEbxSQE1G2DR0uvs54FE8SqJu2eAg4TnQFBisE15n
T6Qx8peuHqjTqe/IEiY3a9lIUTAsJf9SmxZKZUqs1ixA47i0TN0zBppwibviFS2hqrTgGsQwVCO2
J61alzv/JJKg3rY5E+cKEB7AytHqyCH1D0FERc31HsyTsoMCP9W3FR6oJnPwoJldWUfvEih5F0X3
nUP2SMhndNVJZ+sz3qcMT6Wwswk0Aq4wJJM41mCeEaoigjDH6KI8xgCC7x4VKGtYP2dCmprYuYkO
T8Xz2NkJCcAzPOGlceAPdc8IB/6+JL/PNqDFgQjFw7f0MAOGUTR3w76XBgie+3E8mcbh8A7zX8cz
ZGIm+QJSImyPNqRLTNao22LeZn3NEDBiNC+1NFQeLDKkOQN25fJkJq9sT06QeNIzfvm/wZS3vw+Y
X10jLlopGW+r0GGT1vjJfoO1BdKniPJ17F34g9/K+MOJkcl15cCazLcminzMdktEBgklId8SR+zu
j0z1l0RuIEkVsxXcjiEGTVBoJm+XeJMHZAQ7xs9M+7jz59d/2H2KVrsbRuKlqvpX5+Muyc4+tcLK
KF5wPjfMnea+EdOqQpn8DuvlOdLQ/vMr4+JztKjW887yC8MtKRORaZK8aSI2aAFHXNzQdeytTkqz
QVWwtZc3zilYXJnFr8BdqMxXQqDaBCXe1DKV7/cPRVYEAc2h3iEkuanERIT3Fgktskxd8J16nLSm
cZ9gPZ10mnrRBYfTQbl0t5IgjtsyEeq5ihD0TxutitVK8z3nyRRRVtQ46t6PZrj7bhiUSjxKDb4w
1Aky3uwvgfh3vNZybLyWSlAK8kDF8eIHXt2UgzhVk3CsAsTrw+4jMN32CQ1jC7oTSTv9Cy5EG4k3
XUOZei2ZSovGgY97R3BLOwuciXD1GAYFsX1Iybjbnxhsxe9TtKsh3gPEhNiaWtXX9uCsJeg7azKo
V3lJFlNBsuA29LWh26a2mZ2AR/ZmWZoFeYZAsW/welRnwU/eHV1BfPyO5aiE+dYfOkgAa8vttALB
lOTTXWDFmSex52ho1MiCIrShCV9njG3ObJXR2OujiWJNWtCIAsLr7jbY7Mpp+0VhyRQ1gjeSW1tW
9saJMmRoq+dN3iN3sxuGIz2jOXywFFbNUh/HWlZpxyqPt81mWmB6fWVaiRKPgQYrKWbuAheXE8/Y
Af3zDgJXEY+TYYyjvzuypvryzfD5IIi4/IdscNwqc4KyfVIS5GjCO3YlcfmOAWbVSNwOeo2j3Ck8
LTBmNgQiLnaiAKunSyQ4bYdXDL93squQxS3XmuplkScr4zMCaLu459o6U1q5lIlbwrJil4qiWXut
B+7pUvpTdOZHR459XSJviV5xJXlkITImEm7XmYi43PjtJDOmuGtLDsHKujL6/Dy+mZDrVXTzQvxQ
aFTT9wIRejpiVFNzViKHcqES8uIlNYjeyK2+jg7tcdxV6IYI669tn7Mi56m0c3hxk3l8KzAsLI6F
FG/aQYVbh2a6yV77+PhGqQ90DumZoB5H6Ys4XDbyxEmqT1EH/Aftgj3Z+FTmBcFvXoI9UbQJcC+Z
ix6dheTf1giPkUxMvMAEh60SPHlGumpJsbXVcMaqJR/xSU+fo+OFqIfVe83CZIVdu6tZNOSRpWXo
/7b47RC3P2yqdsVh3vwbWhY1QepipxZ4FtF6BxZAr2Hs+ZUkc4I6/j4NqvVaQ84fAOGyN4Pe9TVS
frLT+azJU1Y43Cw5AWkPn82XM3ytkVlD98M+psasUfyXvnAP1iSLyDJQ+kqNDiPXKBpZXpQPJYVJ
MO/nHb0cBNa/8pxewqtSFk8dzdd268AaTosjua5n/scISdD6IHJhSeyoxiNGXQzMYy8epxSDPpHb
XxBiLZpLrIkncp1aeL6TMiqKJztis0q56GRFwb3VCQK74hR76SD2G5Xlg1AMm7IpUlnUwSHryiqv
x8eNv0raX61q9fPRwb0yKwS5NEPOlOLMyqZd3BZLJyshYFs7kaI6X/HVTkK7slO3wRSIRmVPvVkE
0O9aC50aYuaH46VJfgxKpErlQuJGlE7fxByHnejHnmnMKl3eVIEH35D18uNKgXH3xOwS4UD2xowB
2BahkI2dih2EpZ1WisF3y/V/iaMilhmgqzlvVSYLqEGQmDCbEGL96d/m5nnLnEvPar7jWnBRrfYc
lhB9c+AMSGfYnB9rhQSezc3aOl3KEjxf6KaD0ckQZXqHbJkNw5KuNWR+9FVDtqVdyEGCwEbDf9IZ
ICaaah7dsjvx1SI9iGsAzORFzU+izMOmySIxVxJPowaF4GdUW3pjtoiurvzr33Fki3iTi96mN15f
mndEQ+MFUAyGzvY/Ezze1PK0D3NfBz5YecqrrGjaacw8KLMxHUMSOFCG4D/86ZWzToU7hzI9Yder
LnKSjVmdP6EK2j4Lq0h0qbiARf8hL62gi3hIf0Z//Znp9vcyyLyPzEx1RbbQYbHot3xrFWdeEVLr
vni2TyrINYCjpTDgnHy7j/OXjtVzw8etbDjZQXOC1q1rXuyh83Sft2Dnb7L7Scb8Y0LB8syXsTBf
A7vW/VwM9/L/vjFQs1qImV8HXv4TulaNtKWgSGPOT8LOqwu30918JP3RQxSr+PQIKGkdbC/i3g61
a9Pk957pOyOT84GcDgC+JXxOYmJfA4jJwegh0IzcDbhkQKznnQPvMsGz5HbXJzorh+GGpKiV4pAn
nUiXIOzdbrsBU8jLNUuTrSLPZ0RAlNTuf6fmIodYTpI6OHpINREMt3MBx8qlY53OEftng2QYzhfN
K75VTPzYvhcjgXxD7oLidgUn1T4hWS644R9/FAWhHdy+Bw9PoCBVTwhWXSf3zxRj5HNh1z6oCaZK
v+dYbl69Lj3fcQFMIkfkRGRT+6q2ihFNhPTbcKWrJsZbmL2Gm7c7k4ueJ3WmoGxFWyTH8HpiOL0V
3y1HoE5UEKZ9nxy3FcE0HWNJ0u1zcxHW3bVY2x6z0qnz44H80fwj+q1v9G1FubSElj1RQ2SDvav0
zuwDMhWeDkiBO7ZrX5BmPcd5mreJnpC1QgUyFZhnwBbE5O40w6W2ACLsQA0eN62OlkrdjmvdShpj
1owOO36HQ3l2PMDCRI8N5PMJ4Hnxg1xQx4myIazeDYFzSwV1KY9UFBcgpubaBkECu5ECXX0oUqLU
5iTwbHIEIkPrr4F77APguEUOBkW9rsKmUG2mwWK3/vI8HCn26tf+wGozZQBzIXDJc2ZqZH1P1Ly5
+Tk0ULLDhRjSGF+KUzWQ9EJF/f/z6vXy77lsKMIXNVk9TaO06ILGUdX+2QUbZQgC6UEOqsYBthDj
7ZdlmBvsV825Mv2weSpjD/c7EGa7Lgkyz2EZrIN06RkVzo1Hr8968DFwOKeJid12v294W+uYT4dB
oJseWD0ayaMSKwJhbXvrw/zeWx0vKh1uvLOMNOhC83yydV6Kqfi+C/cWAtANnIOcqMEu9w+Yy+Cx
n9KNEa7orHpH+nAinRFjL3mlcjJrrFfEYsq0uR0HWRevq7fJYu/rzlCQxWBgpmTjGATOS8c8Yw2G
q6PBLz/jiDy/Z6bDuBXU14BjLBe+qnYQXtgMdD+obRaGP7DgjGpfL9Jw9iWxoCB4PEic89Se6C4a
UDzdCji5paXZhdaRbAsteV/nbWsIxM2IcQr3V/CjwtRhy3ivjFTrf4brw+lJtcGevQTghCWu3ew7
8vW2YW9+XGRkcDD1btoUD167aTYZVKZpMtmOSk/n1ghNqfomBhYFhfopYBZ7bXwGPTvRTNkRmdWO
AnrlL6w8DVG0XjiVirY/YJE6xPzZf7uMJ1yBMVqRR+FvHgg1dPB/mE+iJz+4+a9sJtDhOE1GUqbr
7OiUeOpBAOpnnooMbg1GCgEOVOHmJf+c6bzZ1gYqUU4VPrpMhc3oowwGFwN88gtGmXwQtLsy4GQR
J2LKldkG3MntNRe95hWc4qZ2SPgJU2bcJYn2YBbWEUZYhwA5kxXraTTZXx9F95bzmA8E92scfvPD
HlI2P1HqboEPC0BqpaK3SQFwXnPFJeqP87Zyw5Sde69TW44gCP1TlKjgGSK7NaLci+RVCJLgWdco
7oStLmSbGJLdwpsC4T4OxFBdpS2KcDq2oXTP/7B7NQxRRuCjhG5O/cFJRWEKiMm3bjYLkFMUG8WK
pYe4n8ktgmfu9oOYVzW8YGPI/E31DsVN2ZQPtz7ReTqx+wLcUPr2W4BDYvMBu9DrQXDF0fZx3m8J
sAPYpK4FKRkFiC1biewKhkSol4hnJOSInzAqZmI3beOn7Tub7l/1BWHuDXadQt2+Wv6gNTz1cv97
sTcZsbrJGtql9qhNjFWUROgc4BsOfWDIujWYePWfPsCs0io/ZOJ1HEvNxccfbegkh+4WP0qEZZNL
ZQSXVu8nSyRrdQ3rKROxHwasqQL1myLFi7eqym8exyJeGS4E7AJQfhf33rYbcR5h4dpJZsxcUK9g
9uURXNLrnF6DhsJWqyFqIcbxBa8qAweQYvnKgbFgB1+qU4iywf1K7mrt2S3F6Il8pWWriOSnGIT4
Ukcxv9qu2yjSret976e3HhVDKZAkAKljMej+wiICo7uyNWKNHeiz5sNqnxmxXSIRdEQPF5OT0WEi
yCMGzPxBWCtsi1h/u5nekoGlJy0LW1Ia/JzxHV5WaXWuZuriJu0+8CODLn3kUH8uM+dpt+cSxaQb
I5Bouf90maabOht55UsK86Ety3byynJ1ZNBqAR00BCKIU3g6w4tsYl9RS0T6vRblI8pKxxNXDfVc
ZWAqjHJlcsrj2WQRvUqAzEnf0J6iun0elCVgGg98Aq8bAlky3xmCL3TbzOzMrpiCo+D8asB9wxwH
o3uP6q5QBzP/rE4wGksUQQ7GDs6pSAZkclsnlN9am2Mljk3Td4DD0oPbfGHMffATYmRCZ5MvJg6s
FcLqh9Y1vleXsQbZdguRmHuKQVGjr9xuO+C5qZpzikPd5t8oCCBNm6WjGuR2fyuvLPM1lDAc2jGh
v5lMSeXJMjFXmjiFWEiSwYQnN/SJo1glJenlr5D9qFORuXYcx9355BxxvAZoB0qFA0NO113zRo8T
T6UXCVCUJUsRipjbEIAoRh0BSlI3QQkz7Jr5triebiiB43YC0RUeDXjGavjFzxMb1IsTut3qiMUh
49fF68GSq4WgV+sn6aMN5+VrG38PSoMXbo+HuGlHjPwfMWf+L0sYXdgFdb8rhsmTH82AQLd1r0XQ
CkBErttp1yZLTNSEEtNR+/EvGH06vwfwGIyx+qM1SoSntiRgZLPITUlLtUdE37Hp675UY7o206ng
lFbDufCbQ1+NOkUxGgJHLRqSda/9ORS9JFGYglSB/rtwhK3Ky9PTG40MnckWIzvz5w1wqT63/ClZ
5B5HrqVgR4h5YO+hC7a5hcUAJCz+/0O9AyB55n10pEXlHaQRS5pvxereMsAJ+7opsik3gTbfA8A6
qhrqhw26gk2RkxAUbHYqt7c/Eh24GiVkZpTBzHO1/omwVskIAwEGdxsb/Q5yG3zaxooTQ6IihgSV
2uflZk/iRF9m313jEvTZBZR1ukdw8ZS4Zm0YqKTiN3Hue0QZiNAREh0AR89bx+SXTzZSiCin9bqU
XJU9u+92hm/PNs1m0Dr/oNbJj9wA/FroYng60+QVhgfTBL55tw7k2MrUnjlElEnDzlAzguy6ua7o
vpkc9+7m6VXbtSSJ9sUwY1PV9HmJe0FZvveSd3L6fmDI+12eamE6PFNbbaarhSRRPsyH0Vv2z0Ec
62WX6Hr+p/bJLmYaKvcpUVHm3nAdA6uZOY0Ee3UzmZ3RljZYlYAdnJtYuHB2JbZe8qAUjUInwV3f
fjZH5emhtf54MTPh+93cQcEeIBbZVd2g4JKAz/qQC+foVvZ2HgAFXe/DJljoYaKxtABVH15iQyHX
25kAbLr4E9+nI2ebwVTEnbZ7UGL9B6ov7tDsDDhGJbE8dQAhlDxp8bmzr+A3RipyIVeEW4fuX5NK
dmwoaFr99ZaqANQe0OufxR0bZWLoGxHSR1f9GdyOosFwgmotfjI4JaxIdHv/F51V/L2hscvPtpBW
vWGMeCqaIcfEaIu/G3nasyoORFWT+aqHmhJGxODdTb7Rth17pzC/JDBWOkGyi8Hfwil8P3mQ2gEx
wYFZ4ObKNSr4H+bh+6TW0IytEiBZehFrmLlsfA5SS7RMHKBkP1nyaxFVkdxUdbIJ1TfDZoMi/D83
+1YpXHKDlUibqq3/Wonn3UoC/UNh2hXWVYuho8uLn8ec0EiRS/Bp9SbEv1QLQ2WDsC/qKDdzIlNX
s21bmDMKCw0V31MxI0QS4BrcXd8WzlWH0bwxkr+8pg7swPlJ7ooam/xDiAFfadGeSokRLXy5u09S
6cmz9cSYaRl+tyEtjRDjEvF4MQXCm/ZHmJh7Jqoe41DU/aUx1hI5horZkd0ER3HvLN5dBOmDuubg
Y/YB1rxMMp/ig7ZvpMaTSJ7W5mCiXMmBtcdJ3fZQQUDE0xJ6dOLBNdoOPGer2ij+V9e+Exdxk840
MPGFf9x91bzBjwXk4oxBH5pbmexuBi8M2hLvysaz9YEMqldep5p9M3UPw+Sgd3bjO4pI7u82dcnw
bH5gvY/Wx10Y+TVONFKXUXvzc49Uum3ARhs/D5I3gXbccnW2WTYtYBe6SEC4h9ZhkNyYumNkAtae
J2dvZnltrc8jVmsnm5qOb+ggVJ+gqD4BI/UUZAipI5bU+0i0c82vS3aiUYtjlxBGK5/uTZk+bye/
tpNpR3uEGVHij+5AGSU87nApwZl4eRPY0xO38JhILSfEKfjQl8HI2ZhivKbzk8X4fizLYKKBbRbU
+8vSyetD0LiD3QIC5a6LIvIy8epKjHkCleB2KRiR/37xDUbbeROOdYT+2lBpGfzuHqKcZx8g26jJ
nZEsdBGLnRH6/gmgJEWrIWnAr/lEXX34Qf6FtVB/0jGaS/ufjyF53McynPwSY9dRqaAPtWBPkxMa
g6rp2go+tNaSuvvmPGCD8/7fPgV1OI9MczbnJ1pZR2oQ5DuIZ2yEyYhZD9qKblS0F6cXaUYEmYI/
9kuS6XJflxczu2HU6tLztgTy6T91N4gsL+/JTkr7MiZsghiHu7qWnOfWIXB2nc//1bQSESamOS7z
5Jw43KUCWbLdZOJIceS2KlOHOh4BKu1eHzikeP/FyULimZunQSN+eYz0HYgSCG0RnzNe7pAoM3EH
LmDtDNsUSpCTMy5ndC6FpBZVioihCvWMgzUe9sDTVsAifXL5iCfNwDT6wOao3ofQlbMFMPmfyHIG
Oi8KHyzoY9xt3IWuMeZfPElwWGCpBjpWKwCplRJtMttVIgUqrmeRIAC63tuPGxKcQkaRBStRLkSR
dmPbi4JH2OgIiKQLo8NG6Me9fnPXY7XEhSCD/n+gCVVl3ilBj5tM5qU7nTiMVa9A+aYKCw5L6NUH
XJ6Gt6xrVxgI5yLtpRUSsTjbzFUqKys67Uo5fkFym6ltx6ro85QpYcAM2/GOjspkojJM7gc7poZm
HEFrCuIJ1qrZLg1rCS+sLwB5sQ+DMOQOvAWP8hwQIo43zR+lYLd/airDO+b9uh3OngJIUXYg7AKn
wPHJwzc66QZCEiHJ2h7MqTQ2kfag9Do+6dn2KGP3HXxI8O78cZiTggnu8zvPjdNaQhKW/y/Rr0Zx
S7G6dMideoeyTG17u/UiTdoDyUdIeStEHh3qTghVwGqSQTQhKeOTuXRrEfToRUdcnbIt3L7IokRd
O1a+0oahPM81Tg9i7h4DeAlagG9LIx/mTBRvz2frLJ829A/lQZP7NJY7DpsY0qWk29lO17/w7VAL
1AmJFkzLdvBEq/5vaEVl7+xk6KR2Wsth7nQlr7+xdUjc0mqOUylst4CeLP29x55EHRFHBPVMvxp+
y4W84YfBiDnPJFO2eckOKKTaXzBdPJeEe0iiaUWMgxUYYotsZC3jup7KY7frppaH1fvbqq8Fm1WR
A4EmFU6gzDF+rYY20uOStCuKLbqFuFGuWTR6mgG1XsE0f31JSrXrAmlrmOAtOpMcEwCe0Eegv/oF
PVcoCaClPWi+Takp+2t3/P5WwCKf1vzfceYfO1HojK+vgcWezbnCzwudk9KQdLCQN7OxyvJBTVqH
ozOOfyoONkVDL+rYVs0G/Q6LfnDE5hZ6bDwB5plHL8m95aZLNie/ml6G551k/Yhssmw1YccKOicP
Vx7sWRUb73su6mfFWI/FZvGR2bdNMY4rlA5JQwBV81PPqDDxoxBbGX9OVd9LJqQx0sS6h2F8TwUI
MeoTePFJGe6IXiqjEzC3fWhDBW+xp6XmB+0FlOdqVNFH9KySlwnR0GvizvW0vtTsvkOLSXS6+rgt
NDr93LP/9XqbR08vXIqvinp3SbyLneipFAKrl7VtfxDg58vKnwjsNCCT3Hj8SNcTrAk/v/rCs/7U
hw1Z3ODkXXBwIm+jPtBcSgUxD8M0+taP++WQPXUKHM4AbwAJDIQAi6qs9qJtF4SY5ry7a4rU53Me
4PbhBtf+OyJZ2TZQ7l4vSsPt+kKu2J9aBtlrV5MHp5dsb8q2qC1NqNMkbHWf9Jz1cjG0RF/D0/oF
SKdqZ5t3gbCLCmSO8V2cpT6joe6fwERbg+x8ufe2rsTdMF9945d8wzsuUD45Pd9LxCgK7chkY+QD
qb3tPUTUCLtTzk+hMJ2ZBoxc6FCRM/N2PuzSaDBRDuUcDrZ8bHC5OEIbhajI9XILPBIfEyZn+Tpe
iMvvNz4tkFCWb4SqfXpvmCMQuqzgtVqigMyfHU90538RKRdgC8Amoo/qPs48Jtf2PB2ffN7NgB/b
HBmbMddhMMnAVIQcQDUd/yoCIiD2mOpyardORAlw+I6LS344LKfzpHzOWz4NffP4WxzyixV59+lp
1Nv7q57ew6gueSinM4MeGhEyolkvf4v5QTJhSMOAo8olmVUtvbwjBOue+BAX54auU5F7nQaTBQOt
C+6oqOhUg8OeeSTku0+2cRvANb9P/RvJa7R3xO5226tknwd19bZRL2yjPOuoe9VV5sC2sjxdP26A
FmcYTdNMsg8AaWgXBOj6IYkPK0rE9UsYg7w1Sqkw4z2Vosn+66sAv9gaeeCry3ogo4YDKKcdTbOU
GuZNmvAhEMsU8aKJAKkVOMO+bENN3HqgqP2EN0jeS5luuuNsd3lDLZKsz9a1/+sNMrCkQCo4DXtW
9mdXco+/48M81WyymGvnaVdlPgdrAuqPxgHTbz3SbN+P92Sm/2Lh9agGvldeCgwwIRgVac2AmaUn
q2v561txLzOyo1yuk/hGkIeMnnAvT9SgJ5hvX8Z8SlbyFkswr/UpgWcWCALJmec8noZdtGp6GVPo
2dVTv7Uh0VgvWeKcU27yiPaQrbpBJyV3pdwBMUcEUFu/WZpBG/fq9EFaWzZhdiFb9mOvv7TVtkmf
uKg2/ZWxY1Px3MJxL+7/rTMT9EDM2OPU7QdIkR0yeh/9E/TFQOCrjdHJWh72tPuIEVEm3H5wMcZt
LqsbIpU13/i8cKJdvnp1Kk4Y0Rx7WUOIDJD0G8fn0Uky5hGcN04ibwjpvKYghmfg+cJtM2CgZLKK
TmHpYn7GSVC6ywOr2ue8KssgFwMifyeME8ORhBA7qvkgb/IdOnLIyt2oP5/zbiu7OQL4szqWTVDu
KrsHvvhgvBdMW0U0Gl2NHsDf/39HtMIiVSOxJbG0ZJPHbxFjxYWlr5x+TbJu8eSKRKcF95b+wrK+
jr30n33LwbapIPHnkyYVQzOYw2fxsGHW8i9n58Jb6sNuXLHAkZDserAJqS766XOMimZ1DQnAHe4W
y/PMxj8r6a1ZrYmZs/ieze5UaMWQ0ycyJ2ZhenZn85V/7goiNybgOLXkmULahTXfeR/aFKybjP2O
bBgECsvlUz2JAnYjNlibrOvUwDm1vKtWLyLXgcyFy5b1o7vPjHqsY6pT8kNYzfZxr7+d0gzGRQwu
cqALLduQ+gvd+sZqXxwmGsfC78mTjfO95DyzENWitTBTfQPJLd8k9ByF5GmgXyKs4pCvPH7c1BYd
gasTQJMxOgPxGKdg474pQw6vp6IIsnvArHfCriBSQf9SwHZiUVndcaiYLRzQoDK6DTBVAMo48IxX
arCFDT4AC1710+WHdma5GC8HsY1+FH7Q+NUqOm0CMcObdaLY9FtW6eLwAMsYNlAxEtgmsH/OWZ7/
hmn5wtux7/0FQ5CbHQcqmtGMum4CdPpbsy1826hkdJVFbVhZKOrFFCnxRotKqJ5Vd+85UzQnqmml
V6pal8jkZCbiWmEr3wiUi95ijtd2t4zKMiCYRFHxcQ8ql0Vk48741ZwlSO+wjrL5yqz7VarXGgg3
0CAANbbX/ozHe+92aCU6AbMGGTqou1qO04rLESCjiqpzQCcr/uwQfz+E3ZJCaTyM10sLNyC+ngVF
y/b67HZy6EJFSL+qCoWFkuge/9J/AACQHcOmsmtPZpawuhZh46M6qanvZIHR2qFMmiLkTagAKa7x
6vz5Pyl3B/vFJpr1NPL8RTrQn5BY/7E4NYs7+i9liFCqeZZfq+C3LSPXR8ONf6ekSI2zsrsDHdlu
I2oVnOIwSnyRf3iwl/GdWsX/krOA+Ym35j61go62g7d1HVT8IRBIUl1V0EEe8MV+U1Sg8laF5cuC
oEyXjkz5i3qffYVIZkc+OG5YM7GWC9g1YLsubE6l4rnafwMH6xOYgJ2GmEeodg4uNR3SdeQDuDfe
bD62M7vkHzeodKcplb8JVk3Coq7lG+IRUypsYhaNhYlPzqJ+cUOSI2Is/+Lw8/bR7DYmC9J6JkTO
Fx1FjioYPWkjOzV7IxNwxmLM2N9iL+HOr8Cbd/n9lRl+LIruNGJdZWBXx59JU2zM3hKcIOl4STlP
sLyVR16HB6R3Wg0+SPKgJHisJwJRCeOADSmLyGkiRO2C9gOV5E21FI3PfLlRSnAKBLxY9K5zJy0f
8t6HNWhEEDavZLsWxXJhdCEHyDuLTRaOTvS4udrn5JgzqHMYjPFpjcPc8UABIJGDmqysautb/Mk8
VVDPF1DySZylvzIi/CXgLZLy8YXwIMQ7yRD86eF+Rj4s3YRUueWrYN3/Q5hYGtU1lj6ZEZHpG+Yv
p1VHj6+RL7AU2gUkMbbGvnHlZCza1KvNA2wftSzV+td3nGElFV+SitWgyVZmGpgiKhaaRPExMvwc
5Bxbc5i49oMQXwynhYHtTddZnqOr4WUTn6VKfB6sDSSRgCvsuYTElt0z8oTxoZD+4XCo5ygb2MJ2
vOguI85SBFmZ43MMBEbMBY1CwNAJ691Soiymbv/K1f2rSsXOPIGcuz86PeflpR9Jy2oSqy8Ejybq
vQddAxkegCmBQ6qot1WA+08FYI954MQShyt3XsV+hfxfHqIwfgowMU4op2x7Bu1aY5SJegMQgDLT
vFwTovYpRReNuOOLygpFgzG5Zk79TDX/uQy5jEs+/1xrwZatF6fa3dHt6YCcPirkxtVv33A9e3ef
WFyvT63eYSReAmPbQ88ueVspcoguUTwV+tb86dkDHO+AwriY2nE3cJhCz+17zkkxM938rdh96yYF
mFPctVwGhWsYWnupecwu2QcFCQJ1lRJ+K8nJM0zK0LnZ+KEv3Q0CQmhd1GT6MUNlepDn5qCJygmK
wKEoEidI+nI1lGTlIrFD/7wDZ/7cCXZCTS/AU3ovg6UzuZuj3H4eFFjbeO92PKRR2pKiYI6EBj0L
ECsp8HuSuwQ6cMFtnG+iA0TWQiwLncpMwZUhoTAF3ZopR3wEHpYTzxVdJMvZ4Gw3kfK+kGn+j3JH
U3vxgeI6zBrjGY4QD8QhCtGdKOAh+wrMkqf3ySAWIJXw4kjw4UM3hsUYDpWc+qBFzGzxda3u2jAl
q1odbQnW8K3+9VAGzXaAcpiczeDWhKDgYf0x3SjQLv9qsWNEJElMJ354rkb5prPvJm2Ir2drL+L2
FKQv7X/IV/zQ0CSSM4N+PKEgCdhJoCv6KN78Jslu02KXkqbEUqrKD3fZgC/HlwS4IEIbqudJJE17
vOnDxKKUpZCWKNCm4ffwwgclZXQQKpYKcJ0HovB8Bc8BULzpEA9r9Desjbo9Yo031vc7imtuzIHE
Jon0RxBsLUqacPyTpmu6RNr4ktiVZjuU04SQoWpPpxqL3xDAZIOxvNMJt0qHUAOnaz6cPCN6O1em
Gek5XHmKVfjSdMUz73CJFtoE+kU1f1tULBq/BpHh5NRKXNF/ep41nrJvVVH5dMCnT8Anf6WjQM/L
vJgeFIIUfoJ/d31Wl0c27WW/1PhTxG4LUTquP3Sd9X07ICkGsQKHxQQHKf8ayiqcOBFwLu2LZ1Tc
m0ubax5KAHcVAduEWN6ds9eheeYv+nLu5ul2GTWLeaBF+sOtgG0/FArDLGEo1jDKO4AF1XC9b5lE
gNCXoRn5r/huFws/Mw4VPAQMvkQ+teHeFJcq5GjX9USu4rhPuvMGAz6a3Fx1VchQtTcKVLi+LfpK
dQ36IoqXLln2mMtZACcOccdXufK7sro1yEo4mDonK5NLGOhUSMw05so/UiNcszhQhpubyhNdvce+
UPdMHdwYO4oeSeWE4Yx3qG6g7obXYP/wTBwl5oSHK6T7sYHWol69iO8tv8kj2wTvQ/SoV6xncTDR
jhKHpVJESmFV+u+pkpSiOFdHbMoBdjNq9tWR8qoMh8+IxC7GB7lgYqJrP3RAQgTENvlYUSQ8PxmY
+XJ9UuLQSuySCZnrg1YJc7I+mF32mgwts3QvIeuMkhcAGCqBlAvZ4zEx7XQnMvDvsMSwvkHUant7
W3TUw7CzIGU5oySf/RIjod1dNIk4OhMaJ/OtTNtfnhd+0EKY+5cfBuQP72fRYU6Ngycf2ch6qS6h
8/kIni/gajIDJagQ9vSOS+CK4JDCy4Rbq6FspTmQT+YCqij0jhlODfBcPE2k8RvGqoIA45HgpKQX
gUwCE9fbHGoM69rdDdoM1ZTRputqXcWtX8ob6Yr/Ii/t5hy5pcYSGXW2/xpzLsR4Nt/zwounSme2
ePTt597rPxgmUZfyf+yuk7TWIN/AZ8/LR2T+OQIooKYPvWaiX4YQkLhBgGjigFbJDzGyOV7HTssa
iiK3oByT1vYFjGHda/athI1DyF7YAFF0Cj7vbB6+v6p7eRxlyTO9bZ5admVDJwtiE65xi5YwuD28
zyUgJq0ZqXm9l1LuADTUd+dZ+5QDFhbcnuhZZ55q+qSU/dQZ7mwsOeb6bMNHXNWkB6fL+h0bftKd
HuEDJvUC2CI55qzKluLVXiU2y22y+oK0dM4solpc2OBlze4r7Z6kYupVSjcZhT6Qu7uUnL0qXVb8
PSgBLC+utVwWcmAIrXEgAynVBIXixSV4kHuk2l2XXiYa6bb9qR7gLQBTKT9UcsTKAmRjZYTc5EHH
Jj+MgKin/MWxltHTZR2Pm/vHtHyQU/t3GnsKKji8ChixE3Qm+BK6vAsi2kseviK0z/PIzwRtmy8e
vchBSCWDtvbXfKi0Ujr2ee46oM+Lmv52qTiNlza+ZAgF8+srOb/lW1Dr539x+npYCAgqKP1UvmQi
Cz9HfTyFsjQkGFpOpo2Cp1Ebyay4JxE2cgKhP9dUdD8mAiz6FjSwuNzJEACseedtQ8A45c7V7+s3
LidRFoehcOCoob3aeyLDPGIjCOHsSWyGmG0ZynAmCVHeeGLWxB7oCEv68yK0zWt1Fq+UnKzuhOvQ
V9SYjfpewXtC0Cj7X4Vi4OaE6HiYZPSZtJnUgIZ2s5guYS0avv+m7otNYvNATxIot9ICrkwc4naE
L4ZJ4jfJGMVAfCJ9RHG2pTmYRKMrNTrO4b8/JH2a3/dprVLHPEphbF580/AioMP2mWJ3zbEj8qyW
RtPuqJ+wDlxolJDbc8P3sgU0Jw5lKaMa9JtJhWzmo7xZ0ugUMQxLAZsX+vzeNG+lJH7n5gqOHdFh
6vvrJ1Y5rl2/6S2fm4PhhbJ7JxVV3HHPhYx3RUmL05Li5OLx7Rej9ol/Cf/knq7Hqa7QptweUSoE
Dlw/HEDiFubK23QP3bo/HwOWen//zndffQfSIaAlGYyA7qKywO7VSdM81er7ETHECKa0PfqEHXDL
sA2JnJFeOzNMt+tpz7iIymop1MBvz9p91DbDKuW1P058YYqh6B56WA1IPSdyXToWnoODQj+51UdN
RR7RZQscMB3dbGDRm4s46HzQQ032V4MG9I9HCW0K9uPWpGflkI15EvpZ13D/ZzmqP5ugRvmVLOu9
n6mE/59CQa1l0M0kdpecCYIgXR8Ld0cqH4v3d9l0fP9r3LSxHFXjvh6RbtKfm1hTLNijENulsk2j
+cLlPE6cGKd0Tqlol03vlIocAtHl6mketvO6+cgv3oBoeXnC8UNvN6Tz8nFkwlEyVuSC5877b50q
t8ex3w/C1VyYb8LcTxF4id2ZpA3IX/rZ/dz/GuKwCERCAhBBaIaUyW/cLynUKXjQi12SOpxVy+0I
5ngDxnomC6ahy0fx83fhFNkCEOzw9XHZ19eCpUAV7tNnj1H2RAMaaWZt+3OmGAJrtXpfRtyBCavg
FT6AyjXSoZa1ei+wbVUPGHWkbIVzYaGcSCkm/E/OhypHHrrErPAs/jiQtrGuOpxoMlXIabNQ0C0K
Q3JBTkSi3T6d95llRrydF2Ju2bhM6NcTd7X76hf6OfbxyetAdxXe8m7Gu9mSwx7pN1MQzvl3nKye
H1dwj/ewmDPZTn45KFreflyXNlwTw2jFE8PBnNdNHvKm0YMe1fOSgxjyHLWVcHhJO30efUIUZUlx
Nxk7bMI0wqVDFDLl+X/NLcZAoJgg72ULbiJlhYRYUsFJ6+JmarPZSNZxGz17tI7MDF6LQK7dOq9d
GGirZbv84xACpnuS1vKsiuB4qTzI1UchXDL1yrvAATV1O//ImG0ALE/l49cZM0YMuvJnmaxRRFhX
AQUoU7CDaVjaQPurxFiSiU8LTBqBmDlHd/SDFc7PWti3C5YIp1qmRyPnIqZ0IMDe7+f90JuUrAV4
qs7++pZIp02EnWMH0X14KmXwJQRV0EgUQG4bATyHX00wf6IgapjeLDmskPPfe+ZicqrhR+w+dDmJ
x+o/iX4S0CtfzSrqHLoMvESxKvVoRqeAxxlyjUSeZgWn2wgGEtReQRmVEC8irZTOb9H0yeJGDISY
jXXXRqwVQ1wlMKYX+j/fxoacAN52H1NLkryrX0N1/xGgLQxeGm4+tie6oUdWI9sWE0OIGx+XOJpi
ZtyMtHQT/TOAovmmfyRdJSjB55qy2HCbgOKf/JEXF5idINjd6aCyZp3NsUFo5BdgMfPQGjyzS2Tz
bNAVVv6z5wKty0WCHbUhI2XDuvxEzAxGqhGT7ahfBVhAUwtGY3SQksMAlym8rkBQgijJVmMTv45i
iKW4Z/qFbEeHfr5nMxXBBmHOjzAIZ4ONF4LXd5LLBB3AajZ/lI/6j7EZMN21twf5BaJ1bd2ErZvT
9GLN+1gOwormODHLwsH6bIF24rbo5gT4eGvNQDhzGvEx7DZvJWem7iYRHdxbrKRzLNX/64dfrplH
/VjGpCJDxFWNsyoOMf9kCCG5O3ovVOJf7ynSQ65LqRjFAztQflq9dPP8oBQInV4M1dFSumY4Fyz8
2JdzKB7a8ODHLdmqUui2gWhdpGdsqAHMa6RV+RxR0nm5Z2WWuTW7/gSuNBMDUmeEv32i9+Gk0B49
rT2z0uG811PJpPotVJ12z6fEqQfB/tmfu7/ja73ZoGOYyV0r3VK7z92DhY0n1tq2AvcSqqxR6ETj
kJG8FE4hDiD2U9OgEC/WhufBdegtaUxrAaya0HkajNURsbjNw0d2MUYQWYjnmX5uqTg0spZP4Kk+
GkrU5iKB+2gl/H+EUtgkF2oKJpyuwAzrLpM0E/tTkccwVYVn/y3qMjypNP872mctj9+gDinAaMMo
mITwgnnTEewfWBAPtpT3pdYoEer5axF1q/l3wyiPXFndbLgHM5dWasq54Fu5vfL6iysY/IJ4f9nl
SM8Pe+OL7UwwvOlPZh0PSt4qTAlenyQDScJMMilZX9NZY1qRisU52Mxl1jOXO0OQAuyP3bHHhTbC
BB4b+NUVcASPWXkIvBNacHLtjI097WG+FJWIeoonlSAw7LoXaiWZm19Wq48agJ/T1krTUb8GnSDr
ayZ9cHnFEkzkWnVIL8AWXRCsLaj6POv9Gra+lmKGH1AAWWKKl7/hwKgScregTwctWkAzVeh1ZgSN
TQJBkFTWHL4aaxTF+XalEeRW6P4ezO0d1ya6f3NnXfggYXEyjOktI+9EMxjVXrS2apPBl+B/Qo0Q
tuHuodKyIzfxekQPbr+CpC5HU+fGxr63QCigJ3eXuIqz64Cc9kCojQXT0vo5tox83WyU1xcmBIHJ
afMMvDrTVSLSS5ICmnXUxuJvLzd6baH6GGioFlE2AXJKh2vPBPLg+iOeyogRZDCdJFxzB2NkjmmA
OUPMdNE/D8DMMe+hMOcvPvlUTQlfoE5GEsHXGkpgW7uzj+vzoORASaE+6DDEaBpPdpWYewUzCLRP
D+i9LAQl5wOAXyZsh2rNF1/4Fw5q+FMQrkXyHyLWIJTsu5wdCLkNuZ63ZFZ/l61c8GQa4x/xMDP3
rKL7Z5WP50+k9TmmkXAxAwxN9GOJ0ClB04S0pGnvh032XPekg3qVi3HkjWxEV1j6qQIoSL3gYwV8
RsrOYXk7PrxZOF6BxNG5x9kdeKCZPkR3bGHUDkQ6CuNuJy6H/+2g5mQS/vUu4MnE8Qh4Ljrf+3LP
jZZ4qlxv3be3elEYzKIIcCCLrEb1dojLwmgIKcur5WUG5T8leG0umbcUm3W40Thu28SX68IGXiLr
KwhFx22M/j16+a4j93yF4KbNcBVo2xc4oPptDnZx4B3NqzalcEMCGykt3napW2p+kpvnd4r2I7RG
nP0EENnPtAwHJlYYimsPQVtvw128Lyv3wFv3NKlezWuLVnSrGWV1qTptIDlVm8H1Pp/96uwXQBsK
B8U+7C7KZnM6IeREkurKbrkgJgOqISPUNEuOkSNE54VfSoRZIJfCetaNKPmD/nZQUydDqmFg1tPl
Zr9+w1CABxQC4/DRmTHwf6kGZDSc7Kb5MQf5EY+IHMzbZNTHafavkRp+4KtfkzUKeiqINwZtGVCy
sHP8eIq1drCDwAuJnGOT1Pnv2S8q0soz57Om/0EH/nVIl6jtkGMu02UrlEqclNN6/qyE44PDlFmk
3SCg8rnrp+LE67FOX8ClAdRz11hwCiC9HcirHX43CsTfiAFFWs/cHVn4WmXkoEGMGr8P5Bv2A8N7
s4NtwKj8g2Iz4NKq46otmVLHfmc68PE39aQfmca9mj2/PBZjpWSzFuQfshicmPGPMpYOLAyf7W7q
bs+c1Hw6EwrQ+bZcWHQO1WHFZOkNGtxteSiJDzERg/bboZ3ZLyF8SZgqTKyAAEw0rB5eUbjjw7o2
aFvk+nkV9PDyIyTlIsl15VcKcDLj7+ceFJwin65I463/SJP5AnRAVE0exYApPr5x59ugV8JsdwQJ
MiLuy4kfMyxvtetoZLDoFP6tTHK9xKb2vumv9UYiqiM69kPaCQP876EsAo5929OnzUsHkw+D3nUK
CfVh2gsVxeK3V2P/xVBv1WquT6P8nABNDvR8eGSH0PgegUNFh9aAzW7REsvz30cTHCZlIQtza2sc
JLYyKhq+3XDn0g7EULtd5JRInYAdn6VLfk8OjJKjfipPPowFtg+rGGzi4KKe34z+ay6Kg0dNseaa
8QRNZmaqe13dLBKq7ptMXJSJsGS7pt4dQLW4e84HP2snW/oUrxvrFH/xv6twEbFqB9hSSevoe8/i
OPfaStcY77SPPDgxlypkABwLX/dtFkkM82hJSKeQudSyjmeXlzm06g01RtPLwtuhrls0MlZDAXM+
mx1080XkDfctlhHZ9/fiya/EgkN4x3TaILGUMSsApv0SYDN0DXWYBH1dPKU6um8clo9s2EQBq0Fw
nP/0oF5r8UYpH9Hp/H4vRZrr5m5W5CTm01P5wWgSWTO5Gm97HT+Wjuz8am0j0Q8NDTT6qKyh2Nsy
Oun9EPRr1HnKjVbIIxXn2ti7nC2yzof3M5s/vVeTGqnx5JQWCq2Q+Y0h9fZ+vuHyaO/IU/TBkRtj
IOnlC+XoelqCRvtLXjLWoKM5WbB+uCS1EPR9gfsYUcg9Aah0Ma0SdbhbeJzKq1x5QUSByQvJ4Sh2
E7du///Egs2FECzYJ8oiD/6B1kkIvjnNeJtomu/6EPCz66KGJPrS8HZj6EmU0QCpaoYoHj/2dc9V
k9ddfwaqI+qcHJcIWAAJBbROm7D67eJEvf7U1yMoTN4GV2lq0pRysLz0Ph6FMEiMVlG662XBVAH0
j6/IQxNzBwpoD2NJwBQctdpssASzOL0ONHASi4UIlUdMTeDxez5oN6kviZJ6PCLSG/Q49uGlgfDw
vCIGrEJ+EDlwE+HKZiD1B/WucFHidvPE+vhY4iaK8q05Q4vQAMwOOtUuZG48yVebWd0kCOh/3b+l
hUbhTrSrMsViAkVV+X0YTmJ+lYIXYJUWayC0bChCG2Iw4r166ljH63G4dAhpqLYY1u/hunJYpMpJ
A/eDYu4MEt5VVVRfc/dlvVXELez2WC7LmUkN5lPXhv213gICCBgQ/lIWyBImNSGBthijCVs5cf5/
SPtmKW/L0VXPtj0Xf3JGPzjJuNIHB/pnxIEz1UJdsC+UK4Da/FGxHqml3OzjCpFYHps4SU/+CIHR
sK0p+0LFEihYhsFJFSzsObLx7SJvxZMbuCdbw++h/L2cpRsqzsQP0qmkEIv9usO9gbd0Kzqq/fyT
lMBWAcwy08ReH6xMLfQ5skvd3kS5fDaU54srkG2FEfNnIOuS8EBdXKdccRPDKvByetrGh/dvlSxc
uiL/bLMWyONW3TP0HyEqbR9nBtdyp/hUre+O/CetshD9Vxc1kyBBW/FzKXGEuBcgJo/hqr2ITEjL
7gIrafugBEqCNgdDlZRyWMjlnB3zLCYmnwnUnL8lfFHO4XyXKvJ42V0AjiVREdgAFYyxQJNtLCaB
CrUIa+V2Y/3Id6bjYIT3e6VWDWa4VsX1msk9dER5c+ebXUVmkkZbzf+LeiHPA1WNjEEIf+4W4nbb
zsI3Q/VKsm5Vpq8t/pJl0AEmuMHwZjFAinWAV1acjHiaOn3B/Esvt+t4oqW/9lMzrz8CGTvmfh4E
XCmNGVWm6cVq7zTECufIRKw5S6SSpNri4KbLI955XBJlnkrjwEczDazr3oGsWlotRcLI/56Jwt2u
+f15VhTE6WlSZxwKmxNqw04C2hoEg3NkYSb5wWuyM0+u950NHr7fuNh85gqPnhGAAaOL12qfahpP
LlLRZhaqjuDbggI5Jh0PJZVN18j03Lgd106WTANaoCi/BpJlnCn3A0yRXfNy7gTDCwOkIq2o3qOJ
BSGn6b8w6W4T25Kn/fi5j4YcJPKuhYNyE2xrnsyWw1a2KfwCGE7iS5Ov/GIBiYDeGBhxaN6VUlf1
5WBXb9Y+GKC8ZeRt75Fl+6i2J8AwUSbyugpAtCb5buEsjODjjH8kZ381IoFqdAno3oY8yZCke/pr
SklC6fiObJ8ixWEiDWdqEqqe0WP0hVzYXt5BxeVxDPlH4mZLfHdXxnZE/1zSp01Z/Dk+NQoLKr8z
D8cHFDZwN188zBylwTW/m86ZF/fYOizYNdgN3YxHP2PXtmKGl5FPt/Y37T/nByBAhAiP4ZSO9M1B
tCN1lpAL4TrNgepguRXL9SJr6GQ6uyyqLGHOvW1r4sK51IbgJOA5nstKsyTN8H0hpQGIz142n72H
gDFDu69okI9Qb5qWjxWRx6rDcsjgzkdrqW3HNGhqzK0yRYWUUTkOp0jJ3cU7lQOvPlysjdFGdsSt
BUccHkOmOYRb3n83yT6ITWyV+t8coauGbYxqxGljZL/iaAr5RezZZtaFa228wGvx8sRpBBR3ntef
k9aTDghWLPtdRds1v+Jr8f7vmJT3df2AfdXESduK1YzEg6FUz9AurNtiSysby4TBGQlUmgWtUOkO
yb3yY5WOgXCxhSK4SRL5ldv+Z1BktkUaqj5rYCK1mUGdKOv1Ikcd82C3Bg2X1JUWrCpS+MSLl1ij
wvZuHoOol4UUW9o43uqQOkNa2B9APwZwLWpUgtOZVSmV7Mi6mvE4yQlzf7lQBu6AR1WMbizPAuGN
QWCaBm2tQMAqsGhTW56VVzVwL28S3ePVgfZcccATlpke2iTUmDSmXF/FzPH77wSjycn60uJx8F9o
i/WSbfGe4j8g9E+ok7In21If8QgKdS2sdp8DlhV/gDDBdaojZP8BfIrzsVoQFDqT/TAAf+33w8xC
OiCwwQNhn/KfEXgf2PsKrIFu2T0urJHHkGFyoQGS3xbuR26YtDx3ntyeTCnDDe7UoyX4kjBzQ638
Ushl58Opg4OXnlXmlFudaexjzK0zPzId8oxDQlPkL0EtIWeQadxKZNSNnlQ/SutUxRWO34rE37PZ
YYdXEP1tS1Dz7r0hppe3+eGtp4eMf6tW31mwEsKbHYnSvRZfPgBQ3jAVlelwVbzdcCQWsWgDxaC6
ylOfpulrRqVHNXuLKP7Qr+/K7vGDuIVCy4xOowTMuuUfb9ElnjDrY1snp5TDUgaIZrPzVUxRsU9b
iDlGFoqvJcsuDFs7Azc7mhB1/MCRWgRnqYt9cR8855EfMfyLzm7V/3JSiXgQm3iwcdWyunbmB2xM
0s3ILlNnkc7l7XnedKRUBNUW+ExhojekbLN9gi99iY8YLotHea+ikO+sJ0VBx8Y4BZU5ArrJphxH
m+JQhzHcWPnXq72bXKIbFFF+1pkL6HbeQMIda3FPpas+4fUjGLZBiQYp0swESQsNUCIDxM14o9Zp
z7Ogn23zdjJSjrPQZaRHYcFE4Q/UtwPM7cTAzuGv5lW0lL5FUQ7a3YOgv+BG5JJgbkF8ZQzu0SPw
vZtHtPluaCkgVyLatO3UC+sAp3ACYTHHWEvWDv2Ey8BzMLt1qFY4QnhVmYhB8OtN9EIkmLVb7A+U
Pe4mM0ZIkvs9XYWJ//qFO5Zstb0s5MDlvk6l5k1QYGyZ8mtZ4JpaNhqWv3U/3GbeHKL3+UVDZuuR
5dIUAWPY0HtNSdSAuEMgVK7gHBWPPe3GS7J63k/vcOZsmwDqh4vrg8hFTUBNPqFDAbPcQCzPTdNt
q6QLTi+6jTWBnihN0ZTGhDsMu/Ykbr4uE4CeMIi/dgOndewMf/b1AUSlkjPFv0lepmarCkZ+ASy0
6GK+atmC1N8f1jcvhEoGmi/T7/h6FXppcdO0QCH5AKxrMQ7uT8mHeUlGn6yS1yo/tn44S9OZyC1w
60qvvWFsDjVeN6N4ecgLSBc8qJ1DPiV41WivKDKA3uobyUGg5DjUQ1q5sWv8gLp/iY8n+jKtyg5+
AbfWS3AfCNLFFU/204IovNTPoDBIs6eISJPHjnQ1R+rDGZj1geb6ShGdVECKOkniq/gO4HJZycdr
bJBAarj5BW/gLxraztWWNl60efkuDMAy51OR2sbyhYje4pDI7srZMP0KmSAbTpn+K9HYE5h83dE/
Sy8fY/cEFFQz1wG9NwubiT9JpyAk5TPDMkjgROnCcsR9ptNUL0bAMMYSubp52bg5RgQH/AmFmw3s
k2sVWaNHFN4Jxr763pmhHsgnzC6lZSurqokiy9nO9WuJ5Ni5GHXEIIayukDUIZT0P2t2CVxkRjFm
H6oxyLMOQSMC23qKuUdG4ZxpmGPhAUqFWAwwO6o+GikwgyCKt1o0eydK5zpnRPotz4sZKyKsP88F
d9JNCuOar8rQM4soeJCwofRMDHGyziQGoQ4BkbcSMpPGGRDMuoymm03HVxJXPvY1lICJl2FFoSYV
rQhFDco6yCWRk689WR7Cd/oHuki2BKYdLKVLcN9sbInCV8ScGkZTJ/TywmugHZmtA8CsFdt5p6K4
Tm5jBTSEAYmpD8crt+5xJWFkGEyw8wkg3/llSnvVI8BavrAcorOoNEPeDNF2U7udKPTq25Ly4szW
BNYHBPg62GkyrC5xc0J2VRF3V22vwES1klC5EppEYQ5HioruUV2hJ9tIWbumvgMVaVhsdqmAcaB2
xKN08fMsUpdMWfxIzuj5udMtV0ESPkSH3KJUrFQ/7Tiu2tC7VlloY/snUcpztaQRnwjobivGVK7+
bBiLHK2vUHANrm2apMvjw4wWSfGoskt0S0UvGgGIDr+FtDARCqgZTnjQxjOYTj0ty0LFWeLEx3h4
M+sk5a7UmMUcd0ZE1xOqiN0NPemESlIor+qMpgllUDaN0J13OgfNQpVCKJQXgGym/1pc9gi0s0g+
67T7vwpJ9pm8Tkijpp25e73TlC5T8xkVmkKEhqqc5QPUwd2wpHTimHZWwdAprFV5gvwRQ8QY7NOh
xlSRHwp4VR0yKdRmT2G7DNo3wnh+9Rs9Bb8x9zvUWh0kw/BmcsV/4PXniM5gzg+YvsQvGeu2dpJB
2PSnsHcNFa6sOMNqTuGxzu9bnYjlEVYvqZH7MlouO43fS/JMaUY7hk26aXnvWkX1iB4uYJvDucRl
gOlAhyZSquSjezRNW7OJI5eJPwL62YmUTCkM1wzZkPopy+YAm/nz0wfHm/kCaOV6vtWVtklWSxqK
6ggW6G3iCuigUMKSV6PEtYKntMMGqXz4K0MwuwQtZ/lVJehKvFZLoxfv8aD19hoiGiZW7n8ZgjJn
+uOFRZ+lcDJmh1GDZjYUshW3b226gz8qP7kG9goVSXNOLAx+S86C13HpNPC+wg80GUHvegX//0XD
G/fRINb6boInaSRZLD//MCJmh0j+bbF+IxKO3MlgmfwLIQdN/WkVlM4TjIDyCtkGSwJV0Rm4rK4V
lR/WmJOVznjoq76q7ans6qXgnGP10SWiMiNhzKG0+NykiwgE2CtzeyzHHgW2gXe95EUxVqHXw+Zj
dJ5RHDTLg5gBy7pxX8abSxGzD5kMjpQnRTqM5LO+R4+21SXNYCaN5yzwwjJmPVfm9UvaehBLB71S
ayZ9p/12nfTjITBJzu7p5vKGJvZenYrG3+p8UXfk1pajg7SEfS0h2tV6yQKVX3I/rccsiOWW75sG
pZCn0biBobk6BTW8k++14AsWLcVJJd6e0bzWwEOrhZt8Ioh/A4M3gKBfkruoNrZFL9Fp8MdnEack
/25DV4n4F7xV4mIwSNahy8kLWUx8vd7LTMPXigq/6XB2jMLTSulhwDGPeA+NrgWjKEiPP4vgpm12
h1gldlULpXXCUcg4m2bzJj/hv3zmi5WpL847bqRGkOebnM+Uzl12Nnjq+osSTnWpoLjLJ4aM6+of
Bs3I3lHD5Jy2DnPH0erfQjjSLcUACByyY80rlHEwPUQ+MRxsHvqkHxGWWgx4ibLHmheT1ZwB7gi6
97n6dY9S/3nvQnzH1/f2fRKg3wZKny203xDQdP+zSlaLfQtY6q7x40LOGIs7Yt77oPpdONO7cThb
S45tD/8JcJB1QyxWbl5TJ+LK7JqI5kt8JLigurPSwnwdQ3k7wQrGtLcZVlFz2ItdluA0k7nESbIE
M6vZMNhkFlrG7plvfQwhEWCoCnoWLyfOixkii7ckrlsxQWu+QClpMokuzlhemauRcr64N85rtoGG
P4nXOZXKbGR56hoUqVXrfzGQ27envihDkoRIHQP8zog9+Ixo4dVquLsEu6XhkeY/K3EszPJMBGQm
7FTOlgIUC7vaThThPrl0TuJs0VYgtlsaR278/SVHvgbgpGTs7IwuYifgKS4U/ELUsptQlrdCLk2y
1ffCWiUpubkrCIMg60mUkwMIJisaO9UKFvzx6XQzxjDKFfnCpazvyA5/hF3wQf6+vCuthqyDpQay
GEekKKLJxzwXHgaGfb1lsfMQ+aeNQ3M12mrkXs+uGEfzDlNijuQa4CVwFhHilsIKjSZ4mJ/F1xQr
gnYYpQb2PXsUQQ6hSqqDyHOygvMvqXVN9OguJPJku5Sxbe7fmb87EFmRiNn1nn88thDIcVgp03BQ
CkZb5ayeWw8jvcCDpRRGCunsOb5soEcJ/l0sHzaxcK7KuaU388cYhDLGRuA3v501qTu0MHbHmju+
q4bIq5/ZKpw1q2sz39zLY7aFa62Ehtf/AdluWyDJHqTmieSzRgBFiyZWDGrRuSA98Fsu3ZKewDXe
au/JooxZNTShXVJKu41YPlwNaRZZ6j5PNrd9EajEiv7l9KIMIvy3rqYowt2dxYx/Twi65skgk008
dyJMtXDfdMAumsdm9BgUqij+BBGXCb6dD05q9Ipj20lX43weWmmc3uXj//RefPOlXKOipsxN4cwR
w/xAPm4WGEBxyjJEpIuk2csasoFNAyFHeNMA5y0y+vgkXJOy91WsIm6s3Ed1yy0gLtz1xQJtyNE6
q7j3pHoH5ZRyt8U9t7zbtzqvzylcg+z478h7PFwC/1ACmqzlsrDCkL61C8+dLR9x800cwNzg1cjQ
SI7GOMrQnjM3w+tbkt6xUqwZ/Dcx9w+7fKriBXYgN22rQva6tVzm0YZdWbHRg59uFXjvEsgHEDHw
WcpxDEvmx0TyG6LTGOteU634Mma51hmmz9VkyWkYmanhIT8X7od0imxdh2/OhTUA1F8luCQ0Qqds
DsBAnUSyK2CM9I4WYwmD0j60lGFgYT2fJa5qxT+WqTDdz6HRug8G5PGxdYZGt1CjtKJw3nIv8YBf
pHj0PvFRjLnIGETZce3LWz7ycr9KBb5ITVJQ6/cc9+k9xslOtmNhtKRsIkpluaUxc8G0fFH90t+I
1ZBNrrtL/QnpOxs9uP7+gdkVWxdjxu/aLA7WfpLr4kxBwDi3zjaqZ/Ey5y8TJXKL8mHxaGNey+Gm
o27aHKWOSnXAJtPR47ZxXlJU96WFYS2XR19vetORLYdWGTNK6jpxKXhmgaQfORSleZ71LlwKHyXP
kmdDoDvaQ5rZa0ubrDK+gi+vbgvmcXXegVgicLlgBThzFvBtogFMkliHl1YE9NDqOCygaw0uX6E8
asCy1FPeI6HWdgOE2zRaf4hg+tTH/tu8wHLMABGqA9s86ikUU269n+MLmw10M3vQnLTA9O+0kGTG
Leupgyb8sIj9OZ1sP8QDK0oPbyHuEn0SdlesbmGWOsKNWGzsfIIrdgblKp/AJIPciKRlG08d1Tmy
Ba4N5ibyYbeuml9xeptmeIsncrJNp5KBXIudkXrw5Hjwq0aoGcLdj4kzM3TVqv6Mh8pEQfBFH/gr
nBJB3VoaXINtjyd5t3uY9QBhkWTtuNH5fgzybFJNgwulnjz/5+mYSVICr8ArIYzrkt5z6RQgrQDa
AwkKhizVSQIqh1Oh3+a/G4Ic894JHh2kSh2efC/7Taltto7Yhl5TtB4pNBSfZYFZLjn9HwFHRUwR
gir06I12dUptqueUkNxSobz2cAg7MAOi2BDecBUx8ZaJ1sVo/ogk3oQ2fqEBbq1K0OrjeHRqUsMH
olq5JEsw4u2xD1iV7/OXxn5LhlWqh+l0bYiPRHDStrXTfGEd2y+V8NFTiejaA3zczC+nidRSOEgv
rr2t/B0QjZDkr4RP++lUERaVp4qoI04l/PUyZfjXhqb1DhxsFVTxoDIxb2CU/nUb0muETf0kY6NV
uMAiKz7ffQAhYmbGVAVT84iwKoD1p/+cnwLKHbBg0canL2nTfDKOkbA2go0MVSy1zgJZUL2EJguw
N2lmnVmn9TJCr05xOwRbwLTg503W+swhjvj9KE0kX9uhye2DpB8S+s26G7czh9xbfksl+ol/WtzH
UB8Zs1imutgn3i2bdWMxkPX64FA7MM8qXmbMFh0BSVYUlsA+JFZfb76IKQN2C+Np9v4ZUdrVXPwy
JcR3aVFAMtIQ4VZz3FfuovktwCyVUShZ4DTq9Unn16JorHsHTb/5dZfUtq2nBobhZr24JsaO19ZZ
ZqvoiUADoqYpxrMJnH/f45Q3ebkyS6IIoqpjVqpwRc3ekdtPCaK4jhZzep34cWEkUfds1XxZ2Sw6
bTUYE9aE3IUyH5H/Maf+qJKYY2m5YuhjZQ3A6IQ7cz+fvW9Sbfn4J7C/CKkDLMnFMSmZpF5lIKH+
mJmCMfV7U5CJ6pJFHdOMByKxUwCOuQBjCg+ETbwEwQd/hm5y1lneWk/h+5qCZNsCvCek9u+JgZUR
uwMqxV5A5HCtrsuUrna3TsBRiYXvv+1LE3S9jxBSOiM2a5Sai4ohg89my2z8KXp7MTaD+GYCDY1A
OLcTlX9gUk49tsQfKd06aqHtycN5mT/0jdeLRP2D+LNnqJBqvkEXD1A++SWXNvDYlZd3vL/1PLx7
td2IRPsVt77n+8snGVPUpZR7CyGVMoVX/6cQinL6teR8zu39TH/AbawPVlvOHkwSxIg1G+LrQe+o
xlZNrSvr6wCOTtCXwsnGxl+2awH91hiLTOtjHwshhctELs1Aj3PBTdt5lgWSHooiYrDWo+SRbv2A
Sn6F0fzclXzn88YW627ZvvzKVfgqCNZyutY9PB9C9Qpbn2H2EWKpdEZOEBxBmXnCOssQ5ay4zuw6
UlMTki2vof0mN7m19egwOFLm8iz00IU8CxwL/anWTBtE1ypIiacw158F6Zr9XwsPkkenG5w8jfut
GR6cLH8TwWsveUDfQ47l1D0LdN7lOIG054Ih8ncS2N6khaWvY+ml6gfe5AdFwAiPGlISDbQwMPC8
V9t5kFO6sXG6zjhhyp8/u+ApbO7gecD44NDTx722Co6zSknBKrsWvvuR87kdoSqxYiw9pXhqURFV
KQcqJlsnCvZyu+9pmL8II+X1BmgFiGqgePClN9urJ6tvdHXu2//oVZ2JyWbi2wnsl34BGuWOPW1K
olWSBaX2vx4pGy26hijpDxkTo25hKf0kkO9RZ5DbVFJ6+KFNl3m/gzZc3GADrb0GExVjz6DXSJRC
RqOsuTpGdKKzlYd9ewtwzT/bnnKp8rvvVIwyU76DNx9aNRLiacAbEdvdLLWcJhThD13Q71ykyXA9
i2IvierRyU4WshCqgWoNoOqTTiq6sCd1T2X1wld0PDgASt3OvXmW4J/hQRxE9CPWdnrX1ZwhVVO9
5+Tle+/J2UKuQTdOo0AyoHplps5i9RbUpgBXGWQoW5AjLh7xJakdViL+ij5N3KTWlNeJmWkT+t24
/PEV/ci3QDntPUw4+rlX2Rr8dp+waJ+Sqew83rTJOl8hFUUGAoCWI1tGkK8b3/IbuYoClzQS54kq
b2vqrvUyd14mar3vGIVJyu04RkTFidpFxzlzb4Myrm7hsqmskCEk8RsYGfsl3WuamvdfN439pPAf
IeOEoi/vyemfhlGV7QnyXK1qSGrBL+kFB3CGWwD9Mj2GM7VNpx6NgTdGC4dAKgVjdVJLfOfnpsct
Hw1wHDdSvcDjAC11nG5bP/MpVK9aK2EaX7JBK2Bn0mvyjNdewchJ/3qtpWPaErQ9AgJJ56E6CZiA
Xt9DdaBwSdtbvTAXnpKGrtIMEeYBex4lwJkuv1w5KKYHTR8/0MWSVii9pb5wQ6fpwQzXRcUcOPXG
6DxBSzxXZ3meO7PFoybUXTZi88c8uIIPpKspIxjIs1GzFiRS9ZWua/WPWNuREppY1UH8f6cPf0ZO
qg7estYPnex/Vnk8ZK7tqN/k3p8f+TR2zDnbavbgfA+dG5kkTgDBKEf+6d+/VnfvpMdP73dK9wpS
VJGSe6JYjpfbJwGcBuRZRJ9Te6vkq8l0sIZkjZvOqrwa+PU7PfrwcMQQbZXMXNOUTs6G89Pzk5uJ
zOAsS1YpEzm4kxbYk+fjJykOP47K6pbHFmH49lP6W2Qkt4SjUX+lniuVFfyk0o3KXHj0fWOgVE9R
VfiIw0KbTlRMjEsqqsnUmqDvvDWGt0orvu4S0XDg3rnyIBo19uWZJdZ6k0v+2GRrlGNyBnfEgdRx
mwuf+/GY3aFbLaazdhsMKT1JugjPKOJT0s4FEfG0WxozkJufakckdWDjc9s/eQg6OxNzgss5b2vm
Miy7YRjnbpF5ffzgrW9UYOui5MNprU3yyKu70SLsVubSGioFL43w5mnbvuUFrwrOWwjgFNEoWOcA
aVCwJk+SzCUb28HEY8BRoWuw0Z6Oj6qqlush9W/fnZzB/eZd6RWXy7VWugzNyM467j0/q/arnZFy
Jab6WNYwg2BOaO5ra6jJUl577LSYiDRsI0AmSKHTASURP2tecIcxij2V0eHpxeM282D3N5qMk9YK
vcwOlYqEQGI7dUeSwBSTBUrkFvRWo/INmsKyU3ZAmY430kHurHeqoBBBmWf1hZWNDbdVn06MagjZ
wt/tG1KA1vL16iG8H9MIjwSDaz6DziaFsJ2IRpthlb1a+mMmJKebnci3XhySicMEKYxaLw8xBYLJ
PdA0GAOGCnvIR7AhsqYHatpPPoOaoRC3sLo9xkATlIDxqDPw/wOQ+cWvsbBfCG9YyC70bgXr+OlW
I1bOhKMQl9PtTpJouw1Wb/84WHqc/+eb1fognmvzWC5MikGAK13lBWSLYHTmJZthUnwtqtg6uUNI
kIO1WGd0fiaIMbSeW3jSKPfoPqzp94+Z0EzKwS2k1xRX9sywXqEboO49JhkU+XIP47m+n7nc1GZ3
otVJNgIwKVIk/sYQKhWiiEk91o2pKt7MiyUeUq4anICgrbTUDD6PiHjL5h4mFqwkOK0iBrgitWPt
QY1Blc2gtQVDwMyZ2bKYMgP4PsnwgBYS7ht78JVW5bcZPeOADZBwf91imiER/ignHPoGUBK0W7qy
udaNev1hb6p7pdWqW9l20u20rkNJNhETZpVgi5W5uMrPa+cWmwkfd69Yf8JMP8QAx7uQZh/5x4+T
iwCduzzNh5ecl02HwPkOzg/yIjgUQsItqT6VEdgZepaZH3qNwH5zhk+lCK4fzaFVzpe3B3K4K8hx
YnSEhacb9hUF1DZpvRmNX4IeGA3smnDcf3981p5puqX7bilnbTXNVlHStPVuB+GszDGZn5CIHa8s
7jKLfPdP9zDk541QHH7gFiykTG/4L4GnJP1eKCzn1LMLzQWDxHZVONwxZ7tiAU/AZWMl8rkO7bB7
/r59/q1i25p7DuglKC7DE5v+YDmuXPzYeRHjCFcwTFfyC8X0pe+vmsl5pFDGyVaa5cfFSugQIc0t
EumTh/N/R3Qjmpg9bwyHlkyVMlY5X8W2iDU741IuzP/m9+QEKU39Fv7/UXv00uwLaQBVgqyJtmgH
oNhYPyEKt4FQHo7sX6UBWhyvaDehUC8pk6w4BOXz9ra6OG1eeKhCzyUtiKfhkK8YQEhbrv/G69sd
TRDW2t6lNv9i77Svb6elUmp7vQCtLL34SEkhO3iisSOYnuhko5/WuCanXAFwvl/ee968SzFtz757
1FxGIXF4Fvt3hQo3exVS5QdVgeuUFV2GBhoXwQf0E0JN3l/LOqzBH14aAna5l2FC1dCRQNAsDQa0
akVH8aoJqH/ZHjh50SD2C13CFemt2bxXPz38KQ+3WZmtfBED43rbMOAA1y94yUQDNai1ggslRuY1
2rkz6wdFK7izXcK6GIDX0QjRdxpSZ2OWbi9Bzf0o+ia30ECWsSXyxbJ4Z/+YH28lgXvRRMyZF+aE
g5ScBYsEdBPytKK0AvFr906RJxE5T8yS18P3O/D67OdEpD1z2lUdgt6GNetUHoeKeFmgO03EgS6a
21+7RVlNCpXYHNWNtpXaASogTq29Ppbkk4yBBnMRyDPeBfGRZ/KRx+Oa7FgZoGRKPdUBYvdYjFva
TFYsX8TdOQT7+VUHmYz3U58axYoHKah7dGaHEDtm1wztdezPfS8lZhKUIBMyANDjSELy5S+fWLyA
ryosrurWPaKSJI7APmaifrLSALLpMjjZ+7RmyetG4fWxL2rOASWQUBU1/qfmrKVOYEDyjOXccjD8
dcDI3t3ccTHHNnLpzoxGGU7hd5xm+nDy7fIISMs6tGZEchTjSRWdVbaH5GNl0sHWwSgvis2GjcE3
28deTI8iydraRIo4lJ40CaobnvE3eSpcUPK90Up7B2KoQUaWGxKpObhaJ/cpXXSNm306SZZj9uQL
XB21SEDe9XCMvT4u2wzjOyKVKAtecn7MjBl8X0jMtQ+5VpzDGtojFlOXfIM1bQqrnNncntT9FlQ3
EVTSIpdi46WY9HY7P61KbRoUusGjRLjXg9ksa6Tw9eT/c3UtX8PWPGRdsHQHczibQndcbQbc2Wuv
O4k9ndIIO+uI9c0zPzdg2TpNrlwHBDBw8QtB797cK4d0AguBGfw1cUdB0+eoSBSm6RLVc5RyNODy
ftoRzeieGLar8c+qLtwlsd9xl5xlZvuCJe+rtu5MRHrxhBFo6h80pafLmQCq5AnyfHWlhfJ39moh
M2TAW/mWe5ec4LftiBKcSI+pLIvVj3boSy/L9OaFTicmpE2cDLanBpTUWV/UByE85xq6Nt8xE4aD
B4Q6SzA9mHjGaZmoRaJQypXKYYqd9vbELcEskkV7MZ14FQbMOnQ8EyRPMQebg8byPX6TSNLXrcYq
yDxcB0nsvlN6oedjp2YMloW9XmIlYnDofwi1B7xNXXxngwFRbKMfDntW9K1UvuokhRSm5vwm3oR8
KBagMiK6X86eELJwvw3nhjht2WakYXvOn8SQ0BpuHukSvvjX1y0W2oHQNofqcQy5qo8T9qEFUc2A
e8ccM/ATCPGOa+alOPhyJRTSG3QS5YGfwdFDETyuFYit0OQP8muRGooo8Px/t/1l8HQzaMao4Wri
yEUZOg4MR09XWopzvSU6mobQrUGog/+1LaCOzaxcstDyeQ9eHl93R6I6nBkN9ZN9crMn9G/q5dTp
wYcjeJtGsWoQ9GeTr63FOvjDL/0Ptj891D2K/ywTGT6qzVD/TxL28nEDWo3NACnHQQ2QK0WyZQtB
CAJbbk7c5uxIel5mvF6ff7UverS2Ob1SmmcODyPanNmRMsjFTrFxUZV/2gnIDNmrAT3i544eBqHT
ZSdUKvWps73kYlFFggR8qzg/pYGT/r+rCU3A0emxgNGzpZcePgqVcflS5sspsU9Bh15gK4qXpIFH
K+mA5wUcmEXXEw8O5cMYmuCsJ1sr0lJHpFjR81v0qwqmWi0kAGW4FB3F/xJL5vNRRWj0iwifvdRO
uKHJeBc+bcvpWtznNwyC8QoUn2VtvkZI2mRFFSJCNhvNgrMpxgmc2+N6uNWTNcu7Uube9xrnjnJp
e57RqmImzdpDG7BeKYUJDtybnLJujAFBL1oDRziQkmlNgpgMj8sQWfrVEd/3PtKpqjQujJzgACJA
l1fjSTjwCMSuiZLR3GOxLXSdqUJ6RuO6fuRp+NK7gFB0HyFp9djK/WTveQU7PspS0ViZaah0HF1C
f4d1LHm23y4Yl/kqx+dorlNBTtdq808TNIPaDMmUtLZnK4EuluKREGNxCXy33edtuf/BTIsnwzgz
ol//Ao+U/qzqWKDFwfQFN1aDruoXKCJrJAGreEkeBeOMzvWd+mPgtUYsc9c1roBfvqEc0Tf01gWJ
3Z06veQ43RCQPB6Ijs+R24Ifc4wX5Q4mo1GPjOzzHUpKJJIQNKORH0r7ivQWUuTmw8vPFw3aulSj
fW+xhNDwez6+tWjcmOVpySMun9qf/yQGCKmL/K+SPiaU8CNoFf1CJD3nOy+aEiewnyjuAuL09mKe
WbYiwTcB89umjiVVXSZtNpy5X4P0U+jmog12F+Uc1owdtSncCn0wvpGHzeZDZJzdX8wRY6TyyoSh
czNRlNTK3kCjMmjvyoROWDye6NK/VCf4txH5E9awTn5aFf53mLTtAfKKIHZppfiJlwXDgnuEMurz
V2Cws3UeHNNOP4yJlGE8wRxHYj8xhEZsq/pRyeKqFel8U33J5475IU59hR8ZbRuw0UzNf8pHk7Fq
/4TIZLaf68hKUHDiLEgqSqPxFonvsU8RnSeGo5nw2VtlffixkFtQ5tFZ63e562hyzSML4LEcMZfY
/f/HNRUNIDrJlfIbdYx72eWR4C4vgRTZWFBWPPkFpxiwzykd4X+6apdmyc7cyH4k/zLW6cEvRaPt
pYP15Yl7JHlTPaGHZCU2hWRBvrqBgEi63IVugefemNcJKvBm+Ig9oIAkc7ZcgTy/apGiFkKattOu
LQ0d9BkAoVVNK6FV5eN6OcuPVud3z5DZQsnlODzgZbMfvTcbMoCIxedKy5wOhUtwrMDbWbAgCIhH
k3mY0l+HD0CSeYBTQH/YD9TQJEoaIS8e4pqZaSWWGFOqJC1/g7yjC8qd1et/Bet+erh+J3BeuOry
4hABzgxrGC2thI6oHPraC4k6N6KebAw8WnhjDjuf30irgloY5nZLB4sR+bvjoKRTMNtwMkkUKu7h
aAuQXMf/jwGMcRFHkdzf3hCeVrJzPYZ0WaD3vZOvwjIHHPyTuHAfOh7y8DoPZbcY4e2Tuz0St/3H
aIghimuWVRWEHp+XQq16ldZfYvMNOKdE4c3BOD9vxynBiB0pgwWss7XMKWL35u52k0032PqjiTu1
ctMBp7iVrd0sHxGhzzw7miTjbjpqwqVjxC22QoNYhwKudIu+LR0KSfCpBVCXuJxcZsFGLqBoT1n7
gWKDC2JxRg2n/ZuUOgFZ9vzwoCRt7AGhHt8U94GG78XdIAP7T1Mtug7fYfQadLkGOQKjGfdcoobY
TPm+JGrKG/mvo39lYfWXJ5YAcDU935XfNVMf19vMsFnfuZeU42tvsnJifo9THV3Yr+GhuEDMFc6L
PnWHGZOfzhij4SPFVZyb5v1L8fGc7yPTyOSu8jcLCsMxfjr8E8rzVQ7p1UzEZ1K4e+94sUx2PiX6
jXRRk7GC0Ltf2U8fQu5PueKqsgeP/Uoi/Dx8Di5UjEFrKRsDIPPnSbbraNFsTR3gMcP2/5HmR+Uu
RBLmzPG5+Ov+3+O/BSDH8jL73EfLQEOHJOcops9G2ZJYedBvXfb7CzJ5BAvo00ipKG2FrEznHoTe
FOcr13ykuXBBDaDbbBF/uf2uJP3mN5f8pJcQAgMUHrOHWIFrP+kMiu06kmzX1a+Up5f5e97HGsaM
xV5R+GHSPE+JaoMmmaqkccvSzOBd1xRTuCe2E6dXyDFuIKsslN7BsDN5tGWSYxZloiaIJD7X27Qi
a/96jOBqqURV0tZY5Q0k4BgZDKi06dcljWDUH8c37H0rmeJait2E6thC3wevCEXtDVYPb7qgthSL
jFMsxP6oMVAKLu/mt1GVf8OLHVt0SdSFsXf7M2bpEPjOr/W6kxvAblgJwCM1kDkKysgvwZIZvbNq
dnXuCKAK1L6nI0SMGjReHZ5N6GQ/nEixjKTS6pWNgZuymm/vZwFqMg5iblFAdGeS3gJTJoXobS6Z
SMPBtJe2kE0zZjst4P8Tei/eQmM7TAAuNSkgu8wb6VxP+0QTpteU9G7O/rlevfKFnmCQa118vYvz
fEfHG9hH+6nsOVbgIMPy44Qa4KlTnA3gjgno1RRnOg+otLVpq05bn99W6+n7YnhVOQUyGIK7u8gp
TvCxbdjAY1Yq3zgMKH+N9DEvqq/UxSb+B6vO6GfdpmL3Oi9Wp9UJmov0EkptckGIsglTKikeUj3k
S6WGX5l/cxjcF8FOFXwNDv8upXlzjPWmMUXcRjRDLqmKaS1+O3I6mLSdC8A2NJchiyisDbW7L7MJ
E3azbuy3MdF6QGAqVlBdSQYFe6kCahs3jMgzdt4e+shT9SVJDo7uErje1bedXD1sCjutRQRolIKT
kenUB33dIp1T1z3wM84D/THuEioXbP1AjGNqihn2uPT7AYsU3VETHC/GxT8xXPyWgpD7eYDjx8WS
rODAu61IbXY5XzdNN3jg61F5kL2zH0pS9LGZfqUaLVbnOKjpDGSNihPv+UX0OdxVjazrt2J6MCAM
qYOzfo5MUJv/VTUm+p/ltaNtoI7tQSzREa2ndVoeUfvhNsI64ujDH874WThu3fHelztXT6w7rvuL
BtxG8ogXQtT5G46kFgF7xNxKoRdbkgk4eemlSHYx3QFWWV+fUk8lASviLe86/lTcVdPnUDXNhr4Y
9CMRLiLN5Sq+9ozXbAFzQcoyxMEFv8C+B/MpeTbLh/eoZHz8krKir/cn0ugBCgvpjZBA5rdWdRgu
OPqXjKgl0DZdYHMq4O8PipoGaWIX8IQ8PSaRo4jt8sr8HyBuV1Of7Xlr3WvCEhHcLtXS2qsCxDf5
kKd5UWZhH+vOuwLDZKRx8hqxNZ08+KqCGWrNk3ci5+S2DP3z7qA+MCE71utICSF5ou+OJCAXakfG
B5WvCYf46sezTpHYB6/Ouf6IpAH60lIrNGMGz5yF+idCV3oUncxqNRdh7DV800lzqaV7qFVfJu07
A1ZFiIPd2OR/fHdx/Pfw4Mkc3ep09qEEUDv9vbDQHPL8zlHJ5ehvRnRC3hE9wIIuo/bunm+rat4C
a6Qml1ByT4I1JweikZTGQsOQMcldlFHnxbWPNrT4ZWULq7LyjBVTCQ8VrnhpYN89MJ03dq/VxX31
ZtkJy+789oCU1Aq5UGNugMNPI1PM8Zr4Y0fMsAwXEq+d8F5z6ph1hWVNq2uuVZ/umITKGUdgD2p0
3S/WMKkNT2vmhakcbPtbzm2MaKsQ4+qPT338Nwk/0zScXzAIWMQlzLf+Cu+y+uxkrEk9Q+KHZ2Pa
TYWeRW1wo86Y2Hy6ZP/9cJ24WOE/KEBHlp6CcZx8k0CBWqi4tM0MJKWnQfaUKGZ7nBCKFYSPGEnv
01IXtSBT6P9aVvMTixo9bZRUPsVrFLeaNHZklBtAqRExBbRZ4327mz1JZ7LKyk9hl91v+8+R7n5q
J1T3e5BQpaQ6gFT0gSgJv+9vd35qLlBGxncS9l8hxUoE9u9klIpd9g08z4IkzT3VgcR8HkhBHaRs
syVek1+fQBRiMzb8FVhJMQHFtFZkORUr0nYsYQw5gUzR5g+c2QjNkx6KduTetqgVIQt8v0v6zmX5
2utXrOOoS75douPb6T1t1Fca+spM8SZM8fhIDWlFSvl+F230xM1LAX2NXXsZ0sgoyRz6kN6v00mo
lthIn6Z77IegcTieEmTLX0eroYu+Juf6IU5pwcu1wzftfZjD8ulPNq3RpRLaHJprfPI6ubq14XIb
2qiTcIec45rMivgkTCxmWfx+Ku6F19WfGx/SMPVnrKFnRoqyclMoD4rYQpVGxe1fc765z+rgoANk
3IHgCOizlVB4Y3xMYZaq8AUQtbCrFd8criRbUzCn1N7ygrSgZZuh2Rnuz1NicWpqu+repR3aJijZ
mtk0WVZjc8T5TE+qVu8nVvA2OWu61VjmS3pS/yLELaSrtQQ+dSf8bVekhhlNKvt1r4cFwKnwjjrz
ysY+S0ILj1RvSpZOzFNAygY55xcDeOvfo00hH6DOvGAUjVY3l6rF9R42j6IhHaR9CzGm5MTzWKhz
A2XgGKdmXgBn3QxaJ0XWt5U3RxYblknFZ1XF5wnzy/gcdP/ln+HdSBRjqpAYMOJA8a3mhNJJT+Kk
f6zQ+AkmdZzA7mOCnUA6VdZXKRPVwHnsNutJpm0eU3vJcLNbCaNQbuhKm8SF7lu7uX7DV9K2QZxl
XXLSBUEK6WVkDimVn6TIl6q2TS8RDwL/06psVNwg/Nub/ZQl+WawUjgHGBVFYYUXIwP0vJb1S1CK
XYlfFVfUeif8b7slTncwzbO9v3LxXMVJmJFKBvDj79orM1eleFPOo1DfPI1VjNQ6QMyvVxk2lTgP
acaaHN8eWEQsav8HXsbPadBuCiY+gOWH0//7Urm56Fon90V147bv7z9wWaHJEk76CtvNuTwi8xsr
lvHLpe7Cl6zC4z63OLVgd8KtSJWXRuB3VWqxBAlSun1GGDnT/xq7x1AZc6MOoGj/eRVYQg7eHkrn
dy/ZoKjZZoi5Ize8nqTQgWsq1JC84s9krZ78oeAygJ054Rczzf66INfKDYR7HAuIMnuRbc9MedTp
46Tpvs/+WmjTR3hu7niFGO3UJNNzQu6r7f+QPnTNXSTkUpqSdWIFE61LFWMQD+V+3Dket0134dDv
HYaTdjkbNuJ8JM8xeXbmvqVXDr7V4nS3f7ZmTJT1DgHy1f7QhgQhyYeFX84N1ulagrcDP1Ed2AZ/
fZeg50pFtXUwm+3z92gDbmx2MyuFBq8ok3TUP4qeow9nu7rEahjNoCbUDYo3IpJY1HLwDO1mdxs3
juuCVBzdn2vY955C+DPu8tVxKePESwXZaeFaBZJ7PzXNp7LMvTZv/o9kFrdtF57qHfmmBxCGTfwS
YaNH6Nh75lFUGNVRZZCLYDZraZ/KOy2nEES+Fgla+niSUxWFwz/pGt35grIhC6eFVOacKMGAESLy
9EMHeoM3up8w7EtVM6WWOAv/9boBr+/pnFa3rw7PIKV81Oacc5vRogHpK2lD8e9Y5v6d8+R6PADk
Guxp9x7wkmOKQmIBV3BbgZFf2bt7sPAqxMw5lB7QNQHjca+ExSOHDc/EPOAqvZn1LpwPuRkL4Mag
hV1HjBc32MNXSWLCTk9r6WkV52tnFbkg5W1fi5luwsMv64PPrQL0yjboI13rwDsNLxQTyt+YwT0X
I/VAFrg+u+vJhJTA+Wt+gbP9JO5Vivwuyu7EuNaxYnsNKnW1tHS+rYzEd8yoNOPD1Q5Y8DcQSd4B
fKb5byauFlrYn0BUnZcWaopWCn5NwaDh9BKxrsReSKvQfEjgDtuIeKmawa9u7TnuJIxCC7TBvIpb
P5iNzybi4N0M8CPygBle/niicqOuA+/M6vc3HWW+LcZF0LoGQSp63wATBh5N2neS2uny9lPTCsPT
Dq1n2F//0yBHSEkeIXcopianxMKhLxsTnR+9lGDiGc4yzQKejTcXXS72kzfEmCS4G5xvRE6hqrCh
ktN9n2jAHNnHGMu0mS5KqaCW6A+RMBCqD7t/lsxqYsy18LGXokAF6OnwLpURrm1PAiRh2kIDaHvY
eR1dnbSoSH47PwqzdgA2iDq24MusNYJfvMKXv4eYX+Bd8+0P9h4PobBXP7RIQht+jtVLvwA06iao
Pn15E0CubLThuH/8+C00uyPawZeFwPLrQVqPIzQ5IPIb7GkjIsBgXEHwrJNZBrE4ouR59cvKVoin
wE6bCKww0WlX6l4MhULWqsyVkwZvFRZu24+/wHdzTH1O603SHV0TsWb+IwiB+O6zUEY2FXXFrxsr
JAgX8GlVsInHoAaJX2Do0APXnvua+Wgym0Nt/bmgJHC2aV9lC33ZRP78orxOn+uIGWYL7LNcpqnw
+s4uIPYCHJy81SVMz4NTXQUMs3X43QB4pLWLGZ2OILcDYE7cSt5ccj7qHV6qPQj1GGMGjePmBGIH
ukAqPz8Fxkqo0EA2W1uiNGjxQfkk9xo6pyRu9/uK/9yzNlFstqzXmH2su5WKjVRTjB1/4pLNAbwv
pgJOM2daSFeTyJOVoPUHxtHRYkAxo0Ox8oNoiYtG1EW3VVBcyipXB7LnxTMAZgdJw0Y7A706TgW/
Q8qzXzQYgYIFw76uJUEXkI2j8QL51feawDpakz2xV+aobfniQ8LEr6lrQa9IL07hYiCMMQS00u5e
DXrH/XVQZfcjPbbfBJNnPHsez/c0uUd5K20KFPegz44clAY5vqRDhvLvVvCu1NmsFg1cBBLlimre
f3KRhy0TDSbM115h0zjlH/gGPNnKW3wS72EqT56mivtRHt0PqQGYT3hMyLxg0EeRRH44nQd+dDSn
SG3duSVtDi+T+GuKW2kZMsluAf2tdHi2qsu1wMy4ZGTPvqIcdm/PyzujsXKkbgxQ2koSKu8p0NzA
zpNrRxFrwqr0E9iLiQcbjQ64wyB5xRsbTBt1FT2+PQ7PLUPmM0tgWltxr2j4GAP6k+1ZhgQNw7zY
g0Xf2Wh//Bn6+vKfg0XktycBbiE5rfhVaBTOTA1/gZKGdsD36/IYe8hCdXdXsmTTwEVwoWa7hoD0
SQMZJmtIvMXHPX7H9uPKF/rQL89USsjADp2zdjVfMHisSiUMvacmZHsR7zfWKZz/tWKwtiraWexE
bMh6TPNfQwPu7/KA9b4LrU7eINDcmpTuEbG9y/35S94QA+5WviGO5i2wnwFMzNq/nLDev7d0Mf7K
O5tRn9jSfOODOXm16uXXZHF+1QCQhKW1SdQF2uCAgMG18BzkHzJoi4d90U5tseu+uT2+k59eY7cb
3UGwdKVhSO/beJA8DlUGNgFNDjp/aaZ0nYhhHHy2nMkeb7reHi3oA4i9rvle8pTElHhnJ1COxNI0
tNEitIstUmwAdjAyrcnZLQLpOLiwzqRXCsYkTLiGwHkjAlRt44KMGGr0mbm1c052kn2oOKb9U898
QkFm2jeO7qNXUWneWW7n/CTgI9NjY35r7gv30rdcDXSdXl2kaE3hP9cxQ/zVssG5sXlEAtjRsHeq
Nl43QA8KltbLwB7ComEJK/LvtodVZFk9DMxnjEnk4eMZWKmMW0AIAoUJzreT8Q9rHyjMda8Np6Fh
5Zc7e7Ls1vzIek8/66wxCoOf2W1totWtPDxPTvnRxgIf915EFBJrAbfjhQuVpwH4elNCCqa3sE4k
NQw/6aXoC9B/W3b0g77xWGR6JW6nFDyVU/pI4o7EkqSYZsdjdF74KiciutRKEH4BkjnmYzIDZjPe
msmoI7EVQCJ3nAGVccZC8nwD+NvnQXkgji4ORdzVUiDbH0Z9FNrZFklOMTtt7/EaeHPtX2UtsN44
H8XNETincxvd58XJH3oNEhnT/WUxSmZmNfCZvp2Y3o7z0izVZiWG97zJ5sry/sKWB40HzfrcuPmz
0ZsryJQXfMum9cs75IY/QE1wvAs5zHKEn00A9zaG3VhMv5OIYcWhDcZjWugMI/C7H9dF2n147ajR
4ZNSW7r2o2SInw3Oi5V+1gjNKCz6yoOUiQI1Cazi6RqTdCY9w6BkOGiQFQTKTd6jS+OZEhngcqFn
VxHgO9KbZ6t0HWirdaRtKZTQl4HM3df1JaWuDuTGDMVZpQQlkWVz5Fe08IOCp4hk9dhMM5nMur2H
xcueAGdCFUUQRtIw//MMO60XeyahGp+L8EQLK8hp+W8gKRl/56jB+3d3YPN3ETNBHuzkLN+KQW9q
R77aug2XcSwn0hlK4N4zdTg0AalOfGOoPTulBwN/4ROlmzBvKwCSzxtfYJB43tA7sInFKlymlpnD
vzynHzj1hlR83mS1a4W0nDULsdEAyBEX4kpiMBqlh3S4RvbsSrZs83ZkamC1cWs+7HO9ZByNm/IZ
F/Pou7/gIwXT1SkCsl1WeZPcUwFfPMefQ6MpgvLzeZ11MM4jf5mTV+NnuZqM2NxhxquQkNkuKzKh
UxwLRSOkLAizSGJAd/5o5TY7sIHzs/XLLwaibtrNlppitjAF1ohT3EnKCd1UCIZcJ5HAFQ9eOK14
reG5lBJQ/4bqH9N8OLnot8zHzLu0dJ4IlY4TCxiSZS2yhCtpWubMY938C/q6VCd5+FgCV9Sx7vir
YTOEMkGPKXc5P+pHcxZYduK8e9m/LvWkdQ8hBjlKTy4xPPvx9PGRLoUnuldcZslzx/EaMPlJTFkl
nz0CI1CXcoWCAoA1scae/fiZ3FoRwwK9YZbaW0nvXOhuQE12hss5dWc4xXFsWVDtkwVFiHwHedD3
o4IPf+F5euU5eDVSOI4Y8eN2dPz243OsCCmvgy/zopijdR1S/XfVt2S/J+Z1b/o+mKCtt9wg1w0u
IVDRg5roFvnDCuA30afuRrsQjW/yKijkkE+6xQdQ7fk7A3YbV/CIeFNrYBP+1EMNT+qgnbG6D2u8
N3A2xvqSKg/PQYSMrv8SgHqasUWmyz8cGuIv6GTLdCZcLAAFtWTDUYe3fjsFtBWclpBuSptJ6So2
qEZ0VJum8dTdkX47WVr+ffeQADSHCrsLDReuEFvjGEA5EGw/naeeoeu5xJ5RSt+5DE0/S5HQQDUI
2X7cR16ihHkv8crN4T6YRfzI1m4BahmF7mYZDD0Mw4IL92/jgDWnTAmdUrInwdx6lzvhh3AkLlXZ
wd3q5bUVrpUINhaJhgNscAJcUpNQ8i4NYbiqmBt+qQ4VCUNL8y7huWnbqK3tdBKm4VTmOW+PgbjC
dVNT+ybtCNqiWkJ7y9AKZJJNIjWLUy/WZdLcaQdoEpt806mW5oIxeyhPkKHTlLChaiescwQhyssr
lNXwJNaiFjb5u0NqP0r5NpxiKbpVnR6Wc1lBblm7yKmozIk9hvvEOn8YbVmlKA5S8dZ5niXIlcFr
k/pP/8Fzf2CktGI5u32o2piaPOLHe7Qf8hcxzdrqGXgC+Affhxu47X6yBoWkXk/Im0iJgItCjY2P
KcE2QtGmng3F05+liKfIFJskXpLpMcQaUbYWzR2A/3sJwv2W4tM5QOPQxCRYq+s+2RmmWrXPaK2w
kWps3LM7nesjCoivDmyJrky9X42kw7XLugNj65/ULIwGpJwNfgZJeVhl0YOKDsyOsY6njL/mt/K5
v35cEt9QddX3D5/+qrExXNjXeZwvfhKl3N4VedBJAY/hwOxXZuFPpYBtKT3mVsgCzy/Dyp6EPfRa
aNyM2Pm4UwfUMTmW6Lc44F8Pxgp026QW8nNdxGvBj+V2ER9KnLa5ztnLBPf9tPLby9SgdBrwQ3MA
NjjOhdgiPmvIJrWxDa8qwBHFl5qhYaMeFKAYYKbVg1uHNlbltFEfcr+KI+4CuQ5WQBhdGUfqujWI
hdb+N9b4tdz8f8XWCRNultS8TIhA+p92VGYGUzHNxhnU0e43BYIhDGjyzgs+srdLIu6qhAyNEfcV
E5AhFE73ZxD9VFxdYvPUAzA5poRXPD+kPillCt+SqS3bR6plnkmsAgCzJGtjJ/JUxKAYOCi1s8SG
klAeobV/8RWrpWWrU1bohZGHFWY8/03rnDpNm++e3N+d4BaIeYRo/ThdO8vc1vDU2drw2sn55NCr
+XJgaout3JBmNOU/c3Ey0Gmf6ppX3nF5GGNXI5xck3Apn1p54Jj1PZAw4Z+AN410U342BBIqpxqt
ETzaWjq5xWp5mIa3Z+HvhYEUmNDAe5qe/aKXlo3K3+3pDFbNDFLjUvbrSlzJ0QeFYdAYFfxlAQYo
YrFCwHRBqZtNLKJJod76HzgCMEwJ1PCxtYE3RAJ6fipHf8lknhEAu7MnuARFCai5tcXtAT5Pv1vQ
hqfWfp+y2pmd3qbpChs6/DCGpL9VZYg8h0eoWhk+AlPniWhyEen0S/+BX3gJlk55agNVY9bPZgVM
5giKQHJJhd72jP8iAc0XxBp9JjRySrElp/VdGVOCkUaru49uxWuQE+8S56LmtBgV3Jl6xq/jFPVX
nYqs8uKRTgdib5TGeO14oG8AYzmtORt0LCwEWU6nm3cdpSNBoez/Ii4QLDLo0X2eK3IfFeYIfvvD
o8xsL81P4iG+J4PJBD+TaHdG0wWceHHj4Wr8kBGbjTf4BdkYCXGQvA/HcbPejrxKCCtUOc6WSvgc
fB6itrYjUAfdCB2sZ98pgUuCVp7kjRrQTqaj8ivBbSq2GwDAa2N1RrZszmxGNMM2cvrbrWwCIiN8
jWL1/xXQyd0pqhN4YLwjeqGxVXJ+9aHkyZoE75b9uUxD1TjpXb7B0HFz/gQuiDGkKzvD1gfR/7qM
cqc+SJI6SIX1Fk43X0pICgN9HUWs5Jt5nWEGJzW25vocs2rLgG573bqh3hOBb06HCBguGT80m8q0
jliJ8JTpt7PBitDhsC5dL7EMdVLNX/+5v1Ep5fFWpoUEvmZFS27U6WbP6L9eNNRHsq/s3ni8mCW9
hygVY5wEeer2e0KZTNI9UjGZdZH7XfCpplwrzzT7BIAeSyYs57M85LO+wdOm9O0jPJD7RiV1H7bm
8/viITVHJcz4qJZ60X41mQcOSWZAih28V5lSdylMcj5XZbvIjzm2zch57U51ceY6HEQRRVOM+cC4
bWtQ6f6ixhXrewWXhKnyaqnNT6XKYo21lb4/enS5/GK5/fuaeKYbITTQXvhcWgqCl+XEPtj4FXfV
7JiE1rf81Sby2uo4UWP4rxjn92Im39OYlQ99wQFM4eVw/c84Bst7SslrrZmoXtkEUMVcMD5DNyrO
BGADWr0wCH/proAWqy699K4O1hmK99XFWCIuEiglL1XC0X7q4YPT4CiLnc2+kOKV4f5cnl1QNxUJ
66008D5G05ErrOKVWKs8d4ACQsi6LsQtzQEmygMCU4V3+cqKHdWmZggM/xO5/G3sPj8LSAE2K2rZ
g7BpXGXEiCjdyZjKk4L/Sj3I2oYI4NwgskIIEq6BNY/9KmWrtqvTt9SzA7PXsyu7wURUN+nJHXAy
GoDbcN4H+kGHT4+Ie5jhxtpuOkW2lLlUxnueQ7E/f7Lg2nDywLuuEho2Ll7SNbD3kLJxcaccwL08
bPLBI7QxN+5pbQECpdprJKaLd1a/bCznbYbnpy1OZKA1WI6B7E39LtVf5pMlTUZ/w4vtmGnuTC4D
q2p/lJ7W62BQDH2GNgWkU46Dz6/NGtIXmNsGs0+y9+XKESV+4T+Quzhts/vmUOsF5QSt5riqaKsa
wVy6NTdwrzSxGs30k+c1F03A78v+/tZ7wsjkLsq6smnJ407Z+kKRge62e/FBZDWnsIemzt0WBm5m
YoGgZL8HUaBxEF1bbChRwry/cbfclDATpfijq7w9TC6IoCNcSTd6kZybGkKJRxyVQ4GcsEmca3at
WJkoIXR44RSLAGWZd6yF2O/erbU3MycInW2Oso0JU4+7fPX9doJkVEGulIShMWQv1ZddQkVi3ZLk
xcjUxCWFFHPBnJXH6Ib4SC6Iy/g/MxnhvepFKVi+ZnPcGqGQPTMeFS+4RjRb++lm6KuECccO1Mra
Lws3e76knTftoSGerl+88vwhAHTptf+G0SX3VGmBiKUsXB70jqCJazmhPWjZANH/y/Pd9EPxyza/
JwFoaS473cNBvPslKJ3MtAJODWmv5XAKkroR/Q68drHQWorFD6Yr10Srbk6clx6LRFeidRP0jJCu
Pc/cvtZEkNLBFeGNYQg6ZACOH2q8ouFK7NYZNk7FsKjhvQs4aatgYHpgTn+TlJcxGH+xlaoYNfvb
P+a1OdY8Jeq8F8zvNJ3t3cQn+OXh8ihp9xCoo1pU9rYV3GDSwIPe2sIV6HRUBOeGAqzNC8ScIBPk
e42lbHJA4RpuCiQTnZJDEATrEVyx0qCvBURoY6UFVqPD/h5KOFxr6DlJZysjbQpxAVRb8qYo8llD
rTmT0Ryld/7K9nEkDDrjfulLYOedO3zEptTlj5WoGXymC6P1vAkbDGSHBl9r03WUDqJPjbAPD7yU
WPiCDSIcTYlTTcdBsrw09tx77XVliHgVcD/kKUysNFSRgjus7isw9VSVzjutiZjmyQbgEKDrpdJh
bTCG55LhcyBL3ZDfhTR72L0DQF1n4apXMwGYpdGynlwHLtmvso+1ybCWkeko8yT91SyyZWhzduES
DKxDDdYGsUC7oXmoP3CII+80bII9LPeW99ICcPzekv1L89enl+9oCku4aZnDJkFU2c+7ClO9IE8p
pCJtJwTPjIrHeC09YoKNwynab5mTihu19cYF05lV3QpHUP+i8HPnRlrRRKs65ZckAmTqeeEydfrz
YmUKPswV8fCliDY1iURRr6+ZicTJNEyOgyxcDXMzNaLXEY8OreFGYhYR+kOxo4f+qXM93liW/rXS
W5COXrP8tT+MzrCuXMoF5Wwt51oGJYdkfLu2T2E5nGitfwYN46UXmpDAb9jaS/15gbNV3whmvB7s
m0hZPb6vzoIS1phKiOQr9dkEq02XdpfpZU4/++Jh1Td27iRZiXTFfXLTesfsDQcRoGZ4BVP9UUa/
FCOF9YJAF71PXlGpyacZjFuhO0chpX0G9VF2NsEmZbeIJgRmIOd1hO7OnduxX0F/vvmh/8txIOb1
+qwMJWVajgXlm00NGVkZrU7JoYK98BCmNqw2YVa4HylbCV8+0meADf3Bz14Z1cZ6vgyecZw8JbB6
y4SXQMbaOucV3W0uVOoPRdOovBKCrt4eyKLIj7GjxidjAUI784sge7MG6pRkc6DJq6tMWCzIK+ZO
tyXiqrOktGDz+wS++ZHKQizxKagwK51ShbIE5sy5NCCjCbg8e7F+qZwgQNLdDv+KVVhcWboOWbqa
bK8OOvaDgEEXny86Xtu2G1wP7vlRQYS48hPFdTlBZygicSVNkyhuchM6zl69cAcUDXjKm7KK4/wr
yrN2GpsvDHX6uFvj8+a6cPsq3Ja3Q7qZEUd0UXJlCPE9VvaqBnOwtRxhdBEyH4oxfH+S4BI2uhW6
KPYUC85KOnmq6qwpF+rmy3mSmY5Zi0mll3/j2NyzFc61sgT0VZYQNaU3DsfNuX/lNbNqPafNLadW
yxWUlVh3WEjaVeAi59skQsW7xW2rbtqqU7b4uxlSzVCArgrqX3DDndsXk+iJa8G0uAlRoxrT9GnE
1Qa1bguOG7dBR0ZJ7+T5DxqQU3bUjClFWwJ7IQuvvrPFBBjONuX3r/6/TfVpclXSNI+fqHAfbxxQ
S3iCrBxmziCFTegDyKNe64XmxiRGHYEgW0LL5lceR/FJXMEPUY0Nh24lLKogpm1MqoRXl9ACKR5/
xvhc9meZg25tSRigZ9jRJvXdeaLr2x1Mah51zCIvVfCmx/HtWTftvAAaVSAMxNM2mnn3rAJ8ahuP
BuyxDMIZQpOwodP34ZgcEbpMEtaPhA0NleeguhdWt2vo9IBX6gSJacNtm23yn5AoYw2vFeI0LdzH
s/dFhTdyDHPamLnOFfmdM7OEGsA6GuWuGZdiHQDjD17BjDo9m5XvF4Jyt9ErIxBK897iw88BmANB
/DBEP7l0+pSXwq15//CS8K0MFPd8hqNCHDXzjiDSCRfTRvtK4LmhzOz9RAtO9tMiLbC2nnMPGqcA
PBIV2zRUm9oCA8qnoQSZG+MimRr/toAS3s/awY/Pa3iZjcF5WMMJVXLlQrLBkN02am4azAF+PhVT
m1UfePxK5CIcFc36Y84M3FvtDqtdRiUtZge376WxaGQzvD1nvoBBsYLGgYQbyXA2d8DaQ6+ImMzZ
QR42cFnATuDIWU5+NvXS8PMwU+tDdsDBM23HKuzoWWkOA+h3fnzQYL/d/pBdh/WlfzXtYJa4EPv1
ODUn2Kn6Pt+XL343b8JLmcW/M5nLLyjxWxfz5OmAuzN2M69nHIivWO0cWdDyEovrbeXae2olhKB4
qQcVLRCEf2KfjvpRIAy9l+VY2v0YBw6bxpZnjBrFF7Ybbng7i9hfviclCgPKihcazLoJ9f3oMZFI
yaDM+OzFj6wv7p5B41i4B6gFaOdmqQTBQ26mTX/1tuV1Jk7UhxWf8gjUfYsmNMVSztE2+/gilVy7
uAX2kIMzHmXvtgoney8mhSUSRrAhHyGmX2iTf18SWdzaQF4j1O1fnRxjehXlSVZUGkoOOoGnDGBR
NJGpWc1DeAbd9nc7Jm28vmXkP4cCl0MGjOvthrhlMBgVPVU+w8ecR/BB/IUC+YETXOPXX3MRZABG
7dRIVCnLkdjyB9WkJ92uHbztyNQAHNRqxr8cph4GsP3YPJyrfhqKdpHlwjVy4u8eqadQB+/EdmLe
rcQdx4Kfgd9p07KZo5LU0bQWilT/rG2vU3o7abwtkg8K8WxEXpeJETt9KSKIrmtRvMp4x2027ag/
G1gt6qyHfscONvNo+XZ1zdBE2rCwwn9o/UxR5sVKBmPHsEbHHIAKDCaDbuXVUmgbGJMfKR3Q4+UM
acmKtWT7YEi7hq/iv4RyzSO46K4gqgzoYl03fGV3qJebvmLiAHLYm0z+2HO/f6h1OXv9AqIIMwWU
OJaCiVAkL2xQgGQ5JOHCPKJuqd8qBAPbNthyYs8OoUB1so4DtWJ1XR45kINI9kuNRkpwC2Y2wmy4
Wx7fN4lwkYhUZ2CgnzARXToMMLnPeuWJu90lvd6YSTqev8Dhe2gYG6nl8LyBbogm+3OGvkGC/SJZ
GxVWYFoPEU/PPHnPlL59oD5PyOzkV9+T2eJmegirdln7odWdUafslt/l+L+ui3WGZan6r+ipojvd
IuwkKZG6+mTFE/UonsIAj3Ng/ujOfhFl4M+FDuZKqvPJJdyuUPULJkL9MX75BiBsKQRVmCZUx0xd
snc4XSTD7DFizHJX9wLmEO3catcRGYcQf13670cNDnTsCfWjyZGxr1ChTcYhszBVljLlvvcGVlog
MISRDELWXarzp8QVXbMIUbyKxD2rzSF4omFUXIdZ78827uVW/wLEx7myjZOhLrGq/1vJ/7Nu8th/
YOULJWJthVo2UWkgnewkLgPTbNq716C3ckjm/fji4jPtNcAcBFNYS41HsY0QnIJIB664B8Veyv4R
cnEWQNAVJIERkSrlkkTOSn9jawjmMv/lrHtI+VteiJn45hFF2jdbCbq/OtJiA1DZ1OZjzB19SzlJ
atHAzQ+D3iJm9PobGjpBFKlE1CWaNupa3gAAh7VBY78XiL82Nc6Jd5KOlm75G0azD4TjZOuCku2R
0GmDh/q17SSSbmPAQHDFwhuUPwyd2X/YWwsSI8INqj19tM+r8o+JYoBtVEDKOMrKUvXHMZPHKJO7
cxBgpEHHyivB4T2NgzF2TAJKqxDklip1BQEPy2q+uisJ6OQ5Ky8XMmKmLvO8Hd7g6II7BF+5Fcc9
EG87/8hJKOIEtWVH+t3ogBuonjEobAaccVDm7FJp93zmPk7hn+6j/kL+W1ohOCzL1gp7tg5I4CXI
ixHSEbNYUq+7+cq+4le+OJdREJ32Ytm/Bmmv/VyB9I/0DPHTRuyd7025tmS90CHY36oRjdZwReEs
B+G46imk/Qy+obK5UnCai9wT5q9wR5Nn4X0heSDaAc7cyOIS55axA7ZR1AETCn7b9TMsy4x4/Xmu
4jK3XcTHTstjpxJBECkAEIm1ouD2RbBzm5kWKAybaPK/qndSXlZYppPwmONGdRg7IOb3jYs94kps
P63SeK8Uw9j4ojAyZc8yD1g+eDlhDTPmqbrzdA3n4FEGVz0DVKF3IB+EWT11BkDhro7x1uCde6jE
tNPi8M10cxyRnHVY3GKZ5FXtAFMPQzMwVChZaPuMvPaPIYJsstd9I+YfOQi7Qn3z440ES4DDMDgB
CibWKNCokC4+rNf4m4+D11wlzXKJ0z9C3Uyq8m2SdjVrLxAkWq8vScavRWkl+XqlyqhEJI5ERtnY
mkQ+/cAG08JDy63lrko5iwZeS6Ruak3KTepbOH5JqXpKwrRBwKL2L+Dc9WyLzPMrb8Ogawu20iOr
gJ7Xbk1kXQtXhItOsB6x7p2J4w7YjQoGWmRyPrQKXZWYxq/vJvjnY9em0J9QiVot5yGzOQOeVzD6
SPC2JX5tdtEFuWj9ceGdda9FZ1/3e3ZPq/2EmCAVxR5dcw7Lswo9/JXo8kjWQERIsvlwKGaXXttL
lfJFJ5VjoGXWlfxZ/UyRMyV4LhAkTS+drPQkbZV1vgl8+9l/oYVjTcxyBaDpd7HLlSKRJtdmUWKN
/MyBPTtt9K58bMf6BV2Z0ygC5R+oUTv6LzHyW6giXidrQxjP/AuRITzQ01srVLnPve/aEGSYPj9t
qAhibZfjIUA7l6vOCtu/9Xjs/BEB/9I+kmhO/8dIflYOW25r1Dc5T25ZuzYkN02U5wZuphpxOrTU
dBbSbrTMORzs9N/qnmbgWDkQk4/tfKrGSoSNSA3eYI5frb+qjGDN3+7RypZNnJhaQGuzoctQwvq/
QtkXcYEsLx+aFPK6BClSOnIGQzYp6pwvutOdY9cDGo4dKxep23g7L8Klmd0AdAT4S07O0t26Rg22
8zG0oU2o4AdtoIzJFXon1nBV37UjPRmKEJfiatWKg3ELoKi6e7XxI+oefSHbecXxf7tK6dsbme/V
tWIDffcRjgcSi86wnHJpQL8ZavgT36P95lZ7Fquw8KGpHh4hNiJVV8dVpyB4yAVasZdWlb46UHYr
jhY8NhH5MQvgNr78kh8mAEKiZ4XRrv2w4FmtrXQjbhgV/P2mO3V1T7VbKBCTJ/kbWpMWkRXhsxMQ
HegVq2ppCWeCo3p15DZEjQHMLyZTeOY9vE7rKF4hH1epTCGl/RYa4rX0fcZHtRBP+1eyDbRskfg2
2fweXLD81CHIOQlvcS1N2HRvRReTuP5hYY8jXSUJvV4uYpRP1/Nkp0zjquJ/gzlmNiw7b8uENx0S
58agCUTLmqe0nCJkBH+lWHlqbI6vvi6nkxEFznueMY+fiQQG5rTh/qeOh38qp3p5Zoyu2JGlbRuh
PqLi8EmVjP+bOoRDseT4ZBulnPO5ITcbqifHq/ZlYrIiwPhtt2da5gvUg5pfPiORoUIwa/fMROPK
TfLjs7iQExximOaOlNhprDXiuscoX7UUQJ9Djg9Rnz1v8iACh1QkmMctksoKTtdECpC60BEKgjhi
owcIhIpkuWvtwd+TnYL5k/Hn8f2bOB1qcJARZABwpgWg5uWziMCJc2BOhOoNmZsDC1NqZzkzenJs
KpWuxE2WaD0KJXLbp7Iy+F0X8Jh/ofd3qN2d/UL3vSVjaFOoC4R1wJEv9Ms7+KxMC4ampFyuzpgf
MskMjYYNANUe63ZIV14N6gSRChAnXI4aqoZpkCGAQf7jfJLZ8RSS64lb+KFZFw6/QAYdh/pKx5GT
irOsWbPNPsjyFQ82gSwt0E4jXXbRRGnvyxHvJlG7mOQhHXvJ7hhXFjgP5x2htjVpPlhgkHviVyXB
ZYvaJiBKqYke8czAURw1z138vLs/BooDi6Og5sk01LaiyN7KzZdaShKsWEDxytSy74IlT5IeseNt
CScKZNky3pXKOjS7TLDGe9zdaZTv5AKvJUttFy58plfx6xewDAldZi+9WF5m+I8UDFp+o53VcwKo
2HrtabM7WD1hHJiMPwtmmV22VoVTylssQj24SQroFwJyVdWanRLGn/9XdZQU3fJj57oKRebzBYJ7
LK9+dLylsu/eWH4pasoZb14/Zxfw02u4yj7HhqFZVt33aTHMPZrHre2O8D5ztTfPODkKuC6Xk/0X
awAdvHUPtve1EKIoPAAQcHST8NY4jq+cvge1+Unxd3TlbislYzlStz58nSOm/RKDtgw9JMlNOyTO
bsuR6/wzYmFFY3+vUHEotCA4U96az52J+Bu5EjDHi5VxYrhST1VawqRoQKt3iVnPuPI1P+U+OuP0
hZtd4RwZ8Fz79u9J2f8US93IguZR4x90wV7xig+6HYv0SOx+0NDSPumFYRG6mHTi6hcHUtq/f0Y0
5TlAuC5MS1rICPC54MTSMUrISQPrGbD5f5NKq8jVMDqXkIn+zcML4qkDfUl18EvbWRfs4AiVhzYS
uXHh/Xjegs0TGrMEzaLeQ5I6kuBbC2sg1e8ieBhDtWOUd06901G91dRxwa/NWBKO9UfMI1cHYpsx
tzYUT7nt8WlK0BHbeGOO9lyzQcQCeji4tAGTaMTr5Mh0luttxLxowPm9YJ5JhGYDhVgEDYtGylEO
PHVBfi7QGv+YnHclpQLINzNq3Drk4b+i8luRY8WAWPWBvQwQacUwpb8uza1FonzwaHIDTxcd3Leb
x6ouz1WHwwucODr2FRPw3CVBNQ1AryurRjfwxt20e0LZ902EvnHDPKSEMM0OyX1SiqR0f3jE0Oiy
IJ/HbGIiObb7qbTvxFi/Bw2V8YHDwc/J1im+WWCbQzylXJExSjXylpMUtCPA93dCxeSFfEEw5DMQ
pjuaZzNqbvF2RinVUvwOAZSxJg6DYET2NF/ZseNEMFlXVT0C1Fmq0z5qBtX/Dk3asq/Pck+2KBiS
YAmlKGbB/ITMPs4dq80zjhTS6ZSWXh5I4LbSOguxW75Uo60scVKP+wKHB+tEm9ctteySfAF8pL+B
y1frRsjL8dIjqQgH2yN6fDsqvZsopmwPYNBr+FT03yEkVL53RFEG1sr0NsBMeLJbPG2bYLfGBoAD
shQGlOPRFDblNxtKAuxiuv/cdWwwxnaI+zNVAnxa4QIZcN9WQdoGDj7HHvtm1An4O8McRoEzWVL1
kDKiEhNB2A7xntlPD5pmzB9u0IG20L2YNul9VUpRsFg/Ld3ZwfhCuoBPrBvvnrYWBbHBSvFld66G
RcPgFnqJHwsNIjmMumhv+3qBkk4Hw8kwCwg+mJC19JzDZY94pZVws093x7j3ushj1VT6f51dp7ZT
uSnCdmVGpdtBkhdyBV9S9ffCvgBwrbhRAHRWZ6sOo1t/QM/O6GV/pbtbrp/uc9YnBlixUp/aWeTF
F0gMDIYvGGfi9Qh2zTNNXkQBhr/kY7uYy2YG541ZDqqop4bi40TJZo2yqU5UzN9QdhGruiFf2kYm
ReLI4c8w/IDV9aMhQhKx6zRdi6P8ZjbEHuUPgZZqg9ZikYRX77tljfUNMxf/B/yqVoDBdAX/gbTE
/Gg4ag1OSQ84rdvidzmXqxw5yd0/TR6fopu0q9MvIC6oFzjMJXdqpqevZRb4CjbnzuHEYFm/h2aO
Fq2dyIQeBATWEhCrgZGiFUi/ACAQ5EbXCqzOvbciDX0acSKWLBYgtR3u6RsboQ927BOd/l0OEGdr
Fvm6Es6nsDGEmfxjV9FcYZpLAU94qVc7sVhZsXvTx1ZaYjpeMJ8NwfION/p4uR/CzZVVW34tJA/T
uidXjdZd06XVWHfXzsMwSDTJ9kMXYTBWkNJ4JyrSoPbLpq5rR6QKtfY+kCnMFnu2/9N//puwkb5j
6LH1CXtT4L+sSZnImb6eTrHe2Gooa2yNjxR6I1qlhGfdrlOnilqgZzgLNC8CC9JrTn3C+X2XzLcT
ihxi5lP9GR0FWT5M6wgHWKpIr0yjl+Kb0w39v4vME3tDJKTBzMq2i0RDc/U+1qNrPG2SBulsnUIB
uysBj/5X8+Uh96oyIRfD3i5RgLUr3aZLfp6qlvRKh+VyY65bbNxGwRMGUHmtCRgcxVgizshgsDc+
/99pn5YAD0MY7QBrNGH3Sikw6+159ykeadpIPD8xXrXzLmCsiE7QNQw528ddlti9SpC+WjGBd4Jo
/ZPd4/cPdVR2Qr6sRCCLJtma6zUhlZgwn/0iBktBrdXis41v8jfMGqrcgIoBFYQmiP6OqQt4vUxp
3bP/VrjR1OOsQ9bFJDHUH0w7iv+DP3g8LtLVsBH2CcNew1ASFCr1neBLIhdHyEdtqsnRxl20xYeH
aGktP/l76lQspNnOkcnaaHKIIvfLLX359DJTpCGYOgCbNDmUNWTBb7TCFpY14E+aOJO+utZrGVra
9Qwwj2jVI+fzSP0WTYmiSWnMrTj5t2ei/kRgmejrxiFM20vpGHP1mCo07MQ/4EfEESF4wXF598ns
b0CxlT3UD5rWlkbZDnmljKM62QHy9V4W3gOv8xZZMpXoD7Aqc5trcm9dLQFv3RAPgsxsCbhYbMVR
JvG1SIi4auIWK6m7oE7WcymoFnK1moh6OM25YrIYRPEhycfPKJXAB0rk5ebK/LUMLDW4HIVSoSca
CDVM7PNHQ6m05f1Beo5+6IJpfbOp6FQrEy1vTqhc/dPuKbs/Xepl6xlVqNdhgl802gP+HsssPlQX
CzZyT/wSCwcyclvXhyRA46a2Do8glLZdueJCuruaN9syxAJ0CKSG3A6RNmJPvE2joYGu23K46yJi
y9IehUOry+uE9OHwnNuNGwMr0Tr3o30LNjEEZMIaAYCHsgvA4zkcy8xeoF4M111wJEuyoAlFLved
tGHeGzUn2ymqVvrrV3dT3kpQkVHir6vhBUyTmhrgH2wTgVaZcFTqUBnMdhMrGr+e+Wj5yC4UsvgA
W9dqYZB7USKnGo/Z1MabDNFcwbvKRSIsCzZ2CrQJ+XEuKaMO2G+nMGed4RI1KfDmZpR9xRtNrQDP
25nF8tPxfeyCtA2EcYy1RJxTugetyXP5JICwEaXTpdpeLz/7Cy7Dam8ctu+K0THtR4KXQ/i7Z4q+
bjCMU7lVb8GmVcax4vfTqsJZiwo4+llmmWtfS+FGza3Ct2aQH2U9tvSC3YOBR4/2pxnrscG6NOps
Ziwrc7oyz9vW6PTiHyxZxQem387pYTnkrkzVSYuTcdnFho73QFoRHgf283ZZVnf8mt3WtxBWVAhs
xHrR0XgBO/oc1e+FPAC+HiogNPm1PvfR1nGPeHSB0F9VlrDllvj3ipiFxXm61WYKnLkm6ShTjQRC
P/TXPq7RqHtDWrI3hbpUbCbfbQG8JbVdJIWvQ31uIHw4myB/YbjHWS8Aa8kSpNPSZwFEQ3RwESVM
CQdBa6gw3rUBF7WsTrdxDsZ3w0iVqnL7cQ2N7/INIXjG77QowRaiPq+WgTqjTx8oNNm8B4qDmuas
c1D6h9gbDL8BvH8k2vWMKaGV2kjw2iHbmNzK8fGf8ZDd4I7lg8FAIj7eG4Jqyk2pPSBVD5WfT5fl
C0maw6P9BanV68z19fT7Savx01CjI0NkH5WnUc0A6L1JbHj9LbGL5ypIhtdnwDjYBBIu0jkfg2bB
mzqO2tS3pv1tydIZce7sM2ficVWu0MZfELRAeEcB7OTCEzIBsUh8KjRMpNVKhlIwrcfAWCn5+yKB
shaYDkxIchVhGIxcHn7U9c77T2dit4Dz3YvcSkJ5fF+LxQuWm2tNSXrhUDF37hiv5U+irTWOHO0U
WHMLoCVHo4mZqyzymKWp4CvhNkoH917aYLW7GKH1I8AWDharn2wnAbfNDOaXHdcdlOjLRS45jEXi
90N9c8u3rweMzR6abo/jHLyrm7RPjiWKscruoAQOIKdthUP5ZnHtiLkWtiP1RV5J4jlFWwLRvAZ8
GteFM0wR9cFRfyN2k2DB/16BFfZEXnrrrBkETF5luqqc1MtL4oK3FO4Qb4xKaIrf+8xUzFzWdSv3
7gN8WsjCnbKMVY+MCVRHT6h1yO+3yIxwby7Z2zmPV/bM/opul64q6N/Qq7vsbEeJOwPCLs/YyS7z
bSpwVGPnzvFxzkyyQMGlKDodvterNIoBXyBGYKeHq+jGJZfVooXkeHnoXuXS0fOnND/lE8e8/Vaw
z3MuqAXFwVxQeP3p/JvaP2bX8vocXOEosjtXpBGn3RHsKMVz2o7BjBjeZNCBWQgr918Y7DoR8OZ4
SqmVFJlSJLvpGFT+Vjtv+ahDoVKeC43AhwfB4Snjudi9jztr3OORj/A24e0lXzKWAx0geQJgVrA2
VWYVACBTuRgVQ4FJKyQeq1aSgEWlEcV6/VNwM/PzDO8A1r7skOOfxmQfD+6SZPwVPz5ErHUgyHBj
FM0Bq/3MOIqp25qchRe9Egg0NxFZd22WI6wwjgkeEQxmYbvQXnMm0M6qNYShi302bZtu2idSNAck
YO+hFo6MI2mstLj/lJsrFKQ5Ykt2f/bsrz+3buLJX78O+k/O+ETd5AI2JvFOFryGWMgWYe3g3HkM
5dRsJ87f4aDqo/RP/Nn25wvaRqFUZhBCRleQBAqplLlIMpKa3ppviRcK8Fuis4D7cO6+yXNOgGIg
V0Afw2wGnNSGoByYMH3/SM2hsJNbP8MhWOEvbtYTAz9tRqI+P4dYCZ6hr/mUdq3/TbROYeJyfstF
ofq3JycBWe6TQ4+Pisub8fjXCnEA95TdarE5GxLILpSrPxRO9sOtzCA/qxCUj8nkEtdxl8t5lxgC
y/Fe2ml97Iz/ox/9dT1/LTOC826xR/QNfkh98xgVD0ZDr/CG5Rmubt7qtdoK1YmzYZfWe0r0iEk0
P2Zfkx7aZnXuyZ6oWdHGhm0HLYuJYur+BRAVHMENoM6EmqTfo9eDw8TVUHB16a6jUCcbtV9R5ca8
Xfdv83wtenhWJJgJ8f7WjLRrvdLs6x/Veig3q0kgYFrssiS6Xtcj3DZNVPtHZED99sG+/eShV9Ma
O7+uAExwnrE1KuAmc0/Y03+rKONgXPOsCgSz3mwV5idcAp7JqsI2jELcvf3NwE/e3SKo18soIjcm
LMUq/SgupaV+6Q3N0GlokPhU7er+wrc8xrQks0DB8RmWsCVMaPUEZzAUbCs4OGmhLy7kXHtgNxgX
JelfHRa+kG5/+LS4b5vmrwXAqnCNNF8x0iUdFEbeOOF7B0zAvqbvIZBSm0bCiQqPAvlbtkdmdwye
d946cIrnegE3rTe10JRtr3nYvSWrcZ0kUI5PEq1XQsCR4B3NUFG/3cM6kXhAapffWIsoJeX/p2dZ
F4brsLNMoPaEQ4YLEJVsr4uuFGQEo+ldH2tFwFONSeKDFcMd5ZFONSWLvA2gjED9nDw16Xg9YzC6
laiphfCnILnj3ZDW8TKMc7OyNluCKoFTCf46xQ7kf+ZBN9TOKVLna1IHKo7pTs6noIrSMFvo+Y8j
iD7zDSxfpkuYx6D4R03X10gkDnZjr8yBCeJ2uWpaCuh2uyCHc7FnwQQTKe4X332RpZzvu5fdFrke
fthRk0k/JcUQ4Iyvix3gRyCvq4uXRIPb2KnhXpNt4feDQ+CbYMvMXLVsyNG1jIVasIwclqHy4jUP
7wyN33olvn+5y+BuxWzrSxeTKrhwtywueh0ItOvQmGQeFbOwqHExRWHf7iz+1D1U1/llKekUvbos
kY5n9F1zyD+/8JHJD45LAIf2+KhgNCo7GXklwTYLxru8LkYmKdqSXyypa9KJXeZlhXtWsucPpGcf
KV20yIXOGp0EbhfI3Bg+LGp+kYaKCBBXKd1mULw1wr74zqDSGmpWumvaMd1bxpS0WWs2WbwuW1tH
sDDErB8mMcxehz6+aa6cp6AyBbjRvWckwm1NRolDNvNIrUzBXlKfqLoLHHwxDN3u+eESyjgX70BI
sxzXrLyLfjqb46lF8kGF+R0ODBnXQvsUtBjnaWRviqnsdU8oHmZDrUROKkeA67IjR5G2ZyqG3T+D
SMY0m1CLqyjCMIA6+VWieb5dXATeFn/Z1mV3JHPVBIvGxCJ91RVHdgWs78Od2nEvkXSL9NrTkyXr
QztrLK19OKnjeS0LhHAwyb8ZlGTtm/NfUBGv6MUChCNSpC9M0JhEpmgCt08kfg0pa84FSNyQDvcJ
o5k3R3o+dVoNwEYjUMsN0Uuulrq/i39hpM+Xm9ylUxxzj0wTm4ja6wsYy9sgbw7oxr8MwONJXBkG
wdJQopnlDUi26WSd2f6y/iPbrf0mROQzoZ2FWuyhutHqWL+aR3gt5eHqp+pqJmk5cGfVqbTfQNKy
OPiVunDuesZXFxrSoSucrpV0pUB0wxzwL5aFp3Y39y+nxDO2gCP1+mvblGKEiLP0XLvXxXmkXpSZ
KvUxozC16Cv/tZKmBnizD0dJ/Y8q073CUUmh4crpARb7biVETtl3xgRTnQFz1zKMwHDFuxO7RFEJ
nvGf2jnC6YS64ygg6oR1o3tK7hLzJ+8A+6k45vmZDMEHOD/e4NLXVDtj9qQyGbtSmPVwBFzoSNNS
yIB+VxQuWI7Yq0YCD9SRmqv+/jiAR6dfEGud3SK1q2Dl/PcNtbPiSgc8xTUhw/XdxIbT/E6cBf83
IBWTqYiONgUWHVWzCX57RsMLlUo4/Czc/xuTZx8UKw9QBdrqU5cZDgoC1ksNz5AAsbFa3X9jeqKn
hn8l65gzf34LfaKahJv9e+IDiaoEC79N84WYAEDB6c2EtwO7RFi5YmDwsIC4plT6vR4lei3jKgJo
GFlSApRx6OIRmRXNTVZXYWRVotiodQD/TDoodB+qfYIcvNpojDB8L/TYm2nRtvMIGB1RQjqoGolV
ebKEWoxsNExOb4/M/57uOo0MLmopS8D2lp8kjdq2SeNb31AROAUcDASDQ/vhDatn4aJsLeQQQu/x
99ou6S167QB5JTo2kcxj9BiW8sGxGw5CvvRZJBfptMYXdStegmuzPIpi8GHczFPITa6CJUXWSoua
o2scVLI04w/Nx/TB+LF5sAcyutlQ/mZBwFFdxqplpRn0ZztZLpvkPeC1s45ya16ROvvu43udR+HB
nJsL+Okay9mAQpbx/rJtk3rayaPFeRhp4Ocjxhff8nwyb6Fdo4vWvS9ivq0kw0Yw2sMvVIpYjGI1
zJHX5x6/0XmeqrtqtoRLsftA4Z1b0aoGbBbwu5u+75steP0L7B2OdfeoxfPC892/IDqGfiBmUYFv
cXQKrg+d0cebgPhWxHy/Bq/7WYXYzvRY1hOe8G53ptZ9GTq83NDy0B1Q0DZNkvlHMAofoisx2ZvJ
rb6FHbMblg+JiNIe5q+89qkNsQiuJPmMneOqpmC5+zl7PjiGGtQaOmyc8h3RZaUK+82Ydd54ktAR
TD53Y043Fl1kPLjJVyrrVN9lLhw8KE5Ipv6EaZpb0WWod65dPUvxZpsjIUm0kAL22Detwua/F1n4
WbnpJzMqoABae28AfU1sokYAPEX4vA8gBa+ljgzcefrBEYp21MERkSBSsUGKCpJI8tv/Ae3RGUWg
rsId0/daSVcv7Dq6rKkh8cUPUnWN8Nuru2olwK+3gmd6eUe9Y8Y3WxSvwO8t8zFyh4/kfVOB+owv
cg9lCkc9odtNd9ixSCY8Y2Q/64TYKLV02bf+klDw6opwOiKvzpwvzLrgQ/0uhp3rc7nec1LyKEbM
UgKwN+X7sAv2M/bYkP9npGYQCPIlHdyyPbVMtwgb4v+uqxf8Zy9Alw9YJXdRn18Oh7TxnWc5RUg2
0VlaygLhrCKlQN7TEaR4nqwuYgdrtFeDBSfK4pw5L7OOjMcQfu6JTMKnUpVoKTH+V/+ZOO2HKf1t
OVS7yjY/oTaQfNGVdL7/fHT9CYg055jLp5UPUKcEsN4EZKw+O+n3VnNQXZq1ifp9PvAAaRmd/1Ox
rc9qsY+dDsmiKYzGE4NrlYecDnMPr1RoSpSqr5YGKXZJkMP62yLGiHsmw87QvA40wq8hy/3v6QmJ
6TjMZfkZikG2JzjvBfYxJBow0dwdWC3Mqe6SX985huwkcKXhVl2X41DlEidBMMMCLIf1eHFPfFZB
FtxNoH7s9xouXAId/biwz7sTFt65adPJ3EeirQWXk7rAVb7i0psmQOLkhJspQctdavGe4vOzstQA
f04Rngt6iPZQgS5zJbqAT/Yua1fX1gbvDbzbQVAksDnUMQbJK0v3WyEEDCh1rfkzE46RRUBevi8F
ctyQenCHaSxO9glZJc676KfQ/qSc8hEE3gEE2QdtLgyyCuyi34ZaJTnir7BpDufnux45aeC3aD3x
A5cQlK7MtNsakI9yAlloYtHer6wuaNnZycAydP0I9Z1RR+MoPlvdnsxTfOZ5gqA3L2NfUEL+aX+5
OJzfqV+2XGRKTjTo+9YtCB1z62KTjk1Mg89JALANesTLHzTNSlvsRISj1gSX9+aE4tCj2tSzZt0/
LkfL9gX32cBF87mRXyMVCSt0LdqgoWOrz3oRXNPs62sKsJzrYKb4ZqQG119QNq4CxeZtoySY9tDB
xiHX4LX1g7+RZ4hQdgyArPxcQqYlEVOX9qNQ1zS80YpNbNp4oCRQzDRNQX6d2vZiVP7W+5mC92cf
GpjPlnphwbPSlRP22tCh6fzlkjvBLJT6gN7HhN9USnPJJN8pMpVsvuzzz5yEGqqxxqbq4Y3A4Ri+
wmhFRHlPE/YPf+m5WSt6X7pggZa5YIkV7D/pIh0xYQhrK4E7NULOV30obk6A7mQUr9ZGDJqkLz+s
aquWHMB/3VmfSnoSgftQ+dbQ0zEFlrav8iGPmCVFAyhmp6mIOt8pknipqY/vmRtKMqtOWhXUOw4e
wh6R8ZkqJQJ5JCZmAwys1NZy9PiSzJDiRmccI6rIALVpO2HARFr5a5/+oPsOyuTD57g+Sz0wNiX7
EEIO94O+5EKmfhZGmF0jxFbPzKpsFtjtABuqx2uqi+AyUZ2uGPjbkPPAIel5AhjLw8BJDmoTFl63
IEE7m/96njUriytCLW427feX6NpYnYVaFyJC7wXwoNXnztZ96YepmbMeGj5wo5lAkBdJSts5dl4F
DgDRGe9zjXU8F/x8ur7wo3tG6Z3Y2oUGWW7jBAXP4d0Nms3+/ARF0GoKubJqHF04AT44T6XwI8nT
UiEA1FHsIjVgIztVYH3YLH/YX1BI2UHSx5usH9duyI8H5Qn9yqzwfS7ddyewoIj3rB1LefXpdvx4
TxC0MU6EFmznqNwp408BEHlPUE5SbuLf9XFxirU52AovI7Oe2wwCoe28AqnR+U05ry98R2PQNYbH
PbHroznCBF7uDRjJAY2mrgA5zC5E2+GpyN+qjdCWDQxJI5DVJQ0OLhEm5FxQSJUwXdUHqsYKmt0h
Cm+cRlnwYARIJ2vldlPswlXixIVoUp2L5wvw5PKcsjwjVqDiLavYUp6BGXww+6WhZGqjBrX0NW3p
4WiMgcnVC3XTTwDD+U/rzdibMztr5g/pXCoGa0ju2mJEdg9CYWCQVoFDtFzpueJlthBZsoPFxds6
PyltWmSO9j+PLRc8L3CKrqp7pA6xb1usixOM+jd8rzEAcWN+ZcF8F+MQeP5e0FHXsV1erubPq8ZO
xNJezzV2W9zjuF35crgrJ+ZGb2JxdsT1reZJ7b2Lmvp51eD/ZhhGUJM9FHP5ULQc726eskM0aAUu
yNfv8gVvZhNgmRbMBOtfjuPoyUGP1We4coUgkiZ4ZzJRWXAC/Bpzz4hRw5MjB3NnNK9siyiktmKl
B4C60C3A8MNYgausx6mArv6N7MBVZ529jWSsEkMkcRiS++IPfP9j6GxIb0Q6WO3mWzwZF2z4uIZT
hxDAPaiKSsN2lHMWjkWEDsEiH3bt2hBnFtjOHoFiHbOSEjSZW1EkSz3GyY4P/pXqpQIjK4OPlbCg
HKJ8Umr5m5zceljVETepDYritcWMRKdJJth6nmVJWWfoV0LEL+ijKs//Gs7JzzP02ppT+Zm45P0G
ULgkFITyltCU6VU0M5mRy8hgCiKnNqGNJwN25FCelV6fHeYjI07yL6pvAO9AUkqw+0EHY9O1sfOs
/NbmOwWqmwT2JiLy72uAIuFBQHYChFQoSmVxvUhjQV3ruEZCtUsmKfo/zmSeKjRtY9gcJimGCrqb
Xixi7DrsiRnU2xb0CeRTpYo+TL9e0TDmZFObvBLUUPadt2XKtkM1OmRb63H8Gutk331kSVTxBmxO
xckL+6sCVbZKQe6YFbyWXFpbSiIF+T+QRuIP013LaOrNJmCWHlbfCw2tvm3ytYhz2khbFl5vAZus
UBvdD71baYI2nCNI0pwKx+TGtkxhipWinxFAvmJcL6TE8dNj9z2BOFtRXxEXVSMyDqSONiBemiW7
ExcvHGsI4/uaAY+2wMpOcejZ4ePZLEV/BAx26J1gHI9sufFIoFumt12lhoLrs6/mMFq6IFaU9+ye
ZJwWxzhDwjtHf9ubVXTCm2WQbI8ujVcQ58xphkeZjk1v31aSW3IIYt7nAVCnh/4OK6J44wbHNTzo
yi4WESuDO8fgYGw9Y0Cd9+/uFnTFTOx2LMWhQyJCT95mxb17A2j4o9Q5Bx50u4Eha+afgNHinRt9
5Aw6jO3Nv1nYuLkGB8Es+SuV9ws5L/TJZFaQNJXEYHp6pHcmHWTpTcDRAfsiWiLURL30+iBMo2fq
v8I/2SvcwIFxUiWDpDJT2ttTxwpPaDPHsm7lL+HSDJBW8gmrV3um+NIgGGty3CfcZ2+wdOpMpYCG
s/QKXPaTUbVBHQMhGlHFMWu1DqvA4jWy3P21MSyEK1KFiIA1u3UMWr3lw4vn11/wYTepY5Tfd95Q
PQPiE3N8C9vOI2YQfFQA6vNzs+Jb8X9O9/mssC7Kf/5x3TcJC/WwrbWsDJ+iIgNu2IVtdSpO8RJe
UdEjXVhq6AVidSYg4RNemkRKGQaJ69C2pR1SYZSrDDb0HzVWuxj2n+mGJWzTI+F8WjKunYZQ7ugQ
oBDU1Unkzw+ZeeSn11rb6mb6F1hznILDPjvHAME7sbNlEgaNzupbwdULaFFKQYVx/t8qXM8VnNbi
yIWxVir0q3jgVVcNJ6R9hA4wCe9IDZHYMd/zz6isVm1odqGhkLQg6XbPox15zjN0zYEi256Ve9M3
KaV3t/i+ZK3zpt6Bv1h65n/FoSpDfCVn0oj/sNliyhQPpZvhYKFHgvPFySah9OcqQQRcATOhiBmp
0el+2acT0j+xK+BHYf66JxIkyeH9tT1GuX/DWNZycye6PJ8PoxMGRajA2kDMFEuRjzdY10V9fYCM
+i7Q6DVniItL0LsOixn1yVt7KGMdZF2xNb0JScIDFjZA3KuX9y6vgRpTjCKJd88xMlaMNJbcz5DI
YQjU+DYLyOqKuqMZ+79BMua807NwilvyhsnphZG/4E93vI94Jfuv+UhqOSFY+HwIVKkTdVhD2UU8
mh3qjJwPBMhu8g0FSJVOza66RdCWJvdD02WyKFNKjWUC+xveYDqAYqp3Kyv0V/7SpvxW8Dt5SSTZ
1yqedGZxTtTU4VEaPSnzO6tzGdXzYLMqdfz1uGJEnWBaOsOZvka0b+uFAiw2O9nJfA0iPcAjA0/I
ls7nL7ndOUrL8J4WdJqMAlPp+xW8+qq++b4WsXFbTN88mS8SkPF/XJ0gV1IvvoTdZVOUQF+fEyuM
WEN34f4GSU2l1fUL/w7bm9/vPUeKA5xvKjspbptj1tY/tkvomYn7Iy8oowP+V+2Q1MaQX2/inLtq
PkyT3eUsjjeB87pJJZ7BmdWXaWn4UjuL4aDf65MqRHg05JYu8nix5qh0PGvpZuo6PEs5EeBWiD+S
VYKT5ik19IjKdI8zZ5szHLHK/R0QiVZKH28f9x1QZhf2Lo9pUJJLrfeemDLQu1hfCkMIi3jGvKMd
Z0BTuut9l85LgQFM8xuGse4c7BrDTpnpkTzbqQnB78B3yyGoGIqTNBu+h6XBlK0PQNCm2GDOIIDA
kZT4USV2txoeUp3vsZp8TQjWu2sorbK0xHtbdJSiHdGcDiKyzsaaByXZcpkr4qfZb3iByR3tIo+x
lI6So4V8apeuyx8jFRhMPwV5+Rrxka4ksZXcePVY6q/pUaWMs8XPztYOiWXOd+YrQqL7eYJ9NOu6
EIFnIw0k0i8zf6A/MxnxNFbfDeyYpUPiKi+Ifh+TUx5ggc8CiQLKC1up+4B6+jALa5aLXxYn6Ht8
87xre1RhHjhjjqa7SSfmziupxiwmEw473GoA0gCR8Pdt3WumFgLHKjTZ4fmgFD9QkoPae08W3fZh
9TeQNKRXAvBOyzm0gceNXrUsXIvw8XHuwdl0McIosQAeTIkhzT32nfKrpVRi2G09UG6AKFFU2wtT
YErD6u9U/A6I8jxAte/o3SzoaZcqpLTWosx3EIqGuqwH1sA8RwOYSGbw7FORwCy8WoDVTGIK9CNi
u+gQ7Hx5zgE+7HzJiSEal+jszRfHQhtPNxW1gR5PzcoBll+t3HKVWLwglrrLeDfdG0ro433drHXM
xg1lR9EGil7e4PbGN60ka/8Aj1s70iR2jY8biXc1vzQu6kWoCvrUCSmvsQNuUD+mZxv29ZIM+yiX
7AVEWA0AruuqvXVyPRo8aOKuE+IsFf5ZbRrfkGH0reBTWAv5vNbFYtfBGkyoxTt9eDjnhU+mgPoz
WQlBe5jXKTgtpeI5CRfdJf/J8GbK2b4npGF+dEB+Va3OLrZTsWX5Ek1bKj0bkA7/j9zjBb/dmXoe
xqK+ChsZK/EsdZkqwO8tLgzqzFKaCjhY+yhjq0nW4xeRM2Xj606fYC+NHwzHfxe4m1s1dCydFqOW
3ZkTK4/oAN4vJAkalrlASk4KAJkS8QmcxsJhfIpc6PI7M0sz7cJBo2Vsl+7FdWmoZl3/v0GvJLWB
cuqIjPrRQOdqIMvRprGDDCATVyZ8FtHB/CjnbxTgBFWrqZExQlzd8fZCuGqlaSPzn7zFJVp2xrM7
d7X9br9nkozvaQGvZ/qt6zCESLJpkkBETdUbzsCZFYEKCi8ilgG+vIi23V33txCi0BRLy2gy0KuT
MesFCDIxI2NibEWp/pE+G6u1BPTTIkKfwoBrPXnNW1E95rt1xqbSzJu3LVSMOzHuT7RhH0a/emfU
NqBQrTCn6VNYtE7ju4DqNtRV0n8MHEpUr5EKdStDltgHClsgFicZlDMvSlDYnXqbcsUkb/kk+8m2
5yjqf85qWueX04Kpw+803Kt5zlL9O72vjvql2U93HIOcIDPVXbJbYYoPang7Va/OBxf9C31oO3UP
SsfAXVHXe/SQ8TCKv+CAMT/1XL5KQMJ8bYLJY8OIpkkQiXSF6rNDvZ5LulTmhlxI9W1GcAUKce9r
toTLeITbXyYfHgqaa10EiehD6ujJ+6QUD8IjIYNokOPBKaSTTOY6llqoDeZYASW1JJVU+wp2D7P3
TTiz9oX49tak46yaiQap6quyfuvoIoba0mgoXYnB1Qkr34QTh3EBDqPn6z7BXjqdFnN+70d9L/xM
BXYjuIC4h46MywThBojtB/f0bOQc11sVqxkQmbtvVE+4bOx1FQRnfxWsjMdcimijbamTDSVN7C4q
NFHvy5TAPijGSgmzcd2/ds2ZLJHahkYprm2NrnGo66VcILxQHB5YG2cANXCjpsIQ3iLKsyWs0FNf
7WAfCzRAHEtvYvnKplrWDm4dLuar/i3G/YpdsMG5XGPlGH6zZWs9vhcgnDWuglXHV8kT4yQC98lb
S4rOqBciQLzJlloVzwdNthssFQNSqwb+NhVqdlJhZ3kZxukFKqWTIKZ418kHLgg+Bejr/wJFoJ21
PZSUaRMLXuD1c4Ip/diqqke5Y0XyTIOwPlzbwkqd9VhQSAzv3650og4HqfWiyd5GkecJ2dqoXysm
d9rXKFnptVoCrZIYkgPrHP0G6VB6mY+KXyZCXHt6pZ4cZ85O0xQImWYRv1bFhyE50INQC8zKnBg1
2YL4JoiBJnIYNoHBzKiFt7OEVHwn+ZaUXfdglpgvfDRik/lacaLli2BwCnfTvwPxjKTDcO6DqJlv
VxlkmLiH2mb2GS2zmoECf23WsFUFoY7bBbdzrdZxFJQbcP13LFd1/NFedW/ervrIBRsJawWHuxf5
V0gBvclS3mjYLCI4iVRxA0xSEc2z222JjjPv1ZVJC5LiDLTsNaR3yPkMrrFJm+hiGyz1Vea7jUCh
sgXWjEPPEjXfQU1hMeotFzOj6300A1G4AubAHFnn7am8jortmUDDfOgcU432GuOHjnZ48WnCC2Gg
4kNuUMG3X0SUifXUh2qdT+6zpSmQNSGwRRWjxYWO6Ss3I0mSixtDIObXYtsu7z+00uj+Tre+8ECR
ZqX9VaV55wqX0ct9Ta4nwsrurH3P3nwAJfBwL/knR7r1Cb+NP3cvS14yauuLoiLB4VL0Ml81LSFk
emjUB5FCTF9620uHMwfIa6KwhA5LYKreXcrOCtArUspgg+U+8tS+fX1kGxzq4cconbo34t2i7XK4
ZtLPLXpHL6Mt4ayMTRCqT93fqbnBmHLYldX6UKdv33Y+O2TDMr4R2hZ0gHwxQKJdpfQ+CLSMMKHP
xi8Ches66oL/ZjV3EFEbRC3RO7Pa9HqjylARHwNu/+vtu4O5V8abknE+2pym5S+zsuSU2EWJlnCH
AKZiOuPmmT9llwIQeE7A9nRaQHkue26Lo+MZxHBXZ3IbGUi8ueYuWL4K8kvF0OYyNbBqYbRpnPLm
H0QoSKFIsvOunrJ/vuFutFDnvek8YDU4TwlkHwPxEkvtJsjDRKJKaSWJFhTxHWTwUBpLShotuNPO
6+gairY0HRK140OAY+niwmJ8C6RGk5P8+qd3gWXzrGW0igJyx7gl6EKX39joX7kkA2d09ZVCV3yv
ng+fHKPL4VGpEtKdO3zO7kTPSQJOi9qxhKD/EBCvUrGncNbFUupLXz/7UexN45OvevLrzHjwIaEM
QGacI5kiQw78zzlGq4m5rZTFkZ5g47usHkf/kWsvd+nz0B1PJR9ycf5ddq5BzjYUsJYZRu/knmy/
HkmB8/6sgctE4rp+fFN3zF80h/rqh9Q69js4stWX8EPLZ26bCqzj5YOXC/2QCh1l0LHjQ94ZAEGn
eZZaU5E16V2bZcl/fJoIfqk4NCuNTLNaoh82iXOW1HmdXKKNc1D+0gqXkO+1iaWFdvHdTr0Ip+o1
ofU+8RWcrMFJ2VgwqVdnH1phXnmtwaopZ1Bi9uKMUdBE0fzBif056K+kKzeRMMzYMmA0HrwepOpH
rsLMYor1x+acefA1ejip/UHpRtT9tvLzipJYiLWR95vmxHQlGJPwzeOZtBQ4OM8qoXdj6R+GsZK0
Lw8kZRloGvxTlGg43+5omw5dtGxWCvdj0fa6ZUfgaXTgmJ45QEzXkzUs/8xL3OuXHrY+aG2GOIue
w5+PX400+2IWCyi6PPS/cOLfRgiDZy6yv5kqKYvxzyugM6r01+9iwX7VGqVC/DOj6mc27ztBKxnd
2riGRqlxCiuZTLzKWB6nggoK0kShAsvHMQ+77KVCcWPVK22UBlDIpRPS8Ac6uQ+BL2luuKt3DFfS
+IgSqkI1cIdB9ffDZFAvL6g7i4AmrOSPBY/IMjCd6zWxPL77yNMUyefpBMX8DQKj4CgxMzocUAwH
acCDheMmaVPNjW3aRP+EGB3dPgToOZm4/Py68wQwEate9jQFtDTiD37Z1f+/AtpgA/84LHc8H85/
Ks2Zede4tDbnCONpybpp/Zl9c7fZ3gbASEpWRHIO6z3f9P74RyZDcPJKSBbBbGUuypYqS2mlWwPe
gTCBuCcqUnDNIK9GKFDWciNelfptsgEqZQg9z701Wf6AO25dqcCEFkNmxUpjOYdNep8yq1XJhUD8
Ufcv6MTsqXaLkBeVelqI0zEdMEhn+zUKs1duUWtDg+pE/SUxPs8C4Hk1Nr5t5ALwSXfYYY8iAjjk
V43oNVpi/jCTt/TD1Awe89XSs67uKe97uSZO2DQeZTgGHFKStUhOcFp+uz7HL75JtB92/zDkum7h
J+H4aHEcpRz7irUIY/5I2lcfW2j0LqYgUN8dopeH2uhod5SgWBLLblDuFY8EKuvMP35H2SQFWNLF
pbDo/07oI9vXAM0Y1i9p25LT2vEuLUSaBnxAMLe7aIT5tkvEzFlwCDefV0a31ufh3zQH0Qu5IzSS
nSJ6AYIY/hQzr3X9do1EbPwvcAsjx6nANHAMVsQNDf5zfbXxTWTnKHFeskLtLjzx13q5tWDHEqC4
VYubQ0sbQL4+3tREk/2OxD3exsxCX+ngJZnB3xEWY/uHTxWQLXYlK0RTb22+B4Q9X1KhHp5v/T9G
FG4Cvhf8QHHIBQn/Ui+mAVzcDeK7rO7n9yJ6woFah0kwnjh0m2TfGsIyfT+Cf46DQYlxQPtJToRw
u4dFG8/PRLngrFjzkUP2xwqNb56bHp3mUoFgAgrlNCCjpAD4vSQdJRiP8nQa0jop0UMrMGe8dJWG
E4S0G6UYD38AFrtcyNQBMxCOQBtpXcK585rqmx3GYk84eP7j54UxtrAda3gLhEYcHV1NijzDM05n
nbp/FuPl+4ICfWeHXWVgI1PEHDPtzN0KAlqlNtGdJR7iGarQdm5be0LJYezSXLk8tbcpVgqFf7to
vCwN8ZTcmfd5gqbIOqJPXrNcZQufl1LVee9y7Kk3O4qG/U6fswqR+1/Um17l/cs+1rFnjRYzuFSf
ZaMVMrw93yskJPGDChBXyEyVEqJ5SSuXpJjdvmZuc1YEkYHtUHKCy9xohERXGAdT38dyhQE1iYGb
il91TEwK98xzOfaa2w8s5V/oLCK67KXbyXu8v8OqBEFn8kLSKjouiEqPg3y30+vYwVNGTl8OrL2A
FZNWnR/o2gaVgyon22H5qwhiwbbHEFRNO9zMG+VonQJBSD729mfUESYTHbWOHY8yGKMxWQpHTNmN
duO5GyO2Jt9QSia8QzZeW2qOBzNz6bCFvjqGdBpJUCeokoNXkanJ1dxp/NHmPbXLyGad99fcSNwJ
i/u4ETvch5NWLdrCgfAXumrA70CD2d6G7IDiTYKhNWOI1XVh4P/IBoz4yVEAtyBJvMwjf9Fq5/uV
h2pxh9+KzXezrw3JMTOJIuuLSoPs9p/G8SZZqjTIJHtUaftcftwS7t6LSfpYorFIDZZt7aBpIUcc
N+IVgFNrHEyvP0nhwcnJgtaF4tuDE7ufZojQa/rHDYJ18m87P4ZTSa8BNbZhH+6lbADK3bsHTfAD
KBs+6RZl8mMbfOkKGMGZZByVvZ8fSarN8D5G8d5lEyIfvI0/A1IP0ZFIi31cqXoRBUTsbP6hOb5Z
9ELHwXctBGJsh1OjV5zDb5Aln28lnSH6hZ5ZvE43Hl5FHN4OH1g5khsi0CLMWDGeq02nyBt6U1Wi
O1unanySJs8v2YPSmRR9r/jfD2ZXDSwq84YoZjnQq179O3LhTLNaPkzhXOJwfcSbmCprE9Flnuds
iQynUGz0cozvVuOgJ3w30Xw2WbzMhIzCabqUa6zDzl0fJ3cy9l8AV2pGSoL1iaFR6QdoMfwf4sT5
zhpVKqN/DIVzj9bS3PDgsVn8SVrkrkdRdIWqOWXIzDT8WjqK+sNqK31A16kPY/xB2xAkl2cv9zT5
kdNNO9kZQV43VsYRvkZuQovig+Dg40RBm3GTde7QCJFNAa9XLNCbMMKgjZC29CBCNO9iN49kZu+Y
n6JYpyxpFvMhvWfP0ykpKxNOyb8drwzxApe4nx4dqpli3A1uFbGBx15b5i4Y9AKwPMIYMHDgEJEj
ri1smCbvErqyFj1X+EJ1L02JH6uwISW+XB6pVjmTnDY93Ku5VVZjVPBKPDnmZA7P+jYZPk5mvqP6
SwvEYsYzDIK1hEBiHHPjbgryt3AYuRxHPcACv7FDq+fy7CpFZ9HAZ1dp6ZBGY9B3hLV2EB3RiLeL
9iMSUhSdl0YCEN2GvQVXVUg8LQ9yX9gSab5MFu2g6XTiLfQynAntjiCLAUqEzr+nL3dQKHL+km4g
QdGyeV4ULNdqDX9DfgNICfX86BzODaV4psTNKu29xeiKj89MgSrUSbXyb+WfDDm/57HLztBdCR5K
Ma7vifdQE1q4fw91VRnrF4wjK9C5Se2A+4zeQ37/uLyMMODbCV7+0Yxg+hw1IKTcwWUduVcoaxSN
r4uhqyjjm27H62dFZ8Z1ntimNVafQKM4fs4SbLXodZBeWKtUBGC8tmba/dULhNW1BMlICC+h7GzN
yVQbhvVXb3vqZ8YOcF4NenTV6KAWjbLy9aHxhLkJUJB4FrBtATfU6SVBYtw1oO8cJNjpBNrg8eBr
FqKA1D6E7ONwYe6UcX6n65Yq6jTaOovhu0wIefe6NJfEJSpUaHFlMye9lgXsN0BApM2qHjFrnKbQ
0siJJvKl1RapuPQ9z93ZvzcoK/s1gI/uokDpjXwhgLBDf/9RE3FKehp7dBzHQsh5mwTztrrNudHq
B2gQp/xbjoQayTTL2EJyCaj2a7BwEcRtqkGQ1ttz5qZu7agSgWk7Tj3SPsZW90+peXf+C0WcCBoo
n2GS0ziKb78uQg797RFZA0yMUqPUXgV114+D0k/HXymfeMLYiuw6nOdsHcs1oCFg/HKcJ8cUgtFI
3LSeP+u6k88ZrOslx67Ttg4zck6pBmGj0n3Qf28PEZysR3w9eosBmCneIpzSWOMP86tAJmC2R+fy
9iq28bIZknCRsSmYq7NmeY6p/u9Jys5IYa712A7VxEiMRlL8EXA++L786NN+k2xuTYe3L7A30Qag
MJKjuWgGitTIHlVBgDcUGHmhYwaY1NBQkTqsnAvmI28aQyI1pkZBppnFNrf7L/ft6NpbItYZqPKt
zF/dnzmFuQ6Aktb+CNLAv5Yf9Fa+jqLeFjrcMp3sKO0tdzls74lv1+rHNwQGsw40WrIyrGFYf76W
VSUl/A6bnhB/9thC5Zh8rZxmhv8ARguQK2hKOQhb5H8yF1jAVGc1nFUiT5jpzKUGEomtWrBRXT6A
zHxNtchyVZg6Qx6dHL/3uJRM/8HXnzqPi26jiryrYzpka5FarGoKtGKI8jp9we6E554Jn6+G3AsD
Tkqdza0ywvaNzRW4yH88KOwlt/73jpYATBJ7FPwpYrKu96tUJ1+YR5cBUE6fam42rBIcv84eoHeC
Q8bjdJpOThfHkPiYfHxJy0+XpoQfO7ciW+c4DO+3p9d9b+YKYBy1PdVHivawHFEfv1xPemSxekot
3zY/k5INtPOw3VCpApwq65XqVsG86fMTZY3O7TagNp786Bci+P2cPT8hJEL4nMyy10bVVLz7om/c
8HR056I3bwh60ZZ4ZZaPrsLABjAZhnNpEMsnMbZaaJjBTPv4k19LcCwbGc+vKlo/SzLCtkwrXXvl
FsZQjLre4J9aUz1h5c/q5ydVtnc2Ko3JHxhaZEa7MLL0jtbVsLtBW75JUfGksN3v07DLJ8H/oBin
QYYJL0VDQoOwjc549J1jrkrK0y1uhmHYdkuW2G0bQkTCzGpc5W8APlAXCffFDcSFzXLmuOhsX1jQ
/cJp8YBLr8XHSqx64xoIWjyiJKiLDAJnqb7yxVT7GLfNpA6JMhtb8V3VQoZG9Pq6r2/gBiHAk5sr
lsSQi3Z+SarHMtE5tRHuLcuia4A+grPt80vjxx9xIQsIAVspC/H9msx3oURoAVkQwTzHESIn4XIa
W2qxwxfmXRo653EoSjmdzGi5XMGsd9YbY03BOuR93QVs3hHUnQN2HBae3WJbS0u5xz4FWViCjAz5
Scqvz8+pQEwwZR1IWyj8iqeW7F8d1rQXLEl1oqR2hRU1OUElIOgxY+ZVkqqotNlGlHA48o2qVWLC
uad94b8ZFOQPoALFkrijgqm4Fm946WPa1F8WcQMk5YyF2+K/ijx7Q4b8tW7/xFkiiyN9hTzf36A3
RHBmNuCHGfq7GtgMAWO/RGRl2fj4PTpb5lJfHdmovqyScAx9hnhohT5o1plP5dftI7mghMgK0/86
CSKN8e6Qi/BPS7rZU7B5bIQNWg6lQG503/Uic8KYnazbKEuwcXW8zvWk6ms9GpGTn69na+1Lca6O
XTr7sCvsbgnG+t/+O96+JOgvwO0Ix4ASPzaHbyjZEXvlyA+jxJm63mPEkRJvcz1/QALZICF9rNfw
WGngjhlQSxRTgzKKEi58uVYfFoMeFt69cDIR6DaMti2oDLPHBi+qWUV8lAw7BOopSignoFcIxamk
Gs43kp/9njdBTgVP8c8fJyAjFQHXUMTWmZPi92emZ/HRwId4RqHwnZaCdabpA6TRm0U8AB255dN2
F4pZCj79p8emYjSvA6MEWqQjSVixLDVtCytI9Jds9WSX4oSdSOeFHeNjCrcAUF7qeJnZfdG9uw0/
6moG1y/3FYsrIrRjcfPXGk43txtSi8MqhQmPt8vqC1QmamBl17Frv/r/LGcfSXSWWPcxmkL1EF/r
NMy9NhvDjrAMYZQFDhr2JMfJNQi7PDNkUPEcL7I/cFFR+b06Zy6FsafOxIs45XEbWAHBROeAHytz
8x0wc95EfBE/XZ0PSyuNWQ5CACyxaTRIFtQqysqeLgS/Q+pCwy8JxXZqNTbW/U8J1Hy3ZgS95UHP
0N0Q/NmGhqaoQx8fOScAH1lusEmQjbAMvquuYoJn5iIvz0urMYnli9/ShEb71cVFCA8ACugXLuwL
lZo5arzoDMsSlRaqORqwSY/cu6nWL9BMI+PZ2CpKtOKsNOA+WFD+54yEvYVEAFLdYNggNsQFVFVF
dD2jla0aN8CEj4aDDcLwhS+nqe/Y5T0r5kGwYnlsowVK8oFJPkhUo31eVJPuoVl63aOPm9LwnsC/
LnIRPxi/bsDgFlrWm1lbeebumc2HyhaCW8pahnbco7GciLWaxf24lbd56DxUT5bbIb4O4p5tHV79
FZ7Go/6PNzxpM1EjO44a0ql8iiAiJOHZ4x0aF6pqdR1nNpfOgzFb0NhtjYGorsiBR3RdSUGYMi5M
N++PMOntJY/OE8NjFvqKz4XBWJI79yUqtEz8XV7cspzvGrI9yDnXomvav3CcbiNhVxQvIf19LaDR
R7tev+5jlQ8NhqdeaSOXWulzo/AbKyIo+5ArEuZga0Jmkx5x6AYCk4fzp68j/p82A3ytbvAHH7Si
h6q1Tu40K2ihbrKCYYo4MzYklyLyoOfk/DvalfTitRwBYcVkNAuCM6Z3mr/HWwppXHOgyHbSFuaO
bJE68mtoKG5RCRKgOMK+OlKb7NFjM4dSb03EprNg8+LVvr4k+LI/Wmvpg0uPKVot8E12c94NsEHP
bWL5ST8TX++IP+E97Qvil8Rr/DkPH52gKBB0BU6dvUgBk5kYJtBCGHE4BgeQTUDpwDXyuylaqkre
EYTSsitA0cj/pLIzv7OBN4vc7lyq5B9unLlTNzZ6B7X41KaU/3FDXM+RmrEiJUOZLF5yJhd6Qw1G
8AEsODz37OiWBbEIS26tDQIjw70Px/snYXTddQ7JHRBBbwEtcDGhsVi9AmGYH+mxSk5Did+lNdoH
9TjwzbCp2w0b1BejLZ7SkBh8sMtbcduztsKJLj3z6Bn4q6GSlD4mRWFZvH2fmkfot2L+AmDd3ebn
3piqnwV6vtEN+XtZp7kd7igRCjNrGHijO8gxhtgHT+fWvvvDMVBMS4wfgxROkIm9dl4Dynyn+jHv
Q+YKYj5vzIS/8S6IznIDlkAOBvnbXGSE6GibFOFgj8XaFYPQfxpmX6F7yyHGhgjrAau276K7kk3k
FfBwcC9q9lkCHRK5nNbmdtlf8LWTiu5w/BkqfH3+Q8Y9PSbO9OXnOGeEgY/qI+P9suXwfIEArfeU
2HT2wd2oxsQyzK1p6vfe6rW4qnksGJGiN1/4vZ/0+pBEgR6tfqmt7HPz7k3t6Vub0AefcowDZ207
RnYcP1N71ybhlpG6UXAl+o6OcrhjLo5h5AW+52Mk088mf5e1uKy38ZW4u4dqBa8yZBu5OkOm42/X
D5chpt8YORa7EQOPvIvQ6A+VfU2F3cOmB0JoqpX6vP/ZSaKxaHOjqcwfG1iyaOuJ01XeVLI5KzD3
EJ3s6oNekWyrC8a1QT+NMPTyysv9eC+/fAjL5nG8bxPxjrePZ279WpqiamYRXms09DS17sl7mMry
+AenwL+BoIRS7N10gs6SD5Jp/x2m3y2DO7fJjfDDxHLxT6Jso31Eoh8ut6S131v2si3AEr9HIfzo
HLrfkFPcRGDttXtY/+IzCSsgo7h/IHd2F+wWEAdBR26rqiqLt5ybkrZqE5jdnIiX4lxOv6Xu1BDS
GW9ZLpGpTRex1Y2T46xFM/pzvEzvFbNcrtm3TjgomSaMytY3nG0lblKMFOoPkA97pJ9p+xEmHc6l
XXNLfiTvy5074g0TVjBJg7weMXSs/gNrH8prq4p5wCbszXg1s7HiC3Hmc2cYctN551IztIPZ50A/
dSfYzzvoqZueW5aYvUEprN0MI4v3Gz3pyd4czLOKi0rJ1t9EgaHR9spxjxcAb+uC4bVas26657Lm
RkSH78p5/QJ0YjejNPejlptbJ1gwIMF0e4NZ4fl/pxAEIwOAPfe/wHC/TwVYdsjo/BpJuKn6CND3
QwTFjDGeZYIovP7x2zACvr+Lciv4i2b9zr1kRCUbkeBct8N4sOQ3izrHVzBuSRRV0v1+YpWuS3ET
4VGbAyUy/V6s7VMaewKT55PkJ33ABWnJRGMNUy3RCLArDK41f3jBZjmyI61ocoX5eDcm9Yc6xHYd
3mFbvByijVnG2rWdoAn0a25haUK7MXGaLoCI95+CFHcC9oOFRRkz7+jd/E0uQFgwbj66W90pl88x
cIOGpcbmV+ZKSudhEQY4a6qV9sGRzQVdMemBGvhsOx0oa8PEbYqUbBQBxeN5crpf9n9oax7aFhZz
meOTr4F6vcpVrq1Z3SOZdliPxO7xowiW0wDw3CgeQu7gtvlvNaLIt4u9cZ3+bxql+BsJRmanLejx
LhWVMIuinP1T52saVRSfV9RtSFKL55s7FT/9vkodoStl0I8FbDev5IKN3Sof8HIA01J6Y0aYjOsI
Q0rDmLQbUzwVFPm3ulmXr2qk2cOiO/qqk2JSL+uzJ2anW/RNuYlrJkW2ZLxyAHC6/9rxbdZJYH1x
8ij24Z4OUTNDMoNiZSGCAA8mRaI1T6U3Lstv9bt9ZiwfKEolfgejFZiGSnWdNUDrx9yPhd6TrEVJ
q0R6AYgn0pP6XrU5wRXMs4f5HxgSL4Xk9i62YueAIdnb4BJdoCqylk6/P33zIq8NgiyuhAAd+Zlx
7TMIOZORLOr3PWIOcB1EPwh4u9gcc9UWtpNYYPF8vQZeE974d5gh2gbhhsT9O8IkYMokRUVKn/PW
ixDdbolOefmiO9iJeTBS1jhOz0IFjH6Ats6tnd9ozGWixMJErli2G2GHw1xx28APOF7tdw+m32kA
fjUj5XoLWmYVUKdMME8XTrjc6+jicDxPRA03T+L/OwGHv7Qr6HXffpKYocW03FZUGD1E+sY244/M
3wkJR6ZIpfLgI7TZlL7YVQpwHV7jbo7wIGYMY4BrwMxKos2fIDjtu6eYzFll6LTvHtoI4pZpzN8J
huRkB5rXh6MMFf14afdPBtFauWf0PHjs/NZK8rymf7wReRi5m152CpAVb2sM8Pz1z0Ileaa33pt8
RCyY6N/S1pUfmiE7HEZRsvoQKPuAvVd9Q2JiIOL49rqFh7gTqkOC761NMcusLHgQ85g4mcahmnyx
4rRjoXsLq+/hno45dS3iMAobX8O2NODmz/rcc2Hu/aEW7biELZoDY3XqHY9Q1QjtO9Dek4zHY1AH
3GSwJufjV8+J/sadFOLNaSvcR2boXGLyKDAzUzIxFqcrjv1qNjbjemJK3x7BiGvwy/fAcSsWFaUP
ZiZ0Pje2N+mTIhY50ABcwg0CCCIsvBnh6vUlCE86ZbN5M/7uQ/aztql918/WoU7Q3t4Kw6QZ/uB4
jHDZGqTJOq80BX47WQd+D50XSO4z7Kv9vWrfk/MF8YNYWyUFEz9kI4G1w9Q/RZNqwSRRc0dDe+Jp
6vse/Mb8Hkjkfpr3Jr8462kJAh+58goEoqzbvZrgdftK3Zv67/R0lTK7Bgol7Fg0mOI/P9yyDf5J
akAcAfNTKIW2FjgGzwAiC6bz68d5zp2WAR9qjxarXDappDb2DcKEAWavBYN6WKIkjNAb6ZLw0wlz
qPS4Ue6Gt+VUhNcmuHgjsN9BInaIkLPF01IP00lubmHkUh+TG4YWetgka3/NqixJSz/RAFVXUsJ0
KH0F0yIu20gZVBVDfjiZJK1K5/DUCurJmgGQqJijdF5wkRteckuP6s/jRhTqtsx/D4h7BIPFcgh0
tGXHaeCk5MF4hRGfM8H0kXe05wlFYAkgjPc8nQRRjHuq1d5wtInw9f2CgTEzj3rjPUpY13+gXk6Q
FgpshffUYinK1f6mFZJkLLX3TwkBSh/B56jNUB/kRbAqlUAQOcrSd8sJkWfxV2QyspPhSPe+LhPm
nMvaJzHnL9FMrVj6RKzgAjvailJ4RkzC+j50CL8swG5G2bUSLdCHX+2XBk1FpbtTiC9JD8vqxdpE
3qwVwBVKT28khPASnYMUF2VJzyEVL3hsl3/+o5Bnr9JZVYUbQs1E24GI425+CyiOE9xYTKSIh31+
YT+gMdr4IQwSoJqmQbEUSgji4onY432zRNqLtLRjeRwRGrEFVpKbl5pq+jc1T0XXzL862sTmj+do
GQqurrPpM4i8f/y/cMWMxPQCxDKwp5lHuTSE4lqjISTmctg707hbBhRJ7H88yvw8T4XEx81Y3uOf
0xeX/H9fR1DxmREHBTJf1nhW7wF0EbzXRuVnuaSdqeGUOe83Neb6+ds9Ua/48lsQwWtYm4U36VjQ
lUaC+VIG9qO9FRN1uk1LK7MluzEKRwgf4le7kRtXC1UMQh2SPKUpBxzNxKkPIbJ/pmWv+IhNhsZT
GDt0EO81s/TCZS0wLqaAjZrG+B1C0UsVgSVZKf++lgP0xqxYfDBJadp4MtIPKpc1HKerxy/YGznn
/mGmzo02SlfsaRimL9R+OGXW8prmAbDdWr7c9/zHhRG3+c5W4GSNkAU4k75b9JSLxAmhJBq5gjDu
77yWOI03GN3WBV5pB7Zit2CTs3U4bo+knMRcuw+ZqZTIZrU8w2VSOQPeYMRz2WVPDmkqOZkV+GOi
KoSVFPZfgDQ/sGfxBQtUyZylBk/n7nd8aOOxKQYgy7waegMdY3Udtz29k2zaZ6oVJB1dV6/16GKD
YB0bhU0bsJfkXg28bQb7ra0zc9Top6YGFkHUmeSAtTtsC/c4Ja4ilq0k9lq8wufieh84tygA26ax
X+xzsvPLL3ai4QbtTcQaALYRUFrnPcz2bc5IzZAbN+UpsqNcI+QAgMdSqEXsDaFsnFd4PRzWkxQU
2u1NsT3MmqoLyvSZ8AA9+68RAK9TTXnwhMyQ3khJpNDh25rkbfiSGBs10C2rx4QVCcQm+1YZ+Ro1
c9lmDAs6RbV275ENT8Cir4opem3+Q5dWWuD7HJpVd74dCCmn1BfHzy30gaJ5A1Nz4i/5BuY+C8Kn
tlrWTm9jsEuJrGh328V4jnTOF+SWADuIWVDYYiYYHTHJZPwNt0je5ozPoE5qAoSn3edpPrUmmlsm
K+QeEr1I5gk+7+DBXzEiSFElmHiVkT/idzv7KtldjvyI+nWbVWkeM6bjm5f6G/qUqBOF6xOFWUIu
wHIoeFjhRgw6BZKnocsmDhAPRh5jWt5feeHdZNp8qGZHcTstpUfvDAKucemcyZavZSzur0+SAFeq
SotWXRddIkPUsv2KX+7CsmgIyPFUROirUunEhtyqc4aqpvQ9wpokWxJB46sFpmMR9v1nqLUtehwy
AVg4FMwmRSrndtHrG8jssHo15sIkzokky+ZVoxAX4gDVwPkgXw2ZliDnnCp/2re3a1VLX1D0/Rzp
msH440WQyib1W4WSfekpdHAGh3oWFUi0xAMhhAxqM0ajGCkRX9GnDbFz/SDUmyrTeUPrPZ1/+Dhf
0ws2d3RDN5T8Hj8cxdOJ8R6ruNtEvtyJdD/s14SphDdoobo3gXuOdYffm9Jr2FG5JgCtYlmLmwmD
+JtC8JFa9bfo/PZnLsSB4NTudsuWDf5t6je5F0UnTmFchCCcxKRhXPT69hfXX5HPFpco6GLXCfz4
K9uuJ+k+1exc0rzIPCcZKQiDF+4IAF9xa/kN0vX+hsIKLrjxZ7g7RNyjOFXGCMq3oKILX9fG7i9C
JLeovW2DAyTCqVKpDyxdvev13dzPsnZhDLohx51MIcagzf+YsumA5+KRM543LfTtJYFnBul7Guoq
13Rn4YG00Y2EtxB2wvLs+mAbyBff1fVdLvzHxs7D6WrqJB9KfOb4aVXInvP9jg1L3+uZwZhBIjPv
QGfBy4t867U41iAMMtRKv6CwKGw59Cdj74+UoWQbYUxrnpGm6QPkqseDi1EFnR6zfc0SW3quhNi+
qn3RcmGQLNu3p4aKFKscccT5P6T08ixQ1HyaiPA8pc2L71uocF/ywiupN429+D/nOoNsnPTbMrKH
ITZXv5WxBfeRx97n1+jMAZ8vsaAfQnYt5UVgc4drp6rQIaM2zXp39zvpzYDDd/DqNqP7I4B17l5J
bhdEeT7UpH5UPY72KLCytJiAJx4Sg8r0bx3/O7CeKe6DjM6B7CZSqfIZP3w6B6dZ/wY2FKeaB09b
vf1j6R4VC9Qqhrr8x4kdFAQjLYrzqrMvFI4JrmomHXhlpqmlKnmua1556elSR3nXktZVAPUuXaVW
MO1nyzP6oJsNL+quCSQwyY/3OMmyDF5WJyTPBUJm75fO9za6nGMJW0FvY3/Ypfmhrm6LEAEtE+rg
V8IP8TI4AmTWoICmuy5hnRldq1/qB6FaCxmetKNHMGyPvzSduJS6wB+KFrU9FrOON4tunK3UHOP4
pL8YM75n2nFGW8TVe2/qKsH5s6eNwZqw63xrZ8X1Pqwo7D0ppCP3G/2GotnTq8UtUqexQgg0HYAd
GK4lm0Rrc77VWMoUopg4blwuOW5k0T0izdddOtE8YXdtx2kN7MfASrqhHcwqPWQxY3URXWjz25Ls
3xKAKakexVxJ11j5c8HcnHGe9FVkpkRyLEmmaV3+lZo7ixjldZVmABauiEnCtb6deO0WiLpVQ7o4
BDbMNHZouEM8aSg19JuvwJm3Yy9EymefFTf+rnNgycLlQWP8G7CovpQEdaZSL/ZZ2r/OzhBjUccU
yvd72d0iGjTuY33JTtG7dK7OyJi/7o+g40IYBzso33xVK5wHeO4jpJywfuuOvCUPHZ68y4QDXhuf
fScQHy0tdOBmyUg398dYfijc5EgY550A5Lio9NNhqvDlfQIQAVIoYf5mYMg1b1YyWiKiwzUFbiwB
9CC98hk8iRKTbxEdRCpQmC4NdJ3cxnnppW30RdBy1+E+mqGgAJOPQvmH6DT0hlzm2wJJzuT6RwKO
zrUk8vxORX3bG6b+K0ac9zI7RFw1nSUjgXIZhUSrbxxIsfds/unHB8FkTnSv2KOjvJgPAJmme46M
ddl9gWiBRgpE9KSunUWWxtq+w0mAM/eHKTp/CZFAPs9PwBqgdnFHNrmqAcuNY3svf/NnfJ/Ziqyu
ejmuNAzldKGtiQdjFgN4PgLYXZVYmmOTywTBIKjA7CaVM5TKfbg0tpPdnokFmNVMfw+6sNTPfJsH
p9cy1eVVPOwmmikMA58KY8I1PdIFF8sdNcSgRHrmGiVFe9+nwqZO18luHrL9knssw8fdGrHRCCLQ
2V6FSGXNuuFNoam+luSDb8pecdW2Ko7OZ9lPszgzbeYE8nO0BkDbDMz7NemnXp4kZsXP59LkHVAN
8T9Kv+nRnxebx3bbIgBq02of3GvzdE3PndNL6tdarw1IqnrsKYncfL5e3+oWbgh1/92hs1cFer8F
IF900Ju9ehEgkxAUzp6QU12uy4o/AjNI3hezgN+Duvz7ItzSXl3qxM5xJEo2c9NyAevREeXptGPF
XGoZbZ2ZyUB/KukUNvJ7hvZnpgawbDV7tLjDky8Gl+LBUiC78X5VNkYmypZaQSzf8uUj5gGcU5fb
CTDl8OIYaAqEeuXcSyv6QPr7tHvIre6bgvG4htZbcLyTXch3ODlqtaQBeNYK2ZU3KfGiIwT7FpfT
L/LT0XRNMnwNnZ8qBOXro1SdTcwV7XVxmSW7sulFzDbuPZ1mjB+oA4Sa7U0aor57iAFp/ZVLXz3Y
9wtp3GX8aGSBE8CSJ/uGxpFG8gwetD+dSFTmn+73ZSaYKfP86sjIdHrZ2pHcTGelYqU/6fGRQ36T
9uKGvwWhMjasX4xenI1Uft1cXsO7FlbEGvA7RCY3mZ7DCk5e8jLm1FRZu4Qqa41ebEk2ce0aVTHf
uDEy05t0tp0/k7z6D7hACDIxWNBLRKKAlkrHd/hlL0fn1orDSh9aD+qjLHLgoTdAzwRIFKkIm9yD
xbRptz4Ff9oa3MfE6RT6XxZxT7T7gmXxenVTKju2E2fxcaIh54Fz5Y9lD5ukJpf/LTesSVnjC0nq
3tHoELEQwlu7sTMTI6x4gVZpd/WR4XFVSX9XMw/dqWuCimZEFSs/ZitYJKeb60UJQTqaWiyl6AR3
i9e6PKImcGA2j0U0kfm/UNukonuApv/bmPW0dPcMMnnNfvQmNhx3M31Vbp9jXV8bQB9+LRvy61/Z
0WJ3kB3OIg0NKmzqV8RhV44e32CJuvXl+HAvhXq1c1fVLx9WQAh8SXyoU/kMBEt2Xq2ctDIjQ+Kg
wK8WWIbckezjEyDzU5VQxFqCr+iIryIzes0NLNfK+EWJy1lTV6J3ZnxaM/wwC4G7FwWxkyLzoDzc
giEadpmkUzm2Nhwvxe39VGg+rGcd3OUXFlMXeDD3gQwPNXyWTqBxvPnJ+U+Itl4DHv4zi/hvjGgw
6T3fBhW8ejBO17cSl0IXqDuNksMbzW805XPhK4EHV/FRjnPoOhanveYY9d+sQIQmethinqLzBQnQ
/WSW8lVOYFbbCQrTHaYJsHAPkrhIwI07+kTIxkdjihGaFqS46nW+3zsV/A/QBYpdFK/55WWBVTH+
B+xKNnBqitW1JJ1tbNY37ikEhv8xWPI7h1Yk1jILQKAgkeILskW4H4IOGb/6hQnnwcEQXYKx9ZyH
Vvi/Sznbs7dz6sJBa85BuaZe/KWCALbGdmgi6zwXDixYLXQeM82FVTi5vbxgMJBGAjatySZNgo6b
vQqamBhXpyElVxarPu+8035yvu+pTdsBB5u/WjPM70w4nMXXrj2sX3/AqzPINnoM/1bvsTNRsDWX
phdFeUgcczFDUMPHV4bgEQ53g6z/X8zT923TL7Uvz+FgCyw7fxHN+ymW/+cn1Dc0lxmbH9fABQ4m
5ujnkGWYo0rFJ0he6v6+N+DOhS+FhQP6QXADn67Kmrwr7/eg6mk6Fh7KpY/nx79Y7j1KNJgxWHu8
aUibzr3HVbFe2Mq8lv8C7oRHxsrRJ0coQLkQjpQtYtem0GELonkjvOrUo7oBLs5FlOFUMLqJIQ3j
zKi0PMS44AhOr/KbQq7bif5+3UZzWR7utkW92PQ2kKVm3OgElbOb+QJu+afeJb90SySjH8SlRmni
b8e/1nBdrDXmPR/4m6h3PDUXVGuuCEN4YpX/z1MGDWjJNCIhnPYz2mIVNNIznlc/B9PB/MxJTRdE
f+yNNgkSKtrPr/Ufh8BoSXw5evvyb5M9WR+o6ZuUea+u+tyblwstE9zH6/tWLNo2FdlFb9lbrEPc
N/fUirZAqyFf3Vw6AZWrYQlU8bCM6s52fBZLfWc+yTaAR1+cL4vERACeQArNAdwfYQoUYtg6/Etf
Ql8WeOdrPzq2c017iNhVnNZJQFGNPgAYNANrp8MnGbEkTw5+o6kHu/MOrFb+O7Vq13nWctKqEtHC
ChN7ItrGUS9SsakrF0OLnHZeTGT5kszoJOSXn8eyQi4bB3SHN5l+tWWzsyRtEJXBpOrjzN4pLAvV
AbAxzqgJ+sAa5lXV51RCCGQQy+rPiMEzxFf5Ekq8ufeHTiQ4ViJN/kwmQ86nvoecORyp7eI2ohAU
Dvet6fz7JWbmklGX0ggIDpp4H1rQdEqiF69hEPuuKNCUYJl3NwBA76FXCHDoyYI9JtSit8j5xCNI
etlZ05ebJM+STQXQLUk80hM2k8w4g9zC53NGoJqs3FfM9VN7H2gnYTXkGWLQ0ctenyZlNZYH2rlV
EDO13Y9Fcimb3QkgJ9iikz0sR8b6AOS/aFBsHKNDG9cnTL/hHnqBsEqU+wHz8WtToCetv9eb/es1
yx7eHWHwYow/xxDmTaBWqZnz1WbPIasIzvS2DZM6Go4t+cfAVmiaRePPSrbbk53RiNw/W3K0gqB7
/Q9P44htHXsSueHSVphx/kGS+AVSz882a2GJ5QDppBcfRFBlPHbJ+RjUwIwdCCSEzyTnQndnb7Dd
X/ofa/Y6bhwRpRENbVgwJalcugPvGLWHhmp727kNPi07BQ3ZiKFWSQ3mI0qT91OtwZBu+W/hUZ5r
29K7I19K1pal79jS2RQF8jArSN44bJfObrIGiMYnl7GyESOhftlOh3iqbmpyoT6uHRSF6A2dMLbp
FU9V2W6VfdeGYHsf8efAJMzC3ZgtPGNrpbdWbTFhV8gKqiA+3YbpXZWC720o85/jWtS+2+KIgYnF
W46DVzvqqvxWrNAjX93KELPna+RnqHQ1XcaKl0Tuj4/p3muFkbHHZYOpxBLt7gFYvVEquhxf4MEz
ZY+fyDpMkdvxRg5oYa5hr2IzXjxCvfk2qLlHW1w7fh6Mu1uNaSablmnoxFpG+BD5RdsYTeXtrUxI
UtoWOTX2yaKNt7iUeaozekvQ8E+zoJEubFoPmYIOf69kdvN94G7WdVIIOXj732Gs8rcrNRV5vJA1
2qTcJy5LslH7g7wBTDZ3lfVVkd2QMe4hEuHK5Nr1UXknCuRtrbJ5U9eBN4ZYJjTmIKS+rvPY71nw
OiQh6x31VJTmwzqIHnUtBNu16TKhOky1M9gfFcDBpMWloPB9tugkvBKX8JUr96IYRomaBv3AgomZ
dIQEm/Ep6x54D60JX/XxBntRMd0ROI0oRTt1+JaFCcnPyVvZf/hoXkx4QI5us5qgjMIyfUBnfQhe
bL40EqRuROsr7qJh/NXS4Nj+E5A3hxje5QGNn17wFXJjwzmN0jbk+w2Y+WktIhy2ZNJWyMNygNEC
oQFUszEi6ET4HIkyooRS/6fg5RlMhFb0dphdmYezQ8dbuXmmJlNrLcIvGJ2wL6M5yHDv+QsBcRTY
56Mu5UOn7+MJCKBjRmMNxiCXs1xJ0ybrtXy+dQHExtXRaWeAfkZyskdh10gmWsWLy+agvN9o1O+t
1jHjyyfgcVb1avW6UHYJx0aG2hNyCarwc2zuXA5WiUEv7wQXdqKUFXCm3u9uBoEbu08A0RcIr5Gu
WU8l9/kJo3N9fWmUz8mH4BFttVdHG+P/uCRFjXygRdBHePGEx9ELy8jzO1Ah4I6tweiBu6IZTKd4
3/P7IRTxFOdwF5nssgQKxk2+Sqll0yPountetcaL+EkQ5E/Be4plEukRXrtGmgg/vcnVBzxa45yC
v3UySYnjk8HRmLLdX9+9B3tr54meG7L3OgRoURRqb2uDShU9YZllGudIm6S1z2mTwG6hbnvaTQM4
bfvTPA7soazd7x9Gxaq/zYL892DBrtVgix+5uAO2CzV+iy5VvTlvkl/ksc4CSRzLQ48wNf+oEYFV
VDB1umXSIB0UG+pqwXjmLa7W2GZULCiBf1imFS5nle8RwQrww8EFyos/vviaXi3nu1etfEpjCvKz
4++0I55Ng+SL6S6wcWVJDq33JaR9at+g3fkQKSbs01CQFVwsaUWX7X1SEgqEe4elwBxiHKCMup3y
TXYKgG8qKIg0yBoFeOr5iLuU4JyhcrdXhAb31DoBC0c1Hm4hOSwY9NAtpNjdSoNyfjG11HTZDxxg
X0vudRsJLVhF8j1x7CWPrPXYrOyIyYWuZNN2maTiayyanKINJ4WXy8E6HYUodrV6L6ZFM3nNTsFV
cqzWOb8PvrqCJAWTzDD5+1Q5Anfr4jcd8Ou5LsKUuENDNyud10V7+DmXVd8PcCexsWLdtie6T4A9
pxhn2MFv4zZlxBUV/d10PbDSvKKEtdsJs+kGjVOeQCZL7r7pqAHT2LThQIGEguubOiLGjJhAWl4N
ykfOiF/mFABUoEVAAoDSRUxac023VQ7d437MNCr5onRtDBsQAYkLJVAScE2xmZIApGWuv5GAO6x6
3qNkISzntjL5rNLtszMxipwSafvlqJskR+eYyMSlNZ3IMEoBiz6WBnEhYO9VRq5X/38dOpSiJH+9
VCnKxL6RHKlPavxtR/SkVgcgLpbgvGY5lOezA0V+Tcxuak37KhIfQS2tN5gMPfCRmBXna5aWB20h
ET9pGHTSw1KCrI8guOl9oK/oiwG8f1myCTMnorQL9cvzt+q+z6Wb91K/mjQwVYdM5/ebcFIpFjsR
+10MgkEKahd3eh1cyrR3YcXK2NL9caDEYB7FGNdzfFkhseZZuJLiMlkQCYz9ddhAdKaUgyvzBdp1
rgL3MuyzxXTaDzrC/MhqUIdp4Ud47FH3zNQd1id7ZNESrWmjnVJqtTk9QawxOij+Rm4cEtoll2fG
++dtM955Vgwrav5N7zkT8Tg5krLcrL2WXDKgdZkFI7DTBQfkjkWcEuSgLaBZ8Tgwo3EOO2mSqeMQ
lO7HqPDYh91y9MJArN+aCmf47EL+LUaeiqFfd+YqlS+RjmUbUKDnXc2qGCH1sac2qYkCXTFEELP2
Oy65HmYukYIjKnC2Mu1v8wgLr2zpACe3P6Sns+P0lzTtWDKEO+3gR+B8zceDLB3w2hefKlJVCwB5
2ggxe6f0dWPOt75XjSajLzftrKcNV5XIhbnNgOlkoTzTiwTNmSTBc8q97tIhNNp2/biicO3q+edn
BhabIbazOxgy1qnMMG9U9JFJTPEq4H01ID3oNMHEeWxjBzFtH7LQufAjpnmKvs5hVpcm2HPASgjy
k7wlcQJfufBOX7E6m7FPyd43BxnCzPh/Cf7cIQtWdtaNJYWCxhssyVSu1Ye0f2QSONBWlzbwbPOU
ovtf0+gBNJ8FX17vs0pE2DJaZTwWH0kgeViFgNkpOhRuBiWOBl5Pk6F0Xd8hnDLTnFQ6OsAflaOI
FsAIXszTPdAKQueqxVLMkD9w1QXMtx6WwwJXZ2p/unXK3BxO3IRJRXIX4jY/CWMvi1uQNe0AKkSf
LA/Higt3uUlkTZSUEHiWoMukuR2Cdpa6KikbAwythhdD8Jh+f1JUoKKNzQOAqladX+tbp0mRSi8u
WwODJRE0ZQ1rnWH8NejZHxI0qVEqwdLnJjlFhiD3WtbmCeWOfwuFRkxISDGYpuaKq/7SoGvhwemm
xKIZzfEc/6n1KtM2bVjALtV4ZD8Aau5/Jefp6kP6EJoQs3QcIPLTe6Bf6ZwSqHJWXco1XoLRx6yP
3FoFTGCljd4mOzVSBUPslBrQEDYiz3L4lsYbRwXc8VHJHin/Z5ldoYhSnEFiF8YjBKylhORHIH3c
lCCW1vcvsLH+b8X7aok64jQFM3AAR7a+TWzuUBNY0Wa8lHKp6jIM+s7FzVaBWGBAK3n9ncNheINm
Qp2Bvb4eupdZtBWhSPSBdlgAshNHGts/akAyfGwo0fkaLjBh/vmbbQsB09RgkL81XVtsgYL03fS+
BDsRvIFwdtRf+06RDe47piLgjnsXxp0pZnl3hXIBE9S8FCgmy5fyiVDZlRwFOVayE6vUz4JUOa7A
669lxpypc0E+Z03QGICLmaGx9E0OQpSykyS7yoytyvylNZ5300tAP23pMBqOgwlyUoFp5ix8WLmH
o1dZVO/SmlFUfiwX32R9E1wYWztc99cpSbejx9yz8wm0ZOB+mTf6LaWYCm8JLUxxFEyCLZmAV9fH
eb0+Iu+Vm5fn8EUyA4y5qFGqFgxRLNetLtxTD+qiv/WCopunTz3g78MMvkBmQ/jHN4r73j6uos+5
CGcIpC4VaSMgEqdS7Yjx5hOV5KgjDA64JoT1ZLErcSj00ZuuAQ6QxC4k0tvb/0epqneWVHiOHc1X
mA7zxnVKAlOqKKIiSA7Znlv9n6XornlVLkwpn01vLZzbg+xxJ2qJFzuuIyeAgKADMtTwJFnhRz1I
UY3sIKVqBGfx7mm8SmEMQuoQWVcNOrPLLeWCGKfuF+a58/IqNqR9Oq72x+Q4fLxbnqC19wnFCLCC
Gaoh8lX9b8RvsDCkmJPVYT01G2rzKAWEznCQx07JO8ntxRRo6znMlMkCCD8ulr1S5sezu7JB0xIP
m8/PZHdOF2o5JE1loWLYmTcSaNoEt6Kua1frnSrJugMD2y9o3eCtajfVePTsrcFWjXn0uT0EbXsm
j5tNWfMpbPISAqMKFWcM7Uia0jMKb3mg6NAlOU9f850eBrF/hbC3pZD9Z22ztQePBo+N/GXh/F7N
H1n4AnmgysFpmWRDQDhmNUT0erY9b38iaglQ1P7CfPW7dSe/QLIJYkOgkVbw+f3Klqjh0dYqUUvC
6ED0ZzYm5AcugKPru+t17JEIyTedP0D7H5oRoLNpIrZIOub/bN2qpF71vVwNA5ogQSqovuNeiBRr
xZJbkEIMDA6H/B+GMkjiojS12eCZmv3/3YBuQtJzoN2gPGJVl0myzBZv/Hzb45B+nfSb/Ta3TucR
wMYJi64WBleIFX+LkPJKKlyuTG0fbzs6UnR5gYG8kZGP/Jqep4bWbTEEqEPxtbJdNnWMpUN7sQ3+
f7WoBN5KCzarAlgHnBWu4fbSgnP80OY785xL9ijKGUAfplq7SlHOjZRZ26tPcs3bvWmHJdpED+6V
iNv4gaQAwjQoEGGyrx8FgtPAnD2Zo2PM/fIOTDbo2DaX8SMiYrfcmsbA6JNZ7HZrsiw6SjJosn/Q
wbbrjGMSzJwIR7ZgVqqyd97NPeVzgfC6rufRhhPZI5bp6TuOyoezxi7pXwnhR/hgQod7PTS/rzxm
49CtMtHOYW0aqlUHB9X6jduMP+ejntlyxo4SC+yFvC/aXxowGk1FynRhxPsNzNe49+dHv0JETlV0
9DSabLR7SXAPZH7XDRNhfHDXQ6BW3vk/4kLc/Ct/odnY2bcJ9yOajJLrEmDlVYlYsPle1NABYSxS
xzy4DBrpk+dpQj6qUbblH7hO3lA1bDmJDEeS00whFO2eTbHaegPUF+nxIpnnaDxd5VYQLDFs2exX
g8HGQlEC5YJZH8RdiZi3MGKnlBhrCFp8/gZsuoeRo78Xw0Bqea2iI6KvMlAXb+kwbfWGn8/LAzRG
y1uqaBlTfhmmM4JgekERDgcik2q/GrNi3wCYvbHt5T8hB5/Ad2B5zc162gq19w5+4Qvx+qTYeGAV
QSnOaLMUa3dFTTU3CAHEMSkP59Cp8wCyQZVTzGPzut0hA48AsgUafdTumqD3WBgu2i+1By2mVI23
NU+O4bTbA8zoMi/7TUvtL3sPcuf/2B5mXqYi2hrAUV0wCKQV2EhqP0/omJVcpcmT3oFvkgg+bm0r
uFbqA6a1OnRNB/r8J2yB4ZSYtGQQw/wOyiy9kUhEcsDx2oaQcZt4UDPPPiUGqeKHnvb5KMDigcEW
TbdCCz49dhvofVuMjUzR6m8HJPMtcUSt1Og4PQum6kdLJtaGS7fmFgMAu97cKRL6e/uDXFhAgMeN
7FxpsMONJDtTZbVz8nYyriadg7CIAAPV0OJrGMD1emKIhlw3eA4f+vsNGJpwLLOerkXubc/r+9yI
lx0vsGptpTF1xGNJoosuTphvQ6nrp40iAwYMdc9ZDhdGSoy8aBRY8uacXW6mXUN/q8kXgLa7xHJT
YviTRghR7j13lj1rXc2zpZ65YRdgaWwV/mLhFKoxZeBwohIebXofndQasJDC8CgKNaaeWB3pyIgM
vP1CQ2hKZ3w7ZSpKMLkqjPBcGdERpYYgGWpizSD+HflhOgA+nd2/iCkZta3F8CUjKBJbKp79FnmY
xBB/oKNT3hIHTscNg0RojvZnU5/Eybd2n+zDy7DYdlF9uoP1A/mqWOn6COrXIojEkoXDO2jAMIAx
YrdcJ5AjgTk6ux1Cyal/152bQgU/WzQHtR+FO6SynmUMXnRakaK0xEaZHSz+AjM5DuM6FFqy+EHO
KMxS6b/vsEjq4hzM5o6b0cTiTa+14959dSjqvvTmrHBRfv0dkSxvm0YkYepFlUL/VSgQqkYdtbRc
rGVgtv6HaF/GX7hm9GL1J/8d5uMZEeuGMQKlMQnVuM5ReLF+ilwDc6UqUaHz+n1dtKpuVsYALU+2
u/OMkXJyCHLwutSZh7x2fBAf2nHilNl4sO1cnVMqinefh/tU9De7hWbB8ciIIwR838AWAHo5Dl5Q
UIR13nFlV7GwdRVytrt7EEUnj8uM/byk4N89vC+c+ylthPFoSZI6w1fnxQbKfj1o3Bx6qBa4wfUs
nPo+fkRWwA/sWQxEI7+j7bwH1szZJ6uSp4ULjejeCtYG6FHrQQg++QKn2efElTb+xJ1f25PrS5vf
YQJgeN0PCTMo2OEPlVbq4hBJ2Id+YUp9M140ucKsCcXtrCvETEWa5MMSofDK+GgWWitpKhDmQf5H
fuY9xGnKUnNXHHtRzxDwN+r+zFrZCFtB/014Z8VXWO+MgZPycLpfTrtoDIMWOADVWImNBWiR8LzF
mndQILq7kjfTubo8N3YXL3oYzlFjl2UIQVdXZqV+rpK207F//z48bJEXlycDxmPvzN0sCe6Fnmmr
k/acKGE2VK5R3/o+NVnFeW4GQ22yTLNh9AakEkHynWTcyzcbEws1yhqzeagn/r15z/HmRemgtG36
yFYHoXH16uU1n26qVhTD/pHq7rktdA9k9L94vsGVvqO8U4l/nCBSEXx1eEgEd79XFi9Ql3OHMdwV
n88e/X0xr28vizoor+/wU1ONb4gwaZ1OHqALGnF48c6VozYo+Oph7U4s2IhE8wit+x3BCODJBF6g
xIQMKP71XCNitytRW4jxCkamxTCDSbQc2iFArPUjduf72O4IPyPjuZFJIA/SuZowePHi4peJVE/5
wJzI6+7TX5Wnd7YD7f/9ivQLKFifMGXAFDiP3xWLdjudTMDFIsUxig3V+Dw64DMNMyj31rW1D3HM
wV/LF9GmwWqZQ4QoTGXgWX5P0k2+/YPOHXA4BP3C+5mtcXea/YUWTNqPTZjf/rBLLeh9nKVmIU2v
HbvLhRUos2YM2hLJnbmcflef7xHHYQ1EKi3JsNpRlxQwYwKTBiEEjt8ORQMkUCfpo3FWLEj0ErLG
QO7nUPNLGKCcDZE080yeTcm8plnvZaa7WQzegrhPo4M5vArQBDUebsckxc5b/53sDtwtR5BHhr0w
Pbu3JOr4w0+O76tr/4lhf/MQ0aq6p2DIfo5OK1c2ulK9Sow0FNedrqkWJXcDYbFMjR6OcY8yRpe8
HIREsfW2LIMhxZGoeBeI4tisFaB7b2N2FqAm8+H2YGHN06falcNvO6bYL66kEUCCkdiX00NkORtL
r9kxHB09EJZ9sn6e90bDHTXcSF22Vvxy02/XzOolOll63GFw23HGxZQU01XiRzpVihVn81WChEb5
VGV55wMt4fncfkkjvipn2nnMQk5IfjeIk/z9aFkbbJB9Z+GzddcGSnJWLNiitfNStTGf8DXYGo7E
oJcZoRZ0To1AJgBIC818z2ykROQNuPylPXfgiVPvmVFe36xJUPlgFVc2qeAgcEB4wQ+I9702mBk9
63OQMNtl3t/yIBNONEqD+O8/rXkH+4AyHV82lDqI14UqHKghcCOus4nJQOwsbaulJktxXSYeQ5Ok
Muujv26dKKAsI6kg8hQlakDiNPnlcqnc6/YEn9jat31Weo3BSGCQa57+ooBagkKbmRgEG7w4kliz
Xia+qibL5bA/CzXEL7EAe6tQPa2UkYZcVz78lQToO2HU/9Yv+zTL8ig0Y6TkjhtnOImboES1XWQL
BBDAfBkPlgU+2N1Fq5jGyNLVuadFmqZ58h9dWxUMOi/umYVO9xJmlVN5rSARETAmWJZN48XnNnhL
bzAE+se/tjgCAK28obKwEHXpfwBXbr9MctGJrAbO7vd298O8LRf/tUk9i7qy8YKnq3dW25mcWwSm
OjIXrenDaoruMIDHlsCFmjh/8rfACH2VYW/8MnKm/RYBeedA2q9ysQDYjKqLkqMGsFyoJtqdKTqR
LY0kMK9qrVec6MmPwj8VLgep4A4wf1PrqoDOBz5CtIiMFZhwDPzjJKikMw31RC7BobYWCFvMliss
b0XWM284u6kq1UorDkqXnWqjuOVgKcdxJGrL7UFiX9D5aj2BzPSBz14xcMcD9fwFWGtHwVsJaoLs
hC/E0h41LGWR/dGCy7XrW09SDXjX+3w7m9UEvxhsEvX6HBFp42MSHa7nzmgRyemI7zF1Ac3m3OrX
0raPfV+ZNcqAY1DKcZ8F2OOPup7tt5hWezBSnP2nrrq05q/sNPSL3c0PSkaey13qkHG29B4QIh0g
ApOY3TM2CErD5pP5+G/LNwX1aWGQvByCmXGW0JS8Db4tVmIyj72jypSNbuu/33qEqyvs3x299wl3
QTKra9nGK/Vi/cy+HoOXFWQdsBjmDTrJ7SIQaxbvqpWw8JoFfPUQCxnOVqlYi1DdGlBd0xugOy+t
vUPYEef8tMLFfLkLRHCcX2i1m2cD33mioiOh9ucZ+usSdrxFEvrE5srNdXiR4sYjseUJI5ipeVUx
hGArMRdOokUJG4ka7BUegn8awj8tM1/3ZHsw88AMc+YN5XF7jlnjqgm7a1seqGcIr+SMaXngYYZz
pF9B1sUhhwPEOwTdoGjugsJgERNLEVcjTajFCIxV+ITIXKwHxvkSe9sIk0U4Nd7VoRidcBn7bBMS
bAJ/wiYPYDc3Xdeab4cj2x9m36ViWqqDNBxNwb4LJPmNKYfWSI64WT6Ov2Z4+AqPKYxX+KuqhgN5
zRvJ8t19d//HzmOSmwtPiWxlrhF7axCp0L0qF90Ngguvz3SSX0tU6hFTbUN/EhlO0lbnsnEa0U5t
Ddf32cmr1VzFoT0ndclfQUjN3f9zzackfk0OZnbFppmCdxnCsALUD6OUbflPi8f7gn6ZIFoXK535
p1KJtf898DA5/fTRT2vXeOEs00JVqFaWcHlu396+WXYL138j+yizAqWoyOh0AFxUuOHtuEAN7puX
bnz4AoXY4hDQXvuPt+f/Uzat2G0GQLqYeBH42kjcbGtC4Sadthd/+nNFss2ciOzqhAhdlyZJ1zrR
putmGKaotO+HrT8f1H9k7SLhx2KnIsnp7Aox2CnsqKf/D4lrpfL5FtCI14WM7FfQ/5dgsUIjE0ED
3OygXPwuUZlnLdp+nSVyzK4JVunxXSmd9iYxlCU8ZECa73F6mGrOm5Toy3FUE/uG1JdcC/nv+yWY
MQ1pFEC/fLyl1UyrRuYoptGLVqSo8K3GBbhXkMJeWvK9HhASibL2u2b10sXSusisWcx+304DxO1b
qKLxt+ZdsV+ZwuNjjcJ/EhpAEVSwqFTGjMs+lCIM08aNwlx1xP1x96rkAp2IKmEkDPKDv9dB6exD
FeygrafzBWkwaRYZwnjwJKv4RhWd33sVXO3WCTzU1+oK20Ri48HONIOdtRv2EUEav8ie/A4zGgNL
dlZ8R4yz5JNI3nufkRPUgZnRu5fmXlQecYRyB6VDnt2q1wTVmY8MrxSkEn0snCGXq9l9nK8c/nOU
bM0fNwBacQVn9Hme+ebieBEjjt1O0s7YW5dAH1RtzDd5WEDwG9XQRYV5bEoxH6bhp5i/vjlSk03U
OdB4tuxHBguroDT8eNXV793JVRi18eiftIvxI177vhqaiGbJHgntKwGW3rY5VhMZaWq4P80wb8y6
UOT75twZTIuzYeRwGYXRe97YPokWzDT3UODYnMOOFIwUbm/Nt/XYRkRyKayQ1kMtFHlOCmJMAFV0
8GeLL1OmOOOo/7wejFljqTMQjYh183W8jZg9G/KsYkkmMt1ljpPfBR0B5Zwcjm4O/sM0vRMlbb2j
yyrYBLH2Ic+D2dIt6r8nnNgHGlNkmum8hff4RbRWSOEk6ughrrh++5zum9onCrmT9e6KWfdOKwyc
LKh3+ysADAT5kONL33CZxvPtYN8bdmdM3B7+X9t/gtopbzb1ODaWV9b/YnfNNVcDgef2eCGH0StJ
SfM0Mtwgvrfz9xQsk/0YDTFS1KscJ7PTMJUWt9571iv2Ri01mWbEHsfNvJC9yUl+t9/HKguxymji
LZ9L+PZQc9g19fPQIUNa3NeH5GoUC2zE7GN0oP3BoCaIY3jCExciWtpgsw3v+Ha2rWq/VRp751Ul
1YYxzxI4UcZrMs8D4ALQlfDUzLntNWKA+SUJq758+zy+zCjJJZ3A28rLo576XMk9WYBtiUh+OPZV
+00CGx7UV1exCdPpn8K9YYF7uZGQw/rIZ4COWjGNoVxcB9/N/K6TQ8NkTxe+9xAPWeaaMs34Ofar
whegJ9hK8YLomX+4gnMFkwa6XXuzJMyw2qDsQCNsgncHIQ+oE7atED7PR9tAojrDd6xLNqypvPor
ugM8s5br59YXSR9Np6x0XOBA06FYhiMWng1pH3tAy/6mwHMh24x7V5UZanBBoUV5IorOsoQI1CPu
4H8khhTQ8uR5XBjJ1GFHS92rM50dx48FXYhuOkx2fmYqrCFTxtJsBwKkvEb6reVj64t20+0obKtf
0lEa8GcV7IPR0IF+bW2HoGYDz2GlSofEJp7Le/xYA7VMdsUhWGUSN47v69jm1hEBCeoYZK+vdk6C
t7Zi06CsaGdVwR6NIXeToYJyt4HZVr01QvgJg/FD/sMiSMfaDbBYg4RJlRJY8591neyvOtiejDDo
PidfMbbAP74mIx9zf1G1ptFiZQUmWv8xaZBC8l8u7Pqdhmg61gIDIp/gRhI1hGVBkKjw4RyV7ZEE
0ZF4UglY11tHrPaSjyKxSuuNwjCxpVo0nQsPL0ef6MQm34WXKUGt/O1Y4ja14dUh6a9+BJbipdsY
N8T4dgGBrUU9qSjo1C7r+ODe8BxoWkedJv0l9JgUCHRjurhpxM/hb2WZnUQbt+SOwLW5vohzjeZd
QwSAck7umheXAOJknHjxhcoN/vzS3jX3xwU9HGy16mtVnpv+17i6I9llyBXsjbVcuXkYDiS7tbqD
CSVAX0LzzG5D6KQoKUsEy8zR/2lwhCqKHNSUVW3ajS4SCjnYn61YoqnRvOl3YdQa6IxSwviuU0S/
ZZwXqroMv7n7BNkAfmjbj6smAUEZ8Holtfww3bASEnF6hVZ5z2luCB1h64zvRn92PgcAIPiUwYiv
VHTNLBKhpJ+YFgtCOBcs6ihOg+Q2t5iuSc7N0/3pJ9wQeHfj0ph4+soCHWcDquDyx9RrOMtTRDYc
tDu81TdwuvWVqvMd0DOGUDRtzDH3XeO6VUw1JBOIFBXfxWdWm7CBf2gbiZgBLFqtp9QHySwld75g
jv7a+m41YmR+7fR/dc4SupB/l7NKJ8j4jnqa5Euo/1QSmrIJLAAMceyVJ+qeYsMkKnUYW1sqOmiz
mPqrqO/3gyc1jclerhWT5CQAtN24kKdgPP0A9uhz/SgI0epntcUnoU9KYmEwLcZfmkcwqgbuoYJ8
KiT08/MkFkhrafwHbol4f0v6MdfaUF/RYA9c6wJLTU/btkdAhSFosPCL3eIiVb1Q/DliGL94SnYL
/N1wOSNHU5be9lpugTIuUIGy1xNyBx/YP+WhziC7Z3ClgH7EL65GHo4c966dMvGHXPF6OYQq9TRS
soDXFQxHn3yWfvZa7nGHcSjW4SgQ4GnLAdKOYTfmtiWgk6hWzopaL4pfzpsNURBVKCAH1xkateeb
OjyftfMNdat8J+BNxi+Hot5DalmsNG7Omu32qSOA+nzRM3dAzr8uqif2scxXjMNH/DXsBlsC/wAM
Vatg0TYMU3G6SFIyCfuMRRQXe42EB/MubqZ+1Dv7TJoUpl+2wpq45IBr8zunyuvrlHUby/a5Atdl
0X7PALTsh9CLOj2t6W75SyA/914MhBZe8hyGK241+SS/OUjV4CUdnM7EX+DdOBIcxHPC1NFa8Wut
DvYL5GEP5hJWAUW+D6HeKBpdHK/zSxtt8hpOj8KcQZVnm3r2d/SxNzGz8mEc2ksaOqqTGcU8dl7n
tgUXVDy+tC6N744RYn8TnJfso8on3JXo2GPgM1U4Loah36zZDd6qKWrR7iqjnIvySfjkqVUiV+lA
A+aoWsTR8Uox4y3GB4GDfcZg8/FdEcgTBcMLzf7qA1hrNUAErfolrGqmNg1E9/PzfYSM0mpJZkgi
80LRk5mWVZrdOTELQ9HG9n0t+dooSsmaIUBtgxWmlXGnjKkyMwvN2f+ezJ92p9cqX2cwt8MAjbUE
7Cjc1kDnhkmx/YkicXtly023RFputlrQhLrWpbYZWwL3YasjGoOST57FldAw5ChathbR4xRWOJl5
h8mOogClrzV1xb0TafAO8KDDMN9AfEhBpBt9Hhz9EQoHtvvYqA1cJaR26pbuzAwjw7H3ii3RYrde
55sMZv2iog7HcU159OgIJVzTqrDaS9qDhb+QfQd2+4b0f4gLedNPL8ODR4yEYeEqgIfo7nh9G25o
gk8hwNZrfGud1LEz4fnR+rtzehKmF2S0nWSPoDyVZM7ak9q5rJ4zT2J+mfceg7o3AZA7GjYntwhI
QE5RN2C5n+hTJVoOUjsaROPBaC4QTUuPm4BH48+mg3ldw/eyaHsTqG8Lm2A2Aus1OgnrMcZtK7w3
P07E7CPHjXTE+GbeJIxxP5Yoc7M3QRDhoUCAPkwKAS4XAk++DriVuOO3NqyagmXTN36V9mmj+tyO
I8Z6DRWqVKoajIMKbIDqk7eIP9W0L8hLDvNlySnJtcqRlr3Ot4DYzOULLz4Ny1/wbBBJDegXvniG
oLDBBcjoxPnXCcrjs8CBEx7ykXBXkYIVkVmEOtHFGOHnz+C6AW4RH3rBrB4ND34ESh+GZcNzaw8k
gPN6hl9+IqGHLndBv/NK43lOA5lr4MpteTvvKXppYF8HOeacoS39j94+xUHbA0lSRyIOFmVZ1duw
3VWxOc9KUMyZllndwo0vgcvA02hZJkDnkuzQ+265xL/TFKN4OgINwcURP2R+YGH8lLPWL5ujMIOv
ThgpYsTLNtTLqMCxxl5s6gqL5mz4usbt3B7aZH6mPGAgSgEAqrrk9kYXxUNIEUwVs6cCpkboC4RL
oWKRgfgyDDBlEPpVR4YJziF9tvsUWoUrJw1zeGygMN7EYRynog7GfsnYrlyPZgau1MhJtz0hFkoV
n6M1zTvK2eJ3VNLk1UlbP6zyvPAwQRU4I8ikHgQ8eF0qJ5N2QT6T1Q/nnZJjCzs9RFtDeHNvxk0D
QTHJCfqHvh89eQp3gNRT5iH7cjaX6DJVB0mx+R0ZNu6WapZapasi0Nj9Nj1Q1M9VtMz8/LYmEnbv
OOWEig8fAckIMMSu6VbZkKNPsiNfnWggTXCP8uIMmcJIuk+gw0Vg3TSJt33ScvDLMdLoNEAqJsyg
d323IVjittS0vO1KZ6Fwz3RFXyA5F8d1QURgGsPjIbIrU8G/5AaieyZRKfvQtddknmYDwOHL1KTS
oQ3MiYhX/RFWxSDaSsT4bgimDobAceGIQPBt1afAL27yV4tveNpXpxW9sfZybPH3A8gOKgyeJfr8
nDoKS978eqNc2wbc+1SJtnmdU4Lmo4NnCmajlceabHfig247TTFbiHUDDo3h/kBEamvfAGIHvCb4
Tv8j32fgK9282Q3b9H0ggUy/+Gf1yvHcOgat3h1ocQLiP/MAH1lg+AKZaNpnsnNKOp7XqBHXdsYX
pB3TzF5UCJlMbUJa4ajMK+zJjcekZ2Wm/GjnQcCxIsEJr84qzHcYfU+feVR9W9N4MPMP7/aJKfGw
69XQ9Y3LTUlhN5AGYqDBmaJC5EubVc+kJFRFDk1DXtWiDb8MdVb+jI7bEXoiskR1+DnzU4+ZcU+f
KKcOGrJNourKwSuKRhml5oEVTEYwPi0rjtIYHENSDwydjiBIDe8N6hM0x0I57D2cfqvnsFw5POqZ
z+QNHJ8jqUQmqsUrtbgL5e+uJl1h4MRd6yFoLH0ZKFt9PJVbz40ohuJ04WWP4SmE9Gd/EcwZWxqP
ScEIfao4S9rxBc2CwKoPzE7ud4KiUjVTvITo3qlZzFxpbMzM6bPW2/yKdax876XipGUfDupXTiFJ
22xpzQYlpHNfdx/MXHhTenxPDw2Kr3F4tfp9k6D+n84PwLhP2Fzzahp2tB6O8445qpd2OEK4Nl1h
RLjkI9H0har0KPD0ZbhOIy4pFpnLeRTumYX4G9OwGHXk6k5MrqbJ9/T968m2X/Kky4i7nm6kb5LO
HNy4n1hMTuDtUXJ458ZalR2YbeWfFd6H8WJXxkiIDXdRhnYR7jRM3kkwUzhFyNJUwLPQnNtu0NGQ
6TvkDkfscoIxdy4anM7yiZI2Ib7jjANWhL37OJRZ+Ths8DZEgpS8bu6Ri19LjB7sJw33hYZZED23
3A1C9v3R0WHidgADxsZer3xBkZqN3ZW4axEmMuCVOuUTZaMWz9QVCj0j8trF25udisqgIoXOdhcA
PY3KU/+/Ps3WiaapZVneDXhhJCLARAAkEMLFY5a85VVj/GIaafbn4ZuUHL+dfnuyYJ77S+8zOIcR
6m0dDG8uIyyJR8QBRS3dtr/9UL1l7wULe7zawjNikeTVSnAj+l8ouQnp42XI2T4YlBFhntVvt8s3
bkpPLJUOgJQyqqHVLrW3817UUVqHbJ9KtdBYgaj2m+LPKfzvrw7iDHSgl/cQgg4mHnSmY7q5nChF
Vz7Hdm0dgJIZibdoNnQQvy2NxDm+LrKRGOaqQVY+F5npTo7L9UrBJHCR25iTMxNW5xhvMdwQvETs
0SPU4Z1OP7fwNAtoh/18PQ4Ekj7qeAsFtB4tJ0MzS0DMcWzFQ256oWEdHKO1PnbmcNKeCPFOMYEm
wgcQHgzFWiinc+n/0CugIb1uGNeKBOkt4YttHgQTSNe463OZ8WShu0Ac9Z8cIujdLw8YqZX/fOvw
q3T0UjUxhrsxFgnEFzgQR97D524r+PGHMnLzM/ywuQX7iwW6Omthx9zWJY4UVwjWqS/T91ovYn7F
NAtcCqg7hDppKKg+LP1331rRBMTxJeOH1jo49u7nNHDMm1inH7+53Brff9h+l4YdrRdAaZEpRJV4
tNW5UJznMMH4agVnpINDdX1k+0U8hS6BU9EDk0F6oJYsHdCIMXDWgXUmF8rE0EdaXx4KRGVskSW6
RMccacUWIZTaXl93jvwsSLMBL7yNcic3lW9FD5Qnxgv79V7qDcVzTIiQGZ/I6ZSpkvXiw/ez2dHT
7bd2IRjpeXmYxzwImCmFy5dUzXzfTz/FQDP/oMcTLnPmC8do/YrkJYvoKmcTeujx5ct0I8jZ2EgI
2ZNA4xG3O89zCR9+GzmHBNXcaMs3R+KBvjs2e2LwMPwfK1KplPWjrV01NtMUPMmFqOVxH3jsBk6O
+ciNukU9LKOrZklsXHkAfpL/UiAlNbeQiREnWKkcvCwq2mI0BlRZmOpjt751A/tD89FDcE4n+6jN
yFAyG6/p3j7mlMEoA3V2oXu2Qt1mkaHMgtrc1QbAIXEz6tJE2BVSb7G64rLQt/wKXHWyzg1NpD/H
xVJ0n4X9lGQPT84PyVCn+xWqyGx/TR8ZxUg/CzzTqe8fYzH8rbQQLnsdvzIIFpbF2oJqEKsWR+aC
gOWyJB8hdiMbgxHoEo5qkHJm2a4nhE5lvJl6rucBUeczrh5ZHu0CQS1EaSVNk5j5E2XKHZJdVWRu
WI7uv1wCSEfOZcVeaX/nPt2v4CiyjtiZImECEiTqDJnCfc4xj62wtL/vagdQqXngdAj+7poDxgNJ
FRsvqudJpMwY3vQYPp5DNRrJoCIsaF2ZpFGxL1TM5HRtGP8qL5wO2vjgnbJWaCZn3VtyIRQE/ud8
Wqm2FAAVObZTeQWbAHQ20cazk1lOok6U6Xdnxhh/ShqqLSqJRFD4lwiw+B3B3bBoGlO9xGS0fn6m
P9FkWTNo1ZpERAvVGOXklsbuz3iKkUbt8VAmz+ymOgib2u3rYy3NZ4fL9eytDWIWlWipCTmWz8Nd
CuRqeWz24BApZLkyNW3DOBY+xhqH0jfObfO7csb+gkfSNK6YW32iB8/Mo+hGGUDzy0OCA+j3v2jM
nJAeHR31oSQ0hIV0nwhX8aL+YtrCqtdH5mkebTxvRF11WtemfGQdTWvMkMBSGepL/OKAhjdTTXuf
pPtqujj6FX8F/m3LDctlwvFAS4MZGvbU/RcOFbsCCQWHM6ivr6DH+V+4O9KumR0zmQxsW+p2f6mJ
S8/yl7z3Jux5MSAJfXIYl3n198TfNSiG0jQXjc829hRazDzX5QkdVdV8AYl+/QyWr1oJ7y00FY4E
6yI1WFfhGNAeA+g1EbU53Lc2onjtHvAS6f47/JGIJM7MVZW2B33eNO9mxma6xrVr5RNJZ3xHYbwI
B9kCHTPx6kb8sZg6Pl/bXICmk2+ok8T+SHiKze5nF1Ih8BhjVc52ohPgyh+/r0s/Om5t6aI9VfEG
iXXREAgfQvysE67zcJTz3E/7A3Al7+oADO3DVS71/STZ+U48R7+ZSvRKpQzYopl1P/UjVUJJXnb5
rtbiM5vWVmr7UpNUbS/3EjbZd7F5dkpx+TixGx32t0ANkxXegpfw/eJXhNAw+eeMisuYOuYKC5Xp
cF52vE7oLDeUiSoINqdZ8aramjdbA5Gvul55bmEIt21+dQOGUX9V7r4K0xFhLFfyhsEnZ/YPCb1G
Nnzoeg3iYTugWbaWgZ3ANFdCAAsFuVPQRjplcKRTJp6g/fHJoMmoQhJj/IC+myLytzRux6WMoHD5
qutA/JTFt2QFwEJ9XVYVb4gfDp82joqrV0MdTDdK5Zx9HE3Od1TOVPkUXwY+0I4GP5eyT54d6QMt
Qts1FZDjIPZM2zBUBgvI3wYDIQso6VfLZ0658OXifte2d3KwFnMSyzdS+betyh5L9jUNbxklm6vb
fiQFzMjOYgc6OugiXsoDMdsTeYKmMySYDGzTkH4WGpkNDGdDSRzRn37zB44PJ7oy6dTF5K3tR6rb
Fi742xf04FEqFoJTJqika0Jv5HhRc1J2kmPy7+PDMnaC/tHLA/W5Rt0qzLkTPMPmzTnTxkalHjQm
G+i7RpaQyKbnO4iNrMGqvYCQx6deVsDS62AXCjk0SaXOAok4WUitdndATkgYFFRl7TbmfOfAdyM4
e2VGKNJJLPFZhYBIJsiNPpmUY6J8SqZw8PvMIbubeClu8I07qP7RBzILwMb957cXDy9LObl2rUF0
cpXRCKdFWogC9hJGfg2Y+ar44cJzAoFFgUsVHos3a9KTp9g6s/ZIaKOF0oZdCPjt+ZllqfX4vtSX
GTBXo3nf3L/UKqhZPtVB0r+3agX52IAZjZ/RvzdScE1Ab7+PojW5dhTo8NBrSKACuRsJu5dAcX+8
iWCnvXoRq3dA3vMb9tiEWXjWBRE7YTGQNfNyXXgorCOGwRgwrFAImN8bIuH9R7y6EKsm4+2WSy7b
1fEZIPBO6arojPDbe3jcE8a6aoLxQmI8C6micddngWozS9wuvLQyPp9dSoQPTRL3llwUkwICZMI4
g9M1OzH4NVTm3qe+u99fsblSDzKi9cPaTH+sv0uSMjRqMTAuhLgSZENXkWuZNwvUJiQ1AlUssntb
oyoeWVOrD/4y57F7vMcc4p+ynRTlLL9JnCDOqStkBx4le1OqMj1mc6jhkYNMjEptwyjkzMWAbVXu
FWecyRtzPXxhfLvaj7X5hdYwChhEjwxt2j8UPB6MR8bvFnFEqIz8vh4oqCim65jM141kQSUP6u5N
omIRXkikDr8TAs07DXzBN7CelNiWD2WsS+tXdIjD0OpQcCvC7/SOQoAPKDNjfGdxyS5nbfIbCQrH
tUYAPA1jUM649n2NbR+YIVdifQCjucwXWONncwZm8DrITXS50r5iISRFBEtQnnS09OFQYXxUvuye
xvPBUZUvPQ1lVDMbz7OQIzmkjcnqduoVn4t8kjDGpHReozQKCOcNnXqDpMPkS6EmLwso84q5UCr4
4YzycIAiE4UaOuK6Jv/4gTyr1tZLuo008Y+s/E2mGz+5EXkbTvLPb5hQe8FYHVZl6OQ9dL2pJNqB
kdb/Ac3QSmi1nV4mj2KN9Fv8eeVJXRV88YNFMOxGXncG0VY/0g8T68I8mnD79LdfykIweLGX1oSj
L28z7lUot5VtN55jHOjJpGm+J0oijQHSBfzbYjB9G4uwyVZqiL0OESsRg83qpd9G9v64uwHWyX3V
6L9fcUGjh98mo0QRPD8IxaU1sQY/VrrXGVkhIz21fgfOf9PFz15KNEmSyCewqMGmRiXx5koaNnYE
oERni1Pxtb/bDveMF/+Q9coBi5QIiNZU9N6l7R68VZyY2O79hEV5UeCaSpLsIkJLhAfqhNinxQBB
jrGKsZ/8+Pxfzh3kYDK2qDMcdLjyjHTcL1qY4YjNLnfXerIWo+z5cDQfQLdTeeIRm4aKgMPds7GF
9I5ho8I6nOCVjoryBOAj9+e1TXV0UOJimSKyPtp/9EI+CiHrVP01DVaNuHboHLUk8cqlK6nZqnJu
AVK//FsZIh45BOJPyTtvuqab2HZmIrrfXKEx3XnkkrzpGgpdHGMhAT9Ylc1z6xgM/1YQDnr48hpy
7Aum0iO0+UcJRaBF3pllW7qifKIMCvg0BtXwrGpB05s/wjrdWiivywMfiyfB1VYQTIxJj1kGvP3h
cfsw261s5Cr87ElfxwRfepmFHmhtvJaUEFoh88Hoav0OoePlbDD0lDYyZlbsCYoRqb1c7nd8z2xv
xANXl12Opz2b1A/tXHrhgRCb1CqvvMpMFlpFZKdrXOssTbb/MoEe95jGTZnlIyGkl7Z6nl8OhExM
9FrkCKJ9sUikv9ambmknR92+yKA75ZcvZJ9mTG4pJno1e5ZBl58EW1BemSOcGCLhtSUOJA4kEWcE
gj5wJ/9ewXz/WA25CracoUoV21zZI4WJObhIzPCvPk7cY/ymqa9f80Z7Yp6RZtYQCUukeEJskXML
n118oqvDl9g0+B6HKGLf0t204ofx5FhDcEBIuJjUrp+Z19JS752syyhfuM7+tfzArf8xVApbtDIJ
YbO1N3YFPjkNPZ0y8vMOOWufsPyyFIM+jIG6fW+sRwZ54pMYvYhgPe9Sh/9zlUigUD2E+F4UA5Si
bbp971CmLTqBGhZpif2yv2VqMKx7KFrYeN1nXr3fyMzI1STErMPL7GwpJb4KXN4u2P6WE1F3fWPs
eCNycWmNai8yUg5/dyHMj4tNZXjRL9kvjK1iZa2DMWLbQFQwUI9AorZyc+O+gPIP9/mT3SVdM84P
nUPETcEWT0uuwppRAcefzdcjnBaHaX1gQ4RynuSuBCBDCh6N2dbc9/ymyGX90fZz8SExH2VBBRm5
zZcr3sC7TT5nv8CoJzmVrt69rkj3+evK58m0ARDo29R/atmg7ldDXjdKdmbDvlp85qDX3v7nCesM
FrHnKif/V0RdNC7DeFbatMwnPBz9RpcUtxrqK8vGaLp5WhQBMSIHI46R48tpKE8pvLyrh+c8t1qD
87AYVxNlVgJhRD/yjJ5r2l+22wcV/iz534N6Uj88Yqx+toB/XRr8Ha458fIApTEKxW+saX70h+EJ
Z1v1FAOx91wqTH+Amc7h0PKdnFcBlXtMj2ssD/LENdQmz3ZwUPIS493edYJjgmirSkCqsJZo/2L+
SMA8cS1yds9yY+nrYP63DQHiQcdVRcEjJOM2FeIyqJBSbXwZWf3gKFqFOi1L1RAQsj+AKcC7ahRY
K0odSTbQ47yXZR3k2OpvTrwQ9L9wuH2DuCvrGQ3+Hzz1Ro7ipt7rne5ZoGo4OQrK2P47xLFMdlPj
hSLgx819vqdA+3UBHMiL1oL6vTXahfUEHUkDxPxzLeRHvc3PbqgXhKp8rZkxQ7RPMQbk/ZhCq+E9
DUlQzvvJAuEfLk4+95O4TUTl3DUr+vqVj6i7No5Rcq8/8OT+4MLqTYdV22TGX0igdJys6bdTZL1W
I89c1mJWK9905mgmhJ4Pw2SrvigoGkH72lp4qYRHQL3ZpgkBdkEh+Ocz6JbJCDwEzJT8owj7FVce
WFjrS46V+lBMiWdEkIwY5g99v2wNBwRn23xrEKAZ3UM+yUtOmUafJCWLAHDz1LLv6WZC8UV0Fs6v
nA3yE/60SbhAlR3z0XGKkmCqJOoSltWZx60ntZLDYUy/wiRVBJ3mog05qQ/EzIh6ndVjkRkMrtaY
KTd8Mdy+T0YK0l87q++V17An8faaTwWxy1nmM7Expjjt6mX+6jDBFypC8uIze0+c7YrOS5gsM8bR
RfoJ1z9gvRw4l1zhxetU24kI/NsJv1qmgLh0O9Kk2dYIECJQGo1IVBRkb97bIxB8aUg8dTPON61G
XJ8xfl5TJ8GHSCct4MukwgY12bsLxJKEqSh+a/UYDPT5v6DytBCEK1MCOy0D1Mo1crUsDjG0bHqB
3zXmj40hxhrJoAvq+FLDBp77X1Caoub467oA0oqZ9i9GW9Au+lG5ZsOoL0ZWfX/xhmLf4NroddwN
QYf3/cRx0PCdXrFzm2F1Ee8nNC3wsORcbM0eDANai/B5J+osvfqmHtQQLLEWV9ldFz6f1S32dKlZ
q9IjGOZ3sQYW+t31T7d94o6Qto3QpRbP6TH5y/dKiLMB9RFoC5DJoHMP37FM8WJ3ef6j5LhHGuxx
j9pBgXPYXjqezlVTIFuKJjcVzTa+sgjqmnNxPIx8D1vxPFYaMo2YIAQGe0l/V281cKSTV02Hv3pn
5fZP4ou29QFUDsQswo9/xeRcR12KHHeYR1LpTG4X4+Ho8/seWhOiiDmWSNUNQQVmicAB4r3aGB9W
UJVldnX+SwZyRMR0EwbIoPOadXW//AugoNCIhWWT2PRb9iE1lcZlO82BsICEx2RuvKjDSMnjoAkG
bymBIFJFJy6RNZ0dLaqn/pawc2m+vtOxe2Yq22AL+VP9bW3OoXqqagv/Ors1CD6WyPTF7NjcZOQk
lGTqkfi3N4h1gf0IL+vuxc0/go8yNPzOPMuTKXiqPjB0q0zNZLhk5ofmjnPA94eCSVMoypRvM+3g
yg6BTlN+ZuMeGEXlWjPxfX3yYrVd1cLS/fEuqnPCeM7IUzDaBVN1NocW99jCctgXKMG0VHSXzPEN
6c8pqiDyymtAeWoSpdazQuFdRqlBVXFw4s24GyKLeOUNR/u+sKWAp+oMoTHIvTMApZ+LzvqcNmCW
H4IAJgTsfl22KhvhK2vkixftRktS0T1konUZlX+hp9IigeqONfLfzh9HhK6YME9aq5d+/voRwNLG
nmuMSgZnSdhyBqO9C4noG/u79ch4ZZZdsaVZFe+ZZZYFuLfQfG1n7fW/cFZc7z91HgaKPd9o6YSn
8CTTpCOMOVesvfoloQ2WJPltqzLYRJizT2ejm1sAhe1Pfx6HfWMnFV/o+aKJb2eLld3e64s8j/H/
xjd9SZ+Y94c2kD7wxWxNjjUcZLgmZhHAKYI2Lj+ccmu6yYNT5+wr6ZmPm304RIiObI25em2NP+H6
RIL9hakuDx/7/z0WHOuY9RIDdAcWztmtQYPNLz+/RJPffENC2PPXGFUFvSPC/ArhephJRTb8jgCZ
dcc7PSk7UR9KqpNcgGXG+pw8w+ZtFhQc6QZENq/HBlGgZ3Xh8CfNcowWG5knEO+lqscXv/pnuB0k
S4Qh264r825mGHc3ddp/xhzPmGVYVuUN3DoLDzX3bNRTpu1Y8MhFfhdAQuYOY4s2wdHSnmHX3mg6
GREI6OyRi9xN/Iuh04feB5qZJUIrAQlU/FVzGNNQlDDjPLkTvLAPfNKejlTCiQeW/akUTu1Gfjj8
zOrL/8K+lkbyRkwRCaeOq1Yuzd9FoQdrH74HJuIPcwe+7MNVN7loB+Mcn9uGOk1+JmqF3s1ql4lN
HqyLdh3Xrx7qaEma/pHLOc5G3e+qXsoVev27fRYk/YvoSNc33f337h0oYRcRESkgqsrEKKbfRMec
avNLDNhzyeBWPF/Bc2J2iLYI0y8YDlrgijiUoIftgpsXS6MYw5LuyfaO0JQT1eyt3HuNVWnrEOGu
ZuF7gF1QChPzJeUm8vUHwU9nG7nFSWMcccs/3g1EKEIXxUswhU9ZGnQPYF8Tdx8MUU9ImA2tkcNW
aqNMoi+vw+LvqgaeRZ091gZJNnAV420Yxale4nSj212Q/kzsXhSIBv1752BOwvaqtdtee0ztZAVs
KYSs2Oye79ZG8cpMOfzerXWhpm7nOg9dSKQ5cFKcPXKmTmv2eT8tY2pLeuR3eoYuS8qykRlR6BSg
WQncCqW1T0ETc1rF9M+4IsZtF6bxdWsr+TXFnyoeNAI4KgPSvDRfAkioEX8+ZADqMYCESxvSHoCQ
DiL7HbKHSk5rSM4frzlKOXzhTFpSv7Knw3l3Tq0dHRaMnHoUBp9kE10m5CksxwECno5tVEY1bgqT
ohYqTrxA6ohJLwGAcGawLMirjYFdVxZCV717XhRSWY8QvFzH3pubHpSjdmyfyZAoppt79k8J3Lry
Hoof7y6+lobbgPTkBwkmgrETYJvvdKcGHI+Rb/nU5Lkrfkc9k1wax2BCUpEVA9fGZoh+QIt2WAOQ
nPc73ubdAS+VlZHbCOzuE6RY8rcBMc3gjB6Chwz5M9t4I8Y1Kk0Lc+MYveJgP1uV6rm/Y0HjUc5l
P1AhxA6A2RXQVyMpJKs9zOAB2pfPcE/B2KaTq+URTvkDPZhUP1TndeFtlxT/ZTvK+P93bR39vfqt
RDSGmED6I8sPjXR2B101XeSsIGHHkyABt+GjaXzmavEStIGtJHQ+na6kv2iL2JlwAAEppv1iPEKQ
2mMIEuLA1OFDh8XT+cLRm5ncKbkIImPpugyQAhstRoPfWobApahMFZ/y0SpwR43pTMY03sobCsKt
pQr8a6QijZ1wsxEkBIakRZOG/j9BUiOKR4gp82+Jd9mQBMa44Gu+zlevDlbZPqumrLREVVYuoh0I
XxdDRvShYi+WTOdIGmjWG9cWiGK0pq3p4i3YpQ9LYxQcBq6VwWoyKvXvW0TvcGsWCRpRWtTQbSHZ
6wkkcA1EvywVUBznJalgKUYMNe3Y/cYF3DYRsfuznqgdbLCqNtyPE2GIVhxgJHplLJBvh/6yWB2y
LcueLFiF62lw/A6hNoFSDqGSAOJvmQTTckUhouOkDU6vWZBmKeYP9WfE+nrUz3ThYZZ0CoEty5pG
ukshjvI/5FYZYqMPLKU5v4La/+/RLEwX/D386StHW7NeHUN5f0EDLY1SZX9WTUdrx4Lr7+C2qdga
e2mLtU8ggUc9l4TrbG+0+nHpqmJF2TwmBos7bge290+/7AOWQUvDoIkZ854Hf14HxN+F6c4FfWex
8lhGDJote1WbTe96LpHZ/k1bRS2wdA4U31qFfeyZU04HvL8b4acNAaFJRKejS8oEDEM+VO0ezJUd
wFTvm6pw9SyJG5mqS6NPu1rhN6lFoi7FX2USXg4YGiKZPWEKKDoV2/EuvMqyJduX8bbBRmRsd6zg
9ojuiSBoN8d8T3lpbzxMwb87yaR3E6MmMuWLrFK1EkqFiIX5XmLoSsGi0bOg8fY47IF+M/PoEDhC
SEEdubBD84JQ/M6PdBgaXNcMttdHMUwVE6hnSJZg3O7qTjBxev/xLXEEFPBjZjuIHQ1kwCZaYsZp
SwRPM/DU1zWwwXv9YxYC4+n1K+fNrYxG6i9KQCOcwjWZdOJyRRPMPRDyb09QQla0I7Var3W3vPz3
pu7z3qsz5fK74aONZSaXGdb1FutXYd6wRJBA3ah3f9vHBCJI0T6w/5hzLVqNSo7WdEbtm5T1dJQY
PV9Jen05cYhTIkFEyjn/rIQqaZEiKEk1Fl5eN9Sko2A9DhG4QED/gffNt+603LnHA/hme74RptrJ
McebSlH7orlIWIbYWgvu3l2pCjKXa23LvlqMTm4Y+2dsYL2W/J8g4ieh7RSbAYGGyqkIjzOG5DvU
zdfmmtiZ1g+YoyO70cDy2ounpE6Cbh/5gVQA+zEtYgIU6NuEn0qeMYTm9cZWgay7yetgr5pDkXj9
4xd29SBeQJLNXkU+cesR9jddakV4iZ8C3UHtP8GBGHw+vu8fv3q+aw0WOyLRz2P5nZbkbSUvZJ7g
0X3+oHyqIdEXf2Vy/zRMMFQaNytxIFs9mkmwptWselx7SO+XGkQ73JYn3RpFOLgiNCzuNnm8c9mM
d8BL4h/U1Ndume5ANcH7GJGc5ZDeB9H1+3tggfo6Zk92OlD9aoY+i9Aw9wqDzLE/oXcNTuEddTLv
QoS8tpGQKjCi2Iu3sZm8NEd4/zhrUBlZ+x4Xj+vTS7r0coiW8FCJPkJkbO06PMBReK+iycOHT/DA
GwwJ6A7v7ykCOqY/1cUJWwa6N2JyYYZMtA0JHG0B1A8mfREYVrblA5pScObIKWq1YF9dMr8e4EuT
3kHYx3Yv06Y+XkO58yLOHFeDAIJ1OiOKcw8+IUtrvc0kZPvdv8ztBkHYivQ9OYhOFy82n8AOT+S0
Iq9cu7kGz2fCor16ORhtotMoYDdN9f0U00cNeEcW0Mg6aijPWfGdJLXADV7dkJLby60sU8ctOu7Z
/GMGatzI/AW1b7HLGpZ1LHbrpS5s9eAyNk1GqGVCgKey3DSjo1GIc1ZyFNiq4Q1kYTFzJpOF8JMh
FbL5oGkVskwX0bTIyrxsj0J4SfXcnElWMZxP0zH4qKVa6GhDnLUfYlcFCG79bGBXqXlE/NsAuuk2
d4V+AjbY3JUnIEyFfF08YMTanFwkTHDklTflfivcs6SrlhaHtSwR6wKM1XmvZuomBiZcOhkmjBwQ
ZQGrqHlizjzAoqg/j6HaLRUF88EebAVtijsX/Nsp4ME7I06PjyEPQ29vDjG9XunAk3w8vWI99afw
G+rWPmqqRjv6Ovjc3r/2G8T81cA2wcuhYEXPmw7ejANb5/4mhhwjt9wjmbMS2vfJ43CE0Qg/cZI9
ggRYPkW4DIbR2ujuzLBNNM64fU9lronvS6aodTl2n5sMR198v82eq9MHirwuly3JO7473bPLEtqj
rVrT5S6A8TRS4xzH2uJW0hDkZPCmFSNUGMfixDkPtzJUmSPf5CQMTB3dsWwLIPhErkFxAZLc7nGb
w7zAFc/5GJ/I1y58NqRl8IFFofAgSpZzGiqrZfqsVtp9HQVu4usUbf/SDUulxbSDbRbcOdtamYYs
VsQFbSSbrk5GaoC/8PKCfAa3ZkyGdWfrU2kws9BZ2Dr74v/mk1K7JvkzB/guOAFnRLe8ZjoYYa0r
J1xBDm177GjY2TmbWySpW2G2q6IZX6KOjo3RXF+FxlB1ODSGUQBvqScWm+kuirtbLTQFrE0TeVpr
U36LyIk36MP13Djwk8/e6wogDsl09pD4GLzT0gkMSqMZ6IOqG0Da0QxKbaYK34h/GJALSWXQlZ8B
uL9KEPi+Wd3IgDBNcJavxjpsUo+YowubzCAgVB9jDAPDh1OPMkUfn2JDwnbtM/CvtIwJUte6JkLI
70BecRs8O+kX6P4X+LJWdFoFwnvtlDH57JEZqZj7bNU0u56McVJ5IKBuEuuDBWLeKGvPepqsoah0
ypmQuRFM2B6J5Cz9N848dEayZO9SIj+wfnfee09GpSxN59/x75zzAzXNEbRFqGxlwNBE/MzskjAp
Jp+8+3qffF+phm5TdoMFeWA2ctNv3Nv91nzS2sF6Myk/lqzX5A0Yr9brcG5ZwZgv0hluw/+AAWeq
0wFX89BzUaQD54obYvoGtlZl5crDQKyjhaDzVG8+pWSrwFAJsAKpL8MXtpTlw04bO6b/8YkJw6XD
hZM9UIhsqah3brBKs1OnjEMMIf8U6NSwTpW//uB2J1bRFap0COwNprQQPlnVxz1zdTlQKJS4t+IS
O1Synj/kaX7ULWqmdM9MUh/QMIHRUchBCJuiiFlCgUifQO78CC2cppp053fDiiGcYDsbuQls8wck
UBeA5Em2hv+6BUnfJ114I+HfQyQjZ9MK9/fd6XXhDqFI7Uoaaqc54W+7XJ7FOU0Y+fqPO+I9qZ30
6TBuHSY0BWOCA3nKDhKQGsiYjOF/ZkzcENwc2rtcLES1Era6uMnQfxGViaMpUTPeICg7a64cuE+s
FnhxIQpa/cFn6GaVMNw8cuQhHB7tJIX3f9YVPjkEl4faNi5fQX5ELeUgG+6H+Rn/7wGFtlYvzTI4
v/cUkgnBIBsLt0M3EmnSUrX/y1iOBNGLFvHHLYdlBj2Dp0TIl4ea2dPAM5FcqqeFD0MFLcG+9HJw
bVDJe+e/ILQcxA0L0NxIT8m4twZQpIr6Jkqo8uodOCcBCzzxg5Te9AA8KFx1mK3DZxwJDBdlpjwa
DZZgp7l0Fh7zlPiOBh4Nud5BGZ1vw7WBfdFwuebQtaqfVhCQpTX2cButwaVzbQHmE+vXZvh/7pvH
U8ZGDO+UmNZmetOKIQcLYRTuTZQwofynjmASuA20N8iDvFnyIQtVxFVBZeqMiX3xCOLP3gEmU3H1
S47USE7MJjENNQ9mOhS18Ra48Sh14oqfJ9sNREe10bSVxbHsz0X9d3qbpRLcUq3TUDUMpVAySnfV
R/2OMu5gqfxi2s5R0fXzpfgc98zpr3teLEubp7jorH7SnU9pW9r3TECTW9EDZX+hSbpI3mXOUbXI
LWZhN8hgnLqvX4b5vT1G0TM8UahS4dfnkPnxH7gXcMa3FBlSZM4mz+PajaOYc3ZOJQUYOJeKbL55
Wt+2/4chxtULVqEgoqPrwWDWQP4SqUjee0NotPetttcuQ1qcNTIRfXo4Fa6dXjzUsBcejkgosG4v
bq1+uvvsjiwoXNgePXyjCil7hiiJDajKleXYQI2jxYrW0jYVbnD9u8inNattHd2JYWspykbGVilZ
qYjWeQM+7BtMWayT6sGx+dI/QAIMTtAf/GSlP29g4EbW0y8IsAYOaniKfKR/vmkerjFztXQ2MVJ0
NXTNH+OJvtLY3S5LuIksJetJwhU9IJbYv3Xy/ZW7aTPiqnlubNLrv8S3TX3MmZGtz7v7b+meyghE
jPm9fr79CsjYSucAwutHXOZ0FCS7nUwoRZ43MCce6xMZIvv1kb3yrL60erfCIFw4e/qiUF7Y+IBM
0aODPdTwDbO+TfpJoznt56mSqMeXQjdk7F9x5S8gv5CnqB8VF9VDO7PNmfmVPlqZai/fUeDvaKfp
vAUdQyv2ODoLBHGcU3kdHmnbGadS2UxrvMdC4YpJ4dyZ0itThoYAkEuFeFv78KyTNKw/JWoH4N2i
jM29ZITrA3pGfF3ayxYXk/Iw8Bi6la3FfgknCcphxfCEEIIT5Ti3yLs+Ad97xSco2pSh0gs6XUEf
t5b7cC0fr2kB9ig/61EQAIn01pkMutcxBIoZz0K8mT4Xop82K50cwOiCxefOuYq7k8NqmT7E+5Qb
PS6HCgwh4ErDMV/TzFBruloiYxTkwRbZ0SBqu/9s2dwM19UQ0VuXBSFV/9KDUZQqmAyyXJp15vcb
aSeJyi9eYgtJoWH1qxTYO8DC1UWT1pqfRKRb4t/5k/SOodYcpcxb3BXGAcW4n7H6a8OAR6VvxvQk
NPu/3Xsl82aTcbKJDVBXntx/ONsBx1ORj3wmNhjTBrQXxUbBcUOP3yHPiVlk0+frZ3kkTY/R5XGM
TpOohIuEhQRNeVv2YccV4QDh0xqvDfNk/LAEXScRgAzzEPCSYdjkx2Kgk2Oq5W9ie2Fib1u8a3iO
WmvrtTapA9HMHFFiVYKmEqPsKGmFFJKN3QafC6/eNnuV5s5ePOybX/Vy6HdXZrekVsgvwKsu5GVR
DW0XABiTRfw+JeQ1Iq9tt14lBCaRFBbDWMysKHKQGgq4kdzT/hyZuIyVJs/bE8Nw9MyySw+DH0tP
YOUqmGwNDNOY4dtWCmWas5fHDV0CdvmoanTV3REIgpAIYtJ/cdYRPEXx5KkW13Kdas0jMzjfK5JC
PDHk50yHz1x0a3CLQ2g0n5dZ41zVGyYSfhXTj0VfcjD8WwzDXUkXT7OJDY3S2brCLPrARkBqtZSF
5qgu/ArG26qcgqHkm9h22tS7L+lEvsKLUM8r+Nhw9WO87RBtaBQToO2y25lYjsLFf4XcJf5If3SP
qAjD7+udguV2ww2q57adjDC32PvoSUS9uzMZNGOgZ09KxLnQh4GOB85y1g6cVBW3GLehTcWuMHmR
6KOnEKpWCy/KzSMnYCtrfGsbelBZkdZlGlUWK1k+xLm6vW6eCOWDNVIYLvtErg6YJXB7gZi08iEv
rVLywB2NunNqYq9K0UzwmJ5gQPpy7Xu0Hd7FdwFbnUsvX9c9UJSz7bHuTpggf0cyxloTzuu4PYVp
njkEOLe/p3LNiYU7mBFZMs7AvjIjuJNnqXCI99a9KmnOY/BaZZp9gHaWPPAZeV+i7kR7nuI3infT
J+JeYQwzhq3lo2V9f+5NadHEPOx5XV0eJdkkIBUmV1Hvq0ZiiNQ28hwpbvP/vlqgpQEty5/TJJdB
VOHXJqqF4YH2DptT2nflTU3nP33UPSj4SZEAOHE0sIdij4CF2rTbub9J7j2rIYzmaYtCKiIVIv8/
HJpkODAK4hI9d4+vyxB/J0pP3TmzSRvKdOQcK3yikVjT7kWZ5mEvg7GYM3OoI1yq3HgWv0uNksRg
Wc/DWjTBSGpy+qM3ih+YMkIWnYTp/R3QOj8cKffij4ASpRx631o6yXHXUN+EpS1F3vBeExyp12/c
DLA+xRzdmPxFkpKbpLRCi4ibF54BNjIKwV3vwJv0RQ9QQUygw/Ejy65G33anrDz7OvalfOiaGw5t
c6km2sLI5uxdCcnwLms7JRjZIpAcdBX7FDGFq2FuXDnk5mzgvEW8joBt33lTwhM7Jyyq0pP62LkL
N+pZG3nSyVw0YzT91td+h10LANQTG3hJI1LFwXxuPT2N0YA9GU9VcfyfLPrqb9mDEvvzuBTt3tep
mH1CY0e2zNDfTa1/6wUBoKz3Ymurb1ier1ZtNafEKrb0rsC2ruWf42Db2F4He9rDmmmXJKgJGuE4
EM6fW5PJQT/ca6NpkfuFaxn1EFRuHodGbtyeo+EsCRsLWvFEirj6YeytbWCGoTEPEMW/oBueqhBy
yxJbBRUVgI9bl4LwseB2JeA3CcfirV0T1mi6fgCb9BAHwV+IysWNF6JiOKNQ0H3Yo81RFCTxXKHp
zYaa7mLpcIXQ8ddi4MtCgdMGWOwSGv3nLUL/WNDXBUKGnr6462kdKX2B39GKl7YrwFLh2b17VlbF
fVnEK6/6A0w7kQt4MleiycUJbwua3weEEsLMcma/MF7Rg20C0BQmoWkCxR1Bg3VQKQ8pqZdvioBQ
a/LWG0hWIryjGRcyuQ9M+cVsOqoPkeBTA9g9ZDU8r6GCDj3298+guPBsZYNlgxqjs+ci3BvZ93sb
8QCJA/+xuVZWtDWDzrM2jQmtUVLjMtloYSKysnjUtbChsXAbv9F9pMSe1kX7Wo9M4CQekE+Zwb6Q
KoUXGdfqWPiEDcz4K419MeQ5miSg++XCSOwehtfJJnFC3rKrlOcTIapzs0QZl/JuHJBuLdCHsM/U
DjWKC+OiyUnzLAvav2ZzE23lrJ+y3Gg+umWi4fXsqbZ1OnfjKUUZbpFhx6PovTe3Lqc5aGxz1ut5
sIvgSQn27T5ErZLUjLFlIvNvEEE62Bttl+0OxqSjn9XuLJYOo++NiZ5VfaOSl2eD+9yAvdIxJXPJ
4b85O+ky69DRtVOHC+3y8qqgTDG/QHSyx7R7ajEYsvJLMfpqdRUSpL09U3SSPs6M190JIzGMBG3F
ofAmpikYvuSQt2hIisWDmO70u/affJUrY6aByLLsP+IS/WjgHKlXJN6Adsscuqq3BBTED+vX6SMh
MrxHMOYAucaCzOudZ7e4LqucXhXgDdwnXSjG/0bHRgv4PIOVoyGCOGON6MM44YxpwU3ZJgPlqzK2
baBfMJvnC0dlgIn4xpuQKJM1r8GL6ch3iygOWvnBhLavJ4nOnTttHvW/7lXRh1oABHQV/pudHe6Z
HuCeMGIX82GsUT116krX2C7LyQle6KCrvXHFb+y+X0Klr1u4PHucouSQRSczP5q+fSh+P35G2uIU
DBe4OLtqMnoKsKTBcb+ULgDf9JhoUaMxtkWXLIkAySHtJuwJpCMKXkLtL6x0E5JMtrZGV1HEnl46
dT/cO+HYnsYzURdVKvljpzT9lH4nV86FiRbFg+M0xNaRJN0VVjfdtqzpOMeJcyXVQXqWTjxTD3/S
5O1HAiMVmyipd3hSxCFk2S/OsP+3pXwJqMfYKCucECBI2IckfdttWH+csUGydmDV2YTAnj139tvM
gOLOCLdOA9mO8OOKmMb299BmnI8OdlIJZ3usKkP0mZgl2WyDcUk5eCJd9G5Mb8p39FxvwVnZtN5L
j9tIgicdbN3qigIQW2X273MmwmYAMIDw39NcaADIJLDinOHp7kXmL7UDQruVQ8WODzqJM/ynWUTe
DiYoTxZlaOQRJl25cLriQVRXmMSSoyyN8CqBIACfP/RTku1bSyiBRQIkvOgrLDAIIpvJjqj7g1MK
OUXeqgmbefMYDSvb40Q+S2jwGXJzptYycUokPAFkNJzgOVktNWXBkyPQyKB8WPYz3k7JZ5vynIHJ
VbXWcnrHn1mUPLmyRJRdCU6DPlR/xvBuBBjmCNGngu/27J3jicZO0sEfSS17INF4mV421skEglEU
PylimiUGRrF7/q/r9nloBtL5RKD1DkobGGJ1Z9cabC+Gl1XVgaWGI/Pu6OA59d35ia/CH0rhzzFc
PlJRrokmmTHa4j1z6runPgdAx33wzS3CEyJRHjRRkiWxbaohCQgV32csflBTL19/23rbb4V5Xonz
OlVbhp1wS1isKDb4vEx78Y8NLGllH6M5IG8kabraPSeulcySHg3qVDwrUrC4EB/siJ9Wcl1nC5Mx
/4mDwLCsoMUl6o0V5lsjIocCZJYfEUZO9hFu/kJrVvXQxqMjuVliR7j9QwaXS1nvwTMmO/oaTtR7
JE04fihzt3DH/n4LiDikuqzdevL0b98XxgYW7LzufsgY8k75aoUDEEtnscS8YF2/uV3VQMD18T0h
9B8CT6BJ2enkTLd3mst/6AbP4/wfidy3plf1tmkPq9g8t6AcKSQwo/+WgRY1wAqnHmJCRCCtxgiP
T8bZhjFkgvIAaJYPXcM+xMBZ04TCEmlEUyDAKubdZJAX9T1PzkCUZhkW2wkevGR1KPzrfpG8eqFt
NVJcoW6Nm/syfScuIW5vSWtnE6W+GM6a10PufGfSRFRnDwYyzR2fPXwCyaKx1pU7cZzlVj7fPh5m
XjJLKALwcu2m2P3gtGiVVNCH7uY8ujjbegeDOcn2B4HUKRueIwU7uEB5uQNKJ44d6mB30HoBrbXo
d7E1vVvalEnxly+iKnpWkcsA/jnkjiRR7hDEZf68/TTsZ5FRm/RF7oLVW9qIFXwnv8L8pqA97Is8
zEvlp8u35B8gPDKy+F/Ghw0X+s7IKYHuKIGLXW9qR7FMoOQUbZsMcZMvqM+BMMwtpoWv4JBJlmtr
u6KuXij9OD6QHdtI5UiiSybq7zKVKqIS5aaWyvSw+yVeYDipWMD8C4fuNwBe2sITjbaQOB9uyZvz
HpSJ0Lr46NAUB9NEvTB6v74DTFvM8HvCikZQKMPIoyOIpKOr13oHfY7eNcMsXLZjx7gdBWmvhjUW
S1z0RSX8XoCZ3BNVVIOUJWJ2PVinUv3Am8dIMa9ZGTJGibFCO03T3D6C43KwwO04PlAyS509LK9m
fJnn43aXIC+FghMH9RMhG447khuCpNRejKfVvFND6LT6lJHsaI+6fYfJFedspkwexae7UAQooxKp
ef5Boo5s4VYl02fHBIFebXzlu2tySG/RLD6tUqru+y6ODAo8sF+4hQeTuwahsoZum5IxRo6U1h8m
w3g/oTLMHP4+kplJMtURytlFG9W+fS2GOwc5gFR8PSth6iZIbfkS+59JRxToZwJsex6aoPNpZ56L
LZL51U0oaXyfcaY/ew/A9ISGVGZgFsjhsMC2xUPFlbk13XSNN9FhD0VjOj0XCJa5AkB9pT1+t3Zw
S3TIampJz/ukviyxZLgX0Sjdk5en6jl46ONLEa/muua9TYfkClc+1a95oIMHcPxy6998wiucHbBR
k4hM3ixDnrNWwugKzh8IKULsNKTA/BwAwlX9NJZ1Tm/dTsUJ8BXv5rcWQdt2o01+4nsOTmomEufT
x2LKkZooAUAWJuZ7DVnMZ7dXjQAc3qtsqGypyttpU74M7Fz9Yprx0+aHU3DapbRpKNJ0OM2zAKwJ
u0/wmmAOD1QHa+S7v1pnxpOeMg+3pbEY/kbhJXt+IG63dsGbMkRDSb8KIKQuXgUylRgH3xALugtz
Z1T3H59oCmzJl3mxbI8GAugBhw+2MMN2hopdEYLh5Otdb5E+KPFBhw7wi2E26eEJGgAnZNTSaDVa
HQcpVDfuHyWfK5MdzLjQ8mQZkmdP0pnwVLO3HZZl/DhouH8FNRt9YSNKeHfM4b3UmXKMZ75JEL7D
VieLdqsLAl3iE3foG+VEdey7D1YhzdW4Ht8RhLwARqvyJVnPvvgCcribH6PAJm4r08Q81p74Grgf
6jqibMwI1hRGklSayiorX5dWdWs5YzaW4Yl7u/FdpvTivnHhdJ5NraPMUR7QCsTQi/dCOsndXaTO
AADhFztxlT01Vj3fo4JtQUd5VmZg1Jj9XPmQtmhWSR7hDyakbHXA36i/ZZ/hnJrnz0KxaTa+iWHF
glVdQNmlxFBjr4yDMwiSqcmeOIl/Qh+teRsbjQ2dq5YuYL+ajhp159q2M6sh601q2Nw1eInuiee7
GxwxmFZbp4a9wB1cx9BM0xnUtcIumQvYH5CmVyUCAfLkR1QW1ub84WHvU40e3VLfXjZGukKOCset
XBeBF9fe5TwVTFLeh8fpIVhCi9nB3qLUa6tQ10iwwx2lHaKFL+67JdyceDpKH4ILzZQUO/ydhO5G
ijUKvrnxGye4SczdYjv6C7Vwwy/0v/vamPYnx2XHv02Qqdc79RPBpPi0bvm4sljwUitywc/Af2Rz
ps7LQepx9yR4NDVvnpNzEkxKDZRjzNmL0rtF7d3PqAEyvulZRH84PMcOlsaZoHVvYoEWr+roJEY+
IknOAEkmvC67IF0/jVZqO8q6wxljsiUrSyuf2kikgDv1eYe6Q6Gn/xc581Lcvhz99NmLq41BoyJQ
by6IKUOTpZz6kg9GxYsZi9503PvBwQygOG/d7KOx/qnwXEEdJrdbf8aK+fKuG1T20CFtT9TOous8
1pYvU3D6RisbjlFnIGQRPiZQAKjGK8cyWbFCNvTGc+Ne82I2G31Iiv8T1q1Ru94N24E0SCPUH0an
49dX9wF7B0xAjzKNIGUwUIuvPJAhepsn+CMEdPLTFkz/UDUagZyjxBM2Z8CeEtFIRrdXXAWLGZQR
luP5Bx3kuKbOsQCsrUNK5Kh88konfRm4AGgP/Qn/BQqwGKa0dx1J6Kr1tsFZazaa6Tej0G2EAaBw
6IXyCbekvUZ4bZRmS+ygBbj+hgAkg4qYPnXWZjRAc31p5qQ5pk2RFQNaS3EaVlq6GYe3/CEpm3IE
oDnEQTTWGPrO3RyUVxO2nRqyw+2+jRF6rttxlt7chhiSegjI5Gv95mdx85vKHvXjp8omZ+BnQZ7A
MNPwHEoV5IhLadWQRmZXxBZieqcoIC+YIRX6k+06vBKgYkbqc7v0oRe7X2ec8tAvpIhAIfr6ocnz
6dMIfgCQpkojMyxRZgQ7TSaTCL7bgiqtoL9bQFU2HBzaq5a/aVE/ve1TZ3lNGiu2q6WdZj80WnD5
APzU7VeF4/PFbuv34FW86d7F4zzn2NOZS22ZPDDRu13e8svrTHgZPt5ZaE/osErWUr0Fh1i5dOYj
AAcaVkHxMsbBfsap6JhTrl7VPT2Zy6OEzFtLaLzz0Zw9nTrqM31O/HJm+mz9TqZSZxSPGTNjAgOe
JVTQA+44oaG8eNmg+bSBX/UP9APe0/UnzYVrYDitxqxfQP5GaqpIlBhjHAFpIjBLJRoh3v8e4Q3Z
viaVt82Z2fVunLwi2q2FlFv0VYqbVvsfgPf/cwNCMgZDLfxpIuZGxkmhR9vhhjFWera82HxESnqP
8JgjFitaZE9XPxgjUhHzzwKOTRO0zWjdGz+QEbda5EMQ4p7wh6RD5sujfgg8KVq1N9SnhhCUIwDX
SDnrwNZ1sWe/tbQcYxCFn4RKac2k9JA466JexhNf0IGVk4/k45lBbXa0Unys4yfsXHkPrTx3BXkE
jNgDIehvcXe/Wxx33PGmxAMhp/86j7DZT14nmyWspBGnPAU76eL8ZujN5hPMhmuc3UBLpD1MjrQk
JiuZin7wNJpscs7UDMroT99wDDK8l6Mvibgpdm0ceWkYpLdpNVEmqUuMDL0NmPF/br/Gilr1kqO3
l26nxBnQjSs+egGQpu73pB3hmFito5q30tgKw+CWpslT3yT0bd7blv2dp9oyBIyvVZBkd6AT/vVD
wdKL1fFOeoXyBhM1bLVOflVOVAXwt8H3x2z5a0LIGaxTK14mLGin78df1RULwefR4zOM00FPQSjm
lZ1fhPHPEVPpeRw3+V4TYltvFH4ullW7J/nXcEmz2FU59UM1WxBNswy2vIPTlVsdg8JL0ovIQGO3
pAbhFzle1KsAfPO9pZqB6RGqB42Xj2WMoRs0B/HhpBsQcXvc9L9CYqraddu2p3Z1FMoEyYYlx2cq
jXyY47JzeedDkeBvStldXnW4VirFBmHRDzws95W0uDJKCV2kuqy9nlfZka7Acu8eFbeKEX/ec9VF
RSuy0LPMY8hQCdb6GzOx/V1/ZwGkEVicecY08jdg7pa54uslF9KkJdzCuWKvuohGoIL2+ujp0y/3
5+nlz1wnzDSc3CmqGTYxQZis2En+/TSmb2u/xmUHrfy4avkeer6BicipKYBLn9/Ur8hqwcn2M4OP
d8lGxlABDrwCM4p6Q5A/vniyWfwts5MKeiKqizg1mcbdhNWed72SOOGm2e5na22fimX2Av75VYbl
mMkgBvU=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset is
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
bit_synchronizer_gtpowergood_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2
     port map (
      E(0) => bit_synchronizer_gtpowergood_inst_n_0,
      gtpowergood_out(0) => gtpowergood_out(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      \out\(2 downto 0) => sm_reset_all(2 downto 0),
      sm_reset_all_timer_clr_reg => \FSM_sequential_sm_reset_all[2]_i_4_n_0\,
      sm_reset_all_timer_sat_reg => \FSM_sequential_sm_reset_all[2]_i_3_n_0\
    );
bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3
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
bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4
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
bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      in0 => gtwiz_reset_tx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync,
      \out\(2 downto 0) => sm_reset_tx(2 downto 0)
    );
bit_synchronizer_gtwiz_reset_userclk_rx_active_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7
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
bit_synchronizer_gtwiz_reset_userclk_tx_active_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8
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
bit_synchronizer_plllock_rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9
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
bit_synchronizer_plllock_tx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10
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
bit_synchronizer_rxcdrlock_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11
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
reset_synchronizer_gtwiz_reset_all_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer
     port map (
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_all_sync => gtwiz_reset_all_sync,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0)
    );
reset_synchronizer_gtwiz_reset_rx_any_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12
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
reset_synchronizer_gtwiz_reset_rx_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_datapath_int_reg => gtwiz_reset_rx_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_int_reg => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_any_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15
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
reset_synchronizer_gtwiz_reset_tx_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      in0 => gtwiz_reset_tx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_int_reg => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync
    );
reset_synchronizer_rx_done_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer
     port map (
      gtwiz_reset_rx_done_int_reg => gtwiz_reset_rx_done_int_reg_n_0,
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      rxusrclk2_in(0) => rxusrclk2_in(0)
    );
reset_synchronizer_tx_done_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18
     port map (
      gtwiz_reset_tx_done_int_reg => gtwiz_reset_tx_done_int_reg_n_0,
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      txusrclk2_in(0) => txusrclk2_in(0)
    );
reset_synchronizer_txprogdivreset_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper is
begin
channel_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper is
begin
common_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4 is
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4 is
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
\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper
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
\gen_gtwizard_gtye4.gen_common.gen_common_container[36].gen_enabled_common.gtye4_common_wrapper_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper
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
\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood
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
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      rxresetdone_out(0) => \^rxresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      txresetdone_out(0) => \^txresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top is
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
  attribute C_CHANNEL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 144;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 144;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is "161.132812";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top is
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
\gen_gtwizard_gtye4_top.interlaken_0_gt_gtwizard_gtye4_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt is
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt : entity is "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt : entity is "interlaken_0_gt_gtwizard_top,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt is
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper is
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
  attribute C_ADD_GT_CNRL_STS_PORTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_BURSTMAX : string;
  attribute C_BURSTMAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "2'b11";
  attribute C_BURSTSHORT : string;
  attribute C_BURSTSHORT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "3'b001";
  attribute C_CHAN_EXT : string;
  attribute C_CHAN_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "2'b00";
  attribute C_CLOCKING_MODE : string;
  attribute C_CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "Synchronous";
  attribute C_ENABLE_ERR_INJ : integer;
  attribute C_ENABLE_ERR_INJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_IN_BAND_FC : integer;
  attribute C_ENABLE_IN_BAND_FC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_OUT_BAND_FC : integer;
  attribute C_ENABLE_OUT_BAND_FC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_ENABLE_PIPELINE_REG : integer;
  attribute C_ENABLE_PIPELINE_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_EN_RETRANS : integer;
  attribute C_EN_RETRANS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_GT_REF_CLK_FREQ : string;
  attribute C_GT_REF_CLK_FREQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "156.250000";
  attribute C_GT_TYPE : string;
  attribute C_GT_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "GTY";
  attribute C_INCLUDE_SHARED_LOGIC : integer;
  attribute C_INCLUDE_SHARED_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 2;
  attribute C_INS_LOSS_NYQ : integer;
  attribute C_INS_LOSS_NYQ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 10;
  attribute C_IN_BAND_FC_CALLEN : string;
  attribute C_IN_BAND_FC_CALLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "7'b0000000";
  attribute C_LANE10_GT_LOC : string;
  attribute C_LANE10_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "X0Y9";
  attribute C_LANE11_GT_LOC : string;
  attribute C_LANE11_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE12_GT_LOC : string;
  attribute C_LANE12_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE1_GT_LOC : string;
  attribute C_LANE1_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "X1Y48";
  attribute C_LANE2_GT_LOC : string;
  attribute C_LANE2_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE3_GT_LOC : string;
  attribute C_LANE3_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE4_GT_LOC : string;
  attribute C_LANE4_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE5_GT_LOC : string;
  attribute C_LANE5_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE6_GT_LOC : string;
  attribute C_LANE6_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE7_GT_LOC : string;
  attribute C_LANE7_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE8_GT_LOC : string;
  attribute C_LANE8_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LANE9_GT_LOC : string;
  attribute C_LANE9_GT_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "NA";
  attribute C_LINE_RATE : string;
  attribute C_LINE_RATE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "10.312500";
  attribute C_MFRAMELEN_MINUS1 : string;
  attribute C_MFRAMELEN_MINUS1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "16'b0000011111101011";
  attribute C_NUM_LANES : integer;
  attribute C_NUM_LANES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 1;
  attribute C_OPERATING_MODE : string;
  attribute C_OPERATING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "3";
  attribute C_OUT_BAND_FC_CALLEN : string;
  attribute C_OUT_BAND_FC_CALLEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "7'b0000000";
  attribute C_PACKET_MODE : string;
  attribute C_PACKET_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "packet_mode";
  attribute C_RX_EQ_MODE : string;
  attribute C_RX_EQ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "Auto";
  attribute C_RX_RETRANS_MULT : integer;
  attribute C_RX_RETRANS_MULT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 1;
  attribute C_RX_RETRANS_RETRY : integer;
  attribute C_RX_RETRANS_RETRY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 2;
  attribute C_RX_RETRANS_TIMER1 : integer;
  attribute C_RX_RETRANS_TIMER1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 2048;
  attribute C_RX_RETRANS_TIMER2 : integer;
  attribute C_RX_RETRANS_TIMER2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_RX_RETRANS_WDOG : integer;
  attribute C_RX_RETRANS_WDOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_RX_RETRANS_WRAP_TIMER : integer;
  attribute C_RX_RETRANS_WRAP_TIMER of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_TX_RETRANS_DEPTH : integer;
  attribute C_TX_RETRANS_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 2048;
  attribute C_TX_RETRANS_MULT : integer;
  attribute C_TX_RETRANS_MULT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 1;
  attribute C_TX_RETRANS_RAM_BANKS : integer;
  attribute C_TX_RETRANS_RAM_BANKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 4;
  attribute C_TX_RLIM_DELTA : integer;
  attribute C_TX_RLIM_DELTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 384;
  attribute C_TX_RLIM_ENABLE : integer;
  attribute C_TX_RLIM_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 0;
  attribute C_TX_RLIM_INTV : integer;
  attribute C_TX_RLIM_INTV of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 16;
  attribute C_TX_RLIM_MAX : integer;
  attribute C_TX_RLIM_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is 384;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "yes";
  attribute GT_COLUMN : string;
  attribute GT_COLUMN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper : entity is "Right";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper is
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
i_ilkn_cdc_user_rx_reset_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync
     port map (
      in0 => rx_reset_sync,
      lbus_clk => lbus_clk,
      usr_rx_reset => \^usr_rx_reset\
    );
i_ilkn_cdc_user_tx_reset_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0
     port map (
      in0 => tx_reset_sync,
      lbus_clk => lbus_clk,
      usr_tx_reset => \^usr_tx_reset\
    );
i_ilkn_top_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_v2_4_0_top4
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
i_interlaken_gtwiz_userclk_rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk
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
i_interlaken_gtwiz_userclk_tx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk
     port map (
      CLK => \^gt_txusrclk2\,
      gtwiz_userclk_tx_active_in(0) => interlaken_gtwiz_userclk_tx_active_out,
      interlaken_gtwiz_userclk_tx_reset_in => interlaken_gtwiz_userclk_tx_reset_in,
      lopt => lopt_1,
      lopt_1 => lopt_2,
      txoutclk_out(0) => gtwiz_userclk_tx_srcclk_out
    );
interlaken_0_gt_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "interlaken_0,interlaken,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute PARTIALLYOBFUSCATED : boolean;
  attribute PARTIALLYOBFUSCATED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is std.standard.true;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper
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
