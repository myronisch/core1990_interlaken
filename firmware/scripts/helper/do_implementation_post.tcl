
set GIT_HASH [exec git rev-parse HEAD]
set GIT_HASH "160'h$GIT_HASH"
#set COMMIT_DATETIME [exec git show -s --format=%cd --date=format:'%y%m%d%H%M']
set COMMIT_DATETIME [exec git show -s --format=%cd --date=iso]
set YY [string range $COMMIT_DATETIME 2 3]
set MM [string range $COMMIT_DATETIME 5 6]
set DD [string range $COMMIT_DATETIME 8 9]
set hh [string range $COMMIT_DATETIME 11 12]
set mm [string range $COMMIT_DATETIME 14 15]
 
set COMMIT_DATETIME 40'h${YY}${MM}${DD}${hh}${mm}

set git_tag_str [exec git describe --abbrev=0 --tags]
set GIT_COMMIT_NUMBER [exec git rev-list ${git_tag_str}..HEAD]
set GIT_COMMIT_NUMBER [expr [regexp -all {[\n]+} $GIT_COMMIT_NUMBER ] +1]
binary scan [string reverse ${git_tag_str}] H* t
set GIT_TAG "128'h$t"
puts $GIT_TAG          
set svn_version "0"


set systemTime [clock seconds]
set build_date "40'h[clock format $systemTime -format %y%m%d%H%M]"
puts "BUILD_DATE = $build_date"

#For 711 / 712 cards the core location in the PCIe endpoint must be selected correctly.
if {$CARD_TYPE == 711} {
    set loc_7039 [get_property CONFIG.pcie_blk_locn [get_ips pcie3_ultrascale_7039]]
    if { $loc_7039 != "X0Y1" } {
        set_property -dict [list CONFIG.pcie_blk_locn {X0Y0} CONFIG.gen_x0y1 {false} CONFIG.gen_x0y0 {true} CONFIG.PL_LINK_CAP_MAX_LINK_WIDTH {X8} CONFIG.mcap_enablement {None}] [get_ips pcie3_ultrascale_7038]
        set_property -dict [list CONFIG.pcie_blk_locn {X0Y1} CONFIG.gen_x0y1 {true} CONFIG.gen_x0y3 {false} CONFIG.PL_LINK_CAP_MAX_LINK_WIDTH {X8} CONFIG.mcap_enablement {None}] [get_ips pcie3_ultrascale_7039]
        set_property -dict [list CONFIG.dedicate_perst {false}] [get_ips pcie3_ultrascale_7038]
        generate_target all [get_files pcie3_ultrascale_7038.xci]
        export_ip_user_files -of_objects [get_files pcie3_ultrascale_7038.xci] -no_script -force -quiet
        reset_run pcie3_ultrascale_7038_synth_1
        launch_run -jobs 12 pcie3_ultrascale_7038_synth_1
        generate_target all [get_files pcie3_ultrascale_7039.xci]
        export_ip_user_files -of_objects [get_files pcie3_ultrascale_7039.xci] -no_script -force -quiet
        reset_run pcie3_ultrascale_7039_synth_1
        launch_run -jobs 12 pcie3_ultrascale_7039_synth_1
    } 
    
} 
if {$CARD_TYPE == 712} {
    set loc_7039 [get_property CONFIG.pcie_blk_locn [get_ips pcie3_ultrascale_7039]]
    if { $loc_7039 != "X0Y3" } {
        
        set_property -dict [list CONFIG.pcie_blk_locn {X0Y1} CONFIG.gen_x0y0 {false} CONFIG.gen_x0y1 {true} CONFIG.PL_LINK_CAP_MAX_LINK_WIDTH {X8} CONFIG.mcap_enablement {None}] [get_ips pcie3_ultrascale_7038]
        set_property -dict [list CONFIG.pcie_blk_locn {X0Y3} CONFIG.gen_x0y1 {false} CONFIG.gen_x0y3 {true} CONFIG.PL_LINK_CAP_MAX_LINK_WIDTH {X8} CONFIG.mcap_enablement {None}] [get_ips pcie3_ultrascale_7039]
        set_property -dict [list CONFIG.dedicate_perst {false}] [get_ips pcie3_ultrascale_7038]
        generate_target all [get_files pcie3_ultrascale_7038.xci]
        export_ip_user_files -of_objects [get_files pcie3_ultrascale_7038.xci] -no_script -force -quiet
        reset_run pcie3_ultrascale_7038_synth_1
        launch_run -jobs 12 pcie3_ultrascale_7038_synth_1
        generate_target all [get_files pcie3_ultrascale_7039.xci]
        export_ip_user_files -of_objects [get_files pcie3_ultrascale_7039.xci] -no_script -force -quiet
        reset_run pcie3_ultrascale_7039_synth_1
        launch_run -jobs 12 pcie3_ultrascale_7039_synth_1
    }
}

