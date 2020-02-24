#reset_run $IMPL_RUN
launch_runs $IMPL_RUN -jobs $CORES
#launch_runs $IMPL_RUN  -to_step write_bitstream
#cd $HDLDIR/Synt/
wait_on_run $IMPL_RUN
set TIMESTAMP [clock format $systemTime -format {%y%m%d_%H_%M}]


open_run $IMPL_RUN
current_run $IMPL_RUN

#Try 4 more rounds of phys_opt_design in case timing is not met.
for {set i 0} {$i < 2} {incr i} {
    set pass [expr {[get_property SLACK [get_timing_paths -delay_type min_max]] >= 0}]
    if { $pass != 1 } {
        phys_opt_design -directive Explore
    }
    set pass [expr {[get_property SLACK [get_timing_paths -delay_type min_max]] >= 0}]
    if { $pass != 1 } {
        phys_opt_design -directive AggressiveExplore
    }
}

file mkdir $HDLDIR/output/

# force Vivado to ignore usage of GTGREFCLK
# 
set_property SEVERITY {Warning} [get_drc_checks REQP-44]
set_property SEVERITY {Warning} [get_drc_checks REQP-46]
set_property SEVERITY {Warning} [get_drc_checks RTRES-1]
#set_property SEVERITY {warning} [get_drc_checks UCIO-1]
# force vivado to ignore unplaced pins
#set_property SEVERITY {Warning} [get_drc_checks IOSTDTYPE-1]
if { $automatic_clock_switch == true} {
    set CLKSRC CLKSELECT
} else {
    if { $use_backup_clk == true } {
        set CLKSRC LOCALCLK
    } else {
        set CLKSRC TTCCLK
    }
}

if {$USE_Si5324_RefCLK ==true } {
	set SICHIP "_SI5324"
} else {
	set SICHIP ""
}

# FIRMWARE_MODE register value determine the FW_MODE text
# 0: GBT mode                                       
# 1: FULL mode                                      
# 2: LTDB mode (GBT mode with only IC and TTC links)
# 3: FE-I4B mode
if {$FIRMWARE_MODE == 0 } {
	set FW_MODE "_GBT"
} elseif {$FIRMWARE_MODE == 1 } {
	set FW_MODE "_FULLMODE"
} elseif {$FIRMWARE_MODE == 2 } {
	set FW_MODE "_LTDB"
} else {
	set FW_MODE "_FE-I4B"
}


set CARD_TYPE_STR $CARD_TYPE

set GIT_BRANCH [string map { / - } [exec git rev-parse --abbrev-ref HEAD]]

set FileName FLX${CARD_TYPE_STR}${FW_MODE}_${GBT_NUM}CH_${CLKSRC}${SICHIP}_GIT_${GIT_BRANCH}_${git_tag_str}_${GIT_COMMIT_NUMBER}_${TIMESTAMP}

write_bitstream -force $HDLDIR/output/${FileName}.bit

cd $HDLDIR/output/

if {$CARD_TYPE > 710} {
    set ADDSLR "PCIE1 placement:              SLR$PCIE_PLACEMENT\n"
} else {
    set ADDSLR ""
}


