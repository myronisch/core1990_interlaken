# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-17517-franss-Vostro-460/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7vx485tffg1761-2

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName work

    set rt::enableVHDL2008 1
    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      /opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      /opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_vhdl -lib work {
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/vio_0_stub.vhdl
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/ILA_Data_stub.vhdl
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/TX_FIFO_stub.vhdl
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/Transceiver_10g_64b67b_stub.vhdl
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/clk_40MHz_stub.vhdl
      ./.Xil/Vivado-17517-franss-Vostro-460/realtime/RX_FIFO_stub.vhdl
      /home/nayibb/Desktop/report/Code/Core1990/sources/crc/crc-32.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/crc/crc-24.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/transmitter/scrambler.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/transmitter/framing_meta.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/transmitter/framing_burst.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/transmitter/encoder.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/receiver/descrambler.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/receiver/deframing_meta.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/receiver/decoder.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/receiver/deframing_burst.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/transmitter/interlaken_transmitter.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/receiver/interlaken_receiver.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/test/pipeline.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/interlaken_interface.vhd
      /home/nayibb/Desktop/report/Code/Core1990/sources/test/data_generator.vhd
    }
      rt::read_vhdl -lib xpm /opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -vhdl2008 -lib work /home/nayibb/Desktop/report/Code/Core1990/sources/test/Core1990_Test.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top Interface_Test
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-17517-franss-Vostro-460/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }

    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