if { ($CARD_TYPE == 711 || $CARD_TYPE == 712) } {
    set_property is_enabled false [get_files  felix_gbt_minipod_FM_BNL711_v2.0_transceiver_24ch.xdc]
    if {$GBT_NUM <= 16 && $FE_EMU_EN == 0} {
        if {$GBT_NUM > 8} {
            set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_8ch.xdc]
            set_property is_enabled true [get_files  felix_gbt_minipod_BNL711_transceiver_16ch.xdc]
            set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_24ch.xdc]
        } else {
            set_property is_enabled true [get_files  felix_gbt_minipod_BNL711_transceiver_8ch.xdc]
            set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_16ch.xdc]
            set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_24ch.xdc]
        }
    } else {
        set_property is_enabled true [get_files  felix_gbt_minipod_BNL711_transceiver_24ch.xdc]
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_16ch.xdc]
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_8ch.xdc]
    }
    
    if {$GBT_NUM > 24  || ($FE_EMU_EN > 0 && $GBT_NUM > 12)} {
        puts "GBT_NUM > 24: $GBT_NUM"
        set_property is_enabled true [get_files  felix_gbt_minipod_BNL711_v2.0_transceiver_48ch.xdc]
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_8ch.xdc]
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_16ch.xdc]
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_transceiver_24ch.xdc]    
    } else {
        set_property is_enabled false [get_files  felix_gbt_minipod_BNL711_v2.0_transceiver_48ch.xdc]
    }

}

if { [file exists [get_files KCU_NORXBUF_PCS_CPLL_1CH.xdc] ] &&  [get_property is_enabled [get_files KCU_NORXBUF_PCS_CPLL_1CH.xdc]] } {
    set_property is_enabled false [get_files KCU_NORXBUF_PCS_CPLL_1CH.xdc]
    reset_run -quiet KCU_NORXBUF_PCS_CPLL_1CH_synth_1
    launch_runs -quiet KCU_NORXBUF_PCS_CPLL_1CH_synth_1
}

if { [file exists [get_files KCU_RXBUF_PMA_CPLL_1CH.xdc] ] &&  [get_property is_enabled [get_files KCU_RXBUF_PMA_CPLL_1CH.xdc]] } {
    set_property is_enabled false [get_files KCU_RXBUF_PMA_CPLL_1CH.xdc]
    reset_run -quiet  KCU_RXBUF_PMA_CPLL_1CH_synth_1
    launch_runs -quiet KCU_RXBUF_PMA_CPLL_1CH_synth_1
}

if { [file exists [get_files KCU_RXBUF_PMA_QPLL_4CH.xdc] ] &&  [get_property is_enabled [get_files KCU_RXBUF_PMA_QPLL_4CH.xdc]] } {
    set_property is_enabled false [get_files KCU_RXBUF_PMA_QPLL_4CH.xdc]
    reset_run -quiet  KCU_RXBUF_PMA_QPLL_4CH_synth_1
    launch_runs -quiet KCU_RXBUF_PMA_QPLL_4CH_synth_1
}


if { [file exists [get_files KCU_RXBUF_PMA_QPLL_FE4CH.xdc] ] &&  [get_property is_enabled [get_files KCU_RXBUF_PMA_QPLL_FE4CH.xdc]] } {
    set_property is_enabled false [get_files KCU_RXBUF_PMA_QPLL_FE4CH.xdc]
    reset_run -quiet  KCU_RXBUF_PMA_QPLL_FE4CH_synth_1
    launch_runs -quiet KCU_RXBUF_PMA_QPLL_FE4CH_synth_1
}


#if {$FIRMWARE_MODE==0 && ($CARD_TYPE == 711 || $CARD_TYPE == 712)} {
#  if {$GBT_NUM == 24 } {
#    set_property is_enabled false  [get_files  *pblocks_KCU*.xdc]
#  } else {
#    set_property is_enabled false  [get_files   *pblocks_KCU*.xdc]
#  }
#}

if {$DATA_WIDTH==256} {
    set_property is_enabled true  [get_files data_width_package_256.vhd]
    set_property is_enabled false [get_files data_width_package_512.vhd]
} else {
    set_property is_enabled false [get_files data_width_package_256.vhd]
    set_property is_enabled true  [get_files data_width_package_512.vhd]
} 

set IMPL_RUN [get_runs impl*]
set SYNTH_RUN [get_runs synth*]
set scriptdir [pwd]
set HDLDIR $scriptdir/../../

reset_run $SYNTH_RUN

foreach design [get_designs] {
   puts "Closing design: $design"
   current_design $design
   close_design
}



## PCIe EndPoint constraints
#For BNL711 v1p5 hardware
set SLR0 0
#For BNL711 v2p0 hardware
set SLR1 1

