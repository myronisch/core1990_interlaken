// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Mar 13 10:44:36 2019
// Host        : leover-Vostro-460 running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ interlaken_0_sim_netlist.v
// Design      : interlaken_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flgb2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer
   (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    rxresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]rxresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1
   (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    txresetdone_out,
    gtwiz_reset_clk_freerun_in);
  output \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [0:0]txresetdone_out;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]txresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(txresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10
   (plllock_tx_sync,
    gtwiz_reset_tx_done_int_reg,
    \FSM_sequential_sm_reset_tx_reg[0] ,
    gttxreset_out_reg,
    qpll0lock_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_done_int_reg_0,
    out,
    sm_reset_tx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    sm_reset_tx_timer_sat,
    sm_reset_tx_timer_clr_reg,
    gtwiz_reset_tx_any_sync);
  output plllock_tx_sync;
  output gtwiz_reset_tx_done_int_reg;
  output \FSM_sequential_sm_reset_tx_reg[0] ;
  output gttxreset_out_reg;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_tx_done_int_reg_0;
  input [2:0]out;
  input sm_reset_tx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input sm_reset_tx_timer_sat;
  input sm_reset_tx_timer_clr_reg;
  input gtwiz_reset_tx_any_sync;

  wire \FSM_sequential_sm_reset_tx_reg[0] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire gttxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_done_int;
  wire gtwiz_reset_tx_done_int_i_2_n_0;
  wire gtwiz_reset_tx_done_int_reg;
  wire gtwiz_reset_tx_done_int_reg_0;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_tx_sync;
  wire [0:0]qpll0lock_out;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h38000C0008000C00)) 
    \FSM_sequential_sm_reset_tx[2]_i_4 
       (.I0(plllock_tx_sync),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_tx_timer_sat_reg),
        .I4(out[0]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(\FSM_sequential_sm_reset_tx_reg[0] ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    gttxreset_out_i_2
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg),
        .I2(plllock_tx_sync),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(out[2]),
        .I5(out[1]),
        .O(gttxreset_out_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    gtwiz_reset_tx_done_int_i_1
       (.I0(gtwiz_reset_tx_done_int_i_2_n_0),
        .I1(gtwiz_reset_tx_done_int),
        .I2(gtwiz_reset_tx_done_int_reg_0),
        .O(gtwiz_reset_tx_done_int_reg));
  LUT6 #(
    .INIT(64'h4444444444F44444)) 
    gtwiz_reset_tx_done_int_i_2
       (.I0(out[0]),
        .I1(plllock_tx_sync),
        .I2(sm_reset_tx_timer_sat),
        .I3(sm_reset_tx_timer_clr_reg),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I5(out[1]),
        .O(gtwiz_reset_tx_done_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h3000404000004040)) 
    gtwiz_reset_tx_done_int_i_3
       (.I0(plllock_tx_sync),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_tx_timer_sat_reg),
        .I4(out[0]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(gtwiz_reset_tx_done_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(qpll0lock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_tx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11
   (gtwiz_reset_rx_cdr_stable_out,
    sm_reset_rx_cdr_to_clr_reg,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    rxprogdivreset_out_reg,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_rx_timer_clr_reg,
    out,
    plllock_rx_sync,
    sm_reset_rx_cdr_to_clr,
    sm_reset_rx_timer_sat_reg,
    sm_reset_rx_cdr_to_sat);
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output sm_reset_rx_cdr_to_clr_reg;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  output rxprogdivreset_out_reg;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_rx_timer_clr_reg;
  input [2:0]out;
  input plllock_rx_sync;
  input sm_reset_rx_cdr_to_clr;
  input sm_reset_rx_timer_sat_reg;
  input sm_reset_rx_cdr_to_sat;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_rx_sync;
  wire [0:0]rxcdrlock_out;
  wire rxprogdivreset_out_reg;
  wire sm_reset_rx_cdr_to_clr;
  wire sm_reset_rx_cdr_to_clr_i_2_n_0;
  wire sm_reset_rx_cdr_to_clr_reg;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h000A000AC0C000C0)) 
    \FSM_sequential_sm_reset_rx[2]_i_6 
       (.I0(rxprogdivreset_out_reg),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(out[1]),
        .I3(out[0]),
        .I4(plllock_rx_sync),
        .I5(out[2]),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rxcdrlock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_cdr_stable_out),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rxprogdivreset_out_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .O(rxprogdivreset_out_reg));
  LUT6 #(
    .INIT(64'hFBFFFFFF0800AAAA)) 
    sm_reset_rx_cdr_to_clr_i_1
       (.I0(sm_reset_rx_cdr_to_clr_i_2_n_0),
        .I1(sm_reset_rx_timer_clr_reg),
        .I2(out[2]),
        .I3(plllock_rx_sync),
        .I4(out[0]),
        .I5(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_clr_reg));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    sm_reset_rx_cdr_to_clr_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(gtwiz_reset_rx_cdr_stable_out),
        .I2(out[2]),
        .I3(out[1]),
        .O(sm_reset_rx_cdr_to_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2
   (E,
    gtpowergood_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_all_timer_sat_reg,
    out,
    sm_reset_all_timer_clr_reg);
  output [0:0]E;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_all_timer_sat_reg;
  input [2:0]out;
  input sm_reset_all_timer_clr_reg;

  wire [0:0]E;
  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire sm_reset_all_timer_clr_reg;
  wire sm_reset_all_timer_sat_reg;

  LUT6 #(
    .INIT(64'hAF0FAF00CFFFCFFF)) 
    \FSM_sequential_sm_reset_all[2]_i_1 
       (.I0(gtpowergood_sync),
        .I1(sm_reset_all_timer_sat_reg),
        .I2(out[2]),
        .I3(out[0]),
        .I4(sm_reset_all_timer_clr_reg),
        .I5(out[1]),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtpowergood_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtpowergood_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3
   (E,
    in0,
    gtwiz_reset_clk_freerun_in,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_clr_reg,
    out,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[1]_0 ,
    gtwiz_reset_rx_pll_and_datapath_dly);
  output [0:0]E;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_clr_reg;
  input [2:0]out;
  input \FSM_sequential_sm_reset_rx_reg[1] ;
  input \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  input gtwiz_reset_rx_pll_and_datapath_dly;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_rx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_datapath_dly;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;
  wire sm_reset_rx_timer_clr_reg;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAEA)) 
    \FSM_sequential_sm_reset_rx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ),
        .I1(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I2(sm_reset_rx_timer_clr_reg),
        .I3(out[0]),
        .I4(\FSM_sequential_sm_reset_rx_reg[1] ),
        .I5(\FSM_sequential_sm_reset_rx_reg[1]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h01010100)) 
    \FSM_sequential_sm_reset_rx[2]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_datapath_dly),
        .I4(gtwiz_reset_rx_pll_and_datapath_dly),
        .O(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4
   (gtwiz_reset_rx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_rx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync );
  output gtwiz_reset_rx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_rx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;

  wire [1:0]D;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'hF55EA55EA55EA55E)) 
    \FSM_sequential_sm_reset_rx[0]_i_1 
       (.I0(out[0]),
        .I1(gtwiz_reset_rx_pll_and_datapath_dly),
        .I2(out[2]),
        .I3(out[1]),
        .I4(sm_reset_rx_timer_sat_reg),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0F800FF00F800FFF)) 
    \FSM_sequential_sm_reset_rx[1]_i_1 
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(gtwiz_reset_rx_pll_and_datapath_dly),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5
   (gtwiz_reset_tx_datapath_dly,
    in0,
    gtwiz_reset_clk_freerun_in);
  output gtwiz_reset_tx_datapath_dly;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6
   (gtwiz_reset_tx_pll_and_datapath_dly,
    D,
    in0,
    gtwiz_reset_clk_freerun_in,
    out);
  output gtwiz_reset_tx_pll_and_datapath_dly;
  output [1:0]D;
  input in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;

  wire [1:0]D;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire [2:0]out;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F3E)) 
    \FSM_sequential_sm_reset_tx[0]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0FF1)) 
    \FSM_sequential_sm_reset_tx[1]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7
   (sm_reset_rx_timer_clr_reg,
    rxuserrdy_out_reg,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_rx_timer_clr_reg_0,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_sat_reg,
    i_in_out_reg_0,
    sm_reset_rx_pll_timer_clr_reg,
    sm_reset_rx_pll_timer_sat,
    sm_reset_rx_timer_sat);
  output sm_reset_rx_timer_clr_reg;
  output rxuserrdy_out_reg;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_rx_timer_clr_reg_0;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_sat_reg;
  input i_in_out_reg_0;
  input sm_reset_rx_pll_timer_clr_reg;
  input sm_reset_rx_pll_timer_sat;
  input sm_reset_rx_timer_sat;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_userclk_rx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire rxuserrdy_out_i_2_n_0;
  wire rxuserrdy_out_reg;
  wire sm_reset_rx_pll_timer_clr_reg;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_timer_clr_i_2_n_0;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h2023202000000000)) 
    \FSM_sequential_sm_reset_rx[2]_i_5 
       (.I0(rxuserrdy_out_i_2_n_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(sm_reset_rx_pll_timer_clr_reg),
        .I4(sm_reset_rx_pll_timer_sat),
        .I5(out[0]),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_rx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_rx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFAAF00000800)) 
    rxuserrdy_out_i_1
       (.I0(out[2]),
        .I1(rxuserrdy_out_i_2_n_0),
        .I2(out[1]),
        .I3(out[0]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .O(rxuserrdy_out_reg));
  LUT3 #(
    .INIT(8'h40)) 
    rxuserrdy_out_i_2
       (.I0(sm_reset_rx_timer_clr_reg_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .O(rxuserrdy_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hEBAE28A2)) 
    sm_reset_rx_timer_clr_i_1
       (.I0(sm_reset_rx_timer_clr_i_2_n_0),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(sm_reset_rx_timer_clr_reg_0),
        .O(sm_reset_rx_timer_clr_reg));
  LUT6 #(
    .INIT(64'h8888CC00C0C0FFFF)) 
    sm_reset_rx_timer_clr_i_2
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .I3(i_in_out_reg_0),
        .I4(out[2]),
        .I5(out[1]),
        .O(sm_reset_rx_timer_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8
   (sm_reset_tx_timer_clr_reg,
    txuserrdy_out_reg,
    E,
    gtwiz_userclk_tx_active_in,
    gtwiz_reset_clk_freerun_in,
    out,
    sm_reset_tx_timer_clr_reg_0,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    i_in_out_reg_0,
    gtwiz_reset_tx_pll_and_datapath_dly,
    gtwiz_reset_tx_datapath_dly,
    sm_reset_tx_pll_timer_clr,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    sm_reset_tx_timer_sat_reg,
    plllock_tx_sync,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    sm_reset_tx_pll_timer_clr_reg,
    sm_reset_tx_pll_timer_sat,
    sm_reset_tx_timer_sat);
  output sm_reset_tx_timer_clr_reg;
  output txuserrdy_out_reg;
  output [0:0]E;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input sm_reset_tx_timer_clr_reg_0;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input i_in_out_reg_0;
  input gtwiz_reset_tx_pll_and_datapath_dly;
  input gtwiz_reset_tx_datapath_dly;
  input sm_reset_tx_pll_timer_clr;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input sm_reset_tx_timer_sat_reg;
  input plllock_tx_sync;
  input \FSM_sequential_sm_reset_tx_reg[1] ;
  input sm_reset_tx_pll_timer_clr_reg;
  input sm_reset_tx_pll_timer_sat;
  input sm_reset_tx_timer_sat;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_tx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire gtwiz_reset_userclk_tx_active_sync;
  wire [0:0]gtwiz_userclk_tx_active_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_tx_sync;
  wire sm_reset_tx_pll_timer_clr;
  wire sm_reset_tx_pll_timer_clr_reg;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_timer_clr_i_2_n_0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_clr_reg_0;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_reg;
  wire txuserrdy_out_i_2_n_0;
  wire txuserrdy_out_reg;

  LUT6 #(
    .INIT(64'hEEEEEEEEFFFEEEEE)) 
    \FSM_sequential_sm_reset_tx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ),
        .I1(i_in_out_reg_0),
        .I2(gtwiz_reset_tx_pll_and_datapath_dly),
        .I3(gtwiz_reset_tx_datapath_dly),
        .I4(sm_reset_tx_pll_timer_clr),
        .I5(out[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0000088888888)) 
    \FSM_sequential_sm_reset_tx[2]_i_3 
       (.I0(\FSM_sequential_sm_reset_tx_reg[1] ),
        .I1(gtwiz_reset_userclk_tx_active_sync),
        .I2(sm_reset_tx_pll_timer_clr),
        .I3(sm_reset_tx_pll_timer_clr_reg),
        .I4(sm_reset_tx_pll_timer_sat),
        .I5(out[0]),
        .O(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_userclk_tx_active_in),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_tx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEBEB282B)) 
    sm_reset_tx_timer_clr_i_1
       (.I0(sm_reset_tx_timer_clr_i_2_n_0),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(sm_reset_tx_timer_clr_reg_0),
        .O(sm_reset_tx_timer_clr_reg));
  LUT6 #(
    .INIT(64'hA0C0A0C0F0F000F0)) 
    sm_reset_tx_timer_clr_i_2
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I1(gtwiz_reset_userclk_tx_active_sync),
        .I2(sm_reset_tx_timer_sat_reg),
        .I3(out[0]),
        .I4(plllock_tx_sync),
        .I5(out[2]),
        .O(sm_reset_tx_timer_clr_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFB000002AA)) 
    txuserrdy_out_i_1
       (.I0(txuserrdy_out_i_2_n_0),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gtye4.txuserrdy_int ),
        .O(txuserrdy_out_reg));
  LUT5 #(
    .INIT(32'h00200000)) 
    txuserrdy_out_i_2
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_0),
        .I2(out[2]),
        .I3(out[1]),
        .I4(gtwiz_reset_userclk_tx_active_sync),
        .O(txuserrdy_out_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_bit_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9
   (plllock_rx_sync,
    gtwiz_reset_rx_done_int_reg,
    gtrxreset_out_reg,
    sm_reset_rx_timer_clr_reg,
    qpll0lock_out,
    gtwiz_reset_clk_freerun_in,
    sm_reset_rx_timer_sat_reg,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    out,
    gtwiz_reset_rx_done_int_reg_0,
    sm_reset_rx_timer_clr_reg_0,
    sm_reset_rx_timer_sat);
  output plllock_rx_sync;
  output gtwiz_reset_rx_done_int_reg;
  output gtrxreset_out_reg;
  output sm_reset_rx_timer_clr_reg;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input sm_reset_rx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [2:0]out;
  input gtwiz_reset_rx_done_int_reg_0;
  input sm_reset_rx_timer_clr_reg_0;
  input sm_reset_rx_timer_sat;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire gtrxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_done_int;
  wire gtwiz_reset_rx_done_int_reg;
  wire gtwiz_reset_rx_done_int_reg_0;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [2:0]out;
  wire plllock_rx_sync;
  wire [0:0]qpll0lock_out;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20FFFF00)) 
    gtrxreset_out_i_2
       (.I0(plllock_rx_sync),
        .I1(sm_reset_rx_timer_clr_reg_0),
        .I2(sm_reset_rx_timer_sat),
        .I3(out[1]),
        .I4(out[0]),
        .O(gtrxreset_out_reg));
  LUT6 #(
    .INIT(64'hAAC0FFFFAAC00000)) 
    gtwiz_reset_rx_done_int_i_1
       (.I0(plllock_rx_sync),
        .I1(sm_reset_rx_timer_sat_reg),
        .I2(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I3(out[0]),
        .I4(gtwiz_reset_rx_done_int),
        .I5(gtwiz_reset_rx_done_int_reg_0),
        .O(gtwiz_reset_rx_done_int_reg));
  LUT6 #(
    .INIT(64'h44440000C0000000)) 
    gtwiz_reset_rx_done_int_i_2
       (.I0(plllock_rx_sync),
        .I1(out[1]),
        .I2(sm_reset_rx_timer_sat_reg),
        .I3(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I4(out[2]),
        .I5(out[0]),
        .O(gtwiz_reset_rx_done_int));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(qpll0lock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_rx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sm_reset_rx_timer_clr_i_3
       (.I0(plllock_rx_sync),
        .I1(out[0]),
        .O(sm_reset_rx_timer_clr_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset
   (\gen_gtwizard_gtye4.txprogdivreset_int ,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_rx_done_out,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gtwiz_reset_qpll0reset_out,
    gtpowergood_out,
    gtwiz_userclk_tx_active_in,
    qpll0lock_out,
    gtwiz_userclk_rx_active_in,
    rxcdrlock_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    rst_in0,
    txusrclk2_in,
    rxusrclk2_in,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync );
  output \gen_gtwizard_gtye4.txprogdivreset_int ;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output \gen_gtwizard_gtye4.txuserrdy_int ;
  output \gen_gtwizard_gtye4.rxprogdivreset_int ;
  output \gen_gtwizard_gtye4.gtrxreset_int ;
  output \gen_gtwizard_gtye4.rxuserrdy_int ;
  output \gen_gtwizard_gtye4.gttxreset_ch_int ;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtpowergood_out;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]qpll0lock_out;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]rxcdrlock_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in0;
  input [0:0]txusrclk2_in;
  input [0:0]rxusrclk2_in;
  input \gen_gtwizard_gtye4.gtpowergood_int ;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;

  wire \FSM_sequential_sm_reset_all[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[1]_i_1_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_rx[1]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_2_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_6_n_0 ;
  wire \FSM_sequential_sm_reset_tx[2]_i_7_n_0 ;
  wire bit_synchronizer_gtpowergood_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_1;
  wire bit_synchronizer_plllock_rx_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_3;
  wire bit_synchronizer_plllock_tx_inst_n_1;
  wire bit_synchronizer_plllock_tx_inst_n_2;
  wire bit_synchronizer_plllock_tx_inst_n_3;
  wire bit_synchronizer_rxcdrlock_inst_n_1;
  wire bit_synchronizer_rxcdrlock_inst_n_2;
  wire bit_synchronizer_rxcdrlock_inst_n_3;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.gttxreset_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_datapath_sync;
  wire gtwiz_reset_rx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_sync;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_datapath_sync;
  wire gtwiz_reset_tx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_sync;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire p_0_in;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire [2:0]p_1_in;
  wire plllock_rx_sync;
  wire plllock_tx_sync;
  wire [0:0]qpll0lock_out;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_2;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_3;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_2;
  wire rst_in0;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxusrclk2_in;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_all;
  wire sm_reset_all_timer_clr_i_1_n_0;
  wire sm_reset_all_timer_clr_i_2_n_0;
  wire sm_reset_all_timer_clr_reg_n_0;
  wire [2:0]sm_reset_all_timer_ctr;
  wire \sm_reset_all_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_all_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_all_timer_sat;
  wire sm_reset_all_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_rx;
  wire sm_reset_rx_cdr_to_clr;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ;
  wire [25:0]sm_reset_rx_cdr_to_ctr_reg;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_cdr_to_sat_i_1_n_0;
  wire sm_reset_rx_cdr_to_sat_i_2_n_0;
  wire sm_reset_rx_cdr_to_sat_i_3_n_0;
  wire sm_reset_rx_cdr_to_sat_i_4_n_0;
  wire sm_reset_rx_cdr_to_sat_i_5_n_0;
  wire sm_reset_rx_cdr_to_sat_i_6_n_0;
  wire sm_reset_rx_pll_timer_clr_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_reg_n_0;
  wire \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_rx_pll_timer_ctr_reg__0;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_i_1_n_0;
  wire sm_reset_rx_pll_timer_sat_i_2_n_0;
  wire sm_reset_rx_pll_timer_sat_i_3_n_0;
  wire sm_reset_rx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_rx_timer_ctr;
  wire \sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_rx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]sm_reset_tx;
  wire sm_reset_tx_pll_timer_clr;
  wire sm_reset_tx_pll_timer_clr_i_1_n_0;
  wire sm_reset_tx_pll_timer_clr_reg_n_0;
  wire \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_tx_pll_timer_ctr_reg__0;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_i_1_n_0;
  wire sm_reset_tx_pll_timer_sat_i_2_n_0;
  wire sm_reset_tx_pll_timer_sat_i_3_n_0;
  wire sm_reset_tx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_tx_timer_ctr;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_i_1_n_0;
  wire [0:0]txusrclk2_in;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FFBF00FFFFFFFF)) 
    \FSM_sequential_sm_reset_all[0]_i_1 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_rx_done_int_reg_n_0),
        .I3(sm_reset_all[2]),
        .I4(sm_reset_all[1]),
        .I5(sm_reset_all[0]),
        .O(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_sm_reset_all[1]_i_1 
       (.I0(sm_reset_all[1]),
        .I1(sm_reset_all[0]),
        .O(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_sm_reset_all[2]_i_2 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .O(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_sm_reset_all[2]_i_3 
       (.I0(sm_reset_all_timer_sat),
        .I1(gtwiz_reset_rx_done_int_reg_n_0),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_all[2]_i_4 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[0]_i_1_n_0 ),
        .Q(sm_reset_all[0]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[1]_i_1_n_0 ),
        .Q(sm_reset_all[1]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(\FSM_sequential_sm_reset_all[2]_i_2_n_0 ),
        .Q(sm_reset_all[2]),
        .R(gtwiz_reset_all_sync));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_rx[1]_i_2 
       (.I0(sm_reset_rx_timer_sat),
        .I1(sm_reset_rx_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD8888DDDD8888)) 
    \FSM_sequential_sm_reset_rx[2]_i_2 
       (.I0(sm_reset_rx[1]),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(sm_reset_rx_timer_clr_reg_n_0),
        .I4(sm_reset_rx[2]),
        .I5(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_rx[2]_i_4 
       (.I0(sm_reset_rx_timer_clr_reg_n_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(sm_reset_rx[1]),
        .O(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_rx[0]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_rx[1]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_rx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .D(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ),
        .Q(sm_reset_rx[2]),
        .R(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_sm_reset_tx[2]_i_2 
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx[1]),
        .I2(sm_reset_tx[2]),
        .O(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_sm_reset_tx[2]_i_5 
       (.I0(sm_reset_tx[1]),
        .I1(sm_reset_tx[2]),
        .O(sm_reset_tx_pll_timer_clr));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_sm_reset_tx[2]_i_6 
       (.I0(sm_reset_tx[1]),
        .I1(sm_reset_tx[2]),
        .I2(sm_reset_tx_timer_clr_reg_n_0),
        .I3(sm_reset_tx_timer_sat),
        .O(\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_sm_reset_tx[2]_i_7 
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2),
        .Q(sm_reset_tx[0]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1),
        .Q(sm_reset_tx[1]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_sm_reset_tx_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .D(\FSM_sequential_sm_reset_tx[2]_i_2_n_0 ),
        .Q(sm_reset_tx[2]),
        .R(gtwiz_reset_tx_any_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_2 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .out(sm_reset_all),
        .sm_reset_all_timer_clr_reg(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .sm_reset_all_timer_sat_reg(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_3 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.E(bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1]_0 (bit_synchronizer_rxcdrlock_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync),
        .out(sm_reset_rx),
        .sm_reset_rx_timer_clr_reg(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_4 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2}),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_dly(gtwiz_reset_rx_pll_and_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .out(sm_reset_rx),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D({bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2}),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .out(sm_reset_tx));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_rx_inst_n_3),
        .out(sm_reset_rx),
        .rxuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .sm_reset_rx_pll_timer_clr_reg(sm_reset_rx_pll_timer_clr_reg_n_0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_8 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
       (.E(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .\FSM_sequential_sm_reset_tx_reg[1] (\FSM_sequential_sm_reset_tx[2]_i_6_n_0 ),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .gtwiz_reset_tx_pll_and_datapath_dly(gtwiz_reset_tx_pll_and_datapath_dly),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .i_in_out_reg_0(bit_synchronizer_plllock_tx_inst_n_2),
        .out(sm_reset_tx),
        .plllock_tx_sync(plllock_tx_sync),
        .sm_reset_tx_pll_timer_clr(sm_reset_tx_pll_timer_clr),
        .sm_reset_tx_pll_timer_clr_reg(sm_reset_tx_pll_timer_clr_reg_n_0),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_timer_clr_reg(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0),
        .sm_reset_tx_timer_clr_reg_0(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ),
        .txuserrdy_out_reg(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_9 bit_synchronizer_plllock_rx_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtrxreset_out_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_done_int_reg(bit_synchronizer_plllock_rx_inst_n_1),
        .gtwiz_reset_rx_done_int_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .out(sm_reset_rx),
        .plllock_rx_sync(plllock_rx_sync),
        .qpll0lock_out(qpll0lock_out),
        .sm_reset_rx_timer_clr_reg(bit_synchronizer_plllock_rx_inst_n_3),
        .sm_reset_rx_timer_clr_reg_0(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_10 bit_synchronizer_plllock_tx_inst
       (.\FSM_sequential_sm_reset_tx_reg[0] (bit_synchronizer_plllock_tx_inst_n_2),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .gttxreset_out_reg(bit_synchronizer_plllock_tx_inst_n_3),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_done_int_reg(bit_synchronizer_plllock_tx_inst_n_1),
        .gtwiz_reset_tx_done_int_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .out(sm_reset_tx),
        .plllock_tx_sync(plllock_tx_sync),
        .qpll0lock_out(qpll0lock_out),
        .sm_reset_tx_timer_clr_reg(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat),
        .sm_reset_tx_timer_sat_reg(\FSM_sequential_sm_reset_tx[2]_i_7_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_11 bit_synchronizer_rxcdrlock_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_rxcdrlock_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .out(sm_reset_rx),
        .plllock_rx_sync(plllock_rx_sync),
        .rxcdrlock_out(rxcdrlock_out),
        .rxprogdivreset_out_reg(bit_synchronizer_rxcdrlock_inst_n_3),
        .sm_reset_rx_cdr_to_clr(sm_reset_rx_cdr_to_clr),
        .sm_reset_rx_cdr_to_clr_reg(bit_synchronizer_rxcdrlock_inst_n_1),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat),
        .sm_reset_rx_timer_clr_reg(\FSM_sequential_sm_reset_rx[2]_i_4_n_0 ),
        .sm_reset_rx_timer_sat_reg(\FSM_sequential_sm_reset_rx[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    gtrxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_3),
        .Q(\gen_gtwizard_gtye4.gtrxreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    gttxreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_2),
        .Q(\gen_gtwizard_gtye4.gttxreset_int ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gtwiz_reset_qpll0reset_out[0]_INST_0 
       (.I0(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .I1(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(gtwiz_reset_qpll0reset_out));
  LUT4 #(
    .INIT(16'hF740)) 
    gtwiz_reset_rx_datapath_int_i_1
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_1),
        .Q(gtwiz_reset_rx_done_int_reg_n_0),
        .R(gtwiz_reset_rx_any_sync));
  LUT4 #(
    .INIT(16'hF704)) 
    gtwiz_reset_rx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_1),
        .Q(gtwiz_reset_tx_done_int_reg_n_0),
        .R(gtwiz_reset_tx_any_sync));
  LUT4 #(
    .INIT(16'hFB02)) 
    gtwiz_reset_tx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_pll_and_datapath_int_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h8B)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1 
       (.I0(\gen_gtwizard_gtye4.gttxreset_int ),
        .I1(gtpowergood_out),
        .I2(\gen_gtwizard_gtye4.gtpowergood_int ),
        .O(\gen_gtwizard_gtye4.gttxreset_ch_int ));
  FDRE #(
    .INIT(1'b0)) 
    pllreset_rx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pllreset_tx_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .gtrxreset_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_3),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .i_in_out_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .out(sm_reset_rx),
        .pllreset_rx_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .rxprogdivreset_out_reg(reset_synchronizer_gtwiz_reset_rx_any_inst_n_2),
        .sm_reset_rx_cdr_to_sat_reg(bit_synchronizer_rxcdrlock_inst_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_datapath_int_reg(gtwiz_reset_rx_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_rx_pll_and_datapath_int_reg(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .\gen_gtwizard_gtye4.gttxreset_int (\gen_gtwizard_gtye4.gttxreset_int ),
        .gttxreset_out_reg(reset_synchronizer_gtwiz_reset_tx_any_inst_n_2),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .out(sm_reset_tx),
        .pllreset_tx_out_reg(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .sm_reset_tx_timer_sat_reg(bit_synchronizer_plllock_tx_inst_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_reset_tx_pll_and_datapath_int_reg(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_int_reg(gtwiz_reset_rx_done_int_reg_n_0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rxusrclk2_in(rxusrclk2_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_int_reg(gtwiz_reset_tx_done_int_reg_n_0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .txusrclk2_in(txusrclk2_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19 reset_synchronizer_txprogdivreset_inst
       (.\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .rst_in0(rst_in0));
  FDRE #(
    .INIT(1'b1)) 
    rxprogdivreset_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_2),
        .Q(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .Q(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFA200A)) 
    sm_reset_all_timer_clr_i_1
       (.I0(sm_reset_all_timer_clr_i_2_n_0),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(sm_reset_all[0]),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000B0003333BB33)) 
    sm_reset_all_timer_clr_i_2
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all[2]),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[1]),
        .O(sm_reset_all_timer_clr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_all_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_clr_i_1_n_0),
        .Q(sm_reset_all_timer_clr_reg_n_0),
        .S(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_all_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_all_timer_ctr[0]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .O(\sm_reset_all_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_all_timer_ctr[1]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_all_timer_ctr[2]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .I2(sm_reset_all_timer_ctr[2]),
        .O(\sm_reset_all_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[0]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[1]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[2]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_all_timer_sat_i_1
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_all_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_sat_i_1_n_0),
        .Q(sm_reset_all_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_cdr_to_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_1),
        .Q(sm_reset_rx_cdr_to_clr),
        .S(gtwiz_reset_rx_any_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_1 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[1]),
        .I2(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ),
        .I3(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ),
        .I5(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[19]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[14]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[22]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[20]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_5 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[12]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[8]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[9]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[6]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[5]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[2]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[0]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[0]_i_2_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 }),
        .S({sm_reset_rx_cdr_to_ctr_reg[7:1],\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[10] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[10]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[11] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[11]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[12] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[12]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[13] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[13]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[14] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[14]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[15] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[15]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[16] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[16]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[16]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[16]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[17] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[17]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[18] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[18]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[19] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[19]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[1]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[20] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[20]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[21] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[21]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[22] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[22]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[23] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[23]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[24] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[24]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[24]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED [7:1],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sm_reset_rx_cdr_to_ctr_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[25] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[25]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[2]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[3]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[4]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[5]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[6]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[7]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[8]),
        .R(sm_reset_rx_cdr_to_clr));
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[8]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ,\NLW_sm_reset_rx_cdr_to_ctr_reg[8]_i_1_CO_UNCONNECTED [3],\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[9]),
        .R(sm_reset_rx_cdr_to_clr));
  LUT3 #(
    .INIT(8'h0E)) 
    sm_reset_rx_cdr_to_sat_i_1
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(sm_reset_rx_cdr_to_sat_i_2_n_0),
        .I2(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_sat_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    sm_reset_rx_cdr_to_sat_i_2
       (.I0(sm_reset_rx_cdr_to_sat_i_3_n_0),
        .I1(sm_reset_rx_cdr_to_sat_i_4_n_0),
        .I2(sm_reset_rx_cdr_to_sat_i_5_n_0),
        .I3(sm_reset_rx_cdr_to_sat_i_6_n_0),
        .I4(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[1]),
        .O(sm_reset_rx_cdr_to_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    sm_reset_rx_cdr_to_sat_i_3
       (.I0(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[5]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[2]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[6]),
        .O(sm_reset_rx_cdr_to_sat_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_rx_cdr_to_sat_i_4
       (.I0(sm_reset_rx_cdr_to_ctr_reg[22]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[20]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[24]),
        .O(sm_reset_rx_cdr_to_sat_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    sm_reset_rx_cdr_to_sat_i_5
       (.I0(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[14]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[19]),
        .O(sm_reset_rx_cdr_to_sat_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    sm_reset_rx_cdr_to_sat_i_6
       (.I0(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[9]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[8]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[12]),
        .O(sm_reset_rx_cdr_to_sat_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_cdr_to_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_cdr_to_sat_i_1_n_0),
        .Q(sm_reset_rx_cdr_to_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_rx_pll_timer_clr_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx[1]),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .O(\sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[8]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__1[8]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_2 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__1[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_rx_pll_timer_ctr[3]_i_1_n_0 ),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[4]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[5]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[6]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[7]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[8]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__1[9]),
        .Q(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    sm_reset_rx_pll_timer_sat_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_rx_pll_timer_sat_i_2_n_0),
        .I3(sm_reset_rx_pll_timer_sat_i_3_n_0),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_sat_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sm_reset_rx_pll_timer_sat_i_2
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[2]),
        .O(sm_reset_rx_pll_timer_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_rx_pll_timer_sat_i_3
       (.I0(sm_reset_rx_pll_timer_ctr_reg__0[6]),
        .I1(sm_reset_rx_pll_timer_ctr_reg__0[7]),
        .I2(sm_reset_rx_pll_timer_ctr_reg__0[4]),
        .I3(sm_reset_rx_pll_timer_ctr_reg__0[5]),
        .I4(sm_reset_rx_pll_timer_ctr_reg__0[9]),
        .I5(sm_reset_rx_pll_timer_ctr_reg__0[8]),
        .O(sm_reset_rx_pll_timer_sat_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .Q(sm_reset_rx_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_rx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .O(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .I2(sm_reset_rx_timer_ctr[2]),
        .O(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[0]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[1]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[2]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_rx_timer_sat_i_1
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .O(sm_reset_rx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_rx_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_timer_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF5000D)) 
    sm_reset_tx_pll_timer_clr_i_1
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx_pll_timer_sat),
        .I2(sm_reset_tx[1]),
        .I3(sm_reset_tx[2]),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_pll_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .O(\sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[8]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_2 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_tx_pll_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[3] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(\sm_reset_tx_pll_timer_ctr[3]_i_1_n_0 ),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[4] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[5] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[6] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[7] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[8] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[9] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(\sm_reset_tx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__0[9]),
        .Q(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    sm_reset_tx_pll_timer_sat_i_1
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[3]),
        .I2(sm_reset_tx_pll_timer_sat_i_2_n_0),
        .I3(sm_reset_tx_pll_timer_sat_i_3_n_0),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_sat_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    sm_reset_tx_pll_timer_sat_i_2
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[2]),
        .O(sm_reset_tx_pll_timer_sat_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sm_reset_tx_pll_timer_sat_i_3
       (.I0(sm_reset_tx_pll_timer_ctr_reg__0[6]),
        .I1(sm_reset_tx_pll_timer_ctr_reg__0[7]),
        .I2(sm_reset_tx_pll_timer_ctr_reg__0[4]),
        .I3(sm_reset_tx_pll_timer_ctr_reg__0[5]),
        .I4(sm_reset_tx_pll_timer_ctr_reg__0[9]),
        .I5(sm_reset_tx_pll_timer_ctr_reg__0[8]),
        .O(sm_reset_tx_pll_timer_sat_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_pll_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_timer_clr_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0),
        .Q(sm_reset_tx_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_tx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .I2(sm_reset_tx_timer_ctr[2]),
        .O(p_1_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[0] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[0]),
        .Q(sm_reset_tx_timer_ctr[0]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[1] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[1]),
        .Q(sm_reset_tx_timer_ctr[1]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[2] 
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(p_0_in),
        .D(p_1_in[2]),
        .Q(sm_reset_tx_timer_ctr[2]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_tx_timer_sat_i_1
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .I3(sm_reset_tx_timer_sat),
        .I4(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_timer_sat_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(sm_reset_tx_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_timer_sat),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txuserrdy_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .Q(\gen_gtwizard_gtye4.txuserrdy_int ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel
   (bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] ,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0outclk_out,
    qpll0freqlock_in,
    qpll0outrefclk_out,
    qpll1outclk_out,
    qpll1freqlock_in,
    qpll1outrefclk_out,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    \gen_powergood_delay.pwr_on_fsm_reg ,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    txpolarity_in,
    txprbsforceerr_in,
    \gen_gtwizard_gtye4.txprogdivreset_int ,
    \gen_powergood_delay.pwr_on_fsm_reg_0 ,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    TXRATE,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output \gen_gtwizard_gtye4.gtpowergood_int ;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input \gen_gtwizard_gtye4.gttxreset_ch_int ;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0outclk_out;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0outrefclk_out;
  input [0:0]qpll1outclk_out;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1outrefclk_out;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input \gen_powergood_delay.pwr_on_fsm_reg ;
  input \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input \gen_gtwizard_gtye4.txprogdivreset_int ;
  input \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]TXRATE;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [2:0]TXRATE;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  wire \gen_powergood_delay.pwr_on_fsm_reg ;
  wire \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txratedone_out;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire xlnx_opt_;
  wire xlnx_opt__1;

  assign lopt_2 = xlnx_opt_;
  assign lopt_3 = xlnx_opt__1;
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(lopt),
        .CESYNC(xlnx_opt_),
        .CLK(txoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_2 
       (.I0(\gen_gtwizard_gtye4.gtpowergood_int ),
        .O(\gen_powergood_delay.intclk_rrst_n_r_reg[0] ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  GTYE4_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(16'h0000),
    .ADAPT_CFG1(16'hF81C),
    .ADAPT_CFG2(16'h0000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0000000000),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("FALSE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("FALSE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .A_RXPROGDIVRESET(1'b0),
    .A_RXTERMINATION(1'b1),
    .A_TXDIFFCTRL(5'b01100),
    .A_TXPROGDIVRESET(1'b0),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CDR_SWAP_MODE_EN(1'b0),
    .CFOK_PWRSVE_EN(1'b1),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CH_HSPMUX(16'h4040),
    .CKCAL1_CFG_0(16'b1100000011000000),
    .CKCAL1_CFG_1(16'b0001000011000000),
    .CKCAL1_CFG_2(16'b0010000000001000),
    .CKCAL1_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_0(16'b1100000011000000),
    .CKCAL2_CFG_1(16'b1000000011000000),
    .CKCAL2_CFG_2(16'b0001000000000000),
    .CKCAL2_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_4(16'b0000000000000000),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(24),
    .CLK_COR_MIN_LAT(16),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0000000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0000000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG0(16'h01FA),
    .CPLL_CFG1(16'h002B),
    .CPLL_CFG2(16'h0002),
    .CPLL_CFG3(16'h0000),
    .CPLL_FBDIV(2),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG0(16'h02B2),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .CTLE3_OCAP_EXT_CTRL(3'b000),
    .CTLE3_OCAP_EXT_EN(1'b0),
    .DDI_CTRL(2'b00),
    .DDI_REALIGN_WAIT(15),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DELAY_ELEC(1'b0),
    .DMONITOR_CFG0(10'h000),
    .DMONITOR_CFG1(8'h00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER0(16'h0000),
    .ES_QUALIFIER1(16'h0000),
    .ES_QUALIFIER2(16'h0000),
    .ES_QUALIFIER3(16'h0000),
    .ES_QUALIFIER4(16'h0000),
    .ES_QUALIFIER5(16'h0000),
    .ES_QUALIFIER6(16'h0000),
    .ES_QUALIFIER7(16'h0000),
    .ES_QUALIFIER8(16'h0000),
    .ES_QUALIFIER9(16'h0000),
    .ES_QUAL_MASK0(16'h0000),
    .ES_QUAL_MASK1(16'h0000),
    .ES_QUAL_MASK2(16'h0000),
    .ES_QUAL_MASK3(16'h0000),
    .ES_QUAL_MASK4(16'h0000),
    .ES_QUAL_MASK5(16'h0000),
    .ES_QUAL_MASK6(16'h0000),
    .ES_QUAL_MASK7(16'h0000),
    .ES_QUAL_MASK8(16'h0000),
    .ES_QUAL_MASK9(16'h0000),
    .ES_SDATA_MASK0(16'h0000),
    .ES_SDATA_MASK1(16'h0000),
    .ES_SDATA_MASK2(16'h0000),
    .ES_SDATA_MASK3(16'h0000),
    .ES_SDATA_MASK4(16'h0000),
    .ES_SDATA_MASK5(16'h0000),
    .ES_SDATA_MASK6(16'h0000),
    .ES_SDATA_MASK7(16'h0000),
    .ES_SDATA_MASK8(16'h0000),
    .ES_SDATA_MASK9(16'h0000),
    .EYESCAN_VP_RANGE(0),
    .EYE_SCAN_SWAP_EN(1'b0),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(5'b00000),
    .ISCAN_CK_PH_SEL2(1'b0),
    .LOCAL_MASTER(1'b1),
    .LPBK_BIAS_CTRL(4),
    .LPBK_EN_RCAL_B(1'b0),
    .LPBK_EXT_RCAL(4'b1000),
    .LPBK_IND_CTRL0(5),
    .LPBK_IND_CTRL1(5),
    .LPBK_IND_CTRL2(5),
    .LPBK_RG_CTRL(2),
    .OOBDIVCTL(2'b00),
    .OOB_PWRUP(1'b0),
    .PCI3_AUTO_REALIGN("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE(1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS(2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE(1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE(3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE(1'b0),
    .PCI3_RX_FIFO_DISABLE(1'b0),
    .PCIE3_CLK_COR_EMPTY_THRSH(5'b00000),
    .PCIE3_CLK_COR_FULL_THRSH(6'b010000),
    .PCIE3_CLK_COR_MAX_LAT(5'b00100),
    .PCIE3_CLK_COR_MIN_LAT(5'b00000),
    .PCIE3_CLK_COR_THRSH_TIMER(6'b001000),
    .PCIE_64B_DYN_CLKSW_DIS("FALSE"),
    .PCIE_BUFG_DIV_CTRL(16'h3500),
    .PCIE_GEN4_64BIT_INT_EN("FALSE"),
    .PCIE_PLL_SEL_MODE_GEN12(2'h2),
    .PCIE_PLL_SEL_MODE_GEN3(2'h2),
    .PCIE_PLL_SEL_MODE_GEN4(2'h2),
    .PCIE_RXPCS_CFG_GEN3(16'h0AA5),
    .PCIE_RXPMA_CFG(16'h280A),
    .PCIE_TXPCS_CFG_GEN3(16'h24A4),
    .PCIE_TXPMA_CFG(16'h280A),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD0(16'h0000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PREIQ_FREQ_BST(1),
    .RATE_SW_USE_DRP(1'b1),
    .RCLK_SIPO_DLY_ENB(1'b0),
    .RCLK_SIPO_INV_EN(1'b0),
    .RTX_BUF_CML_CTRL(3'b011),
    .RTX_BUF_TERM_CTRL(2'b00),
    .RXBUFRESET_TIME(5'b00011),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(49),
    .RXBUF_THRESH_OVRD("TRUE"),
    .RXBUF_THRESH_UNDFLW(7),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG0(16'h0003),
    .RXCDR_CFG0_GEN3(16'h0003),
    .RXCDR_CFG1(16'h0000),
    .RXCDR_CFG1_GEN3(16'h0000),
    .RXCDR_CFG2(16'h0269),
    .RXCDR_CFG2_GEN2(10'h269),
    .RXCDR_CFG2_GEN3(16'h0269),
    .RXCDR_CFG2_GEN4(16'h0164),
    .RXCDR_CFG3(16'h0012),
    .RXCDR_CFG3_GEN2(6'h12),
    .RXCDR_CFG3_GEN3(16'h0012),
    .RXCDR_CFG3_GEN4(16'h0012),
    .RXCDR_CFG4(16'h5CF6),
    .RXCDR_CFG4_GEN3(16'h5CF6),
    .RXCDR_CFG5(16'hB46B),
    .RXCDR_CFG5_GEN3(16'h146B),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG0(16'h2201),
    .RXCDR_LOCK_CFG1(16'h9FFF),
    .RXCDR_LOCK_CFG2(16'h0000),
    .RXCDR_LOCK_CFG3(16'h0000),
    .RXCDR_LOCK_CFG4(16'h0000),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXCFOK_CFG0(16'h0000),
    .RXCFOK_CFG1(16'h8015),
    .RXCFOK_CFG2(16'h02AE),
    .RXCKCAL1_IQ_LOOP_RST_CFG(16'h0000),
    .RXCKCAL1_I_LOOP_RST_CFG(16'h0000),
    .RXCKCAL1_Q_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_DX_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_D_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_S_LOOP_RST_CFG(16'h0000),
    .RXCKCAL2_X_LOOP_RST_CFG(16'h0000),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDFELPM_KL_CFG0(16'h0000),
    .RXDFELPM_KL_CFG1(16'hA082),
    .RXDFELPM_KL_CFG2(16'h0100),
    .RXDFE_CFG0(16'h0A00),
    .RXDFE_CFG1(16'h0000),
    .RXDFE_GC_CFG0(16'h0000),
    .RXDFE_GC_CFG1(16'h8000),
    .RXDFE_GC_CFG2(16'hFFF0),
    .RXDFE_H2_CFG0(16'h0000),
    .RXDFE_H2_CFG1(16'h0002),
    .RXDFE_H3_CFG0(16'h0000),
    .RXDFE_H3_CFG1(16'h8002),
    .RXDFE_H4_CFG0(16'h0000),
    .RXDFE_H4_CFG1(16'h8002),
    .RXDFE_H5_CFG0(16'h0000),
    .RXDFE_H5_CFG1(16'h8002),
    .RXDFE_H6_CFG0(16'h0000),
    .RXDFE_H6_CFG1(16'h8002),
    .RXDFE_H7_CFG0(16'h0000),
    .RXDFE_H7_CFG1(16'h8002),
    .RXDFE_H8_CFG0(16'h0000),
    .RXDFE_H8_CFG1(16'h8002),
    .RXDFE_H9_CFG0(16'h0000),
    .RXDFE_H9_CFG1(16'h8002),
    .RXDFE_HA_CFG0(16'h0000),
    .RXDFE_HA_CFG1(16'h8002),
    .RXDFE_HB_CFG0(16'h0000),
    .RXDFE_HB_CFG1(16'h8002),
    .RXDFE_HC_CFG0(16'h0000),
    .RXDFE_HC_CFG1(16'h8002),
    .RXDFE_HD_CFG0(16'h0000),
    .RXDFE_HD_CFG1(16'h8002),
    .RXDFE_HE_CFG0(16'h0000),
    .RXDFE_HE_CFG1(16'h8002),
    .RXDFE_HF_CFG0(16'h0000),
    .RXDFE_HF_CFG1(16'h8002),
    .RXDFE_KH_CFG0(16'h8000),
    .RXDFE_KH_CFG1(16'hFE00),
    .RXDFE_KH_CFG2(16'h0200),
    .RXDFE_KH_CFG3(16'h4101),
    .RXDFE_OS_CFG0(16'h2000),
    .RXDFE_OS_CFG1(16'h8000),
    .RXDFE_UT_CFG0(16'h0000),
    .RXDFE_UT_CFG1(16'h0003),
    .RXDFE_UT_CFG2(16'h0000),
    .RXDFE_VP_CFG0(16'h0000),
    .RXDFE_VP_CFG1(16'h0033),
    .RXDLY_CFG(16'h0010),
    .RXDLY_LCFG(16'h0030),
    .RXELECIDLE_CFG("SIGCFG_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR(3),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_CFG(16'h0000),
    .RXLPM_GC_CFG(16'hF800),
    .RXLPM_KH_CFG0(16'h0000),
    .RXLPM_KH_CFG1(16'hA002),
    .RXLPM_OS_CFG0(16'h0000),
    .RXLPM_OS_CFG1(16'h8002),
    .RXOOB_CFG(9'b000000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00011),
    .RXPHBEACON_CFG(16'h0000),
    .RXPHDLY_CFG(16'h2070),
    .RXPHSAMP_CFG(16'h2100),
    .RXPHSLIP_CFG(16'h9933),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(16'h0102),
    .RXPI_CFG1(16'b0000000001010100),
    .RXPMACLK_SEL("DATA"),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXPRBS_LINKACQ_CNT(15),
    .RXREFCLKDIV2_SEL(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_AFE_CM_EN(1'b0),
    .RX_BIAS_CFG0(16'h12B0),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CAPFF_SARC_ENB(1'b0),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_EN(1'b1),
    .RX_CLK_SLIP_OVRD(5'b00000),
    .RX_CM_BUF_CFG(4'b1010),
    .RX_CM_BUF_PD(1'b0),
    .RX_CM_SEL(3),
    .RX_CM_TRIM(10),
    .RX_CTLE_PWR_SAVING(1'b0),
    .RX_CTLE_RES_CTRL(4'b0000),
    .RX_DATA_WIDTH(64),
    .RX_DDI_SEL(6'b000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DEGEN_CTRL(3'b100),
    .RX_DFELPM_CFG0(10),
    .RX_DFELPM_CFG1(1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG1(2),
    .RX_DFE_KL_LPM_KH_CFG0(3),
    .RX_DFE_KL_LPM_KH_CFG1(2),
    .RX_DFE_KL_LPM_KL_CFG0(2'b11),
    .RX_DFE_KL_LPM_KL_CFG1(2),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_DIVRESET_TIME(5'b00001),
    .RX_EN_CTLE_RCAL_B(1'b0),
    .RX_EN_SUM_RCAL_B(0),
    .RX_EYESCAN_VS_CODE(7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR(1'b0),
    .RX_EYESCAN_VS_RANGE(2'b10),
    .RX_EYESCAN_VS_UT_SIGN(1'b0),
    .RX_FABINT_USRCLK_FLOP(1'b0),
    .RX_I2V_FILTER_EN(1'b1),
    .RX_INT_DATAWIDTH(2),
    .RX_PMA_POWER_SAVE(1'b0),
    .RX_PMA_RSV0(16'h002F),
    .RX_PROGDIV_CFG(0.000000),
    .RX_PROGDIV_RATE(16'h0001),
    .RX_RESLOAD_CTRL(4'b0000),
    .RX_RESLOAD_OVRD(1'b0),
    .RX_SAMPLE_PERIOD(3'b111),
    .RX_SIG_VALID_DLY(11),
    .RX_SUM_DEGEN_AVTT_OVERITE(0),
    .RX_SUM_DFETAPREP_EN(1'b0),
    .RX_SUM_IREF_TUNE(4'b0000),
    .RX_SUM_PWR_SAVING(0),
    .RX_SUM_RES_CTRL(4'b0000),
    .RX_SUM_VCMTUNE(4'b0011),
    .RX_SUM_VCM_BIAS_TUNE_EN(1'b1),
    .RX_SUM_VCM_OVWR(1'b0),
    .RX_SUM_VREF_TUNE(3'b100),
    .RX_TUNE_AFE_OS(2'b10),
    .RX_VREG_CTRL(3'b010),
    .RX_VREG_PDB(1'b1),
    .RX_WIDEMODE_CDR(2'b01),
    .RX_WIDEMODE_CDR_GEN3(2'b00),
    .RX_WIDEMODE_CDR_GEN4(2'b01),
    .RX_XCLK_SEL("RXDES"),
    .RX_XMODE_SEL(1'b1),
    .SAMPLE_CLK_PHASE(1'b0),
    .SAS_12G_MODE(1'b0),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("Z"),
    .SRSTMODE(1'b0),
    .TAPDLY_SET_TX(2'h0),
    .TERM_RCAL_CFG(15'b100001000000010),
    .TERM_RCAL_OVRD(3'b001),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV0(8'h00),
    .TST_RSV1(8'h00),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h8010),
    .TXDLY_LCFG(16'h0030),
    .TXDRV_FREQBAND(0),
    .TXFE_CFG0(16'b0000001111000010),
    .TXFE_CFG1(16'b0110110000000000),
    .TXFE_CFG2(16'b0110110000000000),
    .TXFE_CFG3(16'b0110110000000000),
    .TXFIFO_ADDR_CFG("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR(4),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00011),
    .TXPHDLY_CFG0(16'h6070),
    .TXPHDLY_CFG1(16'h000E),
    .TXPH_CFG(16'h0723),
    .TXPH_CFG2(16'h0000),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(16'b0000001100000000),
    .TXPI_CFG1(16'b0001000000000000),
    .TXPI_GRAY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPM(1'b0),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPMARESET_TIME(5'b00011),
    .TXREFCLKDIV2_SEL(1'b0),
    .TXSWBST_BST(1),
    .TXSWBST_EN(0),
    .TXSWBST_MAG(4),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(64),
    .TX_DCC_LOOP_RST_CFG(16'h0004),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DEEMPH2(6'b000000),
    .TX_DEEMPH3(6'b000000),
    .TX_DIVRESET_TIME(5'b00001),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b100),
    .TX_EIDLE_DEASSERT_DELAY(3'b011),
    .TX_FABINT_USRCLK_FLOP(1'b0),
    .TX_FIFO_BYP_EN(1'b0),
    .TX_IDLE_DATA_ZERO(1'b0),
    .TX_INT_DATAWIDTH(2),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1011000),
    .TX_MARGIN_FULL_1(7'b1010111),
    .TX_MARGIN_FULL_2(7'b1010101),
    .TX_MARGIN_FULL_3(7'b1010011),
    .TX_MARGIN_FULL_4(7'b1010001),
    .TX_MARGIN_LOW_0(7'b1001100),
    .TX_MARGIN_LOW_1(7'b1001011),
    .TX_MARGIN_LOW_2(7'b1001000),
    .TX_MARGIN_LOW_3(7'b1000010),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PHICAL_CFG0(16'h0020),
    .TX_PHICAL_CFG1(16'h0040),
    .TX_PI_BIASSET(1),
    .TX_PMADATA_OPT(1'b0),
    .TX_PMA_POWER_SAVE(1'b0),
    .TX_PMA_RSV0(16'h0000),
    .TX_PMA_RSV1(16'h0000),
    .TX_PROGCLK_SEL("PREPI"),
    .TX_PROGDIV_CFG(32.000000),
    .TX_PROGDIV_RATE(16'h0001),
    .TX_RXDETECT_CFG(14'h0032),
    .TX_RXDETECT_REF(5),
    .TX_SAMPLE_PERIOD(3'b111),
    .TX_SW_MEAS(2'b00),
    .TX_VREG_CTRL(3'b011),
    .TX_VREG_PDB(1'b1),
    .TX_VREG_VREFSEL(2'b10),
    .TX_XCLK_SEL("TXOUT"),
    .USB_BOTH_BURST_IDLE(1'b0),
    .USB_BURSTMAX_U3WAKE(7'b1111111),
    .USB_BURSTMIN_U3WAKE(7'b1100011),
    .USB_CLK_COR_EQ_EN(1'b0),
    .USB_EXT_CNTL(1'b1),
    .USB_IDLEMAX_POLLING(10'b1010111011),
    .USB_IDLEMIN_POLLING(10'b0100101011),
    .USB_LFPSPING_BURST(9'b000000101),
    .USB_LFPSPOLLING_BURST(9'b000110001),
    .USB_LFPSPOLLING_IDLE_MS(9'b000000100),
    .USB_LFPSU1EXIT_BURST(9'b000011101),
    .USB_LFPSU2LPEXIT_BURST_MS(9'b001100011),
    .USB_LFPSU3WAKE_BURST_MS(9'b111110011),
    .USB_LFPS_TPERIOD(4'b0011),
    .USB_LFPS_TPERIOD_ACCURATE(1'b1),
    .USB_MODE(1'b0),
    .USB_PCIE_ERR_REP_DIS(1'b0),
    .USB_PING_SATA_MAX_INIT(21),
    .USB_PING_SATA_MIN_INIT(12),
    .USB_POLL_SATA_MAX_BURST(8),
    .USB_POLL_SATA_MIN_BURST(4),
    .USB_RAW_ELEC(1'b0),
    .USB_RXIDLE_P0_CTRL(1'b1),
    .USB_TXIDLE_TUNE_ENABLE(1'b1),
    .USB_U1_SATA_MAX_WAKE(7),
    .USB_U1_SATA_MIN_WAKE(4),
    .USB_U2_SAS_MAX_COM(64),
    .USB_U2_SAS_MIN_COM(36),
    .USE_PCS_CLK_PHASE_SEL(1'b0),
    .Y_ALL_MODE(1'b0)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST 
       (.BUFGTCE(bufgtce_out),
        .BUFGTCEMASK(bufgtcemask_out),
        .BUFGTDIV(bufgtdiv_out),
        .BUFGTRESET(bufgtreset_out),
        .BUFGTRSTMASK(bufgtrstmask_out),
        .CDRSTEPDIR(cdrstepdir_in),
        .CDRSTEPSQ(cdrstepsq_in),
        .CDRSTEPSX(cdrstepsx_in),
        .CFGRESET(cfgreset_in),
        .CLKRSVD0(clkrsvd0_in),
        .CLKRSVD1(clkrsvd1_in),
        .CPLLFBCLKLOST(cpllfbclklost_out),
        .CPLLFREQLOCK(cpllfreqlock_in),
        .CPLLLOCK(cplllock_out),
        .CPLLLOCKDETCLK(cplllockdetclk_in),
        .CPLLLOCKEN(cplllocken_in),
        .CPLLPD(cpllpd_in),
        .CPLLREFCLKLOST(cpllrefclklost_out),
        .CPLLREFCLKSEL(cpllrefclksel_in),
        .CPLLRESET(cpllreset_in),
        .DMONFIFORESET(dmonfiforeset_in),
        .DMONITORCLK(dmonitorclk_in),
        .DMONITOROUT(dmonitorout_out),
        .DMONITOROUTCLK(dmonitoroutclk_out),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPRST(drprst_in),
        .DRPWE(drpwe_in),
        .EYESCANDATAERROR(eyescandataerror_out),
        .EYESCANRESET(eyescanreset_in),
        .EYESCANTRIGGER(eyescantrigger_in),
        .FREQOS(freqos_in),
        .GTGREFCLK(gtgrefclk_in),
        .GTNORTHREFCLK0(gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gtnorthrefclk1_in),
        .GTPOWERGOOD(\gen_gtwizard_gtye4.gtpowergood_int ),
        .GTREFCLK0(gtrefclk0_in),
        .GTREFCLK1(gtrefclk1_in),
        .GTREFCLKMONITOR(gtrefclkmonitor_out),
        .GTRSVD(gtrsvd_in),
        .GTRXRESET(\gen_gtwizard_gtye4.gtrxreset_int ),
        .GTRXRESETSEL(gtrxresetsel_in),
        .GTSOUTHREFCLK0(gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gtsouthrefclk1_in),
        .GTTXRESET(\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .GTTXRESETSEL(gttxresetsel_in),
        .GTYRXN(gtyrxn_in),
        .GTYRXP(gtyrxp_in),
        .GTYTXN(gtytxn_out),
        .GTYTXP(gtytxp_out),
        .INCPCTRL(incpctrl_in),
        .LOOPBACK(loopback_in),
        .PCIEEQRXEQADAPTDONE(pcieeqrxeqadaptdone_in),
        .PCIERATEGEN3(pcierategen3_out),
        .PCIERATEIDLE(pcierateidle_out),
        .PCIERATEQPLLPD(pcierateqpllpd_out),
        .PCIERATEQPLLRESET(pcierateqpllreset_out),
        .PCIERSTIDLE(pcierstidle_in),
        .PCIERSTTXSYNCSTART(pciersttxsyncstart_in),
        .PCIESYNCTXSYNCDONE(pciesynctxsyncdone_out),
        .PCIEUSERGEN3RDY(pcieusergen3rdy_out),
        .PCIEUSERPHYSTATUSRST(pcieuserphystatusrst_out),
        .PCIEUSERRATEDONE(pcieuserratedone_in),
        .PCIEUSERRATESTART(pcieuserratestart_out),
        .PCSRSVDIN(pcsrsvdin_in),
        .PCSRSVDOUT(pcsrsvdout_out),
        .PHYSTATUS(phystatus_out),
        .PINRSRVDAS(pinrsrvdas_out),
        .POWERPRESENT(powerpresent_out),
        .QPLL0CLK(qpll0outclk_out),
        .QPLL0FREQLOCK(qpll0freqlock_in),
        .QPLL0REFCLK(qpll0outrefclk_out),
        .QPLL1CLK(qpll1outclk_out),
        .QPLL1FREQLOCK(qpll1freqlock_in),
        .QPLL1REFCLK(qpll1outrefclk_out),
        .RESETEXCEPTION(resetexception_out),
        .RESETOVRD(resetovrd_in),
        .RX8B10BEN(rx8b10ben_in),
        .RXAFECFOKEN(rxafecfoken_in),
        .RXBUFRESET(rxbufreset_in),
        .RXBUFSTATUS(rxbufstatus_out),
        .RXBYTEISALIGNED(rxbyteisaligned_out),
        .RXBYTEREALIGN(rxbyterealign_out),
        .RXCDRFREQRESET(rxcdrfreqreset_in),
        .RXCDRHOLD(rxcdrhold_in),
        .RXCDRLOCK(rxcdrlock_out),
        .RXCDROVRDEN(rxcdrovrden_in),
        .RXCDRPHDONE(rxcdrphdone_out),
        .RXCDRRESET(rxcdrreset_in),
        .RXCHANBONDSEQ(rxchanbondseq_out),
        .RXCHANISALIGNED(rxchanisaligned_out),
        .RXCHANREALIGN(rxchanrealign_out),
        .RXCHBONDEN(rxchbonden_in),
        .RXCHBONDI(rxchbondi_in),
        .RXCHBONDLEVEL(rxchbondlevel_in),
        .RXCHBONDMASTER(rxchbondmaster_in),
        .RXCHBONDO(rxchbondo_out),
        .RXCHBONDSLAVE(rxchbondslave_in),
        .RXCKCALDONE(rxckcaldone_out),
        .RXCKCALRESET(rxckcalreset_in),
        .RXCKCALSTART(rxckcalstart_in),
        .RXCLKCORCNT(rxclkcorcnt_out),
        .RXCOMINITDET(rxcominitdet_out),
        .RXCOMMADET(rxcommadet_out),
        .RXCOMMADETEN(rxcommadeten_in),
        .RXCOMSASDET(rxcomsasdet_out),
        .RXCOMWAKEDET(rxcomwakedet_out),
        .RXCTRL0(rxctrl0_out),
        .RXCTRL1(rxctrl1_out),
        .RXCTRL2(rxctrl2_out),
        .RXCTRL3(rxctrl3_out),
        .RXDATA(rxdata_out),
        .RXDATAEXTENDRSVD(rxdataextendrsvd_out),
        .RXDATAVALID(rxdatavalid_out),
        .RXDFEAGCHOLD(rxdfeagchold_in),
        .RXDFEAGCOVRDEN(rxdfeagcovrden_in),
        .RXDFECFOKFCNUM(rxdfecfokfcnum_in),
        .RXDFECFOKFEN(rxdfecfokfen_in),
        .RXDFECFOKFPULSE(rxdfecfokfpulse_in),
        .RXDFECFOKHOLD(rxdfecfokhold_in),
        .RXDFECFOKOVREN(rxdfecfokovren_in),
        .RXDFEKHHOLD(rxdfekhhold_in),
        .RXDFEKHOVRDEN(rxdfekhovrden_in),
        .RXDFELFHOLD(rxdfelfhold_in),
        .RXDFELFOVRDEN(rxdfelfovrden_in),
        .RXDFELPMRESET(rxdfelpmreset_in),
        .RXDFETAP10HOLD(rxdfetap10hold_in),
        .RXDFETAP10OVRDEN(rxdfetap10ovrden_in),
        .RXDFETAP11HOLD(rxdfetap11hold_in),
        .RXDFETAP11OVRDEN(rxdfetap11ovrden_in),
        .RXDFETAP12HOLD(rxdfetap12hold_in),
        .RXDFETAP12OVRDEN(rxdfetap12ovrden_in),
        .RXDFETAP13HOLD(rxdfetap13hold_in),
        .RXDFETAP13OVRDEN(rxdfetap13ovrden_in),
        .RXDFETAP14HOLD(rxdfetap14hold_in),
        .RXDFETAP14OVRDEN(rxdfetap14ovrden_in),
        .RXDFETAP15HOLD(rxdfetap15hold_in),
        .RXDFETAP15OVRDEN(rxdfetap15ovrden_in),
        .RXDFETAP2HOLD(rxdfetap2hold_in),
        .RXDFETAP2OVRDEN(rxdfetap2ovrden_in),
        .RXDFETAP3HOLD(rxdfetap3hold_in),
        .RXDFETAP3OVRDEN(rxdfetap3ovrden_in),
        .RXDFETAP4HOLD(rxdfetap4hold_in),
        .RXDFETAP4OVRDEN(rxdfetap4ovrden_in),
        .RXDFETAP5HOLD(rxdfetap5hold_in),
        .RXDFETAP5OVRDEN(rxdfetap5ovrden_in),
        .RXDFETAP6HOLD(rxdfetap6hold_in),
        .RXDFETAP6OVRDEN(rxdfetap6ovrden_in),
        .RXDFETAP7HOLD(rxdfetap7hold_in),
        .RXDFETAP7OVRDEN(rxdfetap7ovrden_in),
        .RXDFETAP8HOLD(rxdfetap8hold_in),
        .RXDFETAP8OVRDEN(rxdfetap8ovrden_in),
        .RXDFETAP9HOLD(rxdfetap9hold_in),
        .RXDFETAP9OVRDEN(rxdfetap9ovrden_in),
        .RXDFEUTHOLD(rxdfeuthold_in),
        .RXDFEUTOVRDEN(rxdfeutovrden_in),
        .RXDFEVPHOLD(rxdfevphold_in),
        .RXDFEVPOVRDEN(rxdfevpovrden_in),
        .RXDFEXYDEN(rxdfexyden_in),
        .RXDLYBYPASS(rxdlybypass_in),
        .RXDLYEN(rxdlyen_in),
        .RXDLYOVRDEN(rxdlyovrden_in),
        .RXDLYSRESET(rxdlysreset_in),
        .RXDLYSRESETDONE(rxdlysresetdone_out),
        .RXELECIDLE(rxelecidle_out),
        .RXELECIDLEMODE(rxelecidlemode_in),
        .RXEQTRAINING(rxeqtraining_in),
        .RXGEARBOXSLIP(rxgearboxslip_in),
        .RXHEADER(rxheader_out),
        .RXHEADERVALID(rxheadervalid_out),
        .RXLATCLK(rxlatclk_in),
        .RXLFPSTRESETDET(rxlfpstresetdet_out),
        .RXLFPSU2LPEXITDET(rxlfpsu2lpexitdet_out),
        .RXLFPSU3WAKEDET(rxlfpsu3wakedet_out),
        .RXLPMEN(rxlpmen_in),
        .RXLPMGCHOLD(rxlpmgchold_in),
        .RXLPMGCOVRDEN(rxlpmgcovrden_in),
        .RXLPMHFHOLD(rxlpmhfhold_in),
        .RXLPMHFOVRDEN(rxlpmhfovrden_in),
        .RXLPMLFHOLD(rxlpmlfhold_in),
        .RXLPMLFKLOVRDEN(rxlpmlfklovrden_in),
        .RXLPMOSHOLD(rxlpmoshold_in),
        .RXLPMOSOVRDEN(rxlpmosovrden_in),
        .RXMCOMMAALIGNEN(rxmcommaalignen_in),
        .RXMONITOROUT(rxmonitorout_out),
        .RXMONITORSEL(rxmonitorsel_in),
        .RXOOBRESET(rxoobreset_in),
        .RXOSCALRESET(rxoscalreset_in),
        .RXOSHOLD(rxoshold_in),
        .RXOSINTDONE(rxosintdone_out),
        .RXOSINTSTARTED(rxosintstarted_out),
        .RXOSINTSTROBEDONE(rxosintstrobedone_out),
        .RXOSINTSTROBESTARTED(rxosintstrobestarted_out),
        .RXOSOVRDEN(rxosovrden_in),
        .RXOUTCLK(rxoutclk_out),
        .RXOUTCLKFABRIC(rxoutclkfabric_out),
        .RXOUTCLKPCS(rxoutclkpcs_out),
        .RXOUTCLKSEL(rxoutclksel_in),
        .RXPCOMMAALIGNEN(rxpcommaalignen_in),
        .RXPCSRESET(rxpcsreset_in),
        .RXPD(rxpd_in),
        .RXPHALIGN(rxphalign_in),
        .RXPHALIGNDONE(rxphaligndone_out),
        .RXPHALIGNEN(rxphalignen_in),
        .RXPHALIGNERR(rxphalignerr_out),
        .RXPHDLYPD(rxphdlypd_in),
        .RXPHDLYRESET(rxphdlyreset_in),
        .RXPLLCLKSEL(rxpllclksel_in),
        .RXPMARESET(rxpmareset_in),
        .RXPMARESETDONE(rxpmaresetdone_out),
        .RXPOLARITY(rxpolarity_in),
        .RXPRBSCNTRESET(rxprbscntreset_in),
        .RXPRBSERR(rxprbserr_out),
        .RXPRBSLOCKED(rxprbslocked_out),
        .RXPRBSSEL(rxprbssel_in),
        .RXPRGDIVRESETDONE(rxprgdivresetdone_out),
        .RXPROGDIVRESET(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .RXRATE(rxrate_in),
        .RXRATEDONE(rxratedone_out),
        .RXRATEMODE(rxratemode_in),
        .RXRECCLKOUT(rxrecclkout_out),
        .RXRESETDONE(rxresetdone_out),
        .RXSLIDE(rxslide_in),
        .RXSLIDERDY(rxsliderdy_out),
        .RXSLIPDONE(rxslipdone_out),
        .RXSLIPOUTCLK(rxslipoutclk_in),
        .RXSLIPOUTCLKRDY(rxslipoutclkrdy_out),
        .RXSLIPPMA(rxslippma_in),
        .RXSLIPPMARDY(rxslippmardy_out),
        .RXSTARTOFSEQ(rxstartofseq_out),
        .RXSTATUS(rxstatus_out),
        .RXSYNCALLIN(rxsyncallin_in),
        .RXSYNCDONE(rxsyncdone_out),
        .RXSYNCIN(rxsyncin_in),
        .RXSYNCMODE(rxsyncmode_in),
        .RXSYNCOUT(rxsyncout_out),
        .RXSYSCLKSEL(rxsysclksel_in),
        .RXTERMINATION(rxtermination_in),
        .RXUSERRDY(\gen_gtwizard_gtye4.rxuserrdy_int ),
        .RXUSRCLK(rxusrclk_in),
        .RXUSRCLK2(rxusrclk2_in),
        .RXVALID(rxvalid_out),
        .SIGVALIDCLK(sigvalidclk_in),
        .TSTIN(tstin_in),
        .TX8B10BBYPASS(tx8b10bbypass_in),
        .TX8B10BEN(tx8b10ben_in),
        .TXBUFSTATUS(txbufstatus_out),
        .TXCOMFINISH(txcomfinish_out),
        .TXCOMINIT(txcominit_in),
        .TXCOMSAS(txcomsas_in),
        .TXCOMWAKE(txcomwake_in),
        .TXCTRL0(txctrl0_in),
        .TXCTRL1(txctrl1_in),
        .TXCTRL2(txctrl2_in),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtwiz_userdata_tx_in}),
        .TXDATAEXTENDRSVD(txdataextendrsvd_in),
        .TXDCCDONE(txdccdone_out),
        .TXDCCFORCESTART(txdccforcestart_in),
        .TXDCCRESET(txdccreset_in),
        .TXDEEMPH(txdeemph_in),
        .TXDETECTRX(txdetectrx_in),
        .TXDIFFCTRL(txdiffctrl_in),
        .TXDLYBYPASS(txdlybypass_in),
        .TXDLYEN(txdlyen_in),
        .TXDLYHOLD(txdlyhold_in),
        .TXDLYOVRDEN(txdlyovrden_in),
        .TXDLYSRESET(txdlysreset_in),
        .TXDLYSRESETDONE(txdlysresetdone_out),
        .TXDLYUPDOWN(txdlyupdown_in),
        .TXELECIDLE(txelecidle_in),
        .TXHEADER(txheader_in),
        .TXINHIBIT(txinhibit_in),
        .TXLATCLK(txlatclk_in),
        .TXLFPSTRESET(txlfpstreset_in),
        .TXLFPSU2LPEXIT(txlfpsu2lpexit_in),
        .TXLFPSU3WAKE(txlfpsu3wake_in),
        .TXMAINCURSOR(txmaincursor_in),
        .TXMARGIN(txmargin_in),
        .TXMUXDCDEXHOLD(txmuxdcdexhold_in),
        .TXMUXDCDORWREN(txmuxdcdorwren_in),
        .TXONESZEROS(txoneszeros_in),
        .TXOUTCLK(txoutclk_out),
        .TXOUTCLKFABRIC(txoutclkfabric_out),
        .TXOUTCLKPCS(txoutclkpcs_out),
        .TXOUTCLKSEL(txoutclksel_in),
        .TXPCSRESET(txpcsreset_in),
        .TXPD(txpd_in),
        .TXPDELECIDLEMODE(txpdelecidlemode_in),
        .TXPHALIGN(txphalign_in),
        .TXPHALIGNDONE(txphaligndone_out),
        .TXPHALIGNEN(txphalignen_in),
        .TXPHDLYPD(txphdlypd_in),
        .TXPHDLYRESET(txphdlyreset_in),
        .TXPHDLYTSTCLK(txphdlytstclk_in),
        .TXPHINIT(txphinit_in),
        .TXPHINITDONE(txphinitdone_out),
        .TXPHOVRDEN(txphovrden_in),
        .TXPIPPMEN(txpippmen_in),
        .TXPIPPMOVRDEN(txpippmovrden_in),
        .TXPIPPMPD(txpippmpd_in),
        .TXPIPPMSEL(txpippmsel_in),
        .TXPIPPMSTEPSIZE(txpippmstepsize_in),
        .TXPISOPD(\gen_powergood_delay.pwr_on_fsm_reg ),
        .TXPLLCLKSEL(txpllclksel_in),
        .TXPMARESET(\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .TXPMARESETDONE(txpmaresetdone_out),
        .TXPOLARITY(txpolarity_in),
        .TXPOSTCURSOR(txpostcursor_in),
        .TXPRBSFORCEERR(txprbsforceerr_in),
        .TXPRBSSEL(txprbssel_in),
        .TXPRECURSOR(txprecursor_in),
        .TXPRGDIVRESETDONE(txprgdivresetdone_out),
        .TXPROGDIVRESET(\gen_gtwizard_gtye4.txprogdivreset_int ),
        .TXRATE(TXRATE),
        .TXRATEDONE(txratedone_out),
        .TXRATEMODE(\gen_powergood_delay.pwr_on_fsm_reg_0 ),
        .TXRESETDONE(txresetdone_out),
        .TXSEQUENCE(txsequence_in),
        .TXSWING(txswing_in),
        .TXSYNCALLIN(txsyncallin_in),
        .TXSYNCDONE(txsyncdone_out),
        .TXSYNCIN(txsyncin_in),
        .TXSYNCMODE(txsyncmode_in),
        .TXSYNCOUT(txsyncout_out),
        .TXSYSCLKSEL(txsysclksel_in),
        .TXUSERRDY(\gen_gtwizard_gtye4.txuserrdy_int ),
        .TXUSRCLK(txusrclk_in),
        .TXUSRCLK2(txusrclk2_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common
   (drprdy_common_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    rst_in0,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    gtwiz_reset_qpll0reset_out,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in);
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output rst_in0;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [15:0]drpaddr_common_in;
  wire [0:0]drpclk_common_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdo_common_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drpwe_common_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire rst_in0;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTYE4_COMMON #(
    .AEN_QPLL0_FBDIV(1'b1),
    .AEN_QPLL1_FBDIV(1'b1),
    .AEN_SDM0TOGGLE(1'b0),
    .AEN_SDM1TOGGLE(1'b0),
    .A_SDM0TOGGLE(1'b0),
    .A_SDM1DATA_HIGH(9'b000000000),
    .A_SDM1DATA_LOW(16'b0000000000000000),
    .A_SDM1TOGGLE(1'b0),
    .BIAS_CFG0(16'h0000),
    .BIAS_CFG1(16'h0000),
    .BIAS_CFG2(16'h0124),
    .BIAS_CFG3(16'h0041),
    .BIAS_CFG4(16'h0010),
    .BIAS_CFG_RSVD(16'h0000),
    .COMMON_CFG0(16'h0000),
    .COMMON_CFG1(16'h0000),
    .POR_CFG(16'h0000),
    .PPF0_CFG(16'h0600),
    .PPF1_CFG(16'h0600),
    .QPLL0CLKOUT_RATE("HALF"),
    .QPLL0_CFG0(16'h331C),
    .QPLL0_CFG1(16'hD038),
    .QPLL0_CFG1_G3(16'hD038),
    .QPLL0_CFG2(16'h0FC0),
    .QPLL0_CFG2_G3(16'h0FC0),
    .QPLL0_CFG3(16'h0120),
    .QPLL0_CFG4(16'h0002),
    .QPLL0_CP(10'b0011111111),
    .QPLL0_CP_G3(10'b0000001111),
    .QPLL0_FBDIV(66),
    .QPLL0_FBDIV_G3(160),
    .QPLL0_INIT_CFG0(16'h02B2),
    .QPLL0_INIT_CFG1(8'h00),
    .QPLL0_LOCK_CFG(16'h25E8),
    .QPLL0_LOCK_CFG_G3(16'h25E8),
    .QPLL0_LPF(10'b1000111111),
    .QPLL0_LPF_G3(10'b0111010101),
    .QPLL0_PCI_EN(1'b0),
    .QPLL0_RATE_SW_USE_DRP(1'b1),
    .QPLL0_REFCLK_DIV(1),
    .QPLL0_SDM_CFG0(16'h0080),
    .QPLL0_SDM_CFG1(16'h0000),
    .QPLL0_SDM_CFG2(16'h0000),
    .QPLL1CLKOUT_RATE("HALF"),
    .QPLL1_CFG0(16'h331C),
    .QPLL1_CFG1(16'hD038),
    .QPLL1_CFG1_G3(16'hD038),
    .QPLL1_CFG2(16'h0FC3),
    .QPLL1_CFG2_G3(16'h0FC3),
    .QPLL1_CFG3(16'h0120),
    .QPLL1_CFG4(16'h0002),
    .QPLL1_CP(10'b0011111111),
    .QPLL1_CP_G3(10'b0001111111),
    .QPLL1_FBDIV(66),
    .QPLL1_FBDIV_G3(80),
    .QPLL1_INIT_CFG0(16'h02B2),
    .QPLL1_INIT_CFG1(8'h00),
    .QPLL1_LOCK_CFG(16'h25E8),
    .QPLL1_LOCK_CFG_G3(16'h25E8),
    .QPLL1_LPF(10'b1000011111),
    .QPLL1_LPF_G3(10'b0111010100),
    .QPLL1_PCI_EN(1'b0),
    .QPLL1_RATE_SW_USE_DRP(1'b1),
    .QPLL1_REFCLK_DIV(1),
    .QPLL1_SDM_CFG0(16'h0080),
    .QPLL1_SDM_CFG1(16'h0000),
    .QPLL1_SDM_CFG2(16'h0000),
    .RSVD_ATTR0(16'h0000),
    .RSVD_ATTR1(16'h0000),
    .RSVD_ATTR2(16'h0000),
    .RSVD_ATTR3(16'h0000),
    .RXRECCLKOUT0_SEL(2'b00),
    .RXRECCLKOUT1_SEL(2'b00),
    .SARC_ENB(1'b0),
    .SARC_SEL(1'b0),
    .SDM0INITSEED0_0(16'b0000000100010001),
    .SDM0INITSEED0_1(9'b000010001),
    .SDM1INITSEED0_0(16'b0000000100010001),
    .SDM1INITSEED0_1(9'b000010001),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .UB_CFG0(16'h0000),
    .UB_CFG1(16'h0000),
    .UB_CFG2(16'h0000),
    .UB_CFG3(16'h0000),
    .UB_CFG4(16'h0000),
    .UB_CFG5(16'h0400),
    .UB_CFG6(16'h0000)) 
    \gtye4_common_gen.GTYE4_COMMON_PRIM_INST 
       (.BGBYPASSB(bgbypassb_in),
        .BGMONITORENB(bgmonitorenb_in),
        .BGPDB(bgpdb_in),
        .BGRCALOVRD(bgrcalovrd_in),
        .BGRCALOVRDENB(bgrcalovrdenb_in),
        .DRPADDR(drpaddr_common_in),
        .DRPCLK(drpclk_common_in),
        .DRPDI(drpdi_common_in),
        .DRPDO(drpdo_common_out),
        .DRPEN(drpen_common_in),
        .DRPRDY(drprdy_common_out),
        .DRPWE(drpwe_common_in),
        .GTGREFCLK0(gtgrefclk0_in),
        .GTGREFCLK1(gtgrefclk1_in),
        .GTNORTHREFCLK00(gtnorthrefclk00_in),
        .GTNORTHREFCLK01(gtnorthrefclk01_in),
        .GTNORTHREFCLK10(gtnorthrefclk10_in),
        .GTNORTHREFCLK11(gtnorthrefclk11_in),
        .GTREFCLK00(gtrefclk00_in),
        .GTREFCLK01(gtrefclk01_in),
        .GTREFCLK10(gtrefclk10_in),
        .GTREFCLK11(gtrefclk11_in),
        .GTSOUTHREFCLK00(gtsouthrefclk00_in),
        .GTSOUTHREFCLK01(gtsouthrefclk01_in),
        .GTSOUTHREFCLK10(gtsouthrefclk10_in),
        .GTSOUTHREFCLK11(gtsouthrefclk11_in),
        .PCIERATEQPLL0(pcierateqpll0_in),
        .PCIERATEQPLL1(pcierateqpll1_in),
        .PMARSVD0(pmarsvd0_in),
        .PMARSVD1(pmarsvd1_in),
        .PMARSVDOUT0(pmarsvdout0_out),
        .PMARSVDOUT1(pmarsvdout1_out),
        .QPLL0CLKRSVD0(qpll0clkrsvd0_in),
        .QPLL0CLKRSVD1(qpll0clkrsvd1_in),
        .QPLL0FBCLKLOST(qpll0fbclklost_out),
        .QPLL0FBDIV(qpll0fbdiv_in),
        .QPLL0LOCK(qpll0lock_out),
        .QPLL0LOCKDETCLK(qpll0lockdetclk_in),
        .QPLL0LOCKEN(qpll0locken_in),
        .QPLL0OUTCLK(qpll0outclk_out),
        .QPLL0OUTREFCLK(qpll0outrefclk_out),
        .QPLL0PD(qpll0pd_in),
        .QPLL0REFCLKLOST(qpll0refclklost_out),
        .QPLL0REFCLKSEL(qpll0refclksel_in),
        .QPLL0RESET(gtwiz_reset_qpll0reset_out),
        .QPLL1CLKRSVD0(qpll1clkrsvd0_in),
        .QPLL1CLKRSVD1(qpll1clkrsvd1_in),
        .QPLL1FBCLKLOST(qpll1fbclklost_out),
        .QPLL1FBDIV(qpll1fbdiv_in),
        .QPLL1LOCK(qpll1lock_out),
        .QPLL1LOCKDETCLK(qpll1lockdetclk_in),
        .QPLL1LOCKEN(qpll1locken_in),
        .QPLL1OUTCLK(qpll1outclk_out),
        .QPLL1OUTREFCLK(qpll1outrefclk_out),
        .QPLL1PD(qpll1pd_in),
        .QPLL1REFCLKLOST(qpll1refclklost_out),
        .QPLL1REFCLKSEL(qpll1refclksel_in),
        .QPLL1RESET(qpll1reset_in),
        .QPLLDMONITOR0(qplldmonitor0_out),
        .QPLLDMONITOR1(qplldmonitor1_out),
        .QPLLRSVD1(qpllrsvd1_in),
        .QPLLRSVD2(qpllrsvd2_in),
        .QPLLRSVD3(qpllrsvd3_in),
        .QPLLRSVD4(qpllrsvd4_in),
        .RCALENB(rcalenb_in),
        .REFCLKOUTMONITOR0(refclkoutmonitor0_out),
        .REFCLKOUTMONITOR1(refclkoutmonitor1_out),
        .RXRECCLK0SEL(rxrecclk0sel_out),
        .RXRECCLK1SEL(rxrecclk1sel_out),
        .SDM0DATA(sdm0data_in),
        .SDM0FINALOUT(sdm0finalout_out),
        .SDM0RESET(sdm0reset_in),
        .SDM0TESTDATA(sdm0testdata_out),
        .SDM0TOGGLE(sdm0toggle_in),
        .SDM0WIDTH(sdm0width_in),
        .SDM1DATA(sdm1data_in),
        .SDM1FINALOUT(sdm1finalout_out),
        .SDM1RESET(sdm1reset_in),
        .SDM1TESTDATA(sdm1testdata_out),
        .SDM1TOGGLE(sdm1toggle_in),
        .SDM1WIDTH(sdm1width_in),
        .UBCFGSTREAMEN(ubcfgstreamen_in),
        .UBDADDR(ubdaddr_out),
        .UBDEN(ubden_out),
        .UBDI(ubdi_out),
        .UBDO(ubdo_in),
        .UBDRDY(ubdrdy_in),
        .UBDWE(ubdwe_out),
        .UBENABLE(ubenable_in),
        .UBGPI(ubgpi_in),
        .UBINTR(ubintr_in),
        .UBIOLMBRST(ubiolmbrst_in),
        .UBMBRST(ubmbrst_in),
        .UBMDMCAPTURE(ubmdmcapture_in),
        .UBMDMDBGRST(ubmdmdbgrst_in),
        .UBMDMDBGUPDATE(ubmdmdbgupdate_in),
        .UBMDMREGEN(ubmdmregen_in),
        .UBMDMSHIFT(ubmdmshift_in),
        .UBMDMSYSRST(ubmdmsysrst_in),
        .UBMDMTCK(ubmdmtck_in),
        .UBMDMTDI(ubmdmtdi_in),
        .UBMDMTDO(ubmdmtdo_out),
        .UBRSVDOUT(ubrsvdout_out),
        .UBTXUART(ubtxuart_out));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_meta_i_1__4
       (.I0(qpll0lock_out),
        .O(rst_in0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood
   (out,
    i_in_meta_reg,
    TXRATE,
    i_in_meta_reg_0,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    CLK,
    gtrxreset_out_reg,
    txpisopd_in,
    txrate_in,
    txratemode_in,
    txpmareset_in);
  output out;
  output i_in_meta_reg;
  output [2:0]TXRATE;
  output i_in_meta_reg_0;
  output \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input CLK;
  input gtrxreset_out_reg;
  input [0:0]txpisopd_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [0:0]txpmareset_in;

  wire CLK;
  wire [2:0]TXRATE;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [4:0]\gen_powergood_delay.intclk_rrst_n_r ;
  wire \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ;
  (* RTL_KEEP = "true" *) wire \gen_powergood_delay.pwr_on_fsm ;
  wire \gen_powergood_delay.pwr_on_fsm_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[0]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[2]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[3]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[3]_i_2_n_0 ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[0] ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[1] ;
  wire \gen_powergood_delay.wait_cnt_reg_n_0_[2] ;
  wire gtrxreset_out_reg;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire p_0_in;
  wire [2:1]p_2_in;
  wire [0:0]txpisopd_in;
  wire [0:0]txpmareset_in;
  wire [2:0]txrate_in;
  wire [0:0]txratemode_in;

  assign out = \gen_powergood_delay.pwr_on_fsm ;
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .O(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[0] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(1'b1),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[1] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [0]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[2] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [1]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[3] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [2]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDCE \gen_powergood_delay.intclk_rrst_n_r_reg[4] 
       (.C(CLK),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.intclk_rrst_n_r [3]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [4]));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_powergood_delay.pwr_on_fsm_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(p_0_in),
        .O(\gen_powergood_delay.pwr_on_fsm_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.pwr_on_fsm_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(gtrxreset_out_reg),
        .D(\gen_powergood_delay.pwr_on_fsm_i_1_n_0 ),
        .Q(\gen_powergood_delay.pwr_on_fsm ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_powergood_delay.wait_cnt[0]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .O(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_powergood_delay.wait_cnt[1]_i_1 
       (.I0(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .O(p_2_in[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_powergood_delay.wait_cnt[2]_i_1 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gen_powergood_delay.wait_cnt[2]_i_2 
       (.I0(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .I2(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.wait_cnt[3]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6AAA)) 
    \gen_powergood_delay.wait_cnt[3]_i_2 
       (.I0(p_0_in),
        .I1(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .I2(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .I3(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .I4(\gen_powergood_delay.pwr_on_fsm ),
        .O(\gen_powergood_delay.wait_cnt[3]_i_2_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[0] ),
        .R(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[1]),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[1] ),
        .R(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_in[2]),
        .Q(\gen_powergood_delay.wait_cnt_reg_n_0_[2] ),
        .R(\gen_powergood_delay.wait_cnt[2]_i_1_n_0 ));
  FDRE \gen_powergood_delay.wait_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gen_powergood_delay.wait_cnt[3]_i_2_n_0 ),
        .Q(p_0_in),
        .R(\gen_powergood_delay.wait_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_2 
       (.I0(txpisopd_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(i_in_meta_reg));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_3 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txpmareset_in),
        .O(\gen_gtwizard_gtye4.txpmareset_ch_int ));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_4 
       (.I0(txratemode_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(i_in_meta_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_5 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txrate_in[2]),
        .O(TXRATE[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_6 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .I1(txrate_in[1]),
        .O(TXRATE[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_7 
       (.I0(txrate_in[0]),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(TXRATE[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer
   (gtwiz_reset_rx_done_out,
    rxusrclk2_in,
    gtwiz_reset_rx_done_int_reg);
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxusrclk2_in;
  input gtwiz_reset_rx_done_int_reg;

  wire gtwiz_reset_rx_done_int_reg;
  wire [0:0]gtwiz_reset_rx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1__0_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1__0
       (.I0(gtwiz_reset_rx_done_int_reg),
        .O(rst_in_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_rx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_inv_synchronizer_18
   (gtwiz_reset_tx_done_out,
    txusrclk2_in,
    gtwiz_reset_tx_done_int_reg);
  output [0:0]gtwiz_reset_tx_done_out;
  input [0:0]txusrclk2_in;
  input gtwiz_reset_tx_done_int_reg;

  wire gtwiz_reset_tx_done_int_reg;
  wire [0:0]gtwiz_reset_tx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]txusrclk2_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1
       (.I0(gtwiz_reset_tx_done_int_reg),
        .O(rst_in_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_tx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(txusrclk2_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer
   (gtwiz_reset_all_sync,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in);
  output gtwiz_reset_all_sync;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;

  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_all_in),
        .Q(gtwiz_reset_all_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_12
   (gtwiz_reset_rx_any_sync,
    pllreset_rx_out_reg,
    rxprogdivreset_out_reg,
    gtrxreset_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ,
    sm_reset_rx_cdr_to_sat_reg,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    i_in_out_reg,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtwiz_reset_rx_datapath_int_reg,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg);
  output gtwiz_reset_rx_any_sync;
  output pllreset_rx_out_reg;
  output rxprogdivreset_out_reg;
  output gtrxreset_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  input sm_reset_rx_cdr_to_sat_reg;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input i_in_out_reg;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input gtwiz_reset_rx_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire gtrxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_rx_any;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire i_in_out_reg;
  wire [2:0]out;
  wire pllreset_rx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire rxprogdivreset_out_reg;
  wire sm_reset_rx_cdr_to_sat_reg;

  LUT6 #(
    .INIT(64'hFFF7FFFF00070000)) 
    gtrxreset_out_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(i_in_out_reg),
        .I5(\gen_gtwizard_gtye4.gtrxreset_int ),
        .O(gtrxreset_out_reg));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_rx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(pllreset_rx_out_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rst_in_meta_i_1__1
       (.I0(gtwiz_reset_rx_datapath_int_reg),
        .I1(gtwiz_reset_rx_datapath_in),
        .I2(gtwiz_reset_rx_pll_and_datapath_in),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_rx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_rx_any),
        .Q(gtwiz_reset_rx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync3));
  LUT6 #(
    .INIT(64'hFFFBFFFF00120012)) 
    rxprogdivreset_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(sm_reset_rx_cdr_to_sat_reg),
        .I5(\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .O(rxprogdivreset_out_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_13
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_datapath_int_reg);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input gtwiz_reset_rx_datapath_int_reg;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_reg;
  wire in0;
  wire rst_in0_2;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__3
       (.I0(gtwiz_reset_rx_datapath_in),
        .I1(gtwiz_reset_rx_datapath_int_reg),
        .O(rst_in0_2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0_2),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0_2),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0_2),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0_2),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0_2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_14
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_rx_pll_and_datapath_int_reg,
    gtwiz_reset_rx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_rx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg;
  wire in0;
  wire p_0_in_1;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__2
       (.I0(gtwiz_reset_rx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_rx_pll_and_datapath_in),
        .O(p_0_in_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_0_in_1),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_0_in_1),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_0_in_1),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_0_in_1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_0_in_1),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_15
   (gtwiz_reset_tx_any_sync,
    pllreset_tx_out_reg,
    gttxreset_out_reg,
    gtwiz_reset_clk_freerun_in,
    out,
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ,
    sm_reset_tx_timer_sat_reg,
    \gen_gtwizard_gtye4.gttxreset_int ,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg);
  output gtwiz_reset_tx_any_sync;
  output pllreset_tx_out_reg;
  output gttxreset_out_reg;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [2:0]out;
  input \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  input sm_reset_tx_timer_sat_reg;
  input \gen_gtwizard_gtye4.gttxreset_int ;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;

  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gtye4.gttxreset_int ;
  wire gttxreset_out_reg;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire gtwiz_reset_tx_any;
  wire gtwiz_reset_tx_any_sync;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire [2:0]out;
  wire pllreset_tx_out_reg;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire sm_reset_tx_timer_sat_reg;

  LUT6 #(
    .INIT(64'h3F3FFFFF3F3F0014)) 
    gttxreset_out_i_1
       (.I0(gtwiz_reset_tx_any_sync),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(sm_reset_tx_timer_sat_reg),
        .I5(\gen_gtwizard_gtye4.gttxreset_int ),
        .O(gttxreset_out_reg));
  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_tx_out_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .O(pllreset_tx_out_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_in_meta_i_1
       (.I0(gtwiz_reset_tx_datapath_in),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .I2(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .O(gtwiz_reset_tx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_any),
        .Q(gtwiz_reset_tx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_16
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_tx_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_17
   (in0,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_tx_pll_and_datapath_int_reg,
    gtwiz_reset_tx_pll_and_datapath_in);
  output in0;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input gtwiz_reset_tx_pll_and_datapath_int_reg;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;

  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg;
  wire in0;
  wire p_1_in_0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__0
       (.I0(gtwiz_reset_tx_pll_and_datapath_int_reg),
        .I1(gtwiz_reset_tx_pll_and_datapath_in),
        .O(p_1_in_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(p_1_in_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(p_1_in_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(p_1_in_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(p_1_in_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(p_1_in_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_3_reset_synchronizer" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_reset_synchronizer_19
   (\gen_gtwizard_gtye4.txprogdivreset_int ,
    gtwiz_reset_clk_freerun_in,
    rst_in0);
  output \gen_gtwizard_gtye4.txprogdivreset_int ;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input rst_in0;

  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire rst_in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0),
        .Q(\gen_gtwizard_gtye4.txprogdivreset_int ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(gtwiz_reset_clk_freerun_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0),
        .Q(rst_in_sync3));
endmodule

(* CHECK_LICENSE_TYPE = "interlaken_0,interlaken,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* PARTIALLYOBFUSCATED *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (gt_ref_clk0_p,
    gt_ref_clk0_n,
    gt_refclk_out,
    init_clk,
    sys_reset,
    gt_txusrclk2,
    gtpowergood_out,
    gt_rxusrclk2,
    gt_rx_reset_done_inv,
    usr_rx_reset,
    gt0_rxp_in,
    gt0_rxn_in,
    gt_tx_reset_done_inv,
    usr_tx_reset,
    gt0_txn_out,
    gt0_txp_out,
    core_rx_reset,
    rx_ovfout,
    rx_dataout0,
    rx_chanout0,
    rx_enaout0,
    rx_sopout0,
    rx_eopout0,
    rx_errout0,
    rx_mtyout0,
    rx_dataout1,
    rx_chanout1,
    rx_enaout1,
    rx_sopout1,
    rx_eopout1,
    rx_errout1,
    rx_mtyout1,
    rx_dataout2,
    rx_chanout2,
    rx_enaout2,
    rx_sopout2,
    rx_eopout2,
    rx_errout2,
    rx_mtyout2,
    rx_dataout3,
    rx_chanout3,
    rx_enaout3,
    rx_sopout3,
    rx_eopout3,
    rx_errout3,
    rx_mtyout3,
    core_tx_reset,
    tx_rdyout,
    tx_ovfout,
    tx_datain0,
    tx_chanin0,
    tx_enain0,
    tx_sopin0,
    tx_eopin0,
    tx_errin0,
    tx_mtyin0,
    tx_bctlin0,
    tx_datain1,
    tx_chanin1,
    tx_enain1,
    tx_sopin1,
    tx_eopin1,
    tx_errin1,
    tx_mtyin1,
    tx_bctlin1,
    tx_datain2,
    tx_chanin2,
    tx_enain2,
    tx_sopin2,
    tx_eopin2,
    tx_errin2,
    tx_mtyin2,
    tx_bctlin2,
    tx_datain3,
    tx_chanin3,
    tx_enain3,
    tx_sopin3,
    tx_eopin3,
    tx_errin3,
    tx_mtyin3,
    tx_bctlin3,
    ctl_tx_enable,
    lockedn,
    core_drp_reset,
    drp_clk,
    drp_en,
    drp_we,
    drp_addr,
    drp_di,
    drp_do,
    drp_rdy,
    core_clk,
    lbus_clk,
    gtwiz_reset_tx_datapath,
    gtwiz_reset_rx_datapath,
    ctl_tx_diagword_lanestat,
    ctl_tx_diagword_intfstat,
    ctl_tx_mubits,
    stat_tx_underflow_err,
    stat_tx_burst_err,
    stat_tx_overflow_err,
    ctl_rx_force_resync,
    stat_rx_diagword_lanestat,
    stat_rx_diagword_intfstat,
    stat_rx_crc32_valid,
    stat_rx_crc32_err,
    stat_rx_mubits,
    stat_rx_mubits_updated,
    stat_rx_word_sync,
    stat_rx_synced,
    stat_rx_synced_err,
    stat_rx_framing_err,
    stat_rx_bad_type_err,
    stat_rx_mf_err,
    stat_rx_descram_err,
    stat_rx_mf_len_err,
    stat_rx_mf_repeat_err,
    stat_rx_aligned,
    stat_rx_misaligned,
    stat_rx_aligned_err,
    stat_rx_crc24_err,
    stat_rx_msop_err,
    stat_rx_meop_err,
    stat_rx_overflow_err,
    stat_rx_burstmax_err,
    stat_rx_burst_err,
    gt_txresetdone_int,
    gt_rxresetdone_int,
    gt_loopback_in);
  input gt_ref_clk0_p;
  input gt_ref_clk0_n;
  output gt_refclk_out;
  input init_clk;
  input sys_reset;
  output gt_txusrclk2;
  output [0:0]gtpowergood_out;
  output gt_rxusrclk2;
  output gt_rx_reset_done_inv;
  output usr_rx_reset;
  input gt0_rxp_in;
  input gt0_rxn_in;
  output gt_tx_reset_done_inv;
  output usr_tx_reset;
  output gt0_txn_out;
  output gt0_txp_out;
  input core_rx_reset;
  output rx_ovfout;
  output [127:0]rx_dataout0;
  output [10:0]rx_chanout0;
  output rx_enaout0;
  output rx_sopout0;
  output rx_eopout0;
  output rx_errout0;
  output [3:0]rx_mtyout0;
  output [127:0]rx_dataout1;
  output [10:0]rx_chanout1;
  output rx_enaout1;
  output rx_sopout1;
  output rx_eopout1;
  output rx_errout1;
  output [3:0]rx_mtyout1;
  output [127:0]rx_dataout2;
  output [10:0]rx_chanout2;
  output rx_enaout2;
  output rx_sopout2;
  output rx_eopout2;
  output rx_errout2;
  output [3:0]rx_mtyout2;
  output [127:0]rx_dataout3;
  output [10:0]rx_chanout3;
  output rx_enaout3;
  output rx_sopout3;
  output rx_eopout3;
  output rx_errout3;
  output [3:0]rx_mtyout3;
  input core_tx_reset;
  output tx_rdyout;
  output tx_ovfout;
  input [127:0]tx_datain0;
  input [10:0]tx_chanin0;
  input tx_enain0;
  input tx_sopin0;
  input tx_eopin0;
  input tx_errin0;
  input [3:0]tx_mtyin0;
  input tx_bctlin0;
  input [127:0]tx_datain1;
  input [10:0]tx_chanin1;
  input tx_enain1;
  input tx_sopin1;
  input tx_eopin1;
  input tx_errin1;
  input [3:0]tx_mtyin1;
  input tx_bctlin1;
  input [127:0]tx_datain2;
  input [10:0]tx_chanin2;
  input tx_enain2;
  input tx_sopin2;
  input tx_eopin2;
  input tx_errin2;
  input [3:0]tx_mtyin2;
  input tx_bctlin2;
  input [127:0]tx_datain3;
  input [10:0]tx_chanin3;
  input tx_enain3;
  input tx_sopin3;
  input tx_eopin3;
  input tx_errin3;
  input [3:0]tx_mtyin3;
  input tx_bctlin3;
  input ctl_tx_enable;
  input lockedn;
  input core_drp_reset;
  input drp_clk;
  input drp_en;
  input drp_we;
  input [9:0]drp_addr;
  input [15:0]drp_di;
  output [15:0]drp_do;
  output drp_rdy;
  input core_clk;
  input lbus_clk;
  input gtwiz_reset_tx_datapath;
  input gtwiz_reset_rx_datapath;
  input [11:0]ctl_tx_diagword_lanestat;
  input ctl_tx_diagword_intfstat;
  input [7:0]ctl_tx_mubits;
  output stat_tx_underflow_err;
  output stat_tx_burst_err;
  output stat_tx_overflow_err;
  input ctl_rx_force_resync;
  output [11:0]stat_rx_diagword_lanestat;
  output [11:0]stat_rx_diagword_intfstat;
  output [11:0]stat_rx_crc32_valid;
  output [11:0]stat_rx_crc32_err;
  output [7:0]stat_rx_mubits;
  output stat_rx_mubits_updated;
  output [11:0]stat_rx_word_sync;
  output [11:0]stat_rx_synced;
  output [11:0]stat_rx_synced_err;
  output [11:0]stat_rx_framing_err;
  output [11:0]stat_rx_bad_type_err;
  output [11:0]stat_rx_mf_err;
  output [11:0]stat_rx_descram_err;
  output [11:0]stat_rx_mf_len_err;
  output [11:0]stat_rx_mf_repeat_err;
  output stat_rx_aligned;
  output stat_rx_misaligned;
  output stat_rx_aligned_err;
  output stat_rx_crc24_err;
  output stat_rx_msop_err;
  output stat_rx_meop_err;
  output stat_rx_overflow_err;
  output stat_rx_burstmax_err;
  output stat_rx_burst_err;
  output gt_txresetdone_int;
  output gt_rxresetdone_int;
  input [2:0]gt_loopback_in;

  wire core_clk;
  wire core_drp_reset;
  wire core_rx_reset;
  wire core_tx_reset;
  wire ctl_rx_force_resync;
  wire ctl_tx_diagword_intfstat;
  wire [11:0]ctl_tx_diagword_lanestat;
  wire ctl_tx_enable;
  wire [7:0]ctl_tx_mubits;
  wire [9:0]drp_addr;
  wire drp_clk;
  wire [15:0]drp_di;
  wire [15:0]drp_do;
  wire drp_en;
  wire drp_rdy;
  wire drp_we;
  wire gt0_rxn_in;
  wire gt0_rxp_in;
  wire gt0_txn_out;
  wire gt0_txp_out;
  wire [2:0]gt_loopback_in;
  wire gt_ref_clk0_n;
  wire gt_ref_clk0_p;
  wire gt_refclk_out;
  wire gt_rx_reset_done_inv;
  wire gt_rxusrclk2;
  wire gt_tx_reset_done_inv;
  wire gt_txusrclk2;
  wire [0:0]gtpowergood_out;
  wire gtwiz_reset_rx_datapath;
  wire gtwiz_reset_tx_datapath;
  wire init_clk;
  wire lbus_clk;
  wire lockedn;
  wire [10:0]rx_chanout0;
  wire [10:0]rx_chanout1;
  wire [10:0]rx_chanout2;
  wire [10:0]rx_chanout3;
  wire [127:0]rx_dataout0;
  wire [127:0]rx_dataout1;
  wire [127:0]rx_dataout2;
  wire [127:0]rx_dataout3;
  wire rx_enaout0;
  wire rx_enaout1;
  wire rx_enaout2;
  wire rx_enaout3;
  wire rx_eopout0;
  wire rx_eopout1;
  wire rx_eopout2;
  wire rx_eopout3;
  wire rx_errout0;
  wire rx_errout1;
  wire rx_errout2;
  wire rx_errout3;
  wire [3:0]rx_mtyout0;
  wire [3:0]rx_mtyout1;
  wire [3:0]rx_mtyout2;
  wire [3:0]rx_mtyout3;
  wire rx_ovfout;
  wire rx_sopout0;
  wire rx_sopout1;
  wire rx_sopout2;
  wire rx_sopout3;
  wire stat_rx_aligned;
  wire stat_rx_aligned_err;
  wire [11:0]stat_rx_bad_type_err;
  wire stat_rx_burst_err;
  wire stat_rx_burstmax_err;
  wire stat_rx_crc24_err;
  wire [11:0]stat_rx_crc32_err;
  wire [11:0]stat_rx_crc32_valid;
  wire [11:0]stat_rx_descram_err;
  wire [11:0]stat_rx_diagword_intfstat;
  wire [11:0]stat_rx_diagword_lanestat;
  wire [11:0]stat_rx_framing_err;
  wire stat_rx_meop_err;
  wire [11:0]stat_rx_mf_err;
  wire [11:0]stat_rx_mf_len_err;
  wire [11:0]stat_rx_mf_repeat_err;
  wire stat_rx_misaligned;
  wire stat_rx_msop_err;
  wire [7:0]stat_rx_mubits;
  wire stat_rx_mubits_updated;
  wire stat_rx_overflow_err;
  wire [11:0]stat_rx_synced;
  wire [11:0]stat_rx_synced_err;
  wire [11:0]stat_rx_word_sync;
  wire stat_tx_burst_err;
  wire stat_tx_overflow_err;
  wire stat_tx_underflow_err;
  wire sys_reset;
  wire tx_bctlin0;
  wire tx_bctlin1;
  wire tx_bctlin2;
  wire tx_bctlin3;
  wire [10:0]tx_chanin0;
  wire [10:0]tx_chanin1;
  wire [10:0]tx_chanin2;
  wire [10:0]tx_chanin3;
  wire [127:0]tx_datain0;
  wire [127:0]tx_datain1;
  wire [127:0]tx_datain2;
  wire [127:0]tx_datain3;
  wire tx_enain0;
  wire tx_enain1;
  wire tx_enain2;
  wire tx_enain3;
  wire tx_eopin0;
  wire tx_eopin1;
  wire tx_eopin2;
  wire tx_eopin3;
  wire tx_errin0;
  wire tx_errin1;
  wire tx_errin2;
  wire tx_errin3;
  wire [3:0]tx_mtyin0;
  wire [3:0]tx_mtyin1;
  wire [3:0]tx_mtyin2;
  wire [3:0]tx_mtyin3;
  wire tx_ovfout;
  wire tx_rdyout;
  wire tx_sopin0;
  wire tx_sopin1;
  wire tx_sopin2;
  wire tx_sopin3;
  wire usr_rx_reset;
  wire usr_tx_reset;
  wire NLW_inst_gt0_drprdy_UNCONNECTED;
  wire NLW_inst_gt10_txn_out_UNCONNECTED;
  wire NLW_inst_gt10_txp_out_UNCONNECTED;
  wire NLW_inst_gt11_txn_out_UNCONNECTED;
  wire NLW_inst_gt11_txp_out_UNCONNECTED;
  wire NLW_inst_gt1_txn_out_UNCONNECTED;
  wire NLW_inst_gt1_txp_out_UNCONNECTED;
  wire NLW_inst_gt2_txn_out_UNCONNECTED;
  wire NLW_inst_gt2_txp_out_UNCONNECTED;
  wire NLW_inst_gt3_txn_out_UNCONNECTED;
  wire NLW_inst_gt3_txp_out_UNCONNECTED;
  wire NLW_inst_gt4_txn_out_UNCONNECTED;
  wire NLW_inst_gt4_txp_out_UNCONNECTED;
  wire NLW_inst_gt5_txn_out_UNCONNECTED;
  wire NLW_inst_gt5_txp_out_UNCONNECTED;
  wire NLW_inst_gt6_txn_out_UNCONNECTED;
  wire NLW_inst_gt6_txp_out_UNCONNECTED;
  wire NLW_inst_gt7_txn_out_UNCONNECTED;
  wire NLW_inst_gt7_txp_out_UNCONNECTED;
  wire NLW_inst_gt8_txn_out_UNCONNECTED;
  wire NLW_inst_gt8_txp_out_UNCONNECTED;
  wire NLW_inst_gt9_txn_out_UNCONNECTED;
  wire NLW_inst_gt9_txp_out_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_disc_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_req_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED;
  wire NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED;
  wire NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_busy_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED;
  wire NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED;
  wire [15:0]NLW_inst_gt0_drpdo_UNCONNECTED;
  wire [0:0]NLW_inst_gt_eyescandataerror_UNCONNECTED;
  wire [2:0]NLW_inst_gt_rxbufstatus_UNCONNECTED;
  wire [0:0]NLW_inst_gt_rxprbserr_UNCONNECTED;
  wire [0:0]NLW_inst_gt_rxresetdone_UNCONNECTED;
  wire [1:0]NLW_inst_gt_txbufstatus_UNCONNECTED;
  wire [0:0]NLW_inst_gt_txresetdone_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout00_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout01_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout02_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout03_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout04_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout05_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout06_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout07_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout08_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout09_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout10_UNCONNECTED;
  wire [65:0]NLW_inst_rx_bypass_dataout11_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_enaout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_availout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_overflowout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_syncedout_UNCONNECTED;
  wire [11:0]NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED;
  wire [255:0]NLW_inst_stat_rx_fc_stat_UNCONNECTED;
  wire [15:0]NLW_inst_stat_rx_retrans_latency_UNCONNECTED;
  wire [7:0]NLW_inst_stat_rx_retrans_seq_UNCONNECTED;
  wire [2:0]NLW_inst_stat_rx_retrans_state_UNCONNECTED;
  wire [4:0]NLW_inst_stat_rx_retrans_subseq_UNCONNECTED;
  wire [8:0]NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED;
  wire [1:0]NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED;
  wire [8:0]NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED;
  wire [643:0]NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED;

  (* C_ADD_GT_CNRL_STS_PORTS = "0" *) 
  (* C_BURSTMAX = "2'b11" *) 
  (* C_BURSTSHORT = "3'b001" *) 
  (* C_CHAN_EXT = "2'b00" *) 
  (* C_CLOCKING_MODE = "Synchronous" *) 
  (* C_ENABLE_ERR_INJ = "0" *) 
  (* C_ENABLE_IN_BAND_FC = "0" *) 
  (* C_ENABLE_OUT_BAND_FC = "0" *) 
  (* C_ENABLE_PIPELINE_REG = "0" *) 
  (* C_EN_RETRANS = "0" *) 
  (* C_GT_REF_CLK_FREQ = "156.250000" *) 
  (* C_GT_TYPE = "GTY" *) 
  (* C_INCLUDE_SHARED_LOGIC = "2" *) 
  (* C_INS_LOSS_NYQ = "10" *) 
  (* C_IN_BAND_FC_CALLEN = "7'b0000000" *) 
  (* C_LANE10_GT_LOC = "X0Y9" *) 
  (* C_LANE11_GT_LOC = "NA" *) 
  (* C_LANE12_GT_LOC = "NA" *) 
  (* C_LANE1_GT_LOC = "X1Y48" *) 
  (* C_LANE2_GT_LOC = "NA" *) 
  (* C_LANE3_GT_LOC = "NA" *) 
  (* C_LANE4_GT_LOC = "NA" *) 
  (* C_LANE5_GT_LOC = "NA" *) 
  (* C_LANE6_GT_LOC = "NA" *) 
  (* C_LANE7_GT_LOC = "NA" *) 
  (* C_LANE8_GT_LOC = "NA" *) 
  (* C_LANE9_GT_LOC = "NA" *) 
  (* C_LINE_RATE = "10.312500" *) 
  (* C_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* C_NUM_LANES = "1" *) 
  (* C_OPERATING_MODE = "3" *) 
  (* C_OUT_BAND_FC_CALLEN = "7'b0000000" *) 
  (* C_PACKET_MODE = "packet_mode" *) 
  (* C_RX_EQ_MODE = "Auto" *) 
  (* C_RX_RETRANS_MULT = "1" *) 
  (* C_RX_RETRANS_RETRY = "2" *) 
  (* C_RX_RETRANS_TIMER1 = "2048" *) 
  (* C_RX_RETRANS_TIMER2 = "0" *) 
  (* C_RX_RETRANS_WDOG = "0" *) 
  (* C_RX_RETRANS_WRAP_TIMER = "0" *) 
  (* C_TX_RETRANS_DEPTH = "2048" *) 
  (* C_TX_RETRANS_MULT = "1" *) 
  (* C_TX_RETRANS_RAM_BANKS = "4" *) 
  (* C_TX_RLIM_DELTA = "384" *) 
  (* C_TX_RLIM_ENABLE = "0" *) 
  (* C_TX_RLIM_INTV = "16" *) 
  (* C_TX_RLIM_MAX = "384" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* GT_COLUMN = "Right" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper inst
       (.core_clk(core_clk),
        .core_drp_reset(core_drp_reset),
        .core_rx_reset(core_rx_reset),
        .core_tx_reset(core_tx_reset),
        .ctl_rx_force_resync(ctl_rx_force_resync),
        .ctl_rx_retrans_ack(1'b0),
        .ctl_rx_retrans_enable(1'b0),
        .ctl_rx_retrans_errin(1'b0),
        .ctl_rx_retrans_force_req(1'b0),
        .ctl_rx_retrans_reset(1'b0),
        .ctl_rx_retrans_reset_mode(1'b0),
        .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),
        .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat),
        .ctl_tx_enable(ctl_tx_enable),
        .ctl_tx_errinj_biterr_go(1'b0),
        .ctl_tx_errinj_biterr_lane({1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_fc_stat({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_mubits(ctl_tx_mubits),
        .ctl_tx_retrans_enable(1'b0),
        .ctl_tx_retrans_ram_perrin(1'b0),
        .ctl_tx_retrans_ram_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_retrans_req(1'b0),
        .ctl_tx_retrans_req_valid(1'b0),
        .ctl_tx_rlim_delta({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_rlim_enable(1'b0),
        .ctl_tx_rlim_intv({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ctl_tx_rlim_max({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_addr(drp_addr),
        .drp_clk(drp_clk),
        .drp_di(drp_di),
        .drp_do(drp_do),
        .drp_en(drp_en),
        .drp_rdy(drp_rdy),
        .drp_we(drp_we),
        .gt0_drpaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdi({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt0_drpdo(NLW_inst_gt0_drpdo_UNCONNECTED[15:0]),
        .gt0_drpen(1'b0),
        .gt0_drprdy(NLW_inst_gt0_drprdy_UNCONNECTED),
        .gt0_drpwe(1'b0),
        .gt0_rxn_in(gt0_rxn_in),
        .gt0_rxp_in(gt0_rxp_in),
        .gt0_txn_out(gt0_txn_out),
        .gt0_txp_out(gt0_txp_out),
        .gt10_rxn_in(1'b0),
        .gt10_rxp_in(1'b0),
        .gt10_txn_out(NLW_inst_gt10_txn_out_UNCONNECTED),
        .gt10_txp_out(NLW_inst_gt10_txp_out_UNCONNECTED),
        .gt11_rxn_in(1'b0),
        .gt11_rxp_in(1'b0),
        .gt11_txn_out(NLW_inst_gt11_txn_out_UNCONNECTED),
        .gt11_txp_out(NLW_inst_gt11_txp_out_UNCONNECTED),
        .gt1_rxn_in(1'b0),
        .gt1_rxp_in(1'b0),
        .gt1_txn_out(NLW_inst_gt1_txn_out_UNCONNECTED),
        .gt1_txp_out(NLW_inst_gt1_txp_out_UNCONNECTED),
        .gt2_rxn_in(1'b0),
        .gt2_rxp_in(1'b0),
        .gt2_txn_out(NLW_inst_gt2_txn_out_UNCONNECTED),
        .gt2_txp_out(NLW_inst_gt2_txp_out_UNCONNECTED),
        .gt3_rxn_in(1'b0),
        .gt3_rxp_in(1'b0),
        .gt3_txn_out(NLW_inst_gt3_txn_out_UNCONNECTED),
        .gt3_txp_out(NLW_inst_gt3_txp_out_UNCONNECTED),
        .gt4_rxn_in(1'b0),
        .gt4_rxp_in(1'b0),
        .gt4_txn_out(NLW_inst_gt4_txn_out_UNCONNECTED),
        .gt4_txp_out(NLW_inst_gt4_txp_out_UNCONNECTED),
        .gt5_rxn_in(1'b0),
        .gt5_rxp_in(1'b0),
        .gt5_txn_out(NLW_inst_gt5_txn_out_UNCONNECTED),
        .gt5_txp_out(NLW_inst_gt5_txp_out_UNCONNECTED),
        .gt6_rxn_in(1'b0),
        .gt6_rxp_in(1'b0),
        .gt6_txn_out(NLW_inst_gt6_txn_out_UNCONNECTED),
        .gt6_txp_out(NLW_inst_gt6_txp_out_UNCONNECTED),
        .gt7_rxn_in(1'b0),
        .gt7_rxp_in(1'b0),
        .gt7_txn_out(NLW_inst_gt7_txn_out_UNCONNECTED),
        .gt7_txp_out(NLW_inst_gt7_txp_out_UNCONNECTED),
        .gt8_rxn_in(1'b0),
        .gt8_rxp_in(1'b0),
        .gt8_txn_out(NLW_inst_gt8_txn_out_UNCONNECTED),
        .gt8_txp_out(NLW_inst_gt8_txp_out_UNCONNECTED),
        .gt9_rxn_in(1'b0),
        .gt9_rxp_in(1'b0),
        .gt9_txn_out(NLW_inst_gt9_txn_out_UNCONNECTED),
        .gt9_txp_out(NLW_inst_gt9_txp_out_UNCONNECTED),
        .gt_drp_done(1'b0),
        .gt_drpclk(1'b0),
        .gt_eyescandataerror(NLW_inst_gt_eyescandataerror_UNCONNECTED[0]),
        .gt_eyescanreset(1'b0),
        .gt_eyescantrigger(1'b0),
        .gt_loopback_in(gt_loopback_in),
        .gt_ref_clk0_n(gt_ref_clk0_n),
        .gt_ref_clk0_p(gt_ref_clk0_p),
        .gt_refclk_out(gt_refclk_out),
        .gt_rx_reset_done_inv(gt_rx_reset_done_inv),
        .gt_rxbufstatus(NLW_inst_gt_rxbufstatus_UNCONNECTED[2:0]),
        .gt_rxcdrhold(1'b0),
        .gt_rxdfelpmreset(1'b0),
        .gt_rxlpmen(1'b0),
        .gt_rxpolarity(1'b0),
        .gt_rxprbscntreset(1'b0),
        .gt_rxprbserr(NLW_inst_gt_rxprbserr_UNCONNECTED[0]),
        .gt_rxprbssel({1'b0,1'b0,1'b0,1'b0}),
        .gt_rxrate({1'b0,1'b0,1'b0}),
        .gt_rxresetdone(NLW_inst_gt_rxresetdone_UNCONNECTED[0]),
        .gt_rxusrclk2(gt_rxusrclk2),
        .gt_tx_reset_done_inv(gt_tx_reset_done_inv),
        .gt_txbufstatus(NLW_inst_gt_txbufstatus_UNCONNECTED[1:0]),
        .gt_txdiffctrl({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txpolarity(1'b0),
        .gt_txpostcursor({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txprbsforceerr(1'b0),
        .gt_txprbssel({1'b0,1'b0,1'b0,1'b0}),
        .gt_txprecursor({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gt_txresetdone(NLW_inst_gt_txresetdone_UNCONNECTED[0]),
        .gt_txusrclk2(gt_txusrclk2),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath),
        .init_clk(init_clk),
        .lbus_clk(lbus_clk),
        .lockedn(lockedn),
        .qpll0clk_in(1'b0),
        .qpll0refclk_in(1'b0),
        .qpll1clk_in(1'b0),
        .qpll1refclk_in(1'b0),
        .rx_bypass_dataout00(NLW_inst_rx_bypass_dataout00_UNCONNECTED[65:0]),
        .rx_bypass_dataout01(NLW_inst_rx_bypass_dataout01_UNCONNECTED[65:0]),
        .rx_bypass_dataout02(NLW_inst_rx_bypass_dataout02_UNCONNECTED[65:0]),
        .rx_bypass_dataout03(NLW_inst_rx_bypass_dataout03_UNCONNECTED[65:0]),
        .rx_bypass_dataout04(NLW_inst_rx_bypass_dataout04_UNCONNECTED[65:0]),
        .rx_bypass_dataout05(NLW_inst_rx_bypass_dataout05_UNCONNECTED[65:0]),
        .rx_bypass_dataout06(NLW_inst_rx_bypass_dataout06_UNCONNECTED[65:0]),
        .rx_bypass_dataout07(NLW_inst_rx_bypass_dataout07_UNCONNECTED[65:0]),
        .rx_bypass_dataout08(NLW_inst_rx_bypass_dataout08_UNCONNECTED[65:0]),
        .rx_bypass_dataout09(NLW_inst_rx_bypass_dataout09_UNCONNECTED[65:0]),
        .rx_bypass_dataout10(NLW_inst_rx_bypass_dataout10_UNCONNECTED[65:0]),
        .rx_bypass_dataout11(NLW_inst_rx_bypass_dataout11_UNCONNECTED[65:0]),
        .rx_bypass_enaout(NLW_inst_rx_bypass_enaout_UNCONNECTED[11:0]),
        .rx_bypass_force_realignin(1'b0),
        .rx_bypass_is_availout(NLW_inst_rx_bypass_is_availout_UNCONNECTED[11:0]),
        .rx_bypass_is_badlyframedout(NLW_inst_rx_bypass_is_badlyframedout_UNCONNECTED[11:0]),
        .rx_bypass_is_overflowout(NLW_inst_rx_bypass_is_overflowout_UNCONNECTED[11:0]),
        .rx_bypass_is_syncedout(NLW_inst_rx_bypass_is_syncedout_UNCONNECTED[11:0]),
        .rx_bypass_is_syncwordout(NLW_inst_rx_bypass_is_syncwordout_UNCONNECTED[11:0]),
        .rx_bypass_rdin(1'b0),
        .rx_chanout0(rx_chanout0),
        .rx_chanout1(rx_chanout1),
        .rx_chanout2(rx_chanout2),
        .rx_chanout3(rx_chanout3),
        .rx_dataout0(rx_dataout0),
        .rx_dataout1(rx_dataout1),
        .rx_dataout2(rx_dataout2),
        .rx_dataout3(rx_dataout3),
        .rx_enaout0(rx_enaout0),
        .rx_enaout1(rx_enaout1),
        .rx_enaout2(rx_enaout2),
        .rx_enaout3(rx_enaout3),
        .rx_eopout0(rx_eopout0),
        .rx_eopout1(rx_eopout1),
        .rx_eopout2(rx_eopout2),
        .rx_eopout3(rx_eopout3),
        .rx_errout0(rx_errout0),
        .rx_errout1(rx_errout1),
        .rx_errout2(rx_errout2),
        .rx_errout3(rx_errout3),
        .rx_mtyout0(rx_mtyout0),
        .rx_mtyout1(rx_mtyout1),
        .rx_mtyout2(rx_mtyout2),
        .rx_mtyout3(rx_mtyout3),
        .rx_ovfout(rx_ovfout),
        .rx_sopout0(rx_sopout0),
        .rx_sopout1(rx_sopout1),
        .rx_sopout2(rx_sopout2),
        .rx_sopout3(rx_sopout3),
        .stat_rx_aligned(stat_rx_aligned),
        .stat_rx_aligned_err(stat_rx_aligned_err),
        .stat_rx_bad_type_err(stat_rx_bad_type_err),
        .stat_rx_burst_err(stat_rx_burst_err),
        .stat_rx_burstmax_err(stat_rx_burstmax_err),
        .stat_rx_crc24_err(stat_rx_crc24_err),
        .stat_rx_crc32_err(stat_rx_crc32_err),
        .stat_rx_crc32_valid(stat_rx_crc32_valid),
        .stat_rx_descram_err(stat_rx_descram_err),
        .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),
        .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),
        .stat_rx_fc_stat(NLW_inst_stat_rx_fc_stat_UNCONNECTED[255:0]),
        .stat_rx_framing_err(stat_rx_framing_err),
        .stat_rx_meop_err(stat_rx_meop_err),
        .stat_rx_mf_err(stat_rx_mf_err),
        .stat_rx_mf_len_err(stat_rx_mf_len_err),
        .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),
        .stat_rx_misaligned(stat_rx_misaligned),
        .stat_rx_msop_err(stat_rx_msop_err),
        .stat_rx_mubits(stat_rx_mubits),
        .stat_rx_mubits_updated(stat_rx_mubits_updated),
        .stat_rx_overflow_err(stat_rx_overflow_err),
        .stat_rx_retrans_crc24_err(NLW_inst_stat_rx_retrans_crc24_err_UNCONNECTED),
        .stat_rx_retrans_disc(NLW_inst_stat_rx_retrans_disc_UNCONNECTED),
        .stat_rx_retrans_latency(NLW_inst_stat_rx_retrans_latency_UNCONNECTED[15:0]),
        .stat_rx_retrans_req(NLW_inst_stat_rx_retrans_req_UNCONNECTED),
        .stat_rx_retrans_retry_err(NLW_inst_stat_rx_retrans_retry_err_UNCONNECTED),
        .stat_rx_retrans_seq(NLW_inst_stat_rx_retrans_seq_UNCONNECTED[7:0]),
        .stat_rx_retrans_seq_updated(NLW_inst_stat_rx_retrans_seq_updated_UNCONNECTED),
        .stat_rx_retrans_state(NLW_inst_stat_rx_retrans_state_UNCONNECTED[2:0]),
        .stat_rx_retrans_subseq(NLW_inst_stat_rx_retrans_subseq_UNCONNECTED[4:0]),
        .stat_rx_retrans_wdog_err(NLW_inst_stat_rx_retrans_wdog_err_UNCONNECTED),
        .stat_rx_retrans_wrap_err(NLW_inst_stat_rx_retrans_wrap_err_UNCONNECTED),
        .stat_rx_synced(stat_rx_synced),
        .stat_rx_synced_err(stat_rx_synced_err),
        .stat_rx_word_sync(stat_rx_word_sync),
        .stat_tx_burst_err(stat_tx_burst_err),
        .stat_tx_errinj_biterr_done(NLW_inst_stat_tx_errinj_biterr_done_UNCONNECTED),
        .stat_tx_overflow_err(stat_tx_overflow_err),
        .stat_tx_retrans_burst_err(NLW_inst_stat_tx_retrans_burst_err_UNCONNECTED),
        .stat_tx_retrans_busy(NLW_inst_stat_tx_retrans_busy_UNCONNECTED),
        .stat_tx_retrans_ram_perrout(NLW_inst_stat_tx_retrans_ram_perrout_UNCONNECTED),
        .stat_tx_retrans_ram_raddr(NLW_inst_stat_tx_retrans_ram_raddr_UNCONNECTED[8:0]),
        .stat_tx_retrans_ram_rd_b0(NLW_inst_stat_tx_retrans_ram_rd_b0_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b1(NLW_inst_stat_tx_retrans_ram_rd_b1_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b2(NLW_inst_stat_tx_retrans_ram_rd_b2_UNCONNECTED),
        .stat_tx_retrans_ram_rd_b3(NLW_inst_stat_tx_retrans_ram_rd_b3_UNCONNECTED),
        .stat_tx_retrans_ram_rsel(NLW_inst_stat_tx_retrans_ram_rsel_UNCONNECTED[1:0]),
        .stat_tx_retrans_ram_waddr(NLW_inst_stat_tx_retrans_ram_waddr_UNCONNECTED[8:0]),
        .stat_tx_retrans_ram_wdata(NLW_inst_stat_tx_retrans_ram_wdata_UNCONNECTED[643:0]),
        .stat_tx_retrans_ram_we_b0(NLW_inst_stat_tx_retrans_ram_we_b0_UNCONNECTED),
        .stat_tx_retrans_ram_we_b1(NLW_inst_stat_tx_retrans_ram_we_b1_UNCONNECTED),
        .stat_tx_retrans_ram_we_b2(NLW_inst_stat_tx_retrans_ram_we_b2_UNCONNECTED),
        .stat_tx_retrans_ram_we_b3(NLW_inst_stat_tx_retrans_ram_we_b3_UNCONNECTED),
        .stat_tx_underflow_err(stat_tx_underflow_err),
        .sys_reset(sys_reset),
        .tx_bctlin0(tx_bctlin0),
        .tx_bctlin1(tx_bctlin1),
        .tx_bctlin2(tx_bctlin2),
        .tx_bctlin3(tx_bctlin3),
        .tx_bypass_ctrlin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain00({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain01({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain02({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain03({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain04({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain05({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain06({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain07({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain08({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain09({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_datain11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_enain(1'b0),
        .tx_bypass_gearbox_seqin({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_bypass_mframer_statein({1'b0,1'b0,1'b0,1'b0}),
        .tx_chanin0(tx_chanin0),
        .tx_chanin1(tx_chanin1),
        .tx_chanin2(tx_chanin2),
        .tx_chanin3(tx_chanin3),
        .tx_datain0(tx_datain0),
        .tx_datain1(tx_datain1),
        .tx_datain2(tx_datain2),
        .tx_datain3(tx_datain3),
        .tx_enain0(tx_enain0),
        .tx_enain1(tx_enain1),
        .tx_enain2(tx_enain2),
        .tx_enain3(tx_enain3),
        .tx_eopin0(tx_eopin0),
        .tx_eopin1(tx_eopin1),
        .tx_eopin2(tx_eopin2),
        .tx_eopin3(tx_eopin3),
        .tx_errin0(tx_errin0),
        .tx_errin1(tx_errin1),
        .tx_errin2(tx_errin2),
        .tx_errin3(tx_errin3),
        .tx_mtyin0(tx_mtyin0),
        .tx_mtyin1(tx_mtyin1),
        .tx_mtyin2(tx_mtyin2),
        .tx_mtyin3(tx_mtyin3),
        .tx_ovfout(tx_ovfout),
        .tx_rdyout(tx_rdyout),
        .tx_sopin0(tx_sopin0),
        .tx_sopin1(tx_sopin1),
        .tx_sopin2(tx_sopin2),
        .tx_sopin3(tx_sopin3),
        .usr_rx_reset(usr_rx_reset),
        .usr_tx_reset(usr_tx_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync
   (usr_rx_reset,
    in0,
    lbus_clk);
  output usr_rx_reset;
  input in0;
  input lbus_clk;

  wire lbus_clk;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d2_cdc_to;
  (* async_reg = "true" *) wire s_out_d3;
  wire sig_in_cdc_from;

  assign sig_in_cdc_from = in0;
  assign usr_rx_reset = s_out_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_cdc_to_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(sig_in_cdc_from),
        .Q(s_out_d2_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2_cdc_to),
        .Q(s_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "interlaken_0_cdc_sync" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0
   (usr_tx_reset,
    in0,
    lbus_clk);
  output usr_tx_reset;
  input in0;
  input lbus_clk;

  wire lbus_clk;
  (* async_reg = "true" *) wire s_out_d2;
  (* async_reg = "true" *) wire s_out_d2_cdc_to;
  (* async_reg = "true" *) wire s_out_d3;
  wire sig_in_cdc_from;

  assign sig_in_cdc_from = in0;
  assign usr_tx_reset = s_out_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_cdc_to_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(sig_in_cdc_from),
        .Q(s_out_d2_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d2_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2_cdc_to),
        .Q(s_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE s_out_d3_reg
       (.C(lbus_clk),
        .CE(1'b1),
        .D(s_out_d2),
        .Q(s_out_d3),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "interlaken_0_gt_gtwizard_top,Vivado 2018.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt
   (gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    gtrefclk00_in,
    qpll0outclk_out,
    qpll0outrefclk_out,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    rxusrclk_in,
    rxusrclk2_in,
    txusrclk_in,
    txusrclk2_in,
    gtpowergood_out,
    gtytxn_out,
    gtytxp_out,
    rxoutclk_out,
    rxpmaresetdone_out,
    txoutclk_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [0:0]gtrefclk00_in;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]gtpowergood_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_rx_out;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]NLW_inst_bufgtce_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtcemask_out_UNCONNECTED;
  wire [8:0]NLW_inst_bufgtdiv_out_UNCONNECTED;
  wire [0:0]NLW_inst_bufgtreset_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtrstmask_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllfbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_cplllock_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllrefclklost_out_UNCONNECTED;
  wire [15:0]NLW_inst_dmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_dmonitoroutclk_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_common_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_inst_gthtxn_out_UNCONNECTED;
  wire [0:0]NLW_inst_gthtxp_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtrefclkmonitor_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierategen3_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierateidle_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllpd_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllreset_out_UNCONNECTED;
  wire [0:0]NLW_inst_pciesynctxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieusergen3rdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserphystatusrst_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserratestart_out_UNCONNECTED;
  wire [15:0]NLW_inst_pcsrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_phystatus_out_UNCONNECTED;
  wire [15:0]NLW_inst_pinrsrvdas_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout0_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout1_out_UNCONNECTED;
  wire [0:0]NLW_inst_powerpresent_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0refclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1refclklost_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor0_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor0_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_resetexception_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrlock_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrphdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanbondseq_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanrealign_out_UNCONNECTED;
  wire [4:0]NLW_inst_rxchbondo_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxckcaldone_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxclkcorcnt_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcominitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcommadet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomsasdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomwakedet_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl0_out_UNCONNECTED;
  wire [15:0]NLW_inst_rxctrl1_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl2_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxctrl3_out_UNCONNECTED;
  wire [127:0]NLW_inst_rxdata_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxdataextendrsvd_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxdatavalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxelecidle_out_UNCONNECTED;
  wire [5:0]NLW_inst_rxheader_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxheadervalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpstresetdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobestarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphalignerr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbslocked_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk0_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk0sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk1_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk1sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclkout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsliderdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipoutclkrdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslippmardy_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxstartofseq_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxvalid_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm0finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm0testdata_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm1finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm1testdata_out_UNCONNECTED;
  wire [0:0]NLW_inst_tcongpo_out_UNCONNECTED;
  wire [0:0]NLW_inst_tconrsvdout0_out_UNCONNECTED;
  wire [1:0]NLW_inst_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_txcomfinish_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdccdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphinitdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_txratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncout_out_UNCONNECTED;
  wire [15:0]NLW_inst_ubdaddr_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubden_out_UNCONNECTED;
  wire [15:0]NLW_inst_ubdi_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdwe_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubmdmtdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubtxuart_out_UNCONNECTED;

  (* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_COMMON_SCALING_FACTOR = "1" *) 
  (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
  (* C_ENABLE_COMMON_USRCLK = "0" *) 
  (* C_FORCE_COMMONS = "0" *) 
  (* C_FREERUN_FREQUENCY = "161.132812" *) 
  (* C_GT_REV = "67" *) 
  (* C_GT_TYPE = "3" *) 
  (* C_INCLUDE_CPLL_CAL = "2" *) 
  (* C_LOCATE_COMMON = "0" *) 
  (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) 
  (* C_LOCATE_RESET_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) 
  (* C_PCIE_CORECLK_FREQ = "250" *) 
  (* C_PCIE_ENABLE = "0" *) 
  (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) 
  (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
  (* C_RX_BUFFBYPASS_MODE = "0" *) 
  (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_RX_BUFFER_MODE = "1" *) 
  (* C_RX_CB_DISP = "8'b00000000" *) 
  (* C_RX_CB_K = "8'b00000000" *) 
  (* C_RX_CB_LEN_SEQ = "1" *) 
  (* C_RX_CB_MAX_LEVEL = "1" *) 
  (* C_RX_CB_NUM_SEQ = "0" *) 
  (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_CC_DISP = "8'b00000000" *) 
  (* C_RX_CC_ENABLE = "0" *) 
  (* C_RX_CC_K = "8'b00000000" *) 
  (* C_RX_CC_LEN_SEQ = "1" *) 
  (* C_RX_CC_NUM_SEQ = "0" *) 
  (* C_RX_CC_PERIODICITY = "5000" *) 
  (* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_COMMA_M_ENABLE = "0" *) 
  (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
  (* C_RX_COMMA_P_ENABLE = "0" *) 
  (* C_RX_COMMA_P_VAL = "10'b0101111100" *) 
  (* C_RX_DATA_DECODING = "0" *) 
  (* C_RX_ENABLE = "1" *) 
  (* C_RX_INT_DATA_WIDTH = "64" *) 
  (* C_RX_LINE_RATE = "10.312500" *) 
  (* C_RX_MASTER_CHANNEL_IDX = "144" *) 
  (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_RX_OUTCLK_FREQUENCY = "161.132812" *) 
  (* C_RX_OUTCLK_SOURCE = "1" *) 
  (* C_RX_PLL_TYPE = "0" *) 
  (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_RX_SLIDE_MODE = "0" *) 
  (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_RX_USER_DATA_WIDTH = "64" *) 
  (* C_RX_USRCLK2_FREQUENCY = "161.132812" *) 
  (* C_RX_USRCLK_FREQUENCY = "161.132812" *) 
  (* C_SECONDARY_QPLL_ENABLE = "0" *) 
  (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
  (* C_SIM_CPLL_CAL_BYPASS = "1" *) 
  (* C_TOTAL_NUM_CHANNELS = "1" *) 
  (* C_TOTAL_NUM_COMMONS = "1" *) 
  (* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) 
  (* C_TXPROGDIV_FREQ_ENABLE = "0" *) 
  (* C_TXPROGDIV_FREQ_SOURCE = "0" *) 
  (* C_TXPROGDIV_FREQ_VAL = "161.132812" *) 
  (* C_TX_BUFFBYPASS_MODE = "0" *) 
  (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_TX_BUFFER_MODE = "1" *) 
  (* C_TX_DATA_ENCODING = "0" *) 
  (* C_TX_ENABLE = "1" *) 
  (* C_TX_INT_DATA_WIDTH = "64" *) 
  (* C_TX_LINE_RATE = "10.312500" *) 
  (* C_TX_MASTER_CHANNEL_IDX = "144" *) 
  (* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_TX_OUTCLK_FREQUENCY = "161.132812" *) 
  (* C_TX_OUTCLK_SOURCE = "4" *) 
  (* C_TX_PLL_TYPE = "0" *) 
  (* C_TX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_TX_USER_DATA_WIDTH = "64" *) 
  (* C_TX_USRCLK2_FREQUENCY = "161.132812" *) 
  (* C_TX_USRCLK_FREQUENCY = "161.132812" *) 
  (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top inst
       (.bgbypassb_in(1'b1),
        .bgmonitorenb_in(1'b1),
        .bgpdb_in(1'b1),
        .bgrcalovrd_in({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .bgrcalovrdenb_in(1'b1),
        .bufgtce_out(NLW_inst_bufgtce_out_UNCONNECTED[0]),
        .bufgtcemask_out(NLW_inst_bufgtcemask_out_UNCONNECTED[2:0]),
        .bufgtdiv_out(NLW_inst_bufgtdiv_out_UNCONNECTED[8:0]),
        .bufgtreset_out(NLW_inst_bufgtreset_out_UNCONNECTED[0]),
        .bufgtrstmask_out(NLW_inst_bufgtrstmask_out_UNCONNECTED[2:0]),
        .cdrstepdir_in(1'b0),
        .cdrstepsq_in(1'b0),
        .cdrstepsx_in(1'b0),
        .cfgreset_in(1'b0),
        .clkrsvd0_in(1'b0),
        .clkrsvd1_in(1'b0),
        .cpllfbclklost_out(NLW_inst_cpllfbclklost_out_UNCONNECTED[0]),
        .cpllfreqlock_in(1'b0),
        .cplllock_out(NLW_inst_cplllock_out_UNCONNECTED[0]),
        .cplllockdetclk_in(1'b0),
        .cplllocken_in(1'b0),
        .cpllpd_in(1'b1),
        .cpllrefclklost_out(NLW_inst_cpllrefclklost_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .cpllreset_in(1'b1),
        .dmonfiforeset_in(1'b0),
        .dmonitorclk_in(1'b0),
        .dmonitorout_out(NLW_inst_dmonitorout_out_UNCONNECTED[15:0]),
        .dmonitoroutclk_out(NLW_inst_dmonitoroutclk_out_UNCONNECTED[0]),
        .drpaddr_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_common_in(1'b0),
        .drpclk_in(1'b0),
        .drpdi_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_common_out(NLW_inst_drpdo_common_out_UNCONNECTED[15:0]),
        .drpdo_out(NLW_inst_drpdo_out_UNCONNECTED[15:0]),
        .drpen_common_in(1'b0),
        .drpen_in(1'b0),
        .drprdy_common_out(NLW_inst_drprdy_common_out_UNCONNECTED[0]),
        .drprdy_out(NLW_inst_drprdy_out_UNCONNECTED[0]),
        .drprst_in(1'b0),
        .drpwe_common_in(1'b0),
        .drpwe_in(1'b0),
        .elpcaldvorwren_in(1'b0),
        .elpcalpaorwren_in(1'b0),
        .evoddphicaldone_in(1'b0),
        .evoddphicalstart_in(1'b0),
        .evoddphidrden_in(1'b0),
        .evoddphidwren_in(1'b0),
        .evoddphixrden_in(1'b0),
        .evoddphixwren_in(1'b0),
        .eyescandataerror_out(NLW_inst_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanmode_in(1'b0),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .freqos_in(1'b0),
        .gtgrefclk0_in(1'b0),
        .gtgrefclk1_in(1'b0),
        .gtgrefclk_in(1'b0),
        .gthrxn_in(1'b0),
        .gthrxp_in(1'b0),
        .gthtxn_out(NLW_inst_gthtxn_out_UNCONNECTED[0]),
        .gthtxp_out(NLW_inst_gthtxp_out_UNCONNECTED[0]),
        .gtnorthrefclk00_in(1'b0),
        .gtnorthrefclk01_in(1'b0),
        .gtnorthrefclk0_in(1'b0),
        .gtnorthrefclk10_in(1'b0),
        .gtnorthrefclk11_in(1'b0),
        .gtnorthrefclk1_in(1'b0),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(1'b0),
        .gtrefclk0_in(1'b0),
        .gtrefclk10_in(1'b0),
        .gtrefclk11_in(1'b0),
        .gtrefclk1_in(1'b0),
        .gtrefclkmonitor_out(NLW_inst_gtrefclkmonitor_out_UNCONNECTED[0]),
        .gtresetsel_in(1'b0),
        .gtrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtrxreset_in(1'b0),
        .gtrxresetsel_in(1'b0),
        .gtsouthrefclk00_in(1'b0),
        .gtsouthrefclk01_in(1'b0),
        .gtsouthrefclk0_in(1'b0),
        .gtsouthrefclk10_in(1'b0),
        .gtsouthrefclk11_in(1'b0),
        .gtsouthrefclk1_in(1'b0),
        .gttxreset_in(1'b0),
        .gttxresetsel_in(1'b0),
        .gtwiz_buffbypass_rx_done_out(NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_error_out(NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_reset_in(1'b0),
        .gtwiz_buffbypass_rx_start_user_in(1'b0),
        .gtwiz_buffbypass_tx_done_out(NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_error_out(NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_reset_in(1'b0),
        .gtwiz_buffbypass_tx_start_user_in(1'b0),
        .gtwiz_gthe3_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe3_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe3_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gtye4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_in(1'b0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_in(1'b0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_rx_active_out(NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_reset_in(1'b0),
        .gtwiz_userclk_rx_srcclk_out(NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk2_out(NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk_out(NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .gtwiz_userclk_tx_active_out(NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userclk_tx_srcclk_out(NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk2_out(NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk_out(NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(1'b0),
        .loopback_in(loopback_in),
        .looprsvd_in(1'b0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lpbkrxtxseren_in(1'b0),
        .lpbktxrxseren_in(1'b0),
        .pcieeqrxeqadaptdone_in(1'b0),
        .pcierategen3_out(NLW_inst_pcierategen3_out_UNCONNECTED[0]),
        .pcierateidle_out(NLW_inst_pcierateidle_out_UNCONNECTED[0]),
        .pcierateqpll0_in({1'b0,1'b0,1'b0}),
        .pcierateqpll1_in({1'b0,1'b0,1'b0}),
        .pcierateqpllpd_out(NLW_inst_pcierateqpllpd_out_UNCONNECTED[1:0]),
        .pcierateqpllreset_out(NLW_inst_pcierateqpllreset_out_UNCONNECTED[1:0]),
        .pcierstidle_in(1'b0),
        .pciersttxsyncstart_in(1'b0),
        .pciesynctxsyncdone_out(NLW_inst_pciesynctxsyncdone_out_UNCONNECTED[0]),
        .pcieusergen3rdy_out(NLW_inst_pcieusergen3rdy_out_UNCONNECTED[0]),
        .pcieuserphystatusrst_out(NLW_inst_pcieuserphystatusrst_out_UNCONNECTED[0]),
        .pcieuserratedone_in(1'b0),
        .pcieuserratestart_out(NLW_inst_pcieuserratestart_out_UNCONNECTED[0]),
        .pcsrsvdin2_in(1'b0),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcsrsvdout_out(NLW_inst_pcsrsvdout_out_UNCONNECTED[15:0]),
        .phystatus_out(NLW_inst_phystatus_out_UNCONNECTED[0]),
        .pinrsrvdas_out(NLW_inst_pinrsrvdas_out_UNCONNECTED[15:0]),
        .pmarsvd0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdin_in(1'b0),
        .pmarsvdout0_out(NLW_inst_pmarsvdout0_out_UNCONNECTED[7:0]),
        .pmarsvdout1_out(NLW_inst_pmarsvdout1_out_UNCONNECTED[7:0]),
        .powerpresent_out(NLW_inst_powerpresent_out_UNCONNECTED[0]),
        .qpll0clk_in(1'b0),
        .qpll0clkrsvd0_in(1'b0),
        .qpll0clkrsvd1_in(1'b0),
        .qpll0fbclklost_out(NLW_inst_qpll0fbclklost_out_UNCONNECTED[0]),
        .qpll0fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll0freqlock_in(1'b0),
        .qpll0lock_out(NLW_inst_qpll0lock_out_UNCONNECTED[0]),
        .qpll0lockdetclk_in(1'b0),
        .qpll0locken_in(1'b1),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(1'b0),
        .qpll0refclk_in(1'b0),
        .qpll0refclklost_out(NLW_inst_qpll0refclklost_out_UNCONNECTED[0]),
        .qpll0refclksel_in({1'b0,1'b0,1'b1}),
        .qpll0reset_in(1'b0),
        .qpll1clk_in(1'b0),
        .qpll1clkrsvd0_in(1'b0),
        .qpll1clkrsvd1_in(1'b0),
        .qpll1fbclklost_out(NLW_inst_qpll1fbclklost_out_UNCONNECTED[0]),
        .qpll1fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll1freqlock_in(1'b0),
        .qpll1lock_out(NLW_inst_qpll1lock_out_UNCONNECTED[0]),
        .qpll1lockdetclk_in(1'b0),
        .qpll1locken_in(1'b0),
        .qpll1outclk_out(NLW_inst_qpll1outclk_out_UNCONNECTED[0]),
        .qpll1outrefclk_out(NLW_inst_qpll1outrefclk_out_UNCONNECTED[0]),
        .qpll1pd_in(1'b1),
        .qpll1refclk_in(1'b0),
        .qpll1refclklost_out(NLW_inst_qpll1refclklost_out_UNCONNECTED[0]),
        .qpll1refclksel_in({1'b0,1'b0,1'b1}),
        .qpll1reset_in(1'b1),
        .qplldmonitor0_out(NLW_inst_qplldmonitor0_out_UNCONNECTED[7:0]),
        .qplldmonitor1_out(NLW_inst_qplldmonitor1_out_UNCONNECTED[7:0]),
        .qpllrsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd3_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd4_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb_in(1'b1),
        .refclkoutmonitor0_out(NLW_inst_refclkoutmonitor0_out_UNCONNECTED[0]),
        .refclkoutmonitor1_out(NLW_inst_refclkoutmonitor1_out_UNCONNECTED[0]),
        .resetexception_out(NLW_inst_resetexception_out_UNCONNECTED[0]),
        .resetovrd_in(1'b0),
        .rstclkentx_in(1'b0),
        .rx8b10ben_in(1'b0),
        .rxafecfoken_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out(NLW_inst_rxbufstatus_out_UNCONNECTED[2:0]),
        .rxbyteisaligned_out(NLW_inst_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_inst_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrfreqreset_in(1'b0),
        .rxcdrhold_in(1'b0),
        .rxcdrlock_out(NLW_inst_rxcdrlock_out_UNCONNECTED[0]),
        .rxcdrovrden_in(1'b0),
        .rxcdrphdone_out(NLW_inst_rxcdrphdone_out_UNCONNECTED[0]),
        .rxcdrreset_in(1'b0),
        .rxcdrresetrsv_in(1'b0),
        .rxchanbondseq_out(NLW_inst_rxchanbondseq_out_UNCONNECTED[0]),
        .rxchanisaligned_out(NLW_inst_rxchanisaligned_out_UNCONNECTED[0]),
        .rxchanrealign_out(NLW_inst_rxchanrealign_out_UNCONNECTED[0]),
        .rxchbonden_in(1'b0),
        .rxchbondi_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxchbondlevel_in({1'b0,1'b0,1'b0}),
        .rxchbondmaster_in(1'b0),
        .rxchbondo_out(NLW_inst_rxchbondo_out_UNCONNECTED[4:0]),
        .rxchbondslave_in(1'b0),
        .rxckcaldone_out(NLW_inst_rxckcaldone_out_UNCONNECTED[0]),
        .rxckcalreset_in(1'b0),
        .rxckcalstart_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxclkcorcnt_out(NLW_inst_rxclkcorcnt_out_UNCONNECTED[1:0]),
        .rxcominitdet_out(NLW_inst_rxcominitdet_out_UNCONNECTED[0]),
        .rxcommadet_out(NLW_inst_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b0),
        .rxcomsasdet_out(NLW_inst_rxcomsasdet_out_UNCONNECTED[0]),
        .rxcomwakedet_out(NLW_inst_rxcomwakedet_out_UNCONNECTED[0]),
        .rxctrl0_out(NLW_inst_rxctrl0_out_UNCONNECTED[15:0]),
        .rxctrl1_out(NLW_inst_rxctrl1_out_UNCONNECTED[15:0]),
        .rxctrl2_out(NLW_inst_rxctrl2_out_UNCONNECTED[7:0]),
        .rxctrl3_out(NLW_inst_rxctrl3_out_UNCONNECTED[7:0]),
        .rxdata_out(NLW_inst_rxdata_out_UNCONNECTED[127:0]),
        .rxdataextendrsvd_out(NLW_inst_rxdataextendrsvd_out_UNCONNECTED[7:0]),
        .rxdatavalid_out(NLW_inst_rxdatavalid_out_UNCONNECTED[1:0]),
        .rxdccforcestart_in(1'b0),
        .rxdfeagcctrl_in(1'b0),
        .rxdfeagchold_in(1'b0),
        .rxdfeagcovrden_in(1'b0),
        .rxdfecfokfcnum_in({1'b1,1'b1,1'b0,1'b1}),
        .rxdfecfokfen_in(1'b0),
        .rxdfecfokfpulse_in(1'b0),
        .rxdfecfokhold_in(1'b0),
        .rxdfecfokovren_in(1'b0),
        .rxdfekhhold_in(1'b0),
        .rxdfekhovrden_in(1'b0),
        .rxdfelfhold_in(1'b0),
        .rxdfelfovrden_in(1'b0),
        .rxdfelpmreset_in(1'b0),
        .rxdfetap10hold_in(1'b0),
        .rxdfetap10ovrden_in(1'b0),
        .rxdfetap11hold_in(1'b0),
        .rxdfetap11ovrden_in(1'b0),
        .rxdfetap12hold_in(1'b0),
        .rxdfetap12ovrden_in(1'b0),
        .rxdfetap13hold_in(1'b0),
        .rxdfetap13ovrden_in(1'b0),
        .rxdfetap14hold_in(1'b0),
        .rxdfetap14ovrden_in(1'b0),
        .rxdfetap15hold_in(1'b0),
        .rxdfetap15ovrden_in(1'b0),
        .rxdfetap2hold_in(1'b0),
        .rxdfetap2ovrden_in(1'b0),
        .rxdfetap3hold_in(1'b0),
        .rxdfetap3ovrden_in(1'b0),
        .rxdfetap4hold_in(1'b0),
        .rxdfetap4ovrden_in(1'b0),
        .rxdfetap5hold_in(1'b0),
        .rxdfetap5ovrden_in(1'b0),
        .rxdfetap6hold_in(1'b0),
        .rxdfetap6ovrden_in(1'b0),
        .rxdfetap7hold_in(1'b0),
        .rxdfetap7ovrden_in(1'b0),
        .rxdfetap8hold_in(1'b0),
        .rxdfetap8ovrden_in(1'b0),
        .rxdfetap9hold_in(1'b0),
        .rxdfetap9ovrden_in(1'b0),
        .rxdfeuthold_in(1'b0),
        .rxdfeutovrden_in(1'b0),
        .rxdfevphold_in(1'b0),
        .rxdfevpovrden_in(1'b0),
        .rxdfevsen_in(1'b0),
        .rxdfexyden_in(1'b1),
        .rxdlybypass_in(1'b1),
        .rxdlyen_in(1'b0),
        .rxdlyovrden_in(1'b0),
        .rxdlysreset_in(1'b0),
        .rxdlysresetdone_out(NLW_inst_rxdlysresetdone_out_UNCONNECTED[0]),
        .rxelecidle_out(NLW_inst_rxelecidle_out_UNCONNECTED[0]),
        .rxelecidlemode_in({1'b1,1'b1}),
        .rxeqtraining_in(1'b0),
        .rxgearboxslip_in(1'b0),
        .rxheader_out(NLW_inst_rxheader_out_UNCONNECTED[5:0]),
        .rxheadervalid_out(NLW_inst_rxheadervalid_out_UNCONNECTED[1:0]),
        .rxlatclk_in(1'b0),
        .rxlfpstresetdet_out(NLW_inst_rxlfpstresetdet_out_UNCONNECTED[0]),
        .rxlfpsu2lpexitdet_out(NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED[0]),
        .rxlfpsu3wakedet_out(NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED[0]),
        .rxlpmen_in(1'b1),
        .rxlpmgchold_in(1'b0),
        .rxlpmgcovrden_in(1'b0),
        .rxlpmhfhold_in(1'b0),
        .rxlpmhfovrden_in(1'b0),
        .rxlpmlfhold_in(1'b0),
        .rxlpmlfklovrden_in(1'b0),
        .rxlpmoshold_in(1'b0),
        .rxlpmosovrden_in(1'b0),
        .rxmcommaalignen_in(1'b0),
        .rxmonitorout_out(NLW_inst_rxmonitorout_out_UNCONNECTED[7:0]),
        .rxmonitorsel_in({1'b0,1'b0}),
        .rxoobreset_in(1'b0),
        .rxoscalreset_in(1'b0),
        .rxoshold_in(1'b0),
        .rxosintcfg_in(1'b0),
        .rxosintdone_out(NLW_inst_rxosintdone_out_UNCONNECTED[0]),
        .rxosinten_in(1'b0),
        .rxosinthold_in(1'b0),
        .rxosintovrden_in(1'b0),
        .rxosintstarted_out(NLW_inst_rxosintstarted_out_UNCONNECTED[0]),
        .rxosintstrobe_in(1'b0),
        .rxosintstrobedone_out(NLW_inst_rxosintstrobedone_out_UNCONNECTED[0]),
        .rxosintstrobestarted_out(NLW_inst_rxosintstrobestarted_out_UNCONNECTED[0]),
        .rxosinttestovrden_in(1'b0),
        .rxosovrden_in(1'b0),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(NLW_inst_rxoutclkfabric_out_UNCONNECTED[0]),
        .rxoutclkpcs_out(NLW_inst_rxoutclkpcs_out_UNCONNECTED[0]),
        .rxoutclksel_in({1'b0,1'b1,1'b0}),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({1'b0,1'b0}),
        .rxphalign_in(1'b0),
        .rxphaligndone_out(NLW_inst_rxphaligndone_out_UNCONNECTED[0]),
        .rxphalignen_in(1'b0),
        .rxphalignerr_out(NLW_inst_rxphalignerr_out_UNCONNECTED[0]),
        .rxphdlypd_in(1'b1),
        .rxphdlyreset_in(1'b0),
        .rxphovrden_in(1'b0),
        .rxpllclksel_in({1'b1,1'b1}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_inst_rxprbserr_out_UNCONNECTED[0]),
        .rxprbslocked_out(NLW_inst_rxprbslocked_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxprgdivresetdone_out(NLW_inst_rxprgdivresetdone_out_UNCONNECTED[0]),
        .rxprogdivreset_in(1'b0),
        .rxqpien_in(1'b0),
        .rxqpisenn_out(NLW_inst_rxqpisenn_out_UNCONNECTED[0]),
        .rxqpisenp_out(NLW_inst_rxqpisenp_out_UNCONNECTED[0]),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxratedone_out(NLW_inst_rxratedone_out_UNCONNECTED[0]),
        .rxratemode_in(1'b0),
        .rxrecclk0_sel_out(NLW_inst_rxrecclk0_sel_out_UNCONNECTED[0]),
        .rxrecclk0sel_out(NLW_inst_rxrecclk0sel_out_UNCONNECTED[1:0]),
        .rxrecclk1_sel_out(NLW_inst_rxrecclk1_sel_out_UNCONNECTED[0]),
        .rxrecclk1sel_out(NLW_inst_rxrecclk1sel_out_UNCONNECTED[1:0]),
        .rxrecclkout_out(NLW_inst_rxrecclkout_out_UNCONNECTED[0]),
        .rxresetdone_out(NLW_inst_rxresetdone_out_UNCONNECTED[0]),
        .rxslide_in(1'b0),
        .rxsliderdy_out(NLW_inst_rxsliderdy_out_UNCONNECTED[0]),
        .rxslipdone_out(NLW_inst_rxslipdone_out_UNCONNECTED[0]),
        .rxslipoutclk_in(1'b0),
        .rxslipoutclkrdy_out(NLW_inst_rxslipoutclkrdy_out_UNCONNECTED[0]),
        .rxslippma_in(1'b0),
        .rxslippmardy_out(NLW_inst_rxslippmardy_out_UNCONNECTED[0]),
        .rxstartofseq_out(NLW_inst_rxstartofseq_out_UNCONNECTED[1:0]),
        .rxstatus_out(NLW_inst_rxstatus_out_UNCONNECTED[2:0]),
        .rxsyncallin_in(1'b0),
        .rxsyncdone_out(NLW_inst_rxsyncdone_out_UNCONNECTED[0]),
        .rxsyncin_in(1'b0),
        .rxsyncmode_in(1'b0),
        .rxsyncout_out(NLW_inst_rxsyncout_out_UNCONNECTED[0]),
        .rxsysclksel_in({1'b1,1'b0}),
        .rxtermination_in(1'b0),
        .rxuserrdy_in(1'b1),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(NLW_inst_rxvalid_out_UNCONNECTED[0]),
        .sdm0data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm0finalout_out(NLW_inst_sdm0finalout_out_UNCONNECTED[3:0]),
        .sdm0reset_in(1'b0),
        .sdm0testdata_out(NLW_inst_sdm0testdata_out_UNCONNECTED[14:0]),
        .sdm0toggle_in(1'b0),
        .sdm0width_in({1'b0,1'b0}),
        .sdm1data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm1finalout_out(NLW_inst_sdm1finalout_out_UNCONNECTED[3:0]),
        .sdm1reset_in(1'b0),
        .sdm1testdata_out(NLW_inst_sdm1testdata_out_UNCONNECTED[14:0]),
        .sdm1toggle_in(1'b0),
        .sdm1width_in({1'b0,1'b0}),
        .sigvalidclk_in(1'b0),
        .tcongpi_in(1'b0),
        .tcongpo_out(NLW_inst_tcongpo_out_UNCONNECTED[0]),
        .tconpowerup_in(1'b0),
        .tconreset_in(1'b0),
        .tconrsvdin1_in(1'b0),
        .tconrsvdout0_out(NLW_inst_tconrsvdout0_out_UNCONNECTED[0]),
        .tstin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10bbypass_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10ben_in(1'b0),
        .txbufdiffctrl_in(1'b0),
        .txbufstatus_out(NLW_inst_txbufstatus_out_UNCONNECTED[1:0]),
        .txcomfinish_out(NLW_inst_txcomfinish_out_UNCONNECTED[0]),
        .txcominit_in(1'b0),
        .txcomsas_in(1'b0),
        .txcomwake_in(1'b0),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdata_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdataextendrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdccdone_out(NLW_inst_txdccdone_out_UNCONNECTED[0]),
        .txdccforcestart_in(1'b0),
        .txdccreset_in(1'b0),
        .txdeemph_in({1'b0,1'b0}),
        .txdetectrx_in(1'b0),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txdiffpd_in(1'b0),
        .txdlybypass_in(1'b1),
        .txdlyen_in(1'b0),
        .txdlyhold_in(1'b0),
        .txdlyovrden_in(1'b0),
        .txdlysreset_in(1'b0),
        .txdlysresetdone_out(NLW_inst_txdlysresetdone_out_UNCONNECTED[0]),
        .txdlyupdown_in(1'b0),
        .txelecidle_in(1'b0),
        .txelforcestart_in(1'b0),
        .txheader_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txinhibit_in(1'b0),
        .txlatclk_in(1'b0),
        .txlfpstreset_in(1'b0),
        .txlfpsu2lpexit_in(1'b0),
        .txlfpsu3wake_in(1'b0),
        .txmaincursor_in({1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .txmargin_in({1'b0,1'b0,1'b0}),
        .txmuxdcdexhold_in(1'b0),
        .txmuxdcdorwren_in(1'b0),
        .txoneszeros_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(NLW_inst_txoutclkfabric_out_UNCONNECTED[0]),
        .txoutclkpcs_out(NLW_inst_txoutclkpcs_out_UNCONNECTED[0]),
        .txoutclksel_in({1'b1,1'b0,1'b1}),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpdelecidlemode_in(1'b0),
        .txphalign_in(1'b0),
        .txphaligndone_out(NLW_inst_txphaligndone_out_UNCONNECTED[0]),
        .txphalignen_in(1'b0),
        .txphdlypd_in(1'b1),
        .txphdlyreset_in(1'b0),
        .txphdlytstclk_in(1'b0),
        .txphinit_in(1'b0),
        .txphinitdone_out(NLW_inst_txphinitdone_out_UNCONNECTED[0]),
        .txphovrden_in(1'b0),
        .txpippmen_in(1'b0),
        .txpippmovrden_in(1'b0),
        .txpippmpd_in(1'b0),
        .txpippmsel_in(1'b1),
        .txpippmstepsize_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpisopd_in(1'b0),
        .txpllclksel_in({1'b1,1'b1}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpostcursorinv_in(1'b0),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprecursorinv_in(1'b0),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txprogdivreset_in(1'b0),
        .txqpibiasen_in(1'b0),
        .txqpisenn_out(NLW_inst_txqpisenn_out_UNCONNECTED[0]),
        .txqpisenp_out(NLW_inst_txqpisenp_out_UNCONNECTED[0]),
        .txqpistrongpdown_in(1'b0),
        .txqpiweakpup_in(1'b0),
        .txrate_in({1'b0,1'b0,1'b0}),
        .txratedone_out(NLW_inst_txratedone_out_UNCONNECTED[0]),
        .txratemode_in(1'b0),
        .txresetdone_out(NLW_inst_txresetdone_out_UNCONNECTED[0]),
        .txsequence_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txswing_in(1'b0),
        .txsyncallin_in(1'b0),
        .txsyncdone_out(NLW_inst_txsyncdone_out_UNCONNECTED[0]),
        .txsyncin_in(1'b0),
        .txsyncmode_in(1'b0),
        .txsyncout_out(NLW_inst_txsyncout_out_UNCONNECTED[0]),
        .txsysclksel_in({1'b1,1'b0}),
        .txuserrdy_in(1'b1),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in),
        .ubcfgstreamen_in(1'b0),
        .ubdaddr_out(NLW_inst_ubdaddr_out_UNCONNECTED[15:0]),
        .ubden_out(NLW_inst_ubden_out_UNCONNECTED[0]),
        .ubdi_out(NLW_inst_ubdi_out_UNCONNECTED[15:0]),
        .ubdo_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ubdrdy_in(1'b0),
        .ubdwe_out(NLW_inst_ubdwe_out_UNCONNECTED[0]),
        .ubenable_in(1'b0),
        .ubgpi_in({1'b0,1'b0}),
        .ubintr_in({1'b0,1'b0}),
        .ubiolmbrst_in(1'b0),
        .ubmbrst_in(1'b0),
        .ubmdmcapture_in(1'b0),
        .ubmdmdbgrst_in(1'b0),
        .ubmdmdbgupdate_in(1'b0),
        .ubmdmregen_in({1'b0,1'b0,1'b0,1'b0}),
        .ubmdmshift_in(1'b0),
        .ubmdmsysrst_in(1'b0),
        .ubmdmtck_in(1'b0),
        .ubmdmtdi_in(1'b0),
        .ubmdmtdo_out(NLW_inst_ubmdmtdo_out_UNCONNECTED[0]),
        .ubrsvdout_out(NLW_inst_ubrsvdout_out_UNCONNECTED[0]),
        .ubtxuart_out(NLW_inst_ubtxuart_out_UNCONNECTED[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4
   (gtpowergood_out,
    qpll0lock_out,
    rxcdrlock_out,
    drprdy_common_out,
    qpll0fbclklost_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    gtwiz_reset_qpll0reset_out,
    bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_rx_done_out,
    txpisopd_in,
    txrate_in,
    txratemode_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0freqlock_in,
    qpll1freqlock_in,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpolarity_in,
    txprbsforceerr_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    txpmareset_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]gtpowergood_out;
  output [0:0]qpll0lock_out;
  output [0:0]rxcdrlock_out;
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]txpisopd_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]txpmareset_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [15:0]drpaddr_common_in;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_common_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_common_out;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_common_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 ;
  wire \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire [2:1]\gen_gtwizard_gtye4.txrate_ch_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire rst_in0;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper \gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst 
       (.TXRATE({\gen_gtwizard_gtye4.txrate_ch_int ,\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 }),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[0] (\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ),
        .\gen_powergood_delay.pwr_on_fsm_reg (\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .\gen_powergood_delay.pwr_on_fsm_reg_0 (\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .powerpresent_out(powerpresent_out),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txratedone_out(txratedone_out),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper \gen_gtwizard_gtye4.gen_common.gen_common_container[36].gen_enabled_common.gtye4_common_wrapper_inst 
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .drpaddr_common_in(drpaddr_common_in),
        .drpclk_common_in(drpclk_common_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdo_common_out(drpdo_common_out),
        .drpen_common_in(drpen_common_in),
        .drprdy_common_out(drprdy_common_out),
        .drpwe_common_in(drpwe_common_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .rst_in0(rst_in0),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_delay_powergood \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.CLK(txoutclkpcs_out),
        .TXRATE({\gen_gtwizard_gtye4.txrate_ch_int ,\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4 }),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .gtrxreset_out_reg(\gen_gtwizard_gtye4.gen_channel_container[36].gen_enabled_channel.gtye4_channel_wrapper_inst_n_377 ),
        .i_in_meta_reg(\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .i_in_meta_reg_0(\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5 ),
        .out(gtpowergood_out),
        .txpisopd_in(txpisopd_in),
        .txpmareset_in(txpmareset_in),
        .txrate_in(txrate_in),
        .txratemode_in(txratemode_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .rxresetdone_out(rxresetdone_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_bit_synchronizer_1 \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .txresetdone_out(txresetdone_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtwiz_reset \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
       (.\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .qpll0lock_out(qpll0lock_out),
        .rst_in0(rst_in0),
        .rxcdrlock_out(rxcdrlock_out),
        .rxusrclk2_in(rxusrclk2_in),
        .txusrclk2_in(txusrclk2_in));
endmodule

(* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_COMMON_SCALING_FACTOR = "1" *) (* C_CPLL_VCO_FREQUENCY = "2578.125000" *) 
(* C_ENABLE_COMMON_USRCLK = "0" *) (* C_FORCE_COMMONS = "0" *) (* C_FREERUN_FREQUENCY = "161.132812" *) 
(* C_GT_REV = "67" *) (* C_GT_TYPE = "3" *) (* C_INCLUDE_CPLL_CAL = "2" *) 
(* C_LOCATE_COMMON = "0" *) (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) (* C_LOCATE_RESET_CONTROLLER = "0" *) 
(* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) (* C_LOCATE_RX_USER_CLOCKING = "1" *) (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
(* C_LOCATE_TX_USER_CLOCKING = "1" *) (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) (* C_PCIE_CORECLK_FREQ = "250" *) 
(* C_PCIE_ENABLE = "0" *) (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
(* C_RX_BUFFBYPASS_MODE = "0" *) (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_RX_BUFFER_MODE = "1" *) 
(* C_RX_CB_DISP = "8'b00000000" *) (* C_RX_CB_K = "8'b00000000" *) (* C_RX_CB_LEN_SEQ = "1" *) 
(* C_RX_CB_MAX_LEVEL = "1" *) (* C_RX_CB_NUM_SEQ = "0" *) (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_CC_DISP = "8'b00000000" *) (* C_RX_CC_ENABLE = "0" *) (* C_RX_CC_K = "8'b00000000" *) 
(* C_RX_CC_LEN_SEQ = "1" *) (* C_RX_CC_NUM_SEQ = "0" *) (* C_RX_CC_PERIODICITY = "5000" *) 
(* C_RX_CC_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_RX_COMMA_M_ENABLE = "0" *) (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
(* C_RX_COMMA_P_ENABLE = "0" *) (* C_RX_COMMA_P_VAL = "10'b0101111100" *) (* C_RX_DATA_DECODING = "0" *) 
(* C_RX_ENABLE = "1" *) (* C_RX_INT_DATA_WIDTH = "64" *) (* C_RX_LINE_RATE = "10.312500" *) 
(* C_RX_MASTER_CHANNEL_IDX = "144" *) (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_RX_OUTCLK_FREQUENCY = "161.132812" *) 
(* C_RX_OUTCLK_SOURCE = "1" *) (* C_RX_PLL_TYPE = "0" *) (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_REFCLK_FREQUENCY = "156.250000" *) (* C_RX_SLIDE_MODE = "0" *) (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_RX_USER_CLOCKING_SOURCE = "0" *) (* C_RX_USER_DATA_WIDTH = "64" *) (* C_RX_USRCLK2_FREQUENCY = "161.132812" *) 
(* C_RX_USRCLK_FREQUENCY = "161.132812" *) (* C_SECONDARY_QPLL_ENABLE = "0" *) (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
(* C_SIM_CPLL_CAL_BYPASS = "1" *) (* C_TOTAL_NUM_CHANNELS = "1" *) (* C_TOTAL_NUM_COMMONS = "1" *) 
(* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) (* C_TXPROGDIV_FREQ_ENABLE = "0" *) (* C_TXPROGDIV_FREQ_SOURCE = "0" *) 
(* C_TXPROGDIV_FREQ_VAL = "161.132812" *) (* C_TX_BUFFBYPASS_MODE = "0" *) (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
(* C_TX_BUFFER_MODE = "1" *) (* C_TX_DATA_ENCODING = "0" *) (* C_TX_ENABLE = "1" *) 
(* C_TX_INT_DATA_WIDTH = "64" *) (* C_TX_LINE_RATE = "10.312500" *) (* C_TX_MASTER_CHANNEL_IDX = "144" *) 
(* C_TX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_TX_OUTCLK_FREQUENCY = "161.132812" *) (* C_TX_OUTCLK_SOURCE = "4" *) 
(* C_TX_PLL_TYPE = "0" *) (* C_TX_REFCLK_FREQUENCY = "156.250000" *) (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_TX_USER_CLOCKING_SOURCE = "0" *) (* C_TX_USER_DATA_WIDTH = "64" *) (* C_TX_USRCLK2_FREQUENCY = "161.132812" *) 
(* C_TX_USRCLK_FREQUENCY = "161.132812" *) (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_top
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_tx_srcclk_out,
    gtwiz_userclk_tx_usrclk_out,
    gtwiz_userclk_tx_usrclk2_out,
    gtwiz_userclk_tx_active_out,
    gtwiz_userclk_rx_reset_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_userclk_rx_srcclk_out,
    gtwiz_userclk_rx_usrclk_out,
    gtwiz_userclk_rx_usrclk2_out,
    gtwiz_userclk_rx_active_out,
    gtwiz_buffbypass_tx_reset_in,
    gtwiz_buffbypass_tx_start_user_in,
    gtwiz_buffbypass_tx_done_out,
    gtwiz_buffbypass_tx_error_out,
    gtwiz_buffbypass_rx_reset_in,
    gtwiz_buffbypass_rx_start_user_in,
    gtwiz_buffbypass_rx_done_out,
    gtwiz_buffbypass_rx_error_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1reset_out,
    gtwiz_gthe3_cpll_cal_txoutclk_period_in,
    gtwiz_gthe3_cpll_cal_cnt_tol_in,
    gtwiz_gthe3_cpll_cal_bufg_ce_in,
    gtwiz_gthe4_cpll_cal_txoutclk_period_in,
    gtwiz_gthe4_cpll_cal_cnt_tol_in,
    gtwiz_gthe4_cpll_cal_bufg_ce_in,
    gtwiz_gtye4_cpll_cal_txoutclk_period_in,
    gtwiz_gtye4_cpll_cal_cnt_tol_in,
    gtwiz_gtye4_cpll_cal_bufg_ce_in,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrd_in,
    bgrcalovrdenb_in,
    drpaddr_common_in,
    drpclk_common_in,
    drpdi_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0fbdiv_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll0refclksel_in,
    qpll0reset_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1fbdiv_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1refclksel_in,
    qpll1reset_in,
    qpllrsvd1_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    qpllrsvd4_in,
    rcalenb_in,
    sdm0data_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm0width_in,
    sdm1data_in,
    sdm1reset_in,
    sdm1toggle_in,
    sdm1width_in,
    tcongpi_in,
    tconpowerup_in,
    tconreset_in,
    tconrsvdin1_in,
    ubcfgstreamen_in,
    ubdo_in,
    ubdrdy_in,
    ubenable_in,
    ubgpi_in,
    ubintr_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmregen_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpdo_common_out,
    drprdy_common_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    rxrecclk0_sel_out,
    rxrecclk1_sel_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm0testdata_out,
    sdm1finalout_out,
    sdm1testdata_out,
    tcongpo_out,
    tconrsvdout0_out,
    ubdaddr_out,
    ubden_out,
    ubdi_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllrefclksel_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    elpcaldvorwren_in,
    elpcalpaorwren_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrsvd_in,
    gtrxreset_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_in,
    gttxresetsel_in,
    incpctrl_in,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    looprsvd_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    pcsrsvdin_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    qpll0clk_in,
    qpll0freqlock_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1freqlock_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondi_in,
    rxchbondlevel_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxckcalstart_in,
    rxcommadeten_in,
    rxdfeagcctrl_in,
    rxdccforcestart_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfcnum_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxelecidlemode_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxmonitorsel_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosintcfg_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxoutclksel_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpllclksel_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxprogdivreset_in,
    rxqpien_in,
    rxrate_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxsysclksel_in,
    rxtermination_in,
    rxuserrdy_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tstin_in,
    tx8b10bbypass_in,
    tx8b10ben_in,
    txbufdiffctrl_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdata_in,
    txdataextendrsvd_in,
    txdccforcestart_in,
    txdccreset_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffctrl_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txelforcestart_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmaincursor_in,
    txmargin_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpippmstepsize_in,
    txpisopd_in,
    txpllclksel_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txprecursorinv_in,
    txprogdivreset_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txrate_in,
    txratemode_in,
    txsequence_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txsysclksel_in,
    txuserrdy_in,
    txusrclk_in,
    txusrclk2_in,
    bufgtce_out,
    bufgtcemask_out,
    bufgtdiv_out,
    bufgtreset_out,
    bufgtrstmask_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitorout_out,
    dmonitoroutclk_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    pcsrsvdout_out,
    phystatus_out,
    pinrsrvdas_out,
    powerpresent_out,
    resetexception_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxchbondo_out,
    rxckcaldone_out,
    rxclkcorcnt_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdata_out,
    rxdataextendrsvd_out,
    rxdatavalid_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxheader_out,
    rxheadervalid_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxmonitorout_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxstartofseq_out,
    rxstatus_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txbufstatus_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_buffbypass_tx_reset_in;
  input [0:0]gtwiz_buffbypass_tx_start_user_in;
  output [0:0]gtwiz_buffbypass_tx_done_out;
  output [0:0]gtwiz_buffbypass_tx_error_out;
  input [0:0]gtwiz_buffbypass_rx_reset_in;
  input [0:0]gtwiz_buffbypass_rx_start_user_in;
  output [0:0]gtwiz_buffbypass_rx_done_out;
  output [0:0]gtwiz_buffbypass_rx_error_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [17:0]gtwiz_gthe3_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe3_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe3_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gthe4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe4_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gtye4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gtye4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gtye4_cpll_cal_bufg_ce_in;
  input [63:0]gtwiz_userdata_tx_in;
  output [63:0]gtwiz_userdata_rx_out;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [4:0]bgrcalovrd_in;
  input [0:0]bgrcalovrdenb_in;
  input [15:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [2:0]qpll0refclksel_in;
  input [0:0]qpll0reset_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [7:0]qpll1fbdiv_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [2:0]qpll1refclksel_in;
  input [0:0]qpll1reset_in;
  input [7:0]qpllrsvd1_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]rcalenb_in;
  input [24:0]sdm0data_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [1:0]sdm0width_in;
  input [24:0]sdm1data_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [1:0]sdm1width_in;
  input [0:0]tcongpi_in;
  input [0:0]tconpowerup_in;
  input [0:0]tconreset_in;
  input [0:0]tconrsvdin1_in;
  input [0:0]ubcfgstreamen_in;
  input [15:0]ubdo_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [3:0]ubmdmregen_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]rxrecclk0_sel_out;
  output [0:0]rxrecclk1_sel_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [14:0]sdm0testdata_out;
  output [3:0]sdm1finalout_out;
  output [14:0]sdm1testdata_out;
  output [0:0]tcongpo_out;
  output [0:0]tconrsvdout0_out;
  output [15:0]ubdaddr_out;
  output [0:0]ubden_out;
  output [15:0]ubdi_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [2:0]cpllrefclksel_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]elpcaldvorwren_in;
  input [0:0]elpcalpaorwren_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [15:0]gtrsvd_in;
  input [0:0]gtrxreset_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxreset_in;
  input [0:0]gttxresetsel_in;
  input [0:0]incpctrl_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]looprsvd_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]pcsrsvdin2_in;
  input [0:0]pmarsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [4:0]rxchbondi_in;
  input [2:0]rxchbondlevel_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [6:0]rxckcalstart_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagcctrl_in;
  input [0:0]rxdccforcestart_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [3:0]rxdfecfokfcnum_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [1:0]rxelecidlemode_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [1:0]rxmonitorsel_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosintcfg_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [0:0]rxqpien_in;
  input [2:0]rxrate_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxtermination_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [19:0]tstin_in;
  input [7:0]tx8b10bbypass_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txbufdiffctrl_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [127:0]txdata_in;
  input [7:0]txdataextendrsvd_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [1:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txelforcestart_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [6:0]txmaincursor_in;
  input [2:0]txmargin_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpisopd_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txprogdivreset_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [6:0]txsequence_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [8:0]bufgtdiv_out;
  output [0:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [15:0]dmonitorout_out;
  output [0:0]dmonitoroutclk_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [15:0]pcsrsvdout_out;
  output [0:0]phystatus_out;
  output [15:0]pinrsrvdas_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [4:0]rxchbondo_out;
  output [0:0]rxckcaldone_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [127:0]rxdata_out;
  output [7:0]rxdataextendrsvd_out;
  output [1:0]rxdatavalid_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [7:0]rxmonitorout_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [1:0]rxstartofseq_out;
  output [2:0]rxstatus_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [1:0]txbufstatus_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire \<const0> ;
  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [15:0]drpaddr_common_in;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_common_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_common_out;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_common_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_clk_freerun_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [0:0]gtwiz_reset_rx_cdr_stable_out;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [0:0]txpisopd_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmareset_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [2:0]txrate_in;
  wire [0:0]txratedone_out;
  wire [0:0]txratemode_in;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  assign gthtxn_out[0] = \<const0> ;
  assign gthtxp_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_error_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_error_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = qpll1reset_in;
  assign gtwiz_userclk_rx_active_out[0] = gtwiz_userclk_rx_active_in;
  assign gtwiz_userclk_rx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_active_out[0] = gtwiz_userclk_tx_active_in;
  assign gtwiz_userclk_tx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userdata_rx_out[63:0] = rxdata_out[63:0];
  assign rxqpisenn_out[0] = \<const0> ;
  assign rxqpisenp_out[0] = \<const0> ;
  assign rxrecclk0_sel_out[0] = \<const0> ;
  assign rxrecclk1_sel_out[0] = \<const0> ;
  assign tcongpo_out[0] = \<const0> ;
  assign tconrsvdout0_out[0] = \<const0> ;
  assign txqpisenn_out[0] = \<const0> ;
  assign txqpisenp_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtwizard_gtye4 \gen_gtwizard_gtye4_top.interlaken_0_gt_gtwizard_gtye4_inst 
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_common_in(drpaddr_common_in),
        .drpaddr_in(drpaddr_in),
        .drpclk_common_in(drpclk_common_in),
        .drpclk_in(drpclk_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdi_in(drpdi_in),
        .drpdo_common_out(drpdo_common_out),
        .drpdo_out(drpdo_out),
        .drpen_common_in(drpen_common_in),
        .drpen_in(drpen_in),
        .drprdy_common_out(drprdy_common_out),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_common_in(drpwe_common_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(gtwiz_reset_clk_freerun_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .gtwiz_reset_rx_cdr_stable_out(gtwiz_reset_rx_cdr_stable_out),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(gtwiz_reset_rx_pll_and_datapath_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(gtwiz_reset_tx_pll_and_datapath_in),
        .gtwiz_userclk_rx_active_in(gtwiz_userclk_rx_active_in),
        .gtwiz_userclk_tx_active_in(gtwiz_userclk_tx_active_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .powerpresent_out(powerpresent_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpisopd_in(txpisopd_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmareset_in(txpmareset_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txrate_in(txrate_in),
        .txratedone_out(txratedone_out),
        .txratemode_in(txratemode_in),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_channel_wrapper
   (bufgtce_out,
    bufgtreset_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitoroutclk_out,
    drprdy_out,
    eyescandataerror_out,
    \gen_gtwizard_gtye4.gtpowergood_int ,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    phystatus_out,
    powerpresent_out,
    resetexception_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxckcaldone_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    rxdata_out,
    dmonitorout_out,
    drpdo_out,
    pcsrsvdout_out,
    pinrsrvdas_out,
    rxctrl0_out,
    rxctrl1_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    rxclkcorcnt_out,
    rxdatavalid_out,
    rxheadervalid_out,
    rxstartofseq_out,
    txbufstatus_out,
    bufgtcemask_out,
    bufgtrstmask_out,
    rxbufstatus_out,
    rxstatus_out,
    rxchbondo_out,
    rxheader_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdataextendrsvd_out,
    rxmonitorout_out,
    bufgtdiv_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] ,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpclk_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    \gen_gtwizard_gtye4.gtrxreset_int ,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    \gen_gtwizard_gtye4.gttxreset_ch_int ,
    gttxresetsel_in,
    gtyrxn_in,
    gtyrxp_in,
    incpctrl_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    qpll0outclk_out,
    qpll0freqlock_in,
    qpll0outrefclk_out,
    qpll1outclk_out,
    qpll1freqlock_in,
    qpll1outrefclk_out,
    resetovrd_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxchbonden_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxcommadeten_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosovrden_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    \gen_gtwizard_gtye4.rxprogdivreset_int ,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxtermination_in,
    \gen_gtwizard_gtye4.rxuserrdy_int ,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tx8b10ben_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txdccforcestart_in,
    txdccreset_in,
    txdetectrx_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txpcsreset_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    \gen_powergood_delay.pwr_on_fsm_reg ,
    \gen_gtwizard_gtye4.txpmareset_ch_int ,
    txpolarity_in,
    txprbsforceerr_in,
    \gen_gtwizard_gtye4.txprogdivreset_int ,
    \gen_powergood_delay.pwr_on_fsm_reg_0 ,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    \gen_gtwizard_gtye4.txuserrdy_int ,
    txusrclk_in,
    txusrclk2_in,
    gtwiz_userdata_tx_in,
    drpdi_in,
    gtrsvd_in,
    pcsrsvdin_in,
    txctrl0_in,
    txctrl1_in,
    tstin_in,
    rxelecidlemode_in,
    rxmonitorsel_in,
    rxpd_in,
    rxpllclksel_in,
    rxsysclksel_in,
    txdeemph_in,
    txpd_in,
    txpllclksel_in,
    txsysclksel_in,
    cpllrefclksel_in,
    loopback_in,
    rxchbondlevel_in,
    rxoutclksel_in,
    rxrate_in,
    txmargin_in,
    txoutclksel_in,
    TXRATE,
    rxdfecfokfcnum_in,
    rxprbssel_in,
    txprbssel_in,
    rxchbondi_in,
    txdiffctrl_in,
    txpippmstepsize_in,
    txpostcursor_in,
    txprecursor_in,
    txheader_in,
    rxckcalstart_in,
    txmaincursor_in,
    txsequence_in,
    tx8b10bbypass_in,
    txctrl2_in,
    txdataextendrsvd_in,
    drpaddr_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]bufgtce_out;
  output [0:0]bufgtreset_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [0:0]dmonitoroutclk_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output \gen_gtwizard_gtye4.gtpowergood_int ;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [0:0]phystatus_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [0:0]rxckcaldone_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  output [127:0]rxdata_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [15:0]pcsrsvdout_out;
  output [15:0]pinrsrvdas_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [1:0]rxclkcorcnt_out;
  output [1:0]rxdatavalid_out;
  output [1:0]rxheadervalid_out;
  output [1:0]rxstartofseq_out;
  output [1:0]txbufstatus_out;
  output [2:0]bufgtcemask_out;
  output [2:0]bufgtrstmask_out;
  output [2:0]rxbufstatus_out;
  output [2:0]rxstatus_out;
  output [4:0]rxchbondo_out;
  output [5:0]rxheader_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [7:0]rxdataextendrsvd_out;
  output [7:0]rxmonitorout_out;
  output [8:0]bufgtdiv_out;
  output \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [0:0]drpclk_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input \gen_gtwizard_gtye4.gtrxreset_int ;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input \gen_gtwizard_gtye4.gttxreset_ch_int ;
  input [0:0]gttxresetsel_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [0:0]incpctrl_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [0:0]qpll0outclk_out;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0outrefclk_out;
  input [0:0]qpll1outclk_out;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1outrefclk_out;
  input [0:0]resetovrd_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxchbonden_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosovrden_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input \gen_gtwizard_gtye4.rxprogdivreset_int ;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [0:0]rxtermination_in;
  input \gen_gtwizard_gtye4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [0:0]txdetectrx_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [0:0]txpcsreset_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input \gen_powergood_delay.pwr_on_fsm_reg ;
  input \gen_gtwizard_gtye4.txpmareset_ch_int ;
  input [0:0]txpolarity_in;
  input [0:0]txprbsforceerr_in;
  input \gen_gtwizard_gtye4.txprogdivreset_int ;
  input \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input \gen_gtwizard_gtye4.txuserrdy_int ;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  input [63:0]gtwiz_userdata_tx_in;
  input [15:0]drpdi_in;
  input [15:0]gtrsvd_in;
  input [15:0]pcsrsvdin_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [19:0]tstin_in;
  input [1:0]rxelecidlemode_in;
  input [1:0]rxmonitorsel_in;
  input [1:0]rxpd_in;
  input [1:0]rxpllclksel_in;
  input [1:0]rxsysclksel_in;
  input [1:0]txdeemph_in;
  input [1:0]txpd_in;
  input [1:0]txpllclksel_in;
  input [1:0]txsysclksel_in;
  input [2:0]cpllrefclksel_in;
  input [2:0]loopback_in;
  input [2:0]rxchbondlevel_in;
  input [2:0]rxoutclksel_in;
  input [2:0]rxrate_in;
  input [2:0]txmargin_in;
  input [2:0]txoutclksel_in;
  input [2:0]TXRATE;
  input [3:0]rxdfecfokfcnum_in;
  input [3:0]rxprbssel_in;
  input [3:0]txprbssel_in;
  input [4:0]rxchbondi_in;
  input [4:0]txdiffctrl_in;
  input [4:0]txpippmstepsize_in;
  input [4:0]txpostcursor_in;
  input [4:0]txprecursor_in;
  input [5:0]txheader_in;
  input [6:0]rxckcalstart_in;
  input [6:0]txmaincursor_in;
  input [6:0]txsequence_in;
  input [7:0]tx8b10bbypass_in;
  input [7:0]txctrl2_in;
  input [7:0]txdataextendrsvd_in;
  input [9:0]drpaddr_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;

  wire [2:0]TXRATE;
  wire [0:0]bufgtce_out;
  wire [2:0]bufgtcemask_out;
  wire [8:0]bufgtdiv_out;
  wire [0:0]bufgtreset_out;
  wire [2:0]bufgtrstmask_out;
  wire [0:0]cdrstepdir_in;
  wire [0:0]cdrstepsq_in;
  wire [0:0]cdrstepsx_in;
  wire [0:0]cfgreset_in;
  wire [0:0]clkrsvd0_in;
  wire [0:0]clkrsvd1_in;
  wire [0:0]cpllfbclklost_out;
  wire [0:0]cpllfreqlock_in;
  wire [0:0]cplllock_out;
  wire [0:0]cplllockdetclk_in;
  wire [0:0]cplllocken_in;
  wire [0:0]cpllpd_in;
  wire [0:0]cpllrefclklost_out;
  wire [2:0]cpllrefclksel_in;
  wire [0:0]cpllreset_in;
  wire [0:0]dmonfiforeset_in;
  wire [0:0]dmonitorclk_in;
  wire [15:0]dmonitorout_out;
  wire [0:0]dmonitoroutclk_out;
  wire [9:0]drpaddr_in;
  wire [0:0]drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire [0:0]drpen_in;
  wire [0:0]drprdy_out;
  wire [0:0]drprst_in;
  wire [0:0]drpwe_in;
  wire [0:0]eyescandataerror_out;
  wire [0:0]eyescanreset_in;
  wire [0:0]eyescantrigger_in;
  wire [0:0]freqos_in;
  wire \gen_gtwizard_gtye4.gtpowergood_int ;
  wire \gen_gtwizard_gtye4.gtrxreset_int ;
  wire \gen_gtwizard_gtye4.gttxreset_ch_int ;
  wire \gen_gtwizard_gtye4.rxprogdivreset_int ;
  wire \gen_gtwizard_gtye4.rxuserrdy_int ;
  wire \gen_gtwizard_gtye4.txpmareset_ch_int ;
  wire \gen_gtwizard_gtye4.txprogdivreset_int ;
  wire \gen_gtwizard_gtye4.txuserrdy_int ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[0] ;
  wire \gen_powergood_delay.pwr_on_fsm_reg ;
  wire \gen_powergood_delay.pwr_on_fsm_reg_0 ;
  wire [0:0]gtgrefclk_in;
  wire [0:0]gtnorthrefclk0_in;
  wire [0:0]gtnorthrefclk1_in;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtrefclk1_in;
  wire [0:0]gtrefclkmonitor_out;
  wire [15:0]gtrsvd_in;
  wire [0:0]gtrxresetsel_in;
  wire [0:0]gtsouthrefclk0_in;
  wire [0:0]gtsouthrefclk1_in;
  wire [0:0]gttxresetsel_in;
  wire [63:0]gtwiz_userdata_tx_in;
  wire [0:0]gtyrxn_in;
  wire [0:0]gtyrxp_in;
  wire [0:0]gtytxn_out;
  wire [0:0]gtytxp_out;
  wire [0:0]incpctrl_in;
  wire [2:0]loopback_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire [0:0]pcieeqrxeqadaptdone_in;
  wire [0:0]pcierategen3_out;
  wire [0:0]pcierateidle_out;
  wire [1:0]pcierateqpllpd_out;
  wire [1:0]pcierateqpllreset_out;
  wire [0:0]pcierstidle_in;
  wire [0:0]pciersttxsyncstart_in;
  wire [0:0]pciesynctxsyncdone_out;
  wire [0:0]pcieusergen3rdy_out;
  wire [0:0]pcieuserphystatusrst_out;
  wire [0:0]pcieuserratedone_in;
  wire [0:0]pcieuserratestart_out;
  wire [15:0]pcsrsvdin_in;
  wire [15:0]pcsrsvdout_out;
  wire [0:0]phystatus_out;
  wire [15:0]pinrsrvdas_out;
  wire [0:0]powerpresent_out;
  wire [0:0]qpll0freqlock_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll1freqlock_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]resetexception_out;
  wire [0:0]resetovrd_in;
  wire [0:0]rx8b10ben_in;
  wire [0:0]rxafecfoken_in;
  wire [0:0]rxbufreset_in;
  wire [2:0]rxbufstatus_out;
  wire [0:0]rxbyteisaligned_out;
  wire [0:0]rxbyterealign_out;
  wire [0:0]rxcdrfreqreset_in;
  wire [0:0]rxcdrhold_in;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxcdrovrden_in;
  wire [0:0]rxcdrphdone_out;
  wire [0:0]rxcdrreset_in;
  wire [0:0]rxchanbondseq_out;
  wire [0:0]rxchanisaligned_out;
  wire [0:0]rxchanrealign_out;
  wire [0:0]rxchbonden_in;
  wire [4:0]rxchbondi_in;
  wire [2:0]rxchbondlevel_in;
  wire [0:0]rxchbondmaster_in;
  wire [4:0]rxchbondo_out;
  wire [0:0]rxchbondslave_in;
  wire [0:0]rxckcaldone_out;
  wire [0:0]rxckcalreset_in;
  wire [6:0]rxckcalstart_in;
  wire [1:0]rxclkcorcnt_out;
  wire [0:0]rxcominitdet_out;
  wire [0:0]rxcommadet_out;
  wire [0:0]rxcommadeten_in;
  wire [0:0]rxcomsasdet_out;
  wire [0:0]rxcomwakedet_out;
  wire [15:0]rxctrl0_out;
  wire [15:0]rxctrl1_out;
  wire [7:0]rxctrl2_out;
  wire [7:0]rxctrl3_out;
  wire [127:0]rxdata_out;
  wire [7:0]rxdataextendrsvd_out;
  wire [1:0]rxdatavalid_out;
  wire [0:0]rxdfeagchold_in;
  wire [0:0]rxdfeagcovrden_in;
  wire [3:0]rxdfecfokfcnum_in;
  wire [0:0]rxdfecfokfen_in;
  wire [0:0]rxdfecfokfpulse_in;
  wire [0:0]rxdfecfokhold_in;
  wire [0:0]rxdfecfokovren_in;
  wire [0:0]rxdfekhhold_in;
  wire [0:0]rxdfekhovrden_in;
  wire [0:0]rxdfelfhold_in;
  wire [0:0]rxdfelfovrden_in;
  wire [0:0]rxdfelpmreset_in;
  wire [0:0]rxdfetap10hold_in;
  wire [0:0]rxdfetap10ovrden_in;
  wire [0:0]rxdfetap11hold_in;
  wire [0:0]rxdfetap11ovrden_in;
  wire [0:0]rxdfetap12hold_in;
  wire [0:0]rxdfetap12ovrden_in;
  wire [0:0]rxdfetap13hold_in;
  wire [0:0]rxdfetap13ovrden_in;
  wire [0:0]rxdfetap14hold_in;
  wire [0:0]rxdfetap14ovrden_in;
  wire [0:0]rxdfetap15hold_in;
  wire [0:0]rxdfetap15ovrden_in;
  wire [0:0]rxdfetap2hold_in;
  wire [0:0]rxdfetap2ovrden_in;
  wire [0:0]rxdfetap3hold_in;
  wire [0:0]rxdfetap3ovrden_in;
  wire [0:0]rxdfetap4hold_in;
  wire [0:0]rxdfetap4ovrden_in;
  wire [0:0]rxdfetap5hold_in;
  wire [0:0]rxdfetap5ovrden_in;
  wire [0:0]rxdfetap6hold_in;
  wire [0:0]rxdfetap6ovrden_in;
  wire [0:0]rxdfetap7hold_in;
  wire [0:0]rxdfetap7ovrden_in;
  wire [0:0]rxdfetap8hold_in;
  wire [0:0]rxdfetap8ovrden_in;
  wire [0:0]rxdfetap9hold_in;
  wire [0:0]rxdfetap9ovrden_in;
  wire [0:0]rxdfeuthold_in;
  wire [0:0]rxdfeutovrden_in;
  wire [0:0]rxdfevphold_in;
  wire [0:0]rxdfevpovrden_in;
  wire [0:0]rxdfexyden_in;
  wire [0:0]rxdlybypass_in;
  wire [0:0]rxdlyen_in;
  wire [0:0]rxdlyovrden_in;
  wire [0:0]rxdlysreset_in;
  wire [0:0]rxdlysresetdone_out;
  wire [0:0]rxelecidle_out;
  wire [1:0]rxelecidlemode_in;
  wire [0:0]rxeqtraining_in;
  wire [0:0]rxgearboxslip_in;
  wire [5:0]rxheader_out;
  wire [1:0]rxheadervalid_out;
  wire [0:0]rxlatclk_in;
  wire [0:0]rxlfpstresetdet_out;
  wire [0:0]rxlfpsu2lpexitdet_out;
  wire [0:0]rxlfpsu3wakedet_out;
  wire [0:0]rxlpmen_in;
  wire [0:0]rxlpmgchold_in;
  wire [0:0]rxlpmgcovrden_in;
  wire [0:0]rxlpmhfhold_in;
  wire [0:0]rxlpmhfovrden_in;
  wire [0:0]rxlpmlfhold_in;
  wire [0:0]rxlpmlfklovrden_in;
  wire [0:0]rxlpmoshold_in;
  wire [0:0]rxlpmosovrden_in;
  wire [0:0]rxmcommaalignen_in;
  wire [7:0]rxmonitorout_out;
  wire [1:0]rxmonitorsel_in;
  wire [0:0]rxoobreset_in;
  wire [0:0]rxoscalreset_in;
  wire [0:0]rxoshold_in;
  wire [0:0]rxosintdone_out;
  wire [0:0]rxosintstarted_out;
  wire [0:0]rxosintstrobedone_out;
  wire [0:0]rxosintstrobestarted_out;
  wire [0:0]rxosovrden_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkfabric_out;
  wire [0:0]rxoutclkpcs_out;
  wire [2:0]rxoutclksel_in;
  wire [0:0]rxpcommaalignen_in;
  wire [0:0]rxpcsreset_in;
  wire [1:0]rxpd_in;
  wire [0:0]rxphalign_in;
  wire [0:0]rxphaligndone_out;
  wire [0:0]rxphalignen_in;
  wire [0:0]rxphalignerr_out;
  wire [0:0]rxphdlypd_in;
  wire [0:0]rxphdlyreset_in;
  wire [1:0]rxpllclksel_in;
  wire [0:0]rxpmareset_in;
  wire [0:0]rxpmaresetdone_out;
  wire [0:0]rxpolarity_in;
  wire [0:0]rxprbscntreset_in;
  wire [0:0]rxprbserr_out;
  wire [0:0]rxprbslocked_out;
  wire [3:0]rxprbssel_in;
  wire [0:0]rxprgdivresetdone_out;
  wire [2:0]rxrate_in;
  wire [0:0]rxratedone_out;
  wire [0:0]rxratemode_in;
  wire [0:0]rxrecclkout_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxslide_in;
  wire [0:0]rxsliderdy_out;
  wire [0:0]rxslipdone_out;
  wire [0:0]rxslipoutclk_in;
  wire [0:0]rxslipoutclkrdy_out;
  wire [0:0]rxslippma_in;
  wire [0:0]rxslippmardy_out;
  wire [1:0]rxstartofseq_out;
  wire [2:0]rxstatus_out;
  wire [0:0]rxsyncallin_in;
  wire [0:0]rxsyncdone_out;
  wire [0:0]rxsyncin_in;
  wire [0:0]rxsyncmode_in;
  wire [0:0]rxsyncout_out;
  wire [1:0]rxsysclksel_in;
  wire [0:0]rxtermination_in;
  wire [0:0]rxusrclk2_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]rxvalid_out;
  wire [0:0]sigvalidclk_in;
  wire [19:0]tstin_in;
  wire [7:0]tx8b10bbypass_in;
  wire [0:0]tx8b10ben_in;
  wire [1:0]txbufstatus_out;
  wire [0:0]txcomfinish_out;
  wire [0:0]txcominit_in;
  wire [0:0]txcomsas_in;
  wire [0:0]txcomwake_in;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [7:0]txdataextendrsvd_in;
  wire [0:0]txdccdone_out;
  wire [0:0]txdccforcestart_in;
  wire [0:0]txdccreset_in;
  wire [1:0]txdeemph_in;
  wire [0:0]txdetectrx_in;
  wire [4:0]txdiffctrl_in;
  wire [0:0]txdlybypass_in;
  wire [0:0]txdlyen_in;
  wire [0:0]txdlyhold_in;
  wire [0:0]txdlyovrden_in;
  wire [0:0]txdlysreset_in;
  wire [0:0]txdlysresetdone_out;
  wire [0:0]txdlyupdown_in;
  wire [0:0]txelecidle_in;
  wire [5:0]txheader_in;
  wire [0:0]txinhibit_in;
  wire [0:0]txlatclk_in;
  wire [0:0]txlfpstreset_in;
  wire [0:0]txlfpsu2lpexit_in;
  wire [0:0]txlfpsu3wake_in;
  wire [6:0]txmaincursor_in;
  wire [2:0]txmargin_in;
  wire [0:0]txmuxdcdexhold_in;
  wire [0:0]txmuxdcdorwren_in;
  wire [0:0]txoneszeros_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txoutclkfabric_out;
  wire [0:0]txoutclkpcs_out;
  wire [2:0]txoutclksel_in;
  wire [0:0]txpcsreset_in;
  wire [1:0]txpd_in;
  wire [0:0]txpdelecidlemode_in;
  wire [0:0]txphalign_in;
  wire [0:0]txphaligndone_out;
  wire [0:0]txphalignen_in;
  wire [0:0]txphdlypd_in;
  wire [0:0]txphdlyreset_in;
  wire [0:0]txphdlytstclk_in;
  wire [0:0]txphinit_in;
  wire [0:0]txphinitdone_out;
  wire [0:0]txphovrden_in;
  wire [0:0]txpippmen_in;
  wire [0:0]txpippmovrden_in;
  wire [0:0]txpippmpd_in;
  wire [0:0]txpippmsel_in;
  wire [4:0]txpippmstepsize_in;
  wire [1:0]txpllclksel_in;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txpolarity_in;
  wire [4:0]txpostcursor_in;
  wire [0:0]txprbsforceerr_in;
  wire [3:0]txprbssel_in;
  wire [4:0]txprecursor_in;
  wire [0:0]txprgdivresetdone_out;
  wire [0:0]txratedone_out;
  wire [0:0]txresetdone_out;
  wire [6:0]txsequence_in;
  wire [0:0]txswing_in;
  wire [0:0]txsyncallin_in;
  wire [0:0]txsyncdone_out;
  wire [0:0]txsyncin_in;
  wire [0:0]txsyncmode_in;
  wire [0:0]txsyncout_out;
  wire [1:0]txsysclksel_in;
  wire [0:0]txusrclk2_in;
  wire [0:0]txusrclk_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_channel channel_inst
       (.TXRATE(TXRATE),
        .bufgtce_out(bufgtce_out),
        .bufgtcemask_out(bufgtcemask_out),
        .bufgtdiv_out(bufgtdiv_out),
        .bufgtreset_out(bufgtreset_out),
        .bufgtrstmask_out(bufgtrstmask_out),
        .cdrstepdir_in(cdrstepdir_in),
        .cdrstepsq_in(cdrstepsq_in),
        .cdrstepsx_in(cdrstepsx_in),
        .cfgreset_in(cfgreset_in),
        .clkrsvd0_in(clkrsvd0_in),
        .clkrsvd1_in(clkrsvd1_in),
        .cpllfbclklost_out(cpllfbclklost_out),
        .cpllfreqlock_in(cpllfreqlock_in),
        .cplllock_out(cplllock_out),
        .cplllockdetclk_in(cplllockdetclk_in),
        .cplllocken_in(cplllocken_in),
        .cpllpd_in(cpllpd_in),
        .cpllrefclklost_out(cpllrefclklost_out),
        .cpllrefclksel_in(cpllrefclksel_in),
        .cpllreset_in(cpllreset_in),
        .dmonfiforeset_in(dmonfiforeset_in),
        .dmonitorclk_in(dmonitorclk_in),
        .dmonitorout_out(dmonitorout_out),
        .dmonitoroutclk_out(dmonitoroutclk_out),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drprst_in(drprst_in),
        .drpwe_in(drpwe_in),
        .eyescandataerror_out(eyescandataerror_out),
        .eyescanreset_in(eyescanreset_in),
        .eyescantrigger_in(eyescantrigger_in),
        .freqos_in(freqos_in),
        .\gen_gtwizard_gtye4.gtpowergood_int (\gen_gtwizard_gtye4.gtpowergood_int ),
        .\gen_gtwizard_gtye4.gtrxreset_int (\gen_gtwizard_gtye4.gtrxreset_int ),
        .\gen_gtwizard_gtye4.gttxreset_ch_int (\gen_gtwizard_gtye4.gttxreset_ch_int ),
        .\gen_gtwizard_gtye4.rxprogdivreset_int (\gen_gtwizard_gtye4.rxprogdivreset_int ),
        .\gen_gtwizard_gtye4.rxuserrdy_int (\gen_gtwizard_gtye4.rxuserrdy_int ),
        .\gen_gtwizard_gtye4.txpmareset_ch_int (\gen_gtwizard_gtye4.txpmareset_ch_int ),
        .\gen_gtwizard_gtye4.txprogdivreset_int (\gen_gtwizard_gtye4.txprogdivreset_int ),
        .\gen_gtwizard_gtye4.txuserrdy_int (\gen_gtwizard_gtye4.txuserrdy_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[0] (\gen_powergood_delay.intclk_rrst_n_r_reg[0] ),
        .\gen_powergood_delay.pwr_on_fsm_reg (\gen_powergood_delay.pwr_on_fsm_reg ),
        .\gen_powergood_delay.pwr_on_fsm_reg_0 (\gen_powergood_delay.pwr_on_fsm_reg_0 ),
        .gtgrefclk_in(gtgrefclk_in),
        .gtnorthrefclk0_in(gtnorthrefclk0_in),
        .gtnorthrefclk1_in(gtnorthrefclk1_in),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk1_in(gtrefclk1_in),
        .gtrefclkmonitor_out(gtrefclkmonitor_out),
        .gtrsvd_in(gtrsvd_in),
        .gtrxresetsel_in(gtrxresetsel_in),
        .gtsouthrefclk0_in(gtsouthrefclk0_in),
        .gtsouthrefclk1_in(gtsouthrefclk1_in),
        .gttxresetsel_in(gttxresetsel_in),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(gtyrxn_in),
        .gtyrxp_in(gtyrxp_in),
        .gtytxn_out(gtytxn_out),
        .gtytxp_out(gtytxp_out),
        .incpctrl_in(incpctrl_in),
        .loopback_in(loopback_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .pcieeqrxeqadaptdone_in(pcieeqrxeqadaptdone_in),
        .pcierategen3_out(pcierategen3_out),
        .pcierateidle_out(pcierateidle_out),
        .pcierateqpllpd_out(pcierateqpllpd_out),
        .pcierateqpllreset_out(pcierateqpllreset_out),
        .pcierstidle_in(pcierstidle_in),
        .pciersttxsyncstart_in(pciersttxsyncstart_in),
        .pciesynctxsyncdone_out(pciesynctxsyncdone_out),
        .pcieusergen3rdy_out(pcieusergen3rdy_out),
        .pcieuserphystatusrst_out(pcieuserphystatusrst_out),
        .pcieuserratedone_in(pcieuserratedone_in),
        .pcieuserratestart_out(pcieuserratestart_out),
        .pcsrsvdin_in(pcsrsvdin_in),
        .pcsrsvdout_out(pcsrsvdout_out),
        .phystatus_out(phystatus_out),
        .pinrsrvdas_out(pinrsrvdas_out),
        .powerpresent_out(powerpresent_out),
        .qpll0freqlock_in(qpll0freqlock_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll1freqlock_in(qpll1freqlock_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .resetexception_out(resetexception_out),
        .resetovrd_in(resetovrd_in),
        .rx8b10ben_in(rx8b10ben_in),
        .rxafecfoken_in(rxafecfoken_in),
        .rxbufreset_in(rxbufreset_in),
        .rxbufstatus_out(rxbufstatus_out),
        .rxbyteisaligned_out(rxbyteisaligned_out),
        .rxbyterealign_out(rxbyterealign_out),
        .rxcdrfreqreset_in(rxcdrfreqreset_in),
        .rxcdrhold_in(rxcdrhold_in),
        .rxcdrlock_out(rxcdrlock_out),
        .rxcdrovrden_in(rxcdrovrden_in),
        .rxcdrphdone_out(rxcdrphdone_out),
        .rxcdrreset_in(rxcdrreset_in),
        .rxchanbondseq_out(rxchanbondseq_out),
        .rxchanisaligned_out(rxchanisaligned_out),
        .rxchanrealign_out(rxchanrealign_out),
        .rxchbonden_in(rxchbonden_in),
        .rxchbondi_in(rxchbondi_in),
        .rxchbondlevel_in(rxchbondlevel_in),
        .rxchbondmaster_in(rxchbondmaster_in),
        .rxchbondo_out(rxchbondo_out),
        .rxchbondslave_in(rxchbondslave_in),
        .rxckcaldone_out(rxckcaldone_out),
        .rxckcalreset_in(rxckcalreset_in),
        .rxckcalstart_in(rxckcalstart_in),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(rxcominitdet_out),
        .rxcommadet_out(rxcommadet_out),
        .rxcommadeten_in(rxcommadeten_in),
        .rxcomsasdet_out(rxcomsasdet_out),
        .rxcomwakedet_out(rxcomwakedet_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxdata_out(rxdata_out),
        .rxdataextendrsvd_out(rxdataextendrsvd_out),
        .rxdatavalid_out(rxdatavalid_out),
        .rxdfeagchold_in(rxdfeagchold_in),
        .rxdfeagcovrden_in(rxdfeagcovrden_in),
        .rxdfecfokfcnum_in(rxdfecfokfcnum_in),
        .rxdfecfokfen_in(rxdfecfokfen_in),
        .rxdfecfokfpulse_in(rxdfecfokfpulse_in),
        .rxdfecfokhold_in(rxdfecfokhold_in),
        .rxdfecfokovren_in(rxdfecfokovren_in),
        .rxdfekhhold_in(rxdfekhhold_in),
        .rxdfekhovrden_in(rxdfekhovrden_in),
        .rxdfelfhold_in(rxdfelfhold_in),
        .rxdfelfovrden_in(rxdfelfovrden_in),
        .rxdfelpmreset_in(rxdfelpmreset_in),
        .rxdfetap10hold_in(rxdfetap10hold_in),
        .rxdfetap10ovrden_in(rxdfetap10ovrden_in),
        .rxdfetap11hold_in(rxdfetap11hold_in),
        .rxdfetap11ovrden_in(rxdfetap11ovrden_in),
        .rxdfetap12hold_in(rxdfetap12hold_in),
        .rxdfetap12ovrden_in(rxdfetap12ovrden_in),
        .rxdfetap13hold_in(rxdfetap13hold_in),
        .rxdfetap13ovrden_in(rxdfetap13ovrden_in),
        .rxdfetap14hold_in(rxdfetap14hold_in),
        .rxdfetap14ovrden_in(rxdfetap14ovrden_in),
        .rxdfetap15hold_in(rxdfetap15hold_in),
        .rxdfetap15ovrden_in(rxdfetap15ovrden_in),
        .rxdfetap2hold_in(rxdfetap2hold_in),
        .rxdfetap2ovrden_in(rxdfetap2ovrden_in),
        .rxdfetap3hold_in(rxdfetap3hold_in),
        .rxdfetap3ovrden_in(rxdfetap3ovrden_in),
        .rxdfetap4hold_in(rxdfetap4hold_in),
        .rxdfetap4ovrden_in(rxdfetap4ovrden_in),
        .rxdfetap5hold_in(rxdfetap5hold_in),
        .rxdfetap5ovrden_in(rxdfetap5ovrden_in),
        .rxdfetap6hold_in(rxdfetap6hold_in),
        .rxdfetap6ovrden_in(rxdfetap6ovrden_in),
        .rxdfetap7hold_in(rxdfetap7hold_in),
        .rxdfetap7ovrden_in(rxdfetap7ovrden_in),
        .rxdfetap8hold_in(rxdfetap8hold_in),
        .rxdfetap8ovrden_in(rxdfetap8ovrden_in),
        .rxdfetap9hold_in(rxdfetap9hold_in),
        .rxdfetap9ovrden_in(rxdfetap9ovrden_in),
        .rxdfeuthold_in(rxdfeuthold_in),
        .rxdfeutovrden_in(rxdfeutovrden_in),
        .rxdfevphold_in(rxdfevphold_in),
        .rxdfevpovrden_in(rxdfevpovrden_in),
        .rxdfexyden_in(rxdfexyden_in),
        .rxdlybypass_in(rxdlybypass_in),
        .rxdlyen_in(rxdlyen_in),
        .rxdlyovrden_in(rxdlyovrden_in),
        .rxdlysreset_in(rxdlysreset_in),
        .rxdlysresetdone_out(rxdlysresetdone_out),
        .rxelecidle_out(rxelecidle_out),
        .rxelecidlemode_in(rxelecidlemode_in),
        .rxeqtraining_in(rxeqtraining_in),
        .rxgearboxslip_in(rxgearboxslip_in),
        .rxheader_out(rxheader_out),
        .rxheadervalid_out(rxheadervalid_out),
        .rxlatclk_in(rxlatclk_in),
        .rxlfpstresetdet_out(rxlfpstresetdet_out),
        .rxlfpsu2lpexitdet_out(rxlfpsu2lpexitdet_out),
        .rxlfpsu3wakedet_out(rxlfpsu3wakedet_out),
        .rxlpmen_in(rxlpmen_in),
        .rxlpmgchold_in(rxlpmgchold_in),
        .rxlpmgcovrden_in(rxlpmgcovrden_in),
        .rxlpmhfhold_in(rxlpmhfhold_in),
        .rxlpmhfovrden_in(rxlpmhfovrden_in),
        .rxlpmlfhold_in(rxlpmlfhold_in),
        .rxlpmlfklovrden_in(rxlpmlfklovrden_in),
        .rxlpmoshold_in(rxlpmoshold_in),
        .rxlpmosovrden_in(rxlpmosovrden_in),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(rxmonitorout_out),
        .rxmonitorsel_in(rxmonitorsel_in),
        .rxoobreset_in(rxoobreset_in),
        .rxoscalreset_in(rxoscalreset_in),
        .rxoshold_in(rxoshold_in),
        .rxosintdone_out(rxosintdone_out),
        .rxosintstarted_out(rxosintstarted_out),
        .rxosintstrobedone_out(rxosintstrobedone_out),
        .rxosintstrobestarted_out(rxosintstrobestarted_out),
        .rxosovrden_in(rxosovrden_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(rxoutclkfabric_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxoutclksel_in(rxoutclksel_in),
        .rxpcommaalignen_in(rxpcommaalignen_in),
        .rxpcsreset_in(rxpcsreset_in),
        .rxpd_in(rxpd_in),
        .rxphalign_in(rxphalign_in),
        .rxphaligndone_out(rxphaligndone_out),
        .rxphalignen_in(rxphalignen_in),
        .rxphalignerr_out(rxphalignerr_out),
        .rxphdlypd_in(rxphdlypd_in),
        .rxphdlyreset_in(rxphdlyreset_in),
        .rxpllclksel_in(rxpllclksel_in),
        .rxpmareset_in(rxpmareset_in),
        .rxpmaresetdone_out(rxpmaresetdone_out),
        .rxpolarity_in(rxpolarity_in),
        .rxprbscntreset_in(rxprbscntreset_in),
        .rxprbserr_out(rxprbserr_out),
        .rxprbslocked_out(rxprbslocked_out),
        .rxprbssel_in(rxprbssel_in),
        .rxprgdivresetdone_out(rxprgdivresetdone_out),
        .rxrate_in(rxrate_in),
        .rxratedone_out(rxratedone_out),
        .rxratemode_in(rxratemode_in),
        .rxrecclkout_out(rxrecclkout_out),
        .rxresetdone_out(rxresetdone_out),
        .rxslide_in(rxslide_in),
        .rxsliderdy_out(rxsliderdy_out),
        .rxslipdone_out(rxslipdone_out),
        .rxslipoutclk_in(rxslipoutclk_in),
        .rxslipoutclkrdy_out(rxslipoutclkrdy_out),
        .rxslippma_in(rxslippma_in),
        .rxslippmardy_out(rxslippmardy_out),
        .rxstartofseq_out(rxstartofseq_out),
        .rxstatus_out(rxstatus_out),
        .rxsyncallin_in(rxsyncallin_in),
        .rxsyncdone_out(rxsyncdone_out),
        .rxsyncin_in(rxsyncin_in),
        .rxsyncmode_in(rxsyncmode_in),
        .rxsyncout_out(rxsyncout_out),
        .rxsysclksel_in(rxsysclksel_in),
        .rxtermination_in(rxtermination_in),
        .rxusrclk2_in(rxusrclk2_in),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(rxvalid_out),
        .sigvalidclk_in(sigvalidclk_in),
        .tstin_in(tstin_in),
        .tx8b10bbypass_in(tx8b10bbypass_in),
        .tx8b10ben_in(tx8b10ben_in),
        .txbufstatus_out(txbufstatus_out),
        .txcomfinish_out(txcomfinish_out),
        .txcominit_in(txcominit_in),
        .txcomsas_in(txcomsas_in),
        .txcomwake_in(txcomwake_in),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txdataextendrsvd_in(txdataextendrsvd_in),
        .txdccdone_out(txdccdone_out),
        .txdccforcestart_in(txdccforcestart_in),
        .txdccreset_in(txdccreset_in),
        .txdeemph_in(txdeemph_in),
        .txdetectrx_in(txdetectrx_in),
        .txdiffctrl_in(txdiffctrl_in),
        .txdlybypass_in(txdlybypass_in),
        .txdlyen_in(txdlyen_in),
        .txdlyhold_in(txdlyhold_in),
        .txdlyovrden_in(txdlyovrden_in),
        .txdlysreset_in(txdlysreset_in),
        .txdlysresetdone_out(txdlysresetdone_out),
        .txdlyupdown_in(txdlyupdown_in),
        .txelecidle_in(txelecidle_in),
        .txheader_in(txheader_in),
        .txinhibit_in(txinhibit_in),
        .txlatclk_in(txlatclk_in),
        .txlfpstreset_in(txlfpstreset_in),
        .txlfpsu2lpexit_in(txlfpsu2lpexit_in),
        .txlfpsu3wake_in(txlfpsu3wake_in),
        .txmaincursor_in(txmaincursor_in),
        .txmargin_in(txmargin_in),
        .txmuxdcdexhold_in(txmuxdcdexhold_in),
        .txmuxdcdorwren_in(txmuxdcdorwren_in),
        .txoneszeros_in(txoneszeros_in),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(txoutclkfabric_out),
        .txoutclkpcs_out(txoutclkpcs_out),
        .txoutclksel_in(txoutclksel_in),
        .txpcsreset_in(txpcsreset_in),
        .txpd_in(txpd_in),
        .txpdelecidlemode_in(txpdelecidlemode_in),
        .txphalign_in(txphalign_in),
        .txphaligndone_out(txphaligndone_out),
        .txphalignen_in(txphalignen_in),
        .txphdlypd_in(txphdlypd_in),
        .txphdlyreset_in(txphdlyreset_in),
        .txphdlytstclk_in(txphdlytstclk_in),
        .txphinit_in(txphinit_in),
        .txphinitdone_out(txphinitdone_out),
        .txphovrden_in(txphovrden_in),
        .txpippmen_in(txpippmen_in),
        .txpippmovrden_in(txpippmovrden_in),
        .txpippmpd_in(txpippmpd_in),
        .txpippmsel_in(txpippmsel_in),
        .txpippmstepsize_in(txpippmstepsize_in),
        .txpllclksel_in(txpllclksel_in),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txpolarity_in(txpolarity_in),
        .txpostcursor_in(txpostcursor_in),
        .txprbsforceerr_in(txprbsforceerr_in),
        .txprbssel_in(txprbssel_in),
        .txprecursor_in(txprecursor_in),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txratedone_out(txratedone_out),
        .txresetdone_out(txresetdone_out),
        .txsequence_in(txsequence_in),
        .txswing_in(txswing_in),
        .txsyncallin_in(txsyncallin_in),
        .txsyncdone_out(txsyncdone_out),
        .txsyncin_in(txsyncin_in),
        .txsyncmode_in(txsyncmode_in),
        .txsyncout_out(txsyncout_out),
        .txsysclksel_in(txsysclksel_in),
        .txusrclk2_in(txusrclk2_in),
        .txusrclk_in(txusrclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt_gtye4_common_wrapper
   (drprdy_common_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    ubden_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    sdm0testdata_out,
    sdm1testdata_out,
    drpdo_common_out,
    ubdaddr_out,
    ubdi_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm1finalout_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    rst_in0,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrdenb_in,
    drpclk_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    gtwiz_reset_qpll0reset_out,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1reset_in,
    rcalenb_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm1reset_in,
    sdm1toggle_in,
    ubcfgstreamen_in,
    ubdrdy_in,
    ubenable_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpaddr_common_in,
    drpdi_common_in,
    ubdo_in,
    sdm0width_in,
    sdm1width_in,
    ubgpi_in,
    ubintr_in,
    sdm0data_in,
    sdm1data_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    qpll0refclksel_in,
    qpll1refclksel_in,
    ubmdmregen_in,
    bgrcalovrd_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0fbdiv_in,
    qpll1fbdiv_in,
    qpllrsvd1_in,
    qpllrsvd4_in);
  output [0:0]drprdy_common_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]ubden_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  output [14:0]sdm0testdata_out;
  output [14:0]sdm1testdata_out;
  output [15:0]drpdo_common_out;
  output [15:0]ubdaddr_out;
  output [15:0]ubdi_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [3:0]sdm1finalout_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output rst_in0;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [0:0]bgrcalovrdenb_in;
  input [0:0]drpclk_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [0:0]qpll1reset_in;
  input [0:0]rcalenb_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  input [15:0]drpaddr_common_in;
  input [15:0]drpdi_common_in;
  input [15:0]ubdo_in;
  input [1:0]sdm0width_in;
  input [1:0]sdm1width_in;
  input [1:0]ubgpi_in;
  input [1:0]ubintr_in;
  input [24:0]sdm0data_in;
  input [24:0]sdm1data_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [2:0]qpll0refclksel_in;
  input [2:0]qpll1refclksel_in;
  input [3:0]ubmdmregen_in;
  input [4:0]bgrcalovrd_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [7:0]qpll1fbdiv_in;
  input [7:0]qpllrsvd1_in;
  input [7:0]qpllrsvd4_in;

  wire [0:0]bgbypassb_in;
  wire [0:0]bgmonitorenb_in;
  wire [0:0]bgpdb_in;
  wire [4:0]bgrcalovrd_in;
  wire [0:0]bgrcalovrdenb_in;
  wire [15:0]drpaddr_common_in;
  wire [0:0]drpclk_common_in;
  wire [15:0]drpdi_common_in;
  wire [15:0]drpdo_common_out;
  wire [0:0]drpen_common_in;
  wire [0:0]drprdy_common_out;
  wire [0:0]drpwe_common_in;
  wire [0:0]gtgrefclk0_in;
  wire [0:0]gtgrefclk1_in;
  wire [0:0]gtnorthrefclk00_in;
  wire [0:0]gtnorthrefclk01_in;
  wire [0:0]gtnorthrefclk10_in;
  wire [0:0]gtnorthrefclk11_in;
  wire [0:0]gtrefclk00_in;
  wire [0:0]gtrefclk01_in;
  wire [0:0]gtrefclk10_in;
  wire [0:0]gtrefclk11_in;
  wire [0:0]gtsouthrefclk00_in;
  wire [0:0]gtsouthrefclk01_in;
  wire [0:0]gtsouthrefclk10_in;
  wire [0:0]gtsouthrefclk11_in;
  wire [0:0]gtwiz_reset_qpll0reset_out;
  wire [2:0]pcierateqpll0_in;
  wire [2:0]pcierateqpll1_in;
  wire [7:0]pmarsvd0_in;
  wire [7:0]pmarsvd1_in;
  wire [7:0]pmarsvdout0_out;
  wire [7:0]pmarsvdout1_out;
  wire [0:0]qpll0clkrsvd0_in;
  wire [0:0]qpll0clkrsvd1_in;
  wire [0:0]qpll0fbclklost_out;
  wire [7:0]qpll0fbdiv_in;
  wire [0:0]qpll0lock_out;
  wire [0:0]qpll0lockdetclk_in;
  wire [0:0]qpll0locken_in;
  wire [0:0]qpll0outclk_out;
  wire [0:0]qpll0outrefclk_out;
  wire [0:0]qpll0pd_in;
  wire [0:0]qpll0refclklost_out;
  wire [2:0]qpll0refclksel_in;
  wire [0:0]qpll1clkrsvd0_in;
  wire [0:0]qpll1clkrsvd1_in;
  wire [0:0]qpll1fbclklost_out;
  wire [7:0]qpll1fbdiv_in;
  wire [0:0]qpll1lock_out;
  wire [0:0]qpll1lockdetclk_in;
  wire [0:0]qpll1locken_in;
  wire [0:0]qpll1outclk_out;
  wire [0:0]qpll1outrefclk_out;
  wire [0:0]qpll1pd_in;
  wire [0:0]qpll1refclklost_out;
  wire [2:0]qpll1refclksel_in;
  wire [0:0]qpll1reset_in;
  wire [7:0]qplldmonitor0_out;
  wire [7:0]qplldmonitor1_out;
  wire [7:0]qpllrsvd1_in;
  wire [4:0]qpllrsvd2_in;
  wire [4:0]qpllrsvd3_in;
  wire [7:0]qpllrsvd4_in;
  wire [0:0]rcalenb_in;
  wire [0:0]refclkoutmonitor0_out;
  wire [0:0]refclkoutmonitor1_out;
  wire rst_in0;
  wire [1:0]rxrecclk0sel_out;
  wire [1:0]rxrecclk1sel_out;
  wire [24:0]sdm0data_in;
  wire [3:0]sdm0finalout_out;
  wire [0:0]sdm0reset_in;
  wire [14:0]sdm0testdata_out;
  wire [0:0]sdm0toggle_in;
  wire [1:0]sdm0width_in;
  wire [24:0]sdm1data_in;
  wire [3:0]sdm1finalout_out;
  wire [0:0]sdm1reset_in;
  wire [14:0]sdm1testdata_out;
  wire [0:0]sdm1toggle_in;
  wire [1:0]sdm1width_in;
  wire [0:0]ubcfgstreamen_in;
  wire [15:0]ubdaddr_out;
  wire [0:0]ubden_out;
  wire [15:0]ubdi_out;
  wire [15:0]ubdo_in;
  wire [0:0]ubdrdy_in;
  wire [0:0]ubdwe_out;
  wire [0:0]ubenable_in;
  wire [1:0]ubgpi_in;
  wire [1:0]ubintr_in;
  wire [0:0]ubiolmbrst_in;
  wire [0:0]ubmbrst_in;
  wire [0:0]ubmdmcapture_in;
  wire [0:0]ubmdmdbgrst_in;
  wire [0:0]ubmdmdbgupdate_in;
  wire [3:0]ubmdmregen_in;
  wire [0:0]ubmdmshift_in;
  wire [0:0]ubmdmsysrst_in;
  wire [0:0]ubmdmtck_in;
  wire [0:0]ubmdmtdi_in;
  wire [0:0]ubmdmtdo_out;
  wire [0:0]ubrsvdout_out;
  wire [0:0]ubtxuart_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_3_gtye4_common common_inst
       (.bgbypassb_in(bgbypassb_in),
        .bgmonitorenb_in(bgmonitorenb_in),
        .bgpdb_in(bgpdb_in),
        .bgrcalovrd_in(bgrcalovrd_in),
        .bgrcalovrdenb_in(bgrcalovrdenb_in),
        .drpaddr_common_in(drpaddr_common_in),
        .drpclk_common_in(drpclk_common_in),
        .drpdi_common_in(drpdi_common_in),
        .drpdo_common_out(drpdo_common_out),
        .drpen_common_in(drpen_common_in),
        .drprdy_common_out(drprdy_common_out),
        .drpwe_common_in(drpwe_common_in),
        .gtgrefclk0_in(gtgrefclk0_in),
        .gtgrefclk1_in(gtgrefclk1_in),
        .gtnorthrefclk00_in(gtnorthrefclk00_in),
        .gtnorthrefclk01_in(gtnorthrefclk01_in),
        .gtnorthrefclk10_in(gtnorthrefclk10_in),
        .gtnorthrefclk11_in(gtnorthrefclk11_in),
        .gtrefclk00_in(gtrefclk00_in),
        .gtrefclk01_in(gtrefclk01_in),
        .gtrefclk10_in(gtrefclk10_in),
        .gtrefclk11_in(gtrefclk11_in),
        .gtsouthrefclk00_in(gtsouthrefclk00_in),
        .gtsouthrefclk01_in(gtsouthrefclk01_in),
        .gtsouthrefclk10_in(gtsouthrefclk10_in),
        .gtsouthrefclk11_in(gtsouthrefclk11_in),
        .gtwiz_reset_qpll0reset_out(gtwiz_reset_qpll0reset_out),
        .pcierateqpll0_in(pcierateqpll0_in),
        .pcierateqpll1_in(pcierateqpll1_in),
        .pmarsvd0_in(pmarsvd0_in),
        .pmarsvd1_in(pmarsvd1_in),
        .pmarsvdout0_out(pmarsvdout0_out),
        .pmarsvdout1_out(pmarsvdout1_out),
        .qpll0clkrsvd0_in(qpll0clkrsvd0_in),
        .qpll0clkrsvd1_in(qpll0clkrsvd1_in),
        .qpll0fbclklost_out(qpll0fbclklost_out),
        .qpll0fbdiv_in(qpll0fbdiv_in),
        .qpll0lock_out(qpll0lock_out),
        .qpll0lockdetclk_in(qpll0lockdetclk_in),
        .qpll0locken_in(qpll0locken_in),
        .qpll0outclk_out(qpll0outclk_out),
        .qpll0outrefclk_out(qpll0outrefclk_out),
        .qpll0pd_in(qpll0pd_in),
        .qpll0refclklost_out(qpll0refclklost_out),
        .qpll0refclksel_in(qpll0refclksel_in),
        .qpll1clkrsvd0_in(qpll1clkrsvd0_in),
        .qpll1clkrsvd1_in(qpll1clkrsvd1_in),
        .qpll1fbclklost_out(qpll1fbclklost_out),
        .qpll1fbdiv_in(qpll1fbdiv_in),
        .qpll1lock_out(qpll1lock_out),
        .qpll1lockdetclk_in(qpll1lockdetclk_in),
        .qpll1locken_in(qpll1locken_in),
        .qpll1outclk_out(qpll1outclk_out),
        .qpll1outrefclk_out(qpll1outrefclk_out),
        .qpll1pd_in(qpll1pd_in),
        .qpll1refclklost_out(qpll1refclklost_out),
        .qpll1refclksel_in(qpll1refclksel_in),
        .qpll1reset_in(qpll1reset_in),
        .qplldmonitor0_out(qplldmonitor0_out),
        .qplldmonitor1_out(qplldmonitor1_out),
        .qpllrsvd1_in(qpllrsvd1_in),
        .qpllrsvd2_in(qpllrsvd2_in),
        .qpllrsvd3_in(qpllrsvd3_in),
        .qpllrsvd4_in(qpllrsvd4_in),
        .rcalenb_in(rcalenb_in),
        .refclkoutmonitor0_out(refclkoutmonitor0_out),
        .refclkoutmonitor1_out(refclkoutmonitor1_out),
        .rst_in0(rst_in0),
        .rxrecclk0sel_out(rxrecclk0sel_out),
        .rxrecclk1sel_out(rxrecclk1sel_out),
        .sdm0data_in(sdm0data_in),
        .sdm0finalout_out(sdm0finalout_out),
        .sdm0reset_in(sdm0reset_in),
        .sdm0testdata_out(sdm0testdata_out),
        .sdm0toggle_in(sdm0toggle_in),
        .sdm0width_in(sdm0width_in),
        .sdm1data_in(sdm1data_in),
        .sdm1finalout_out(sdm1finalout_out),
        .sdm1reset_in(sdm1reset_in),
        .sdm1testdata_out(sdm1testdata_out),
        .sdm1toggle_in(sdm1toggle_in),
        .sdm1width_in(sdm1width_in),
        .ubcfgstreamen_in(ubcfgstreamen_in),
        .ubdaddr_out(ubdaddr_out),
        .ubden_out(ubden_out),
        .ubdi_out(ubdi_out),
        .ubdo_in(ubdo_in),
        .ubdrdy_in(ubdrdy_in),
        .ubdwe_out(ubdwe_out),
        .ubenable_in(ubenable_in),
        .ubgpi_in(ubgpi_in),
        .ubintr_in(ubintr_in),
        .ubiolmbrst_in(ubiolmbrst_in),
        .ubmbrst_in(ubmbrst_in),
        .ubmdmcapture_in(ubmdmcapture_in),
        .ubmdmdbgrst_in(ubmdmdbgrst_in),
        .ubmdmdbgupdate_in(ubmdmdbgupdate_in),
        .ubmdmregen_in(ubmdmregen_in),
        .ubmdmshift_in(ubmdmshift_in),
        .ubmdmsysrst_in(ubmdmsysrst_in),
        .ubmdmtck_in(ubmdmtck_in),
        .ubmdmtdi_in(ubmdmtdi_in),
        .ubmdmtdo_out(ubmdmtdo_out),
        .ubrsvdout_out(ubrsvdout_out),
        .ubtxuart_out(ubtxuart_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk
   (CLK,
    interlaken_gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_rx_active_in,
    txoutclk_out,
    txprgdivresetdone_out,
    txpmaresetdone_out,
    lopt,
    lopt_1,
    lopt_2);
  output CLK;
  output interlaken_gtwiz_userclk_tx_reset_in;
  output [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]txoutclk_out;
  input [0:0]txprgdivresetdone_out;
  input [0:0]txpmaresetdone_out;
  output lopt;
  input lopt_1;
  input lopt_2;

  wire \<const1> ;
  wire CLK;
  wire [0:0]gtwiz_userclk_rx_active_in;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire [0:0]txoutclk_out;
  wire [0:0]txpmaresetdone_out;
  wire [0:0]txprgdivresetdone_out;

  assign \^lopt  = lopt_1;
  assign \^lopt_1  = lopt_2;
  assign lopt = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst 
       (.CE(\^lopt ),
        .CEMASK(1'b0),
        .CLR(\^lopt_1 ),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(CLK));
  FDCE #(
    .INIT(1'b0)) 
    \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_out_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(interlaken_gtwiz_userclk_tx_reset_in),
        .D(1'b1),
        .Q(gtwiz_userclk_rx_active_in));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_i_1 
       (.I0(txprgdivresetdone_out),
        .I1(txpmaresetdone_out),
        .O(interlaken_gtwiz_userclk_tx_reset_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk
   (CLK,
    gtwiz_userclk_tx_active_in,
    interlaken_gtwiz_userclk_tx_reset_in,
    txoutclk_out,
    lopt,
    lopt_1);
  output CLK;
  output [0:0]gtwiz_userclk_tx_active_in;
  input interlaken_gtwiz_userclk_tx_reset_in;
  input [0:0]txoutclk_out;
  input lopt;
  input lopt_1;

  wire CLK;
  wire [0:0]gtwiz_userclk_tx_active_in;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire lopt;
  wire lopt_1;
  wire [0:0]txoutclk_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst 
       (.CE(lopt),
        .CEMASK(1'b0),
        .CLR(lopt_1),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(CLK));
  FDCE #(
    .INIT(1'b0)) 
    \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_out_reg 
       (.C(CLK),
        .CE(1'b1),
        .CLR(interlaken_gtwiz_userclk_tx_reset_in),
        .D(1'b1),
        .Q(gtwiz_userclk_tx_active_in));
endmodule

(* C_ADD_GT_CNRL_STS_PORTS = "0" *) (* C_BURSTMAX = "2'b11" *) (* C_BURSTSHORT = "3'b001" *) 
(* C_CHAN_EXT = "2'b00" *) (* C_CLOCKING_MODE = "Synchronous" *) (* C_ENABLE_ERR_INJ = "0" *) 
(* C_ENABLE_IN_BAND_FC = "0" *) (* C_ENABLE_OUT_BAND_FC = "0" *) (* C_ENABLE_PIPELINE_REG = "0" *) 
(* C_EN_RETRANS = "0" *) (* C_GT_REF_CLK_FREQ = "156.250000" *) (* C_GT_TYPE = "GTY" *) 
(* C_INCLUDE_SHARED_LOGIC = "2" *) (* C_INS_LOSS_NYQ = "10" *) (* C_IN_BAND_FC_CALLEN = "7'b0000000" *) 
(* C_LANE10_GT_LOC = "X0Y9" *) (* C_LANE11_GT_LOC = "NA" *) (* C_LANE12_GT_LOC = "NA" *) 
(* C_LANE1_GT_LOC = "X1Y48" *) (* C_LANE2_GT_LOC = "NA" *) (* C_LANE3_GT_LOC = "NA" *) 
(* C_LANE4_GT_LOC = "NA" *) (* C_LANE5_GT_LOC = "NA" *) (* C_LANE6_GT_LOC = "NA" *) 
(* C_LANE7_GT_LOC = "NA" *) (* C_LANE8_GT_LOC = "NA" *) (* C_LANE9_GT_LOC = "NA" *) 
(* C_LINE_RATE = "10.312500" *) (* C_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) (* C_NUM_LANES = "1" *) 
(* C_OPERATING_MODE = "3" *) (* C_OUT_BAND_FC_CALLEN = "7'b0000000" *) (* C_PACKET_MODE = "packet_mode" *) 
(* C_RX_EQ_MODE = "Auto" *) (* C_RX_RETRANS_MULT = "1" *) (* C_RX_RETRANS_RETRY = "2" *) 
(* C_RX_RETRANS_TIMER1 = "2048" *) (* C_RX_RETRANS_TIMER2 = "0" *) (* C_RX_RETRANS_WDOG = "0" *) 
(* C_RX_RETRANS_WRAP_TIMER = "0" *) (* C_TX_RETRANS_DEPTH = "2048" *) (* C_TX_RETRANS_MULT = "1" *) 
(* C_TX_RETRANS_RAM_BANKS = "4" *) (* C_TX_RLIM_DELTA = "384" *) (* C_TX_RLIM_ENABLE = "0" *) 
(* C_TX_RLIM_INTV = "16" *) (* C_TX_RLIM_MAX = "384" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* GT_COLUMN = "Right" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_wrapper
   (gt0_rxp_in,
    gt0_rxn_in,
    gt1_rxp_in,
    gt1_rxn_in,
    gt2_rxp_in,
    gt2_rxn_in,
    gt3_rxp_in,
    gt3_rxn_in,
    gt4_rxp_in,
    gt4_rxn_in,
    gt5_rxp_in,
    gt5_rxn_in,
    gt6_rxp_in,
    gt6_rxn_in,
    gt7_rxp_in,
    gt7_rxn_in,
    gt8_rxp_in,
    gt8_rxn_in,
    gt9_rxp_in,
    gt9_rxn_in,
    gt10_rxp_in,
    gt10_rxn_in,
    gt11_rxp_in,
    gt11_rxn_in,
    gt0_txn_out,
    gt0_txp_out,
    gt1_txn_out,
    gt1_txp_out,
    gt2_txn_out,
    gt2_txp_out,
    gt3_txn_out,
    gt3_txp_out,
    gt4_txn_out,
    gt4_txp_out,
    gt5_txn_out,
    gt5_txp_out,
    gt6_txn_out,
    gt6_txp_out,
    gt7_txn_out,
    gt7_txp_out,
    gt8_txn_out,
    gt8_txp_out,
    gt9_txn_out,
    gt9_txp_out,
    gt10_txn_out,
    gt10_txp_out,
    gt11_txn_out,
    gt11_txp_out,
    rx_ovfout,
    rx_dataout0,
    rx_chanout0,
    rx_enaout0,
    rx_sopout0,
    rx_eopout0,
    rx_errout0,
    rx_mtyout0,
    rx_dataout1,
    rx_chanout1,
    rx_enaout1,
    rx_sopout1,
    rx_eopout1,
    rx_errout1,
    rx_mtyout1,
    rx_dataout2,
    rx_chanout2,
    rx_enaout2,
    rx_sopout2,
    rx_eopout2,
    rx_errout2,
    rx_mtyout2,
    rx_dataout3,
    rx_chanout3,
    rx_enaout3,
    rx_sopout3,
    rx_eopout3,
    rx_errout3,
    rx_mtyout3,
    tx_rdyout,
    tx_ovfout,
    tx_datain0,
    tx_chanin0,
    tx_enain0,
    tx_sopin0,
    tx_eopin0,
    tx_errin0,
    tx_mtyin0,
    tx_bctlin0,
    tx_datain1,
    tx_chanin1,
    tx_enain1,
    tx_sopin1,
    tx_eopin1,
    tx_errin1,
    tx_mtyin1,
    tx_bctlin1,
    tx_datain2,
    tx_chanin2,
    tx_enain2,
    tx_sopin2,
    tx_eopin2,
    tx_errin2,
    tx_mtyin2,
    tx_bctlin2,
    tx_datain3,
    tx_chanin3,
    tx_enain3,
    tx_sopin3,
    tx_eopin3,
    tx_errin3,
    tx_mtyin3,
    tx_bctlin3,
    core_drp_reset,
    drp_clk,
    drp_en,
    drp_we,
    drp_addr,
    drp_di,
    drp_do,
    drp_rdy,
    core_clk,
    lbus_clk,
    lockedn,
    core_tx_reset,
    core_rx_reset,
    ctl_tx_errinj_biterr_go,
    ctl_tx_errinj_biterr_lane,
    ctl_tx_rlim_enable,
    ctl_tx_rlim_max,
    ctl_tx_rlim_delta,
    ctl_tx_rlim_intv,
    ctl_tx_enable,
    ctl_tx_mubits,
    ctl_tx_diagword_lanestat,
    ctl_tx_diagword_intfstat,
    ctl_rx_force_resync,
    ctl_tx_fc_stat,
    stat_tx_underflow_err,
    stat_tx_burst_err,
    stat_tx_overflow_err,
    ctl_tx_retrans_enable,
    stat_tx_retrans_burst_err,
    ctl_tx_retrans_req,
    ctl_tx_retrans_req_valid,
    stat_tx_retrans_busy,
    stat_tx_errinj_biterr_done,
    stat_rx_diagword_lanestat,
    stat_rx_diagword_intfstat,
    stat_rx_crc32_valid,
    stat_rx_crc32_err,
    stat_rx_fc_stat,
    stat_rx_mubits,
    stat_rx_mubits_updated,
    stat_rx_word_sync,
    stat_rx_synced,
    stat_rx_synced_err,
    stat_rx_framing_err,
    stat_rx_bad_type_err,
    stat_rx_mf_err,
    stat_rx_descram_err,
    stat_rx_mf_len_err,
    stat_rx_mf_repeat_err,
    stat_rx_aligned,
    stat_rx_misaligned,
    stat_rx_aligned_err,
    stat_rx_crc24_err,
    stat_rx_msop_err,
    stat_rx_meop_err,
    stat_rx_overflow_err,
    stat_rx_burstmax_err,
    ctl_rx_retrans_ack,
    ctl_rx_retrans_enable,
    ctl_rx_retrans_errin,
    ctl_rx_retrans_force_req,
    ctl_rx_retrans_reset,
    ctl_rx_retrans_reset_mode,
    stat_rx_retrans_crc24_err,
    stat_rx_retrans_disc,
    stat_rx_retrans_latency,
    stat_rx_retrans_req,
    stat_rx_retrans_retry_err,
    stat_rx_retrans_seq,
    stat_rx_retrans_seq_updated,
    stat_rx_retrans_state,
    stat_rx_retrans_subseq,
    stat_rx_retrans_wdog_err,
    stat_rx_retrans_wrap_err,
    stat_tx_retrans_ram_raddr,
    stat_tx_retrans_ram_waddr,
    stat_tx_retrans_ram_wdata,
    ctl_tx_retrans_ram_perrin,
    ctl_tx_retrans_ram_rdata,
    stat_tx_retrans_ram_perrout,
    stat_tx_retrans_ram_rsel,
    stat_tx_retrans_ram_rd_b0,
    stat_tx_retrans_ram_rd_b1,
    stat_tx_retrans_ram_rd_b2,
    stat_tx_retrans_ram_rd_b3,
    stat_tx_retrans_ram_we_b0,
    stat_tx_retrans_ram_we_b1,
    stat_tx_retrans_ram_we_b2,
    stat_tx_retrans_ram_we_b3,
    tx_bypass_ctrlin,
    tx_bypass_datain00,
    tx_bypass_datain01,
    tx_bypass_datain02,
    tx_bypass_datain03,
    tx_bypass_datain04,
    tx_bypass_datain05,
    tx_bypass_datain06,
    tx_bypass_datain07,
    tx_bypass_datain08,
    tx_bypass_datain09,
    tx_bypass_datain10,
    tx_bypass_datain11,
    tx_bypass_enain,
    tx_bypass_gearbox_seqin,
    tx_bypass_mframer_statein,
    rx_bypass_force_realignin,
    rx_bypass_rdin,
    rx_bypass_dataout00,
    rx_bypass_dataout01,
    rx_bypass_dataout02,
    rx_bypass_dataout03,
    rx_bypass_dataout04,
    rx_bypass_dataout05,
    rx_bypass_dataout06,
    rx_bypass_dataout07,
    rx_bypass_dataout08,
    rx_bypass_dataout09,
    rx_bypass_dataout10,
    rx_bypass_dataout11,
    rx_bypass_enaout,
    rx_bypass_is_availout,
    rx_bypass_is_badlyframedout,
    rx_bypass_is_overflowout,
    rx_bypass_is_syncedout,
    rx_bypass_is_syncwordout,
    gt_loopback_in,
    qpll0clk_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1refclk_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_qpll1reset_out,
    gt_eyescanreset,
    gt_eyescantrigger,
    gt_rxcdrhold,
    gt_rxpolarity,
    gt_rxrate,
    gt_txdiffctrl,
    gt_txpolarity,
    gt_txpostcursor,
    gt_txprbsforceerr,
    gt_txprecursor,
    gt_eyescandataerror,
    gt_txbufstatus,
    gt_rxdfelpmreset,
    gt_rxlpmen,
    gt_rxprbscntreset,
    gt_rxprbserr,
    gt_rxprbssel,
    gt_rxresetdone,
    gt_txprbssel,
    gt_txresetdone,
    gt_rxbufstatus,
    gt_drpclk,
    gt_drp_done,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gt0_drpaddr,
    gt0_drpen,
    gt0_drpdi,
    gt0_drpdo,
    gt0_drprdy,
    gt0_drpwe,
    sys_reset,
    gt_txusrclk2,
    gt_tx_reset_done_inv,
    gt_rx_reset_done_inv,
    gt_rxusrclk2,
    usr_tx_reset,
    usr_rx_reset,
    gt_ref_clk0_p,
    gt_ref_clk0_n,
    gt_refclk_out,
    gtpowergood_out,
    init_clk,
    stat_rx_burst_err);
  input gt0_rxp_in;
  input gt0_rxn_in;
  input gt1_rxp_in;
  input gt1_rxn_in;
  input gt2_rxp_in;
  input gt2_rxn_in;
  input gt3_rxp_in;
  input gt3_rxn_in;
  input gt4_rxp_in;
  input gt4_rxn_in;
  input gt5_rxp_in;
  input gt5_rxn_in;
  input gt6_rxp_in;
  input gt6_rxn_in;
  input gt7_rxp_in;
  input gt7_rxn_in;
  input gt8_rxp_in;
  input gt8_rxn_in;
  input gt9_rxp_in;
  input gt9_rxn_in;
  input gt10_rxp_in;
  input gt10_rxn_in;
  input gt11_rxp_in;
  input gt11_rxn_in;
  output gt0_txn_out;
  output gt0_txp_out;
  output gt1_txn_out;
  output gt1_txp_out;
  output gt2_txn_out;
  output gt2_txp_out;
  output gt3_txn_out;
  output gt3_txp_out;
  output gt4_txn_out;
  output gt4_txp_out;
  output gt5_txn_out;
  output gt5_txp_out;
  output gt6_txn_out;
  output gt6_txp_out;
  output gt7_txn_out;
  output gt7_txp_out;
  output gt8_txn_out;
  output gt8_txp_out;
  output gt9_txn_out;
  output gt9_txp_out;
  output gt10_txn_out;
  output gt10_txp_out;
  output gt11_txn_out;
  output gt11_txp_out;
  output rx_ovfout;
  output [127:0]rx_dataout0;
  output [10:0]rx_chanout0;
  output rx_enaout0;
  output rx_sopout0;
  output rx_eopout0;
  output rx_errout0;
  output [3:0]rx_mtyout0;
  output [127:0]rx_dataout1;
  output [10:0]rx_chanout1;
  output rx_enaout1;
  output rx_sopout1;
  output rx_eopout1;
  output rx_errout1;
  output [3:0]rx_mtyout1;
  output [127:0]rx_dataout2;
  output [10:0]rx_chanout2;
  output rx_enaout2;
  output rx_sopout2;
  output rx_eopout2;
  output rx_errout2;
  output [3:0]rx_mtyout2;
  output [127:0]rx_dataout3;
  output [10:0]rx_chanout3;
  output rx_enaout3;
  output rx_sopout3;
  output rx_eopout3;
  output rx_errout3;
  output [3:0]rx_mtyout3;
  output tx_rdyout;
  output tx_ovfout;
  input [127:0]tx_datain0;
  input [10:0]tx_chanin0;
  input tx_enain0;
  input tx_sopin0;
  input tx_eopin0;
  input tx_errin0;
  input [3:0]tx_mtyin0;
  input tx_bctlin0;
  input [127:0]tx_datain1;
  input [10:0]tx_chanin1;
  input tx_enain1;
  input tx_sopin1;
  input tx_eopin1;
  input tx_errin1;
  input [3:0]tx_mtyin1;
  input tx_bctlin1;
  input [127:0]tx_datain2;
  input [10:0]tx_chanin2;
  input tx_enain2;
  input tx_sopin2;
  input tx_eopin2;
  input tx_errin2;
  input [3:0]tx_mtyin2;
  input tx_bctlin2;
  input [127:0]tx_datain3;
  input [10:0]tx_chanin3;
  input tx_enain3;
  input tx_sopin3;
  input tx_eopin3;
  input tx_errin3;
  input [3:0]tx_mtyin3;
  input tx_bctlin3;
  input core_drp_reset;
  input drp_clk;
  input drp_en;
  input drp_we;
  input [9:0]drp_addr;
  input [15:0]drp_di;
  output [15:0]drp_do;
  output drp_rdy;
  input core_clk;
  input lbus_clk;
  input lockedn;
  input core_tx_reset;
  input core_rx_reset;
  input ctl_tx_errinj_biterr_go;
  input [3:0]ctl_tx_errinj_biterr_lane;
  input ctl_tx_rlim_enable;
  input [11:0]ctl_tx_rlim_max;
  input [11:0]ctl_tx_rlim_delta;
  input [7:0]ctl_tx_rlim_intv;
  input ctl_tx_enable;
  input [7:0]ctl_tx_mubits;
  input [11:0]ctl_tx_diagword_lanestat;
  input ctl_tx_diagword_intfstat;
  input ctl_rx_force_resync;
  input [255:0]ctl_tx_fc_stat;
  output stat_tx_underflow_err;
  output stat_tx_burst_err;
  output stat_tx_overflow_err;
  input ctl_tx_retrans_enable;
  output stat_tx_retrans_burst_err;
  input ctl_tx_retrans_req;
  input ctl_tx_retrans_req_valid;
  output stat_tx_retrans_busy;
  output stat_tx_errinj_biterr_done;
  output [11:0]stat_rx_diagword_lanestat;
  output [11:0]stat_rx_diagword_intfstat;
  output [11:0]stat_rx_crc32_valid;
  output [11:0]stat_rx_crc32_err;
  output [255:0]stat_rx_fc_stat;
  output [7:0]stat_rx_mubits;
  output stat_rx_mubits_updated;
  output [11:0]stat_rx_word_sync;
  output [11:0]stat_rx_synced;
  output [11:0]stat_rx_synced_err;
  output [11:0]stat_rx_framing_err;
  output [11:0]stat_rx_bad_type_err;
  output [11:0]stat_rx_mf_err;
  output [11:0]stat_rx_descram_err;
  output [11:0]stat_rx_mf_len_err;
  output [11:0]stat_rx_mf_repeat_err;
  output stat_rx_aligned;
  output stat_rx_misaligned;
  output stat_rx_aligned_err;
  output stat_rx_crc24_err;
  output stat_rx_msop_err;
  output stat_rx_meop_err;
  output stat_rx_overflow_err;
  output stat_rx_burstmax_err;
  input ctl_rx_retrans_ack;
  input ctl_rx_retrans_enable;
  input ctl_rx_retrans_errin;
  input ctl_rx_retrans_force_req;
  input ctl_rx_retrans_reset;
  input ctl_rx_retrans_reset_mode;
  output stat_rx_retrans_crc24_err;
  output stat_rx_retrans_disc;
  output [15:0]stat_rx_retrans_latency;
  output stat_rx_retrans_req;
  output stat_rx_retrans_retry_err;
  output [7:0]stat_rx_retrans_seq;
  output stat_rx_retrans_seq_updated;
  output [2:0]stat_rx_retrans_state;
  output [4:0]stat_rx_retrans_subseq;
  output stat_rx_retrans_wdog_err;
  output stat_rx_retrans_wrap_err;
  output [8:0]stat_tx_retrans_ram_raddr;
  output [8:0]stat_tx_retrans_ram_waddr;
  output [643:0]stat_tx_retrans_ram_wdata;
  input ctl_tx_retrans_ram_perrin;
  input [643:0]ctl_tx_retrans_ram_rdata;
  output stat_tx_retrans_ram_perrout;
  output [1:0]stat_tx_retrans_ram_rsel;
  output stat_tx_retrans_ram_rd_b0;
  output stat_tx_retrans_ram_rd_b1;
  output stat_tx_retrans_ram_rd_b2;
  output stat_tx_retrans_ram_rd_b3;
  output stat_tx_retrans_ram_we_b0;
  output stat_tx_retrans_ram_we_b1;
  output stat_tx_retrans_ram_we_b2;
  output stat_tx_retrans_ram_we_b3;
  input [11:0]tx_bypass_ctrlin;
  input [63:0]tx_bypass_datain00;
  input [63:0]tx_bypass_datain01;
  input [63:0]tx_bypass_datain02;
  input [63:0]tx_bypass_datain03;
  input [63:0]tx_bypass_datain04;
  input [63:0]tx_bypass_datain05;
  input [63:0]tx_bypass_datain06;
  input [63:0]tx_bypass_datain07;
  input [63:0]tx_bypass_datain08;
  input [63:0]tx_bypass_datain09;
  input [63:0]tx_bypass_datain10;
  input [63:0]tx_bypass_datain11;
  input tx_bypass_enain;
  input [7:0]tx_bypass_gearbox_seqin;
  input [3:0]tx_bypass_mframer_statein;
  input rx_bypass_force_realignin;
  input rx_bypass_rdin;
  output [65:0]rx_bypass_dataout00;
  output [65:0]rx_bypass_dataout01;
  output [65:0]rx_bypass_dataout02;
  output [65:0]rx_bypass_dataout03;
  output [65:0]rx_bypass_dataout04;
  output [65:0]rx_bypass_dataout05;
  output [65:0]rx_bypass_dataout06;
  output [65:0]rx_bypass_dataout07;
  output [65:0]rx_bypass_dataout08;
  output [65:0]rx_bypass_dataout09;
  output [65:0]rx_bypass_dataout10;
  output [65:0]rx_bypass_dataout11;
  output [11:0]rx_bypass_enaout;
  output [11:0]rx_bypass_is_availout;
  output [11:0]rx_bypass_is_badlyframedout;
  output [11:0]rx_bypass_is_overflowout;
  output [11:0]rx_bypass_is_syncedout;
  output [11:0]rx_bypass_is_syncwordout;
  input [2:0]gt_loopback_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1refclk_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  output [0:0]gtwiz_reset_qpll0reset_out;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [0:0]gt_eyescanreset;
  input [0:0]gt_eyescantrigger;
  input [0:0]gt_rxcdrhold;
  input [0:0]gt_rxpolarity;
  input [2:0]gt_rxrate;
  input [4:0]gt_txdiffctrl;
  input [0:0]gt_txpolarity;
  input [4:0]gt_txpostcursor;
  input [0:0]gt_txprbsforceerr;
  input [4:0]gt_txprecursor;
  output [0:0]gt_eyescandataerror;
  output [1:0]gt_txbufstatus;
  input [0:0]gt_rxdfelpmreset;
  input [0:0]gt_rxlpmen;
  input [0:0]gt_rxprbscntreset;
  output [0:0]gt_rxprbserr;
  input [3:0]gt_rxprbssel;
  output [0:0]gt_rxresetdone;
  input [3:0]gt_txprbssel;
  output [0:0]gt_txresetdone;
  output [2:0]gt_rxbufstatus;
  input gt_drpclk;
  input gt_drp_done;
  input gtwiz_reset_tx_datapath_in;
  input gtwiz_reset_rx_datapath_in;
  input [9:0]gt0_drpaddr;
  input gt0_drpen;
  input [15:0]gt0_drpdi;
  output [15:0]gt0_drpdo;
  output gt0_drprdy;
  input gt0_drpwe;
  input sys_reset;
  output gt_txusrclk2;
  output gt_tx_reset_done_inv;
  output gt_rx_reset_done_inv;
  output gt_rxusrclk2;
  output usr_tx_reset;
  output usr_rx_reset;
  input gt_ref_clk0_p;
  input gt_ref_clk0_n;
  output gt_refclk_out;
  output [0:0]gtpowergood_out;
  input init_clk;
  output stat_rx_burst_err;

  wire \<const0> ;
  wire core_clk;
  wire core_drp_reset;
  wire core_rx_reset;
  wire core_tx_reset;
  wire ctl_rx_force_resync;
  wire ctl_rx_retrans_ack;
  wire ctl_rx_retrans_enable;
  wire ctl_rx_retrans_errin;
  wire ctl_rx_retrans_force_req;
  wire ctl_rx_retrans_reset;
  wire ctl_rx_retrans_reset_mode;
  wire ctl_tx_diagword_intfstat;
  wire [11:0]ctl_tx_diagword_lanestat;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_1d;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_2d;
  (* async_reg = "true" *) wire [11:0]ctl_tx_diagword_lanestat_3d;
  wire ctl_tx_enable;
  wire ctl_tx_errinj_biterr_go;
  wire [3:0]ctl_tx_errinj_biterr_lane;
  wire [255:0]ctl_tx_fc_stat;
  wire [7:0]ctl_tx_mubits;
  wire ctl_tx_retrans_enable;
  wire ctl_tx_retrans_ram_perrin;
  wire [643:0]ctl_tx_retrans_ram_rdata;
  wire ctl_tx_retrans_req;
  wire ctl_tx_retrans_req_valid;
  wire [11:0]ctl_tx_rlim_delta;
  wire ctl_tx_rlim_enable;
  wire [7:0]ctl_tx_rlim_intv;
  wire [11:0]ctl_tx_rlim_max;
  wire [9:0]drp_addr;
  wire drp_clk;
  wire [15:0]drp_di;
  wire [15:0]drp_do;
  wire drp_en;
  wire drp_rdy;
  wire drp_we;
  wire gt0_rxn_in;
  wire gt0_rxp_in;
  wire gt0_txn_out;
  wire gt0_txp_out;
  wire [63:0]gt_0_txdata;
  wire [2:0]gt_loopback_in;
  wire gt_ref_clk0;
  wire gt_ref_clk0_n;
  wire gt_ref_clk0_p;
  wire gt_refclk_copy;
  wire gt_refclk_out;
  wire gt_rx_reset_done_inv;
  wire gt_rxusrclk2;
  wire gt_tx_reset_done_inv;
  wire gt_txusrclk2;
  wire [0:0]gtpowergood_out;
  wire gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_done_out;
  wire gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_done_out;
  wire gtwiz_userclk_tx_srcclk_out;
  wire i_ilkn_top_inst_i_1_n_0;
  wire i_ilkn_top_inst_i_2_n_0;
  wire init_clk;
  wire interlaken_gtwiz_userclk_rx_active_out;
  wire interlaken_gtwiz_userclk_tx_active_out;
  wire interlaken_gtwiz_userclk_tx_reset_in;
  wire lbus_clk;
  wire lockedn;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire [65:0]rx_bypass_dataout00;
  wire [65:0]rx_bypass_dataout01;
  wire [65:0]rx_bypass_dataout02;
  wire [65:0]rx_bypass_dataout03;
  wire [65:0]rx_bypass_dataout04;
  wire [65:0]rx_bypass_dataout05;
  wire [65:0]rx_bypass_dataout06;
  wire [65:0]rx_bypass_dataout07;
  wire [65:0]rx_bypass_dataout08;
  wire [65:0]rx_bypass_dataout09;
  wire [65:0]rx_bypass_dataout10;
  wire [65:0]rx_bypass_dataout11;
  wire [11:0]rx_bypass_enaout;
  wire rx_bypass_force_realignin;
  wire [11:0]rx_bypass_is_availout;
  wire [11:0]rx_bypass_is_badlyframedout;
  wire [11:0]rx_bypass_is_overflowout;
  wire [11:0]rx_bypass_is_syncedout;
  wire [11:0]rx_bypass_is_syncwordout;
  wire rx_bypass_rdin;
  wire [10:0]rx_chanout0;
  wire [10:0]rx_chanout1;
  wire [10:0]rx_chanout2;
  wire [10:0]rx_chanout3;
  wire [127:0]rx_dataout0;
  wire [127:0]rx_dataout1;
  wire [127:0]rx_dataout2;
  wire [127:0]rx_dataout3;
  wire rx_enaout0;
  wire rx_enaout1;
  wire rx_enaout2;
  wire rx_enaout3;
  wire rx_eopout0;
  wire rx_eopout1;
  wire rx_eopout2;
  wire rx_eopout3;
  wire rx_errout0;
  wire rx_errout1;
  wire rx_errout2;
  wire rx_errout3;
  wire [3:0]rx_mtyout0;
  wire [3:0]rx_mtyout1;
  wire [3:0]rx_mtyout2;
  wire [3:0]rx_mtyout3;
  wire rx_ovfout;
  wire rx_reset_async;
  wire rx_reset_sync;
  wire rx_sopout0;
  wire rx_sopout1;
  wire rx_sopout2;
  wire rx_sopout3;
  wire [63:0]rxdata_int;
  wire [63:0]rxdata_int_1d;
  wire [63:0]rxdata_int_2d;
  wire stat_rx_aligned;
  wire stat_rx_aligned_err;
  wire [11:0]stat_rx_bad_type_err;
  wire stat_rx_burst_err;
  wire stat_rx_burstmax_err;
  wire stat_rx_crc24_err;
  wire [11:0]stat_rx_crc32_err;
  wire [11:0]stat_rx_crc32_valid;
  wire [11:0]stat_rx_descram_err;
  wire [11:0]stat_rx_diagword_intfstat;
  wire [11:0]stat_rx_diagword_lanestat;
  wire [255:0]stat_rx_fc_stat;
  wire [11:0]stat_rx_framing_err;
  wire stat_rx_meop_err;
  wire [11:0]stat_rx_mf_err;
  wire [11:0]stat_rx_mf_len_err;
  wire [11:0]stat_rx_mf_repeat_err;
  wire stat_rx_misaligned;
  wire stat_rx_msop_err;
  wire [7:0]stat_rx_mubits;
  wire stat_rx_mubits_updated;
  wire stat_rx_overflow_err;
  wire stat_rx_retrans_crc24_err;
  wire stat_rx_retrans_disc;
  wire [15:0]stat_rx_retrans_latency;
  wire stat_rx_retrans_req;
  wire stat_rx_retrans_retry_err;
  wire [7:0]stat_rx_retrans_seq;
  wire stat_rx_retrans_seq_updated;
  wire [2:0]stat_rx_retrans_state;
  wire [4:0]stat_rx_retrans_subseq;
  wire stat_rx_retrans_wdog_err;
  wire stat_rx_retrans_wrap_err;
  wire [11:0]stat_rx_synced;
  wire [11:0]stat_rx_synced_err;
  wire [11:0]stat_rx_word_sync;
  wire stat_tx_burst_err;
  wire stat_tx_errinj_biterr_done;
  wire stat_tx_overflow_err;
  wire stat_tx_retrans_burst_err;
  wire stat_tx_retrans_busy;
  wire stat_tx_retrans_ram_perrout;
  wire [8:0]stat_tx_retrans_ram_raddr;
  wire stat_tx_retrans_ram_rd_b0;
  wire stat_tx_retrans_ram_rd_b1;
  wire stat_tx_retrans_ram_rd_b2;
  wire stat_tx_retrans_ram_rd_b3;
  wire [1:0]stat_tx_retrans_ram_rsel;
  wire [8:0]stat_tx_retrans_ram_waddr;
  wire [643:0]stat_tx_retrans_ram_wdata;
  wire stat_tx_retrans_ram_we_b0;
  wire stat_tx_retrans_ram_we_b1;
  wire stat_tx_retrans_ram_we_b2;
  wire stat_tx_retrans_ram_we_b3;
  wire stat_tx_underflow_err;
  wire sys_reset;
  wire tx_bctlin0;
  wire tx_bctlin1;
  wire tx_bctlin2;
  wire tx_bctlin3;
  wire [11:0]tx_bypass_ctrlin;
  wire [63:0]tx_bypass_datain00;
  wire [63:0]tx_bypass_datain01;
  wire [63:0]tx_bypass_datain02;
  wire [63:0]tx_bypass_datain03;
  wire [63:0]tx_bypass_datain04;
  wire [63:0]tx_bypass_datain05;
  wire [63:0]tx_bypass_datain06;
  wire [63:0]tx_bypass_datain07;
  wire [63:0]tx_bypass_datain08;
  wire [63:0]tx_bypass_datain09;
  wire [63:0]tx_bypass_datain10;
  wire [63:0]tx_bypass_datain11;
  wire tx_bypass_enain;
  wire [7:0]tx_bypass_gearbox_seqin;
  wire [3:0]tx_bypass_mframer_statein;
  wire [10:0]tx_chanin0;
  wire [10:0]tx_chanin1;
  wire [10:0]tx_chanin2;
  wire [10:0]tx_chanin3;
  wire [127:0]tx_datain0;
  wire [127:0]tx_datain1;
  wire [127:0]tx_datain2;
  wire [127:0]tx_datain3;
  wire tx_enain0;
  wire tx_enain1;
  wire tx_enain2;
  wire tx_enain3;
  wire tx_eopin0;
  wire tx_eopin1;
  wire tx_eopin2;
  wire tx_eopin3;
  wire tx_errin0;
  wire tx_errin1;
  wire tx_errin2;
  wire tx_errin3;
  wire [3:0]tx_mtyin0;
  wire [3:0]tx_mtyin1;
  wire [3:0]tx_mtyin2;
  wire [3:0]tx_mtyin3;
  wire tx_ovfout;
  wire tx_rdyout;
  wire tx_reset_async;
  wire tx_reset_sync;
  wire tx_sopin0;
  wire tx_sopin1;
  wire tx_sopin2;
  wire tx_sopin3;
  wire [63:0]txdata;
  wire [63:0]txdata_int_1d;
  wire txpmaresetdone_out;
  wire txprgdivresetdone_out;
  wire usr_rx_reset;
  wire usr_tx_reset;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED;
  wire [63:0]NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED;
  wire [0:0]NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED;

  assign gt0_drpdo[15] = \<const0> ;
  assign gt0_drpdo[14] = \<const0> ;
  assign gt0_drpdo[13] = \<const0> ;
  assign gt0_drpdo[12] = \<const0> ;
  assign gt0_drpdo[11] = \<const0> ;
  assign gt0_drpdo[10] = \<const0> ;
  assign gt0_drpdo[9] = \<const0> ;
  assign gt0_drpdo[8] = \<const0> ;
  assign gt0_drpdo[7] = \<const0> ;
  assign gt0_drpdo[6] = \<const0> ;
  assign gt0_drpdo[5] = \<const0> ;
  assign gt0_drpdo[4] = \<const0> ;
  assign gt0_drpdo[3] = \<const0> ;
  assign gt0_drpdo[2] = \<const0> ;
  assign gt0_drpdo[1] = \<const0> ;
  assign gt0_drpdo[0] = \<const0> ;
  assign gt0_drprdy = \<const0> ;
  assign gt10_txn_out = \<const0> ;
  assign gt10_txp_out = \<const0> ;
  assign gt11_txn_out = \<const0> ;
  assign gt11_txp_out = \<const0> ;
  assign gt1_txn_out = \<const0> ;
  assign gt1_txp_out = \<const0> ;
  assign gt2_txn_out = \<const0> ;
  assign gt2_txp_out = \<const0> ;
  assign gt3_txn_out = \<const0> ;
  assign gt3_txp_out = \<const0> ;
  assign gt4_txn_out = \<const0> ;
  assign gt4_txp_out = \<const0> ;
  assign gt5_txn_out = \<const0> ;
  assign gt5_txp_out = \<const0> ;
  assign gt6_txn_out = \<const0> ;
  assign gt6_txp_out = \<const0> ;
  assign gt7_txn_out = \<const0> ;
  assign gt7_txp_out = \<const0> ;
  assign gt8_txn_out = \<const0> ;
  assign gt8_txp_out = \<const0> ;
  assign gt9_txn_out = \<const0> ;
  assign gt9_txp_out = \<const0> ;
  assign gt_eyescandataerror[0] = \<const0> ;
  assign gt_rxbufstatus[2] = \<const0> ;
  assign gt_rxbufstatus[1] = \<const0> ;
  assign gt_rxbufstatus[0] = \<const0> ;
  assign gt_rxprbserr[0] = \<const0> ;
  assign gt_rxresetdone[0] = \<const0> ;
  assign gt_txbufstatus[1] = \<const0> ;
  assign gt_txbufstatus[0] = \<const0> ;
  assign gt_txresetdone[0] = \<const0> ;
  assign gtwiz_reset_qpll0reset_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = \<const0> ;
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(1'b1),
        .CESYNC(xlnx_opt_),
        .CLK(gt_refclk_copy),
        .CLR(1'b0),
        .CLRSYNC(xlnx_opt__1));
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH(1'b0),
    .REFCLK_HROW_CK_SEL(2'b00),
    .REFCLK_ICNTL_RX(2'b00)) 
    IBUFDS_GTE4_GTREFCLK0_INST
       (.CEB(1'b0),
        .I(gt_ref_clk0_p),
        .IB(gt_ref_clk0_n),
        .O(gt_ref_clk0),
        .ODIV2(gt_refclk_copy));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[0]),
        .Q(ctl_tx_diagword_lanestat_1d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[10]),
        .Q(ctl_tx_diagword_lanestat_1d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[11]),
        .Q(ctl_tx_diagword_lanestat_1d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[1]),
        .Q(ctl_tx_diagword_lanestat_1d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[2]),
        .Q(ctl_tx_diagword_lanestat_1d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[3]),
        .Q(ctl_tx_diagword_lanestat_1d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[4]),
        .Q(ctl_tx_diagword_lanestat_1d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[5]),
        .Q(ctl_tx_diagword_lanestat_1d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[6]),
        .Q(ctl_tx_diagword_lanestat_1d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[7]),
        .Q(ctl_tx_diagword_lanestat_1d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[8]),
        .Q(ctl_tx_diagword_lanestat_1d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_1d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat[9]),
        .Q(ctl_tx_diagword_lanestat_1d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[0]),
        .Q(ctl_tx_diagword_lanestat_2d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[10]),
        .Q(ctl_tx_diagword_lanestat_2d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[11]),
        .Q(ctl_tx_diagword_lanestat_2d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[1]),
        .Q(ctl_tx_diagword_lanestat_2d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[2]),
        .Q(ctl_tx_diagword_lanestat_2d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[3]),
        .Q(ctl_tx_diagword_lanestat_2d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[4]),
        .Q(ctl_tx_diagword_lanestat_2d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[5]),
        .Q(ctl_tx_diagword_lanestat_2d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[6]),
        .Q(ctl_tx_diagword_lanestat_2d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[7]),
        .Q(ctl_tx_diagword_lanestat_2d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[8]),
        .Q(ctl_tx_diagword_lanestat_2d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_2d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_1d[9]),
        .Q(ctl_tx_diagword_lanestat_2d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[0]),
        .Q(ctl_tx_diagword_lanestat_3d[0]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[10]),
        .Q(ctl_tx_diagword_lanestat_3d[10]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[11]),
        .Q(ctl_tx_diagword_lanestat_3d[11]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[1]),
        .Q(ctl_tx_diagword_lanestat_3d[1]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[2]),
        .Q(ctl_tx_diagword_lanestat_3d[2]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[3]),
        .Q(ctl_tx_diagword_lanestat_3d[3]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[4]),
        .Q(ctl_tx_diagword_lanestat_3d[4]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[5]),
        .Q(ctl_tx_diagword_lanestat_3d[5]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[6]),
        .Q(ctl_tx_diagword_lanestat_3d[6]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[7]),
        .Q(ctl_tx_diagword_lanestat_3d[7]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[8]),
        .Q(ctl_tx_diagword_lanestat_3d[8]),
        .R(i_ilkn_top_inst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \ctl_tx_diagword_lanestat_3d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(ctl_tx_diagword_lanestat_2d[9]),
        .Q(ctl_tx_diagword_lanestat_3d[9]),
        .R(i_ilkn_top_inst_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    gt_rx_reset_done_inv_INST_0
       (.I0(gtwiz_reset_rx_done_out),
        .O(gt_rx_reset_done_inv));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gt_tx_reset_done_inv_INST_0
       (.I0(gtwiz_reset_tx_done_out),
        .O(gt_tx_reset_done_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync i_ilkn_cdc_user_rx_reset_inst
       (.in0(rx_reset_sync),
        .lbus_clk(lbus_clk),
        .usr_rx_reset(usr_rx_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_cdc_sync_0 i_ilkn_cdc_user_tx_reset_inst
       (.in0(tx_reset_sync),
        .lbus_clk(lbus_clk),
        .usr_tx_reset(usr_tx_reset));
  (* BYPASS = "FALSE" *) 
  (* CTL_RX_BURSTMAX = "2'b11" *) 
  (* CTL_RX_CHAN_EXT = "2'b00" *) 
  (* CTL_RX_LAST_LANE = "4'b0000" *) 
  (* CTL_RX_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* CTL_RX_PACKET_MODE = "TRUE" *) 
  (* CTL_RX_RETRANS_MULT = "3'b000" *) 
  (* CTL_RX_RETRANS_RETRY = "2" *) 
  (* CTL_RX_RETRANS_TIMER1 = "16'b0000100000000000" *) 
  (* CTL_RX_RETRANS_TIMER2 = "16'b0000000000000000" *) 
  (* CTL_RX_RETRANS_WDOG = "12'b000000000000" *) 
  (* CTL_RX_RETRANS_WRAP_TIMER = "8'b00000000" *) 
  (* CTL_TX_BURSTMAX = "2'b11" *) 
  (* CTL_TX_BURSTSHORT = "3'b001" *) 
  (* CTL_TX_CHAN_EXT = "2'b00" *) 
  (* CTL_TX_DISABLE_SKIPWORD = "TRUE" *) 
  (* CTL_TX_FC_CALLEN = "7'b0001111" *) 
  (* CTL_TX_LAST_LANE = "4'b0000" *) 
  (* CTL_TX_MFRAMELEN_MINUS1 = "16'b0000011111101011" *) 
  (* CTL_TX_RETRANS_DEPTH = "14'b00100000000000" *) 
  (* CTL_TX_RETRANS_MULT = "3'b000" *) 
  (* CTL_TX_RETRANS_RAM_BANKS = "2'b11" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* MODE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_v2_4_0_top4 i_ilkn_top_inst
       (.core_clk(core_clk),
        .ctl_rx_force_resync(ctl_rx_force_resync),
        .ctl_rx_retrans_ack(ctl_rx_retrans_ack),
        .ctl_rx_retrans_enable(ctl_rx_retrans_enable),
        .ctl_rx_retrans_errin(ctl_rx_retrans_errin),
        .ctl_rx_retrans_force_req(ctl_rx_retrans_force_req),
        .ctl_rx_retrans_reset(ctl_rx_retrans_reset),
        .ctl_rx_retrans_reset_mode(ctl_rx_retrans_reset_mode),
        .ctl_tx_diagword_intfstat(ctl_tx_diagword_intfstat),
        .ctl_tx_diagword_lanestat(ctl_tx_diagword_lanestat_3d),
        .ctl_tx_enable(ctl_tx_enable),
        .ctl_tx_errinj_biterr_go(ctl_tx_errinj_biterr_go),
        .ctl_tx_errinj_biterr_lane(ctl_tx_errinj_biterr_lane),
        .ctl_tx_fc_stat(ctl_tx_fc_stat),
        .ctl_tx_mubits(ctl_tx_mubits),
        .ctl_tx_retrans_enable(ctl_tx_retrans_enable),
        .ctl_tx_retrans_ram_perrin(ctl_tx_retrans_ram_perrin),
        .ctl_tx_retrans_ram_rdata(ctl_tx_retrans_ram_rdata),
        .ctl_tx_retrans_req(ctl_tx_retrans_req),
        .ctl_tx_retrans_req_valid(ctl_tx_retrans_req_valid),
        .ctl_tx_rlim_delta(ctl_tx_rlim_delta),
        .ctl_tx_rlim_enable(ctl_tx_rlim_enable),
        .ctl_tx_rlim_intv(ctl_tx_rlim_intv),
        .ctl_tx_rlim_max(ctl_tx_rlim_max),
        .drp_addr(drp_addr),
        .drp_clk(drp_clk),
        .drp_di(drp_di),
        .drp_do(drp_do),
        .drp_en(drp_en),
        .drp_rdy(drp_rdy),
        .drp_we(drp_we),
        .lbus_clk(lbus_clk),
        .rx_bypass_dataout00(rx_bypass_dataout00),
        .rx_bypass_dataout01(rx_bypass_dataout01),
        .rx_bypass_dataout02(rx_bypass_dataout02),
        .rx_bypass_dataout03(rx_bypass_dataout03),
        .rx_bypass_dataout04(rx_bypass_dataout04),
        .rx_bypass_dataout05(rx_bypass_dataout05),
        .rx_bypass_dataout06(rx_bypass_dataout06),
        .rx_bypass_dataout07(rx_bypass_dataout07),
        .rx_bypass_dataout08(rx_bypass_dataout08),
        .rx_bypass_dataout09(rx_bypass_dataout09),
        .rx_bypass_dataout10(rx_bypass_dataout10),
        .rx_bypass_dataout11(rx_bypass_dataout11),
        .rx_bypass_enaout(rx_bypass_enaout),
        .rx_bypass_force_realignin(rx_bypass_force_realignin),
        .rx_bypass_is_availout(rx_bypass_is_availout),
        .rx_bypass_is_badlyframedout(rx_bypass_is_badlyframedout),
        .rx_bypass_is_overflowout(rx_bypass_is_overflowout),
        .rx_bypass_is_syncedout(rx_bypass_is_syncedout),
        .rx_bypass_is_syncwordout(rx_bypass_is_syncwordout),
        .rx_bypass_rdin(rx_bypass_rdin),
        .rx_chanout0(rx_chanout0),
        .rx_chanout1(rx_chanout1),
        .rx_chanout2(rx_chanout2),
        .rx_chanout3(rx_chanout3),
        .rx_dataout0(rx_dataout0),
        .rx_dataout1(rx_dataout1),
        .rx_dataout2(rx_dataout2),
        .rx_dataout3(rx_dataout3),
        .rx_enaout0(rx_enaout0),
        .rx_enaout1(rx_enaout1),
        .rx_enaout2(rx_enaout2),
        .rx_enaout3(rx_enaout3),
        .rx_eopout0(rx_eopout0),
        .rx_eopout1(rx_eopout1),
        .rx_eopout2(rx_eopout2),
        .rx_eopout3(rx_eopout3),
        .rx_errout0(rx_errout0),
        .rx_errout1(rx_errout1),
        .rx_errout2(rx_errout2),
        .rx_errout3(rx_errout3),
        .rx_mtyout0(rx_mtyout0),
        .rx_mtyout1(rx_mtyout1),
        .rx_mtyout2(rx_mtyout2),
        .rx_mtyout3(rx_mtyout3),
        .rx_ovfout(rx_ovfout),
        .rx_reset(usr_rx_reset),
        .rx_serdes_clk({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt_rxusrclk2}),
        .rx_serdes_data00({rxdata_int_2d[0],rxdata_int_2d[1],rxdata_int_2d[2],rxdata_int_2d[3],rxdata_int_2d[4],rxdata_int_2d[5],rxdata_int_2d[6],rxdata_int_2d[7],rxdata_int_2d[8],rxdata_int_2d[9],rxdata_int_2d[10],rxdata_int_2d[11],rxdata_int_2d[12],rxdata_int_2d[13],rxdata_int_2d[14],rxdata_int_2d[15],rxdata_int_2d[16],rxdata_int_2d[17],rxdata_int_2d[18],rxdata_int_2d[19],rxdata_int_2d[20],rxdata_int_2d[21],rxdata_int_2d[22],rxdata_int_2d[23],rxdata_int_2d[24],rxdata_int_2d[25],rxdata_int_2d[26],rxdata_int_2d[27],rxdata_int_2d[28],rxdata_int_2d[29],rxdata_int_2d[30],rxdata_int_2d[31],rxdata_int_2d[32],rxdata_int_2d[33],rxdata_int_2d[34],rxdata_int_2d[35],rxdata_int_2d[36],rxdata_int_2d[37],rxdata_int_2d[38],rxdata_int_2d[39],rxdata_int_2d[40],rxdata_int_2d[41],rxdata_int_2d[42],rxdata_int_2d[43],rxdata_int_2d[44],rxdata_int_2d[45],rxdata_int_2d[46],rxdata_int_2d[47],rxdata_int_2d[48],rxdata_int_2d[49],rxdata_int_2d[50],rxdata_int_2d[51],rxdata_int_2d[52],rxdata_int_2d[53],rxdata_int_2d[54],rxdata_int_2d[55],rxdata_int_2d[56],rxdata_int_2d[57],rxdata_int_2d[58],rxdata_int_2d[59],rxdata_int_2d[60],rxdata_int_2d[61],rxdata_int_2d[62],rxdata_int_2d[63]}),
        .rx_serdes_data01({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data02({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data03({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data04({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data05({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data06({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data07({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data08({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data09({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_data11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_serdes_reset({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_ilkn_top_inst_i_1_n_0}),
        .rx_sopout0(rx_sopout0),
        .rx_sopout1(rx_sopout1),
        .rx_sopout2(rx_sopout2),
        .rx_sopout3(rx_sopout3),
        .stat_rx_aligned(stat_rx_aligned),
        .stat_rx_aligned_err(stat_rx_aligned_err),
        .stat_rx_bad_type_err(stat_rx_bad_type_err),
        .stat_rx_burst_err(stat_rx_burst_err),
        .stat_rx_burstmax_err(stat_rx_burstmax_err),
        .stat_rx_crc24_err(stat_rx_crc24_err),
        .stat_rx_crc32_err(stat_rx_crc32_err),
        .stat_rx_crc32_valid(stat_rx_crc32_valid),
        .stat_rx_descram_err(stat_rx_descram_err),
        .stat_rx_diagword_intfstat(stat_rx_diagword_intfstat),
        .stat_rx_diagword_lanestat(stat_rx_diagword_lanestat),
        .stat_rx_fc_stat(stat_rx_fc_stat),
        .stat_rx_framing_err(stat_rx_framing_err),
        .stat_rx_meop_err(stat_rx_meop_err),
        .stat_rx_mf_err(stat_rx_mf_err),
        .stat_rx_mf_len_err(stat_rx_mf_len_err),
        .stat_rx_mf_repeat_err(stat_rx_mf_repeat_err),
        .stat_rx_misaligned(stat_rx_misaligned),
        .stat_rx_msop_err(stat_rx_msop_err),
        .stat_rx_mubits(stat_rx_mubits),
        .stat_rx_mubits_updated(stat_rx_mubits_updated),
        .stat_rx_overflow_err(stat_rx_overflow_err),
        .stat_rx_retrans_crc24_err(stat_rx_retrans_crc24_err),
        .stat_rx_retrans_disc(stat_rx_retrans_disc),
        .stat_rx_retrans_latency(stat_rx_retrans_latency),
        .stat_rx_retrans_req(stat_rx_retrans_req),
        .stat_rx_retrans_retry_err(stat_rx_retrans_retry_err),
        .stat_rx_retrans_seq(stat_rx_retrans_seq),
        .stat_rx_retrans_seq_updated(stat_rx_retrans_seq_updated),
        .stat_rx_retrans_state(stat_rx_retrans_state),
        .stat_rx_retrans_subseq(stat_rx_retrans_subseq),
        .stat_rx_retrans_wdog_err(stat_rx_retrans_wdog_err),
        .stat_rx_retrans_wrap_err(stat_rx_retrans_wrap_err),
        .stat_rx_synced(stat_rx_synced),
        .stat_rx_synced_err(stat_rx_synced_err),
        .stat_rx_word_sync(stat_rx_word_sync),
        .stat_tx_burst_err(stat_tx_burst_err),
        .stat_tx_errinj_biterr_done(stat_tx_errinj_biterr_done),
        .stat_tx_overflow_err(stat_tx_overflow_err),
        .stat_tx_retrans_burst_err(stat_tx_retrans_burst_err),
        .stat_tx_retrans_busy(stat_tx_retrans_busy),
        .stat_tx_retrans_ram_perrout(stat_tx_retrans_ram_perrout),
        .stat_tx_retrans_ram_raddr(stat_tx_retrans_ram_raddr),
        .stat_tx_retrans_ram_rd_b0(stat_tx_retrans_ram_rd_b0),
        .stat_tx_retrans_ram_rd_b1(stat_tx_retrans_ram_rd_b1),
        .stat_tx_retrans_ram_rd_b2(stat_tx_retrans_ram_rd_b2),
        .stat_tx_retrans_ram_rd_b3(stat_tx_retrans_ram_rd_b3),
        .stat_tx_retrans_ram_rsel(stat_tx_retrans_ram_rsel),
        .stat_tx_retrans_ram_waddr(stat_tx_retrans_ram_waddr),
        .stat_tx_retrans_ram_wdata(stat_tx_retrans_ram_wdata),
        .stat_tx_retrans_ram_we_b0(stat_tx_retrans_ram_we_b0),
        .stat_tx_retrans_ram_we_b1(stat_tx_retrans_ram_we_b1),
        .stat_tx_retrans_ram_we_b2(stat_tx_retrans_ram_we_b2),
        .stat_tx_retrans_ram_we_b3(stat_tx_retrans_ram_we_b3),
        .stat_tx_underflow_err(stat_tx_underflow_err),
        .tx_bctlin0(tx_bctlin0),
        .tx_bctlin1(tx_bctlin1),
        .tx_bctlin2(tx_bctlin2),
        .tx_bctlin3(tx_bctlin3),
        .tx_bypass_ctrlin(tx_bypass_ctrlin),
        .tx_bypass_datain00(tx_bypass_datain00),
        .tx_bypass_datain01(tx_bypass_datain01),
        .tx_bypass_datain02(tx_bypass_datain02),
        .tx_bypass_datain03(tx_bypass_datain03),
        .tx_bypass_datain04(tx_bypass_datain04),
        .tx_bypass_datain05(tx_bypass_datain05),
        .tx_bypass_datain06(tx_bypass_datain06),
        .tx_bypass_datain07(tx_bypass_datain07),
        .tx_bypass_datain08(tx_bypass_datain08),
        .tx_bypass_datain09(tx_bypass_datain09),
        .tx_bypass_datain10(tx_bypass_datain10),
        .tx_bypass_datain11(tx_bypass_datain11),
        .tx_bypass_enain(tx_bypass_enain),
        .tx_bypass_gearbox_seqin(tx_bypass_gearbox_seqin),
        .tx_bypass_mframer_statein(tx_bypass_mframer_statein),
        .tx_chanin0(tx_chanin0),
        .tx_chanin1(tx_chanin1),
        .tx_chanin2(tx_chanin2),
        .tx_chanin3(tx_chanin3),
        .tx_datain0(tx_datain0),
        .tx_datain1(tx_datain1),
        .tx_datain2(tx_datain2),
        .tx_datain3(tx_datain3),
        .tx_enain0(tx_enain0),
        .tx_enain1(tx_enain1),
        .tx_enain2(tx_enain2),
        .tx_enain3(tx_enain3),
        .tx_eopin0(tx_eopin0),
        .tx_eopin1(tx_eopin1),
        .tx_eopin2(tx_eopin2),
        .tx_eopin3(tx_eopin3),
        .tx_errin0(tx_errin0),
        .tx_errin1(tx_errin1),
        .tx_errin2(tx_errin2),
        .tx_errin3(tx_errin3),
        .tx_mtyin0(tx_mtyin0),
        .tx_mtyin1(tx_mtyin1),
        .tx_mtyin2(tx_mtyin2),
        .tx_mtyin3(tx_mtyin3),
        .tx_ovfout(tx_ovfout),
        .tx_rdyout(tx_rdyout),
        .tx_reset(usr_tx_reset),
        .tx_serdes_data00(gt_0_txdata),
        .tx_serdes_data01(NLW_i_ilkn_top_inst_tx_serdes_data01_UNCONNECTED[63:0]),
        .tx_serdes_data02(NLW_i_ilkn_top_inst_tx_serdes_data02_UNCONNECTED[63:0]),
        .tx_serdes_data03(NLW_i_ilkn_top_inst_tx_serdes_data03_UNCONNECTED[63:0]),
        .tx_serdes_data04(NLW_i_ilkn_top_inst_tx_serdes_data04_UNCONNECTED[63:0]),
        .tx_serdes_data05(NLW_i_ilkn_top_inst_tx_serdes_data05_UNCONNECTED[63:0]),
        .tx_serdes_data06(NLW_i_ilkn_top_inst_tx_serdes_data06_UNCONNECTED[63:0]),
        .tx_serdes_data07(NLW_i_ilkn_top_inst_tx_serdes_data07_UNCONNECTED[63:0]),
        .tx_serdes_data08(NLW_i_ilkn_top_inst_tx_serdes_data08_UNCONNECTED[63:0]),
        .tx_serdes_data09(NLW_i_ilkn_top_inst_tx_serdes_data09_UNCONNECTED[63:0]),
        .tx_serdes_data10(NLW_i_ilkn_top_inst_tx_serdes_data10_UNCONNECTED[63:0]),
        .tx_serdes_data11(NLW_i_ilkn_top_inst_tx_serdes_data11_UNCONNECTED[63:0]),
        .tx_serdes_refclk(gt_txusrclk2),
        .tx_serdes_refclk_reset(i_ilkn_top_inst_i_2_n_0),
        .tx_sopin0(tx_sopin0),
        .tx_sopin1(tx_sopin1),
        .tx_sopin2(tx_sopin2),
        .tx_sopin3(tx_sopin3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    i_ilkn_top_inst_i_1
       (.I0(core_drp_reset),
        .I1(gtwiz_reset_rx_done_out),
        .O(i_ilkn_top_inst_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i_ilkn_top_inst_i_2
       (.I0(core_drp_reset),
        .I1(gtwiz_reset_tx_done_out),
        .O(i_ilkn_top_inst_i_2_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_rx_userclk i_interlaken_gtwiz_userclk_rx_inst
       (.CLK(gt_rxusrclk2),
        .gtwiz_userclk_rx_active_in(interlaken_gtwiz_userclk_rx_active_out),
        .interlaken_gtwiz_userclk_tx_reset_in(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txprgdivresetdone_out(txprgdivresetdone_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_ultrascale_tx_userclk i_interlaken_gtwiz_userclk_tx_inst
       (.CLK(gt_txusrclk2),
        .gtwiz_userclk_tx_active_in(interlaken_gtwiz_userclk_tx_active_out),
        .interlaken_gtwiz_userclk_tx_reset_in(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out));
  (* CHECK_LICENSE_TYPE = "interlaken_0_gt,interlaken_0_gt_gtwizard_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "interlaken_0_gt_gtwizard_top,Vivado 2018.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interlaken_0_gt interlaken_0_gt_i
       (.gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(gt_ref_clk0),
        .gtwiz_reset_all_in(sys_reset),
        .gtwiz_reset_clk_freerun_in(init_clk),
        .gtwiz_reset_rx_cdr_stable_out(NLW_interlaken_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(interlaken_gtwiz_userclk_rx_active_out),
        .gtwiz_userclk_tx_active_in(interlaken_gtwiz_userclk_tx_active_out),
        .gtwiz_userdata_rx_out(rxdata_int),
        .gtwiz_userdata_tx_in(txdata),
        .gtyrxn_in(gt0_rxn_in),
        .gtyrxp_in(gt0_rxp_in),
        .gtytxn_out(gt0_txn_out),
        .gtytxp_out(gt0_txp_out),
        .loopback_in(gt_loopback_in),
        .lopt(lopt),
        .lopt_1(interlaken_gtwiz_userclk_tx_reset_in),
        .lopt_2(lopt_1),
        .lopt_3(lopt_2),
        .qpll0outclk_out(NLW_interlaken_0_gt_i_qpll0outclk_out_UNCONNECTED[0]),
        .qpll0outrefclk_out(NLW_interlaken_0_gt_i_qpll0outrefclk_out_UNCONNECTED[0]),
        .rxoutclk_out(NLW_interlaken_0_gt_i_rxoutclk_out_UNCONNECTED[0]),
        .rxpmaresetdone_out(NLW_interlaken_0_gt_i_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxusrclk2_in(gt_rxusrclk2),
        .rxusrclk_in(gt_rxusrclk2),
        .txoutclk_out(gtwiz_userclk_tx_srcclk_out),
        .txpmaresetdone_out(txpmaresetdone_out),
        .txprgdivresetdone_out(txprgdivresetdone_out),
        .txusrclk2_in(gt_txusrclk2),
        .txusrclk_in(gt_txusrclk2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG_GT refclk_bufg_gt_i
       (.CE(xlnx_opt_),
        .CEMASK(1'b1),
        .CLR(xlnx_opt__1),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(gt_refclk_copy),
        .O(gt_refclk_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    rx_reset_sync_i_1
       (.I0(core_drp_reset),
        .I1(lockedn),
        .I2(gtwiz_reset_rx_done_out),
        .I3(core_rx_reset),
        .O(rx_reset_async));
  FDRE rx_reset_sync_reg
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rx_reset_async),
        .Q(rx_reset_sync),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[0] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_int_1d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[10] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_int_1d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[11] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_int_1d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[12] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_int_1d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[13] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_int_1d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[14] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_int_1d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[15] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_int_1d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[16] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[16]),
        .Q(rxdata_int_1d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[17] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[17]),
        .Q(rxdata_int_1d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[18] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[18]),
        .Q(rxdata_int_1d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[19] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[19]),
        .Q(rxdata_int_1d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[1] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_int_1d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[20] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[20]),
        .Q(rxdata_int_1d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[21] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[21]),
        .Q(rxdata_int_1d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[22] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[22]),
        .Q(rxdata_int_1d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[23] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[23]),
        .Q(rxdata_int_1d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[24] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[24]),
        .Q(rxdata_int_1d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[25] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[25]),
        .Q(rxdata_int_1d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[26] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[26]),
        .Q(rxdata_int_1d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[27] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[27]),
        .Q(rxdata_int_1d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[28] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[28]),
        .Q(rxdata_int_1d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[29] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[29]),
        .Q(rxdata_int_1d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[2] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_int_1d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[30] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[30]),
        .Q(rxdata_int_1d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[31] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[31]),
        .Q(rxdata_int_1d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[32] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[32]),
        .Q(rxdata_int_1d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[33] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[33]),
        .Q(rxdata_int_1d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[34] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[34]),
        .Q(rxdata_int_1d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[35] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[35]),
        .Q(rxdata_int_1d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[36] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[36]),
        .Q(rxdata_int_1d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[37] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[37]),
        .Q(rxdata_int_1d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[38] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[38]),
        .Q(rxdata_int_1d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[39] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[39]),
        .Q(rxdata_int_1d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[3] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_int_1d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[40] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[40]),
        .Q(rxdata_int_1d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[41] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[41]),
        .Q(rxdata_int_1d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[42] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[42]),
        .Q(rxdata_int_1d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[43] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[43]),
        .Q(rxdata_int_1d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[44] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[44]),
        .Q(rxdata_int_1d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[45] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[45]),
        .Q(rxdata_int_1d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[46] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[46]),
        .Q(rxdata_int_1d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[47] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[47]),
        .Q(rxdata_int_1d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[48] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[48]),
        .Q(rxdata_int_1d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[49] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[49]),
        .Q(rxdata_int_1d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[4] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_int_1d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[50] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[50]),
        .Q(rxdata_int_1d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[51] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[51]),
        .Q(rxdata_int_1d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[52] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[52]),
        .Q(rxdata_int_1d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[53] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[53]),
        .Q(rxdata_int_1d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[54] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[54]),
        .Q(rxdata_int_1d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[55] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[55]),
        .Q(rxdata_int_1d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[56] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[56]),
        .Q(rxdata_int_1d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[57] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[57]),
        .Q(rxdata_int_1d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[58] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[58]),
        .Q(rxdata_int_1d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[59] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[59]),
        .Q(rxdata_int_1d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[5] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_int_1d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[60] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[60]),
        .Q(rxdata_int_1d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[61] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[61]),
        .Q(rxdata_int_1d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[62] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[62]),
        .Q(rxdata_int_1d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[63] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[63]),
        .Q(rxdata_int_1d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[6] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_int_1d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[7] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_int_1d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[8] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_int_1d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_1d_reg[9] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_int_1d[9]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[0] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[0]),
        .Q(rxdata_int_2d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[10] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[10]),
        .Q(rxdata_int_2d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[11] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[11]),
        .Q(rxdata_int_2d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[12] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[12]),
        .Q(rxdata_int_2d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[13] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[13]),
        .Q(rxdata_int_2d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[14] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[14]),
        .Q(rxdata_int_2d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[15] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[15]),
        .Q(rxdata_int_2d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[16] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[16]),
        .Q(rxdata_int_2d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[17] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[17]),
        .Q(rxdata_int_2d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[18] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[18]),
        .Q(rxdata_int_2d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[19] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[19]),
        .Q(rxdata_int_2d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[1] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[1]),
        .Q(rxdata_int_2d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[20] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[20]),
        .Q(rxdata_int_2d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[21] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[21]),
        .Q(rxdata_int_2d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[22] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[22]),
        .Q(rxdata_int_2d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[23] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[23]),
        .Q(rxdata_int_2d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[24] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[24]),
        .Q(rxdata_int_2d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[25] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[25]),
        .Q(rxdata_int_2d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[26] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[26]),
        .Q(rxdata_int_2d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[27] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[27]),
        .Q(rxdata_int_2d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[28] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[28]),
        .Q(rxdata_int_2d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[29] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[29]),
        .Q(rxdata_int_2d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[2] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[2]),
        .Q(rxdata_int_2d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[30] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[30]),
        .Q(rxdata_int_2d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[31] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[31]),
        .Q(rxdata_int_2d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[32] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[32]),
        .Q(rxdata_int_2d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[33] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[33]),
        .Q(rxdata_int_2d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[34] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[34]),
        .Q(rxdata_int_2d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[35] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[35]),
        .Q(rxdata_int_2d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[36] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[36]),
        .Q(rxdata_int_2d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[37] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[37]),
        .Q(rxdata_int_2d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[38] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[38]),
        .Q(rxdata_int_2d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[39] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[39]),
        .Q(rxdata_int_2d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[3] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[3]),
        .Q(rxdata_int_2d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[40] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[40]),
        .Q(rxdata_int_2d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[41] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[41]),
        .Q(rxdata_int_2d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[42] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[42]),
        .Q(rxdata_int_2d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[43] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[43]),
        .Q(rxdata_int_2d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[44] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[44]),
        .Q(rxdata_int_2d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[45] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[45]),
        .Q(rxdata_int_2d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[46] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[46]),
        .Q(rxdata_int_2d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[47] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[47]),
        .Q(rxdata_int_2d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[48] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[48]),
        .Q(rxdata_int_2d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[49] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[49]),
        .Q(rxdata_int_2d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[4] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[4]),
        .Q(rxdata_int_2d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[50] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[50]),
        .Q(rxdata_int_2d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[51] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[51]),
        .Q(rxdata_int_2d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[52] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[52]),
        .Q(rxdata_int_2d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[53] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[53]),
        .Q(rxdata_int_2d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[54] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[54]),
        .Q(rxdata_int_2d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[55] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[55]),
        .Q(rxdata_int_2d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[56] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[56]),
        .Q(rxdata_int_2d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[57] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[57]),
        .Q(rxdata_int_2d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[58] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[58]),
        .Q(rxdata_int_2d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[59] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[59]),
        .Q(rxdata_int_2d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[5] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[5]),
        .Q(rxdata_int_2d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[60] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[60]),
        .Q(rxdata_int_2d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[61] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[61]),
        .Q(rxdata_int_2d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[62] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[62]),
        .Q(rxdata_int_2d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[63] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[63]),
        .Q(rxdata_int_2d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[6] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[6]),
        .Q(rxdata_int_2d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[7] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[7]),
        .Q(rxdata_int_2d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[8] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[8]),
        .Q(rxdata_int_2d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \rxdata_int_2d_reg[9] 
       (.C(gt_rxusrclk2),
        .CE(1'b1),
        .D(rxdata_int_1d[9]),
        .Q(rxdata_int_2d[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    tx_reset_sync_i_1
       (.I0(core_drp_reset),
        .I1(lockedn),
        .I2(gtwiz_reset_tx_done_out),
        .I3(core_tx_reset),
        .O(tx_reset_async));
  FDRE tx_reset_sync_reg
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(tx_reset_async),
        .Q(tx_reset_sync),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[63]),
        .Q(txdata_int_1d[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[53]),
        .Q(txdata_int_1d[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[52]),
        .Q(txdata_int_1d[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[12] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[51]),
        .Q(txdata_int_1d[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[13] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[50]),
        .Q(txdata_int_1d[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[14] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[49]),
        .Q(txdata_int_1d[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[15] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[48]),
        .Q(txdata_int_1d[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[16] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[47]),
        .Q(txdata_int_1d[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[17] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[46]),
        .Q(txdata_int_1d[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[18] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[45]),
        .Q(txdata_int_1d[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[19] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[44]),
        .Q(txdata_int_1d[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[62]),
        .Q(txdata_int_1d[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[20] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[43]),
        .Q(txdata_int_1d[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[21] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[42]),
        .Q(txdata_int_1d[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[22] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[41]),
        .Q(txdata_int_1d[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[23] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[40]),
        .Q(txdata_int_1d[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[24] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[39]),
        .Q(txdata_int_1d[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[25] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[38]),
        .Q(txdata_int_1d[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[26] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[37]),
        .Q(txdata_int_1d[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[27] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[36]),
        .Q(txdata_int_1d[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[28] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[35]),
        .Q(txdata_int_1d[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[29] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[34]),
        .Q(txdata_int_1d[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[61]),
        .Q(txdata_int_1d[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[30] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[33]),
        .Q(txdata_int_1d[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[31] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[32]),
        .Q(txdata_int_1d[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[32] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[31]),
        .Q(txdata_int_1d[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[33] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[30]),
        .Q(txdata_int_1d[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[34] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[29]),
        .Q(txdata_int_1d[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[35] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[28]),
        .Q(txdata_int_1d[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[36] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[27]),
        .Q(txdata_int_1d[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[37] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[26]),
        .Q(txdata_int_1d[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[38] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[25]),
        .Q(txdata_int_1d[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[39] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[24]),
        .Q(txdata_int_1d[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[60]),
        .Q(txdata_int_1d[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[40] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[23]),
        .Q(txdata_int_1d[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[41] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[22]),
        .Q(txdata_int_1d[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[42] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[21]),
        .Q(txdata_int_1d[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[43] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[20]),
        .Q(txdata_int_1d[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[44] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[19]),
        .Q(txdata_int_1d[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[45] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[18]),
        .Q(txdata_int_1d[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[46] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[17]),
        .Q(txdata_int_1d[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[47] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[16]),
        .Q(txdata_int_1d[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[48] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[15]),
        .Q(txdata_int_1d[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[49] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[14]),
        .Q(txdata_int_1d[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[59]),
        .Q(txdata_int_1d[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[50] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[13]),
        .Q(txdata_int_1d[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[51] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[12]),
        .Q(txdata_int_1d[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[52] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[11]),
        .Q(txdata_int_1d[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[53] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[10]),
        .Q(txdata_int_1d[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[54] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[9]),
        .Q(txdata_int_1d[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[55] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[8]),
        .Q(txdata_int_1d[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[56] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[7]),
        .Q(txdata_int_1d[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[57] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[6]),
        .Q(txdata_int_1d[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[58] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[5]),
        .Q(txdata_int_1d[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[59] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[4]),
        .Q(txdata_int_1d[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[58]),
        .Q(txdata_int_1d[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[60] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[3]),
        .Q(txdata_int_1d[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[61] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[2]),
        .Q(txdata_int_1d[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[62] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[1]),
        .Q(txdata_int_1d[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[63] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[0]),
        .Q(txdata_int_1d[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[57]),
        .Q(txdata_int_1d[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[56]),
        .Q(txdata_int_1d[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[55]),
        .Q(txdata_int_1d[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_int_1d_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(gt_0_txdata[54]),
        .Q(txdata_int_1d[9]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[0] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[0]),
        .Q(txdata[0]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[10] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[10]),
        .Q(txdata[10]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[11] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[11]),
        .Q(txdata[11]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[12] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[12]),
        .Q(txdata[12]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[13] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[13]),
        .Q(txdata[13]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[14] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[14]),
        .Q(txdata[14]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[15] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[15]),
        .Q(txdata[15]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[16] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[16]),
        .Q(txdata[16]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[17] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[17]),
        .Q(txdata[17]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[18] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[18]),
        .Q(txdata[18]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[19] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[19]),
        .Q(txdata[19]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[1] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[1]),
        .Q(txdata[1]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[20] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[20]),
        .Q(txdata[20]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[21] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[21]),
        .Q(txdata[21]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[22] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[22]),
        .Q(txdata[22]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[23] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[23]),
        .Q(txdata[23]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[24] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[24]),
        .Q(txdata[24]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[25] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[25]),
        .Q(txdata[25]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[26] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[26]),
        .Q(txdata[26]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[27] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[27]),
        .Q(txdata[27]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[28] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[28]),
        .Q(txdata[28]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[29] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[29]),
        .Q(txdata[29]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[2] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[2]),
        .Q(txdata[2]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[30] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[30]),
        .Q(txdata[30]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[31] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[31]),
        .Q(txdata[31]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[32] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[32]),
        .Q(txdata[32]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[33] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[33]),
        .Q(txdata[33]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[34] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[34]),
        .Q(txdata[34]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[35] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[35]),
        .Q(txdata[35]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[36] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[36]),
        .Q(txdata[36]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[37] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[37]),
        .Q(txdata[37]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[38] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[38]),
        .Q(txdata[38]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[39] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[39]),
        .Q(txdata[39]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[3] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[3]),
        .Q(txdata[3]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[40] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[40]),
        .Q(txdata[40]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[41] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[41]),
        .Q(txdata[41]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[42] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[42]),
        .Q(txdata[42]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[43] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[43]),
        .Q(txdata[43]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[44] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[44]),
        .Q(txdata[44]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[45] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[45]),
        .Q(txdata[45]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[46] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[46]),
        .Q(txdata[46]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[47] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[47]),
        .Q(txdata[47]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[48] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[48]),
        .Q(txdata[48]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[49] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[49]),
        .Q(txdata[49]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[4] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[4]),
        .Q(txdata[4]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[50] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[50]),
        .Q(txdata[50]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[51] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[51]),
        .Q(txdata[51]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[52] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[52]),
        .Q(txdata[52]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[53] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[53]),
        .Q(txdata[53]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[54] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[54]),
        .Q(txdata[54]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[55] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[55]),
        .Q(txdata[55]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[56] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[56]),
        .Q(txdata[56]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[57] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[57]),
        .Q(txdata[57]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[58] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[58]),
        .Q(txdata[58]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[59] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[59]),
        .Q(txdata[59]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[5] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[5]),
        .Q(txdata[5]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[60] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[60]),
        .Q(txdata[60]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[61] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[61]),
        .Q(txdata[61]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[62] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[62]),
        .Q(txdata[62]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[63] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[63]),
        .Q(txdata[63]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[6] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[6]),
        .Q(txdata[6]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[7] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[7]),
        .Q(txdata[7]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[8] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[8]),
        .Q(txdata[8]),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \txdata_reg[9] 
       (.C(gt_txusrclk2),
        .CE(1'b1),
        .D(txdata_int_1d[9]),
        .Q(txdata[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
iicAuWr2E+ZFnCDdvJHvFDL4TFnCNf5z45GjkqT2djCo5QgyuFZ4Wd4vL/aUkYMZnCeWTwPFmZ58
8kPpNc97iw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CJEoRgwiIuJUnJeurUoxj2e/qgIHolzkOGYnN7vAezhe9QN4rKSJqmdv/NMXN1JJzpZ71ZVUlIvH
EyvGNtDKtGonO2/92Z+hcJQZO3qyvnRmQtUNfpZuc/lqqUnsiRh5BCPxRsIQXdk9tweL99zqKcFw
jrvkcewNNuL/vCLppZo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0fn2fEIj5KhhSAcnrkUS662HM167hc1Ls9Tma9dkdAFRD68uRpFgVugbNN0ZhC0rdqjAOAMBxmd
z/9IHfKjHHVYCYSQR7iXy8KvMU+dwzVvz9PmKZmlOVwY+qdA51sB+CHdbEgEQ+0iidiZ+aKAEC4E
98OjTz3v+7WyzRoDq/j26C3+hL0NbhzlkpozdNK6GW90kc6GIxkJOA9wk5Imt+jCncETXUdQRIJr
WNb2fQRCPQmZsyOye15u2lT06QfaNdhBg4Rq0aKB/xzcdWTYpjIIbhKWpTfGRUhHlbRl80FupeCH
4+GPEKlcWrNDoXoywsoJEh5VY1ertGf/PQaauQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pl/nfZwSAjyPgh1RSwWH++7vC8/WudlNvK4jlJb72L9Xg+aN5DVTVaDMQawwnc1ehYM2fln+UANs
IHCyLqidcCQpDBMoBA6G6SI/Iu2h1BOrKu0vZqTDl4WtvRevlp9daZWOercAlZgWv0Zm663xBDm5
t9HXa29o+rNQSfYaXRn8Lijx6Sy2XGkEzJh/i1jKsM9AINDHFxWVMOLMMYlNob9eUvZ/5Po5b0P2
eK7fhK3RNxhKuahZpEYXPuTHWQiXQCnZ6BQSSPHvuE/BlZ9HhkcO3zFUQYgjTzYuTydCA3dH0CU2
tsTug7/NhLxXzXIpZfLLYapKq+ILBi3+B4NSqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p62KL2mU8OwoN3GMQpZcBG81skjkLvZDzDBAYCAyP25fhgm3WW8uyO4hbRtjo2yphcUkv9h3JXBB
In/eAZVCEROMgGHbVJcqjMXg387DLTlfLl9wBn3Puza2R9diU9MyX5n5dPr4pa3KejOux87MQ2dc
FPsPtOzyCTjEwG4oiUiH5ndARtrGQtbWojZTvgupkrKH1AfXWJMkjJ8CO5cva8ssnD0y26M313RO
J4PbgFDQc4meEGYlHkfN8g+NZf9IoOrYiHrLJpg1CBBfJVMwvNiPlo79ZfImyNw2mJaw+m5Jmts1
orkaoHQ0eLtVKuKE/q1KxoSqCxwJk5Z95lVBeQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C3dniqM4Qkay5OSo9O3eg+me/7sX/UNgVJE3sASrYynzkVZx4mztN+CpTzICQhMsHbMjyJHVmlSw
bKSzmd0R9vAxkrGCpx4mD3SQkajOGsS0NoY6l+oUhepbpZxmwU/sGDBITYf+5z6G5e0O7ntdEnRK
72AbWPf1rynbxL/5r1M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GOtC5BA54So4yvdk8hx9kdiRqoGXvbEByaw1z7oEUeu7qmtibY9mD1ckTWjhnXtNDuYIk09Pmwvn
tdrxxHd/eURUiFciPSF49Dr5e2Ki54kfjvr/P+fl1xQbvzGLywhiJFXA1O26BLYvFl4jEHz6X8Sx
JeczUDnPBTRP5GC8cj6yczbjTzrn6WSth58alhKUBqMbZZQBTDJbCZFilWux2WW5ilgxNygzrI3u
qQ1aW1L/SEWbfF0hggRqRedT2g2kuMf8ngrQsovXvNCHlcXA+C4LLY7+r96YDGfN2jeht9K51MH+
mIIDXAfSkO1mwPrUMV4XoEDn/gFtaqaE/ggT9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qcIXGV/dI5KauJ6ao42MR9KVxqUL9O/8t2tl+ZVUqMPwuHwochy/GZwhDK3k0QHBxnEJxDqOQcPG
/iB4WSaQARpPR3bCsIIHVga9bheaTGABhRIeorRZmB/HXr2pThkcLLLqJvC8KAq5iAyGdBhBI3+R
FO4jPsAfcpZNXlY/392TLEtAxOElnJvkMcn1wfoTBI95BCQvjyZljZ0ShKfwozM8kgvMVQIFaszW
XkRaappkgIosPwqLYeQo9lycZyBRdRppsowWE6XlsGH8aVt3hjf2scYnalMmC7IMoWxq8LWjlk/e
HkrfN5+g3ZeAXCJGWv5bJsaK7c9c6mV+rWKm7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5wXLx5AazEFTgzEWPOz4vQgG5Mmrx8Bk/ejvQKqXwB/eCabWj/nxvazQXRo4Pc81hNZe7r50d4DE
poYZ5xiA7zEMnSRS9JjTQ00M1lZev/xYcFb75cafx3u9+gcCJflReVzd0yKIj1WhDlrutVXtnCeI
VyuPoMxj7tvtXHNFy+ja2tTdf3h4j1xXNZnRDbBJVqkAEi2GjabMCRASyTKXB1t9p7aTBfsRF/nN
RoF5vGqQsWNP7bBK0kJ85gRdqqk106PwBlzPvvA+sVPUb+ZQM/9OVRL6PSYDKGrnabXYI0hOQrF1
bZ23VHWjwqKAYVgriomkMz6Mn4hHqvoIBmazVg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 110000)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
