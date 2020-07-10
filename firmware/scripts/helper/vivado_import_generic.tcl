# Set the supportfiles directory path
set scriptdir [pwd]
set firmware_dir $scriptdir/../../
# Vivado project directory:
set project_dir $firmware_dir/Projects/$PROJECT_NAME

if {$BOARD_TYPE == 711 || $BOARD_TYPE == 712} {
	set PART xcku115-flvf1924-2-e
	set core_dir $firmware_dir/sources/ip_cores/kintexUltrascale/
	set XCI_FILES [concat $XCI_FILES $XCI_FILES_KU]
	set VHDL_FILES [concat $VHDL_FILES $VHDL_FILES_KU]
	set SIM_FILES [concat $SIM_FILES $SIM_FILES_KU]
} elseif {$BOARD_TYPE == 709 || $BOARD_TYPE == 710} {
	set PART xc7vx690tffg1761-2
	set core_dir $firmware_dir/sources/ip_cores/virtex7/
	set XCI_FILES [concat $XCI_FILES $XCI_FILES_V7]
	set VHDL_FILES [concat $VHDL_FILES $VHDL_FILES_V7]
	set SIM_FILES [concat $SIM_FILES $SIM_FILES_V7]
} elseif {$BOARD_TYPE == 128} {
	set PART xcvu37p-fsvh2892-2-e
	set core_dir $firmware_dir/sources/ip_cores/VU37P/
	set XCI_FILES [concat $XCI_FILES $XCI_FILES_VU37P]
	set VHDL_FILES [concat $VHDL_FILES $VHDL_FILES_VU37P]
	set SIM_FILES [concat $SIM_FILES $SIM_FILES_VU37P]
} elseif {$BOARD_TYPE == 800} {
	set PART xcvu9p-flgb2104-2-e
	set core_dir $firmware_dir/sources/ip_cores/VU9P/
	set XCI_FILES [concat $XCI_FILES $XCI_FILES_VU9P]
	set VHDL_FILES [concat $VHDL_FILES $VHDL_FILES_VU9P]
	set SIM_FILES [concat $SIM_FILES $SIM_FILES_VU9P]
} else {
	puts "Error: BOARD_TYPE should be 128, 709, 710, 711 or 712"
	return;
}

if {$BOARD_TYPE == 709} {
	set XDC_FILES $XDC_FILES_VC709
}
if {$BOARD_TYPE == 710} {
	set XDC_FILES $XDC_FILES_HTG710
}
if {$BOARD_TYPE == 711} {
	set XDC_FILES $XDC_FILES_BNL711
}
if {$BOARD_TYPE == 712} {
	set XDC_FILES $XDC_FILES_BNL712
}
if {$BOARD_TYPE == 128} {
	set XDC_FILES $XDC_FILES_VCU128
}
if {$BOARD_TYPE == 800} {
	set XDC_FILES $XDC_FILES_XUPP3R_VU9P
}

close_project -quiet
create_project -force -part $PART $PROJECT_NAME $firmware_dir/Projects/$PROJECT_NAME
set_property target_language VHDL [current_project]
set_property default_lib work [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY XPM_FIFO} [current_project]



foreach VHDL_FILE $VHDL_FILES {
	read_vhdl -library work ${firmware_dir}/sources/${VHDL_FILE}
	#set_property FILE_TYPE {VHDL 2008} [get_files ${firmware_dir}/sources/${VHDL_FILE}]
}

foreach VERILOG_FILE $VERILOG_FILES {
	read_verilog -library work ${firmware_dir}/sources/${VERILOG_FILE}
}

foreach XCI_FILE $XCI_FILES {
	import_ip ${core_dir}/${XCI_FILE}
}

foreach XDC_FILE $XDC_FILES {
	read_xdc -verbose ${firmware_dir}/constraints/${XDC_FILE}
}

set_property SOURCE_SET sources_1 [get_filesets sim_1]

#These files are for synthesis only, they must have a replacement for simulation purposes.
foreach EXCLUDE_SIM_FILE $EXCLUDE_SIM_FILES {
	set_property used_in_simulation false [get_files  ${firmware_dir}/sources/$EXCLUDE_SIM_FILE]
}

foreach SIM_FILE $SIM_FILES {
	add_files -fileset sim_1 -force -norecurse ${firmware_dir}/simulation/$SIM_FILE
	set_property library work [get_files  ${firmware_dir}/simulation/$SIM_FILE]
	#set_property FILE_TYPE {VHDL 2008} [get_files  ${firmware_dir}/simulation/$SIM_FILE]
}

foreach WCFG_FILE $WCFG_FILES {
	add_files -fileset sim_1 -force -norecurse ${firmware_dir}/simulation/$WCFG_FILE
}

if {[info exists TOPLEVEL_SIM]} {
    set_property top $TOPLEVEL_SIM [get_filesets sim_1]
}
update_compile_order -fileset sim_1

set_property -name {xsim.simulate.runtime} -value {5 us} -objects [current_fileset -simset]



close [ open $firmware_dir/constraints/felix_probes.xdc w ]
read_xdc -verbose $firmware_dir/constraints/felix_probes.xdc
set_property target_constrs_file $firmware_dir/constraints/felix_probes.xdc [current_fileset -constrset]




set_property top $TOPLEVEL [current_fileset]
upgrade_ip [get_ips]
#generate_target all [get_ips]
#export_ip_user_files -of_objects [get_ips] -no_script -force -quiet
#set xcifiles [get_files *.xci]
#foreach ip [get_ips] {
#    set run [create_ip_run [get_ips $ip]]
#    launch_run $run
#}
#export_simulation -of_objects [get_ips] -force -quiet