## BNL-711 PCIe location constraints
if {$CARD_TYPE == 712} {
    set PCIE_PLACEMENT $SLR1
} else {
    set PCIE_PLACEMENT $SLR0
}

## Optimize place and route algorithm
#set_property strategy Flow_PerfOptimized_high $SYNTH_RUN
set_property strategy Flow_AreaOptimized_medium $SYNTH_RUN
set_property strategy Performance_ExplorePostRoutePhysOpt $IMPL_RUN
set_property STEPS.OPT_DESIGN.ARGS.DIRECTIVE ExploreWithRemap $IMPL_RUN
#set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE SpreadLogic_high $IMPL_RUN
set_property STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE AggressiveFanoutOpt $IMPL_RUN
set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE MoreGlobalIterations $IMPL_RUN
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.DIRECTIVE AddRetime $IMPL_RUN

set_property generic "
AUTOMATIC_CLOCK_SWITCH=$automatic_clock_switch \
USE_BACKUP_CLK=$use_backup_clk \
APP_CLK_FREQ=$app_clk_freq \
BUILD_DATETIME=$build_date \
SVN_VERSION=$svn_version \
COMMIT_DATETIME=$COMMIT_DATETIME \           
GIT_HASH=$GIT_HASH \
GIT_TAG=$GIT_TAG \
GIT_COMMIT_NUMBER=$GIT_COMMIT_NUMBER \
GENERATE_GBT=$GENERATE_GBT \
NUMBER_OF_INTERRUPTS=$NUMBER_OF_INTERRUPTS \
NUMBER_OF_DESCRIPTORS=$NUMBER_OF_DESCRIPTORS \
GBT_NUM=$GBT_NUM \
OPTO_TRX=$OPTO_TRX \
GBT_MAPPING=$GBT_MAPPING \
CARD_TYPE=$CARD_TYPE \
DEBUG_MODE=$debug_mode \
EnableToHo_Egroup0Eproc2_HDLC=$EnableToHo_Egroup0Eproc2_HDLC \
EnableToHo_Egroup0Eproc2_8b10b=$EnableToHo_Egroup0Eproc2_8b10b \
EnableToHo_Egroup0Eproc4_8b10b=$EnableToHo_Egroup0Eproc4_8b10b \
EnableToHo_Egroup0Eproc8_8b10b=$EnableToHo_Egroup0Eproc8_8b10b \
EnableToHo_Egroup0Eproc16_8b10b=$EnableToHo_Egroup0Eproc16_8b10b \
EnableToHo_Egroup1Eproc2_HDLC=$EnableToHo_Egroup1Eproc2_HDLC \
EnableToHo_Egroup1Eproc2_8b10b=$EnableToHo_Egroup1Eproc2_8b10b \
EnableToHo_Egroup1Eproc4_8b10b=$EnableToHo_Egroup1Eproc4_8b10b \
EnableToHo_Egroup1Eproc8_8b10b=$EnableToHo_Egroup1Eproc8_8b10b \
EnableToHo_Egroup1Eproc16_8b10b=$EnableToHo_Egroup1Eproc16_8b10b \
EnableToHo_Egroup2Eproc2_HDLC=$EnableToHo_Egroup2Eproc2_HDLC \
EnableToHo_Egroup2Eproc2_8b10b=$EnableToHo_Egroup2Eproc2_8b10b \
EnableToHo_Egroup2Eproc4_8b10b=$EnableToHo_Egroup2Eproc4_8b10b \
EnableToHo_Egroup2Eproc8_8b10b=$EnableToHo_Egroup2Eproc8_8b10b \
EnableToHo_Egroup2Eproc16_8b10b=$EnableToHo_Egroup2Eproc16_8b10b \
EnableToHo_Egroup3Eproc2_HDLC=$EnableToHo_Egroup3Eproc2_HDLC \
EnableToHo_Egroup3Eproc2_8b10b=$EnableToHo_Egroup3Eproc2_8b10b \
EnableToHo_Egroup3Eproc4_8b10b=$EnableToHo_Egroup3Eproc4_8b10b \
EnableToHo_Egroup3Eproc8_8b10b=$EnableToHo_Egroup3Eproc8_8b10b \
EnableToHo_Egroup3Eproc16_8b10b=$EnableToHo_Egroup3Eproc16_8b10b \
EnableToHo_Egroup4Eproc2_HDLC=$EnableToHo_Egroup4Eproc2_HDLC \
EnableToHo_Egroup4Eproc2_8b10b=$EnableToHo_Egroup4Eproc2_8b10b \
EnableToHo_Egroup4Eproc4_8b10b=$EnableToHo_Egroup4Eproc4_8b10b \
EnableToHo_Egroup4Eproc8_8b10b=$EnableToHo_Egroup4Eproc8_8b10b \
EnableToHo_Egroup4Eproc16_8b10b=$EnableToHo_Egroup4Eproc16_8b10b \
EnableFrHo_Egroup0Eproc2_HDLC=$EnableFrHo_Egroup0Eproc2_HDLC \
EnableFrHo_Egroup0Eproc2_8b10b=$EnableFrHo_Egroup0Eproc2_8b10b \
EnableFrHo_Egroup0Eproc4_8b10b=$EnableFrHo_Egroup0Eproc4_8b10b \
EnableFrHo_Egroup0Eproc8_8b10b=$EnableFrHo_Egroup0Eproc8_8b10b \
EnableFrHo_Egroup1Eproc2_HDLC=$EnableFrHo_Egroup1Eproc2_HDLC \
EnableFrHo_Egroup1Eproc2_8b10b=$EnableFrHo_Egroup1Eproc2_8b10b \
EnableFrHo_Egroup1Eproc4_8b10b=$EnableFrHo_Egroup1Eproc4_8b10b \
EnableFrHo_Egroup1Eproc8_8b10b=$EnableFrHo_Egroup1Eproc8_8b10b \
EnableFrHo_Egroup2Eproc2_HDLC=$EnableFrHo_Egroup2Eproc2_HDLC \
EnableFrHo_Egroup2Eproc2_8b10b=$EnableFrHo_Egroup2Eproc2_8b10b \
EnableFrHo_Egroup2Eproc4_8b10b=$EnableFrHo_Egroup2Eproc4_8b10b \
EnableFrHo_Egroup2Eproc8_8b10b=$EnableFrHo_Egroup2Eproc8_8b10b \
EnableFrHo_Egroup3Eproc2_HDLC=$EnableFrHo_Egroup3Eproc2_HDLC \
EnableFrHo_Egroup3Eproc2_8b10b=$EnableFrHo_Egroup3Eproc2_8b10b \
EnableFrHo_Egroup3Eproc4_8b10b=$EnableFrHo_Egroup3Eproc4_8b10b \
EnableFrHo_Egroup3Eproc8_8b10b=$EnableFrHo_Egroup3Eproc8_8b10b \
EnableFrHo_Egroup4Eproc2_HDLC=$EnableFrHo_Egroup4Eproc2_HDLC \
EnableFrHo_Egroup4Eproc2_8b10b=$EnableFrHo_Egroup4Eproc2_8b10b \
EnableFrHo_Egroup4Eproc4_8b10b=$EnableFrHo_Egroup4Eproc4_8b10b \
EnableFrHo_Egroup4Eproc8_8b10b=$EnableFrHo_Egroup4Eproc8_8b10b \
wideMode=$wideMode \
generateTTCemu=$generateTTCemu \
TTC_test_mode=$TTC_test_mode \
useToHostGBTdataEmulator=$useToHostGBTdataEmulator \
useToFrontendGBTdataEmulator=$useToFrontendGBTdataEmulator \
GTHREFCLK_SEL=$GTHREFCLK_SEL \
CREnableFromHost=$CREnableFromHost \
GENERATE_FM_WRAP=$GENERATE_FM_WRAP \
toHostTimeoutBitn=$toHostTimeoutBitn \
PLL_SEL=$PLL_SEL \
generate_IC_EC_TTC_only=$generate_IC_EC_TTC_only \
includeDirectMode=$includeDirectMode \
USE_Si5324_RefCLK=$USE_Si5324_RefCLK \
GENERATE_FEI4B=$GENERATE_FEI4B \
FIRMWARE_MODE=$FIRMWARE_MODE \
PCIE_LANES=$PCIE_LANES \
DATA_WIDTH=$DATA_WIDTH \
GENERATE_TRUNCATION_MECHANISM=$GENERATE_TRUNCATION_MECHANISM \
ENDPOINTS=$ENDPOINTS \
NUM_LEDS=$NUM_LEDS \
GTREFCLKS=$GTREFCLKS \
" [current_fileset]

set CORES 12
puts "INFO: $CORES cores are in used"

launch_runs $SYNTH_RUN  -jobs $CORES
wait_on_run $SYNTH_RUN
#open_run $SYNTH_RUN
#return

if {$STOP_TO_ADD_ILA == 1} {
open_run $SYNTH_RUN -name $SYNTH_RUN
# wait to: open_run $SYNTH_RUN, to finish
wait_on_run $SYNTH_RUN
set STOP_TO_ADD_ILA 0
puts ""
puts ""
puts "*** ============================================================ ***"
puts "*** The script stopped in order to provide the ability to add an ***"
puts "*** ila after you finish with defining the debug ports, run the  ***"
puts "*** tcl command: source ./../helper/do_implementation_finish.tcl ***"
puts "*** ============================================================ ***"
puts ""
puts ""
break
} else {
    source ../helper/do_implementation_finish.tcl
};