set pass [expr {[get_property SLACK [get_timing_paths -delay_type min_max]] >= 0}]
set report [report_timing -slack_lesser_than 0 -return_string -nworst 10]
set util [report_utilization -return_string]
set slack [get_property SLACK [get_timing_paths -delay_type min_max]]
set GenericFileData "
AUTOMATIC_CLOCK_SWITCH:         $automatic_clock_switch
USE_BACKUP_CLK:                 $use_backup_clk 
APP_CLK_FREQ:                   $app_clk_freq 
BUILD_DATETIME:                 $build_date 
SVN_VERSION:                    $svn_version 
COMMIT_DATETIME:                $COMMIT_DATETIME 
GIT_HASH:                       $GIT_HASH 
GIT_TAG:                        $GIT_TAG 
GIT_COMMIT_NUMBER:              $GIT_COMMIT_NUMBER 
GENERATE_GBT:                   $GENERATE_GBT 
NUMBER_OF_INTERRUPTS:           $NUMBER_OF_INTERRUPTS 
NUMBER_OF_DESCRIPTORS:          $NUMBER_OF_DESCRIPTORS
GBT_NUM:                        $GBT_NUM 
OPTO_TRX:                       $OPTO_TRX 
GBT_MAPPING:                    $GBT_MAPPING 
CARD_TYPE:                      $CARD_TYPE 
DEBUG_MODE:                     $debug_mode 
EnableToHo_Egroup0Eproc2_HDLC:  $EnableToHo_Egroup0Eproc2_HDLC
EnableToHo_Egroup0Eproc2_8b10b: $EnableToHo_Egroup0Eproc2_8b10b
EnableToHo_Egroup0Eproc4_8b10b: $EnableToHo_Egroup0Eproc4_8b10b
EnableToHo_Egroup0Eproc8_8b10b: $EnableToHo_Egroup0Eproc8_8b10b
EnableToHo_Egroup0Eproc16_8b10b:$EnableToHo_Egroup0Eproc16_8b10b
EnableToHo_Egroup1Eproc2_HDLC:  $EnableToHo_Egroup1Eproc2_HDLC
EnableToHo_Egroup1Eproc2_8b10b: $EnableToHo_Egroup1Eproc2_8b10b
EnableToHo_Egroup1Eproc4_8b10b: $EnableToHo_Egroup1Eproc4_8b10b
EnableToHo_Egroup1Eproc8_8b10b: $EnableToHo_Egroup1Eproc8_8b10b
EnableToHo_Egroup1Eproc16_8b10b:$EnableToHo_Egroup1Eproc16_8b10b
EnableToHo_Egroup2Eproc2_HDLC:  $EnableToHo_Egroup2Eproc2_HDLC
EnableToHo_Egroup2Eproc2_8b10b: $EnableToHo_Egroup2Eproc2_8b10b
EnableToHo_Egroup2Eproc4_8b10b: $EnableToHo_Egroup2Eproc4_8b10b
EnableToHo_Egroup2Eproc8_8b10b: $EnableToHo_Egroup2Eproc8_8b10b
EnableToHo_Egroup2Eproc16_8b10b:$EnableToHo_Egroup2Eproc16_8b10b
EnableToHo_Egroup3Eproc2_HDLC:  $EnableToHo_Egroup3Eproc2_HDLC
EnableToHo_Egroup3Eproc2_8b10b: $EnableToHo_Egroup3Eproc2_8b10b
EnableToHo_Egroup3Eproc4_8b10b: $EnableToHo_Egroup3Eproc4_8b10b
EnableToHo_Egroup3Eproc8_8b10b: $EnableToHo_Egroup3Eproc8_8b10b
EnableToHo_Egroup3Eproc16_8b10b:$EnableToHo_Egroup3Eproc16_8b10b
EnableToHo_Egroup4Eproc2_HDLC:  $EnableToHo_Egroup4Eproc2_HDLC
EnableToHo_Egroup4Eproc2_8b10b: $EnableToHo_Egroup4Eproc2_8b10b
EnableToHo_Egroup4Eproc4_8b10b: $EnableToHo_Egroup4Eproc4_8b10b
EnableToHo_Egroup4Eproc8_8b10b: $EnableToHo_Egroup4Eproc8_8b10b
EnableToHo_Egroup4Eproc16_8b10b:$EnableToHo_Egroup4Eproc16_8b10b
EnableFrHo_Egroup0Eproc2_HDLC:  $EnableFrHo_Egroup0Eproc2_HDLC
EnableFrHo_Egroup0Eproc2_8b10b: $EnableFrHo_Egroup0Eproc2_8b10b
EnableFrHo_Egroup0Eproc4_8b10b: $EnableFrHo_Egroup0Eproc4_8b10b
EnableFrHo_Egroup0Eproc8_8b10b: $EnableFrHo_Egroup0Eproc8_8b10b
EnableFrHo_Egroup1Eproc2_HDLC:  $EnableFrHo_Egroup1Eproc2_HDLC
EnableFrHo_Egroup1Eproc2_8b10b: $EnableFrHo_Egroup1Eproc2_8b10b
EnableFrHo_Egroup1Eproc4_8b10b: $EnableFrHo_Egroup1Eproc4_8b10b
EnableFrHo_Egroup1Eproc8_8b10b: $EnableFrHo_Egroup1Eproc8_8b10b
EnableFrHo_Egroup2Eproc2_HDLC:  $EnableFrHo_Egroup2Eproc2_HDLC
EnableFrHo_Egroup2Eproc2_8b10b: $EnableFrHo_Egroup2Eproc2_8b10b
EnableFrHo_Egroup2Eproc4_8b10b: $EnableFrHo_Egroup2Eproc4_8b10b
EnableFrHo_Egroup2Eproc8_8b10b: $EnableFrHo_Egroup2Eproc8_8b10b
EnableFrHo_Egroup3Eproc2_HDLC:  $EnableFrHo_Egroup3Eproc2_HDLC
EnableFrHo_Egroup3Eproc2_8b10b: $EnableFrHo_Egroup3Eproc2_8b10b
EnableFrHo_Egroup3Eproc4_8b10b: $EnableFrHo_Egroup3Eproc4_8b10b
EnableFrHo_Egroup3Eproc8_8b10b: $EnableFrHo_Egroup3Eproc8_8b10b
EnableFrHo_Egroup4Eproc2_HDLC:  $EnableFrHo_Egroup4Eproc2_HDLC
EnableFrHo_Egroup4Eproc2_8b10b: $EnableFrHo_Egroup4Eproc2_8b10b
EnableFrHo_Egroup4Eproc4_8b10b: $EnableFrHo_Egroup4Eproc4_8b10b
EnableFrHo_Egroup4Eproc8_8b10b: $EnableFrHo_Egroup4Eproc8_8b10b
useToHostGBTdataEmulator:       $useToHostGBTdataEmulator
useToFrontendGBTdataEmulator:   $useToFrontendGBTdataEmulator
wideMode:                       $wideMode 
generateTTCemu:                 $generateTTCemu 
TTC_test_mode:                  $TTC_test_mode
generate_IC_EC_TTC_only:        $generate_IC_EC_TTC_only
Include Direct Mode:            $includeDirectMode
USE_Si5324_RefCLK:              $USE_Si5324_RefCLK
GENERATE_FEI4B:                 $GENERATE_FEI4B
GENERATE_TRUNCATION_MECHANISM:  $GENERATE_TRUNCATION_MECHANISM
FIRMWARE_MODE:                  $FIRMWARE_MODE \n
$ADDSLR
Timing met:                     $pass
Wost slack:                     $slack\n\n
Timing Report:\n
$report\n
Utilization Report:\n
$util\n"



