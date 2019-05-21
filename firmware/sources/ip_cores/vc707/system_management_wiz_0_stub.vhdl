-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
-- Date        : Thu Jul 21 09:26:44 2016
-- Host        : piedra running 64-bit Scientific Linux CERN SLC release 6.8 (Carbon)
-- Command     : write_vhdl -force -mode synth_stub
--               /localstore/franss/felix4/Projects/felix_top_ultrascale/felix_top_ultrascale.srcs/sources_1/ip/system_management_wiz_0/system_management_wiz_0_stub.vhdl
-- Design      : system_management_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flvf1924-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_management_wiz_0 is
  Port ( 
    sysmon_slave_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp : in STD_LOGIC;
    vn : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC
  );

end system_management_wiz_0;

architecture stub of system_management_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sysmon_slave_sel[1:0],daddr_in[7:0],den_in,di_in[15:0],dwe_in,do_out[15:0],drdy_out,dclk_in,reset_in,vp,vn,busy_out,channel_out[5:0],eoc_out,eos_out,alarm_out";
begin
end;
