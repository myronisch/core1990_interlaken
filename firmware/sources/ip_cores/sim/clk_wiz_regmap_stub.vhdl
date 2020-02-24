-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Mon Feb 17 16:34:47 2020
-- Host        : tarfa running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /data/et/myronm/wupper-interlaken/firmware/Projects/FLX709_INTERLAKEN/FLX709_INTERLAKEN.srcs/sources_1/ip/clk_wiz_regmap/clk_wiz_regmap_stub.vhdl
-- Design      : clk_wiz_regmap
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_wiz_regmap is
  Port ( 
    clk_out25 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end clk_wiz_regmap;

architecture stub of clk_wiz_regmap is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out25,reset,locked,clk_in1";
begin
end;