set GenericsFileName "${FileName}_generics_timing.txt"
set GenericsFileId [open $GenericsFileName "w"]
puts -nonewline $GenericsFileId $GenericFileData
close $GenericsFileId



set BitFile ${FileName}.bit
set IMPL_DIR [get_property DIRECTORY [current_run]]

write_debug_probes ${HDLDIR}/output/${FileName}_debug_nets.ltx -force
if {$CARD_TYPE == 128 || $CARD_TYPE == 800} {
	write_cfgmem -force -format mcs -size 256 -interface SPIx4 -loadbit "up 0x00000000 ${FileName}.bit"  -file ${FileName}.mcs
} else {
	write_cfgmem -force -format MCS -size 128 -interface BPIx16 -loadbit "up 0x00000000 ${FileName}.bit" ${FileName}.mcs
}
if {[file exists ${HDLDIR}/output/${FileName}_debug_nets.ltx] == 1} {
   if { [catch { exec tar -zcf ${HDLDIR}/output/${FileName}.tar.gz ${FileName}.bit ${FileName}.mcs ${FileName}_debug_nets.ltx ${GenericsFileName}} msg] } {
        puts "error creating archive ${FileName}.tar.gz"
   }
} else {
    if { [catch { exec tar -zcf ${HDLDIR}/output/${FileName}.tar.gz ${FileName}.bit ${FileName}.mcs ${GenericsFileName}} msg] } {
        puts "error creating archive ${FileName}.tar.gz"
    }
}
cd $scriptdir
