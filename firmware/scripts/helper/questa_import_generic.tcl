set scriptdir [pwd]
set firmware_dir $scriptdir/../../

if {![file exist $firmware_dir/simulation/xilinx_simlib/modelsim.ini]} {
	echo stderr "ERROR: No Xilinx simlibs"
	echo stderr "ERROR: Generate in vivado console with: compile_simlib -simulator questa -directory $firmware_dir/simulation/xilinx_simlib"	
	return
} 

if {![file exist $firmware_dir/simulation/UVVM/uvvm_util/sim/uvvm_util]} {
	echo stderr "ERROR: UVVM"
	echo stderr "ERROR: please clone the UVVM library into  $firmware_dir/simulation/UVVM"
	echo stderr "ERROR: in questasim run source compile_all.tcl from the UVVM directory"
	return
} 


#add xilinx libraries
vmap secureip             $firmware_dir/simulation/xilinx_simlib/secureip
vmap unisim               $firmware_dir/simulation/xilinx_simlib/unisim
vmap xpm                  $firmware_dir/simulation/xilinx_simlib/xpm
vmap unimacro             $firmware_dir/simulation/xilinx_simlib/unimacro
vmap unifast              $firmware_dir/simulation/xilinx_simlib/unifast
vmap unisims_ver          $firmware_dir/simulation/xilinx_simlib/unisims_ver
vmap unimacro_ver         $firmware_dir/simulation/xilinx_simlib/unimacro_ver
vmap unifast_ver          $firmware_dir/simulation/xilinx_simlib/unifast_ver
vmap simprims_ver         $firmware_dir/simulation/xilinx_simlib/simprims_ver
vmap uvvm_util            $firmware_dir/simulation/UVVM/uvvm_util/sim/uvvm_util
vmap uvvm_vvc_framework   $firmware_dir/simulation/UVVM/uvvm_vvc_framework/sim/uvvm_vvc_framework


#create new project
project new . ./${PROJECT_NAME} work
project open  ./${PROJECT_NAME}.mpf


set XCI_FILES [concat $XCI_FILES $XCI_FILES_KU]
set VHDL_FILES [concat $VHDL_FILES $VHDL_FILES_KU]

foreach VHDL_FILE $VHDL_FILES {
    project addfile ${firmware_dir}/sources/${VHDL_FILE} vhdl
}

foreach VERILOG_FILE $VERILOG_FILES {
    project addfile ${firmware_dir}/sources/${VERILOG_FILE} verilog
}


foreach EXCLUDE_SIM_FILE $EXCLUDE_SIM_FILES {
	project removefile ${firmware_dir}/sources/${EXCLUDE_SIM_FILE}
}

foreach SIM_FILE $SIM_FILES {
	project addfile ${firmware_dir}/simulation/${SIM_FILE}
}

project addfolder FPGA_IP
echo "INFO: adding IP core files"

foreach XCI_FILE $XCI_FILES {
	set XCI_FILE [string trimright $XCI_FILE .xci]
	#set xci_file_success 0
	#foreach XIL_PROJECT $XIL_PROJECTS {
	#	set core_dir $firmware_dir/Projects/${XIL_PROJECT}/${XIL_PROJECT}.srcs/sources_1/ip
	#	if {[file exists ${core_dir}/${XCI_FILE}/${XCI_FILE}_sim_netlist.vhdl]} {
	#		project addfile ${core_dir}/${XCI_FILE}/${XCI_FILE}_sim_netlist.vhdl vhdl FPGA_IP
	#		set xci_file_success 1
	#	}
	#}
	#if {$xci_file_success == 0 } {
	#	echo stderr "Could not find file $XCI_FILE in any of the Xilinx projects set in XIL_PROJECTS: $XIL_PROJECTS"
	#}
	project addfile ${firmware_dir}/sources/ip_cores/sim/${XCI_FILE}_sim_netlist.vhdl vhdl FPGA_IP
}

#Needed for some xpm libraries
vlog ${firmware_dir}/simulation/xilinx_simlib/glbl.v -work work

project calculateorder

#set answer [tk_messageBox -type yesno -message "Calculate compile order?" -title "calc compile order"]
#		case $answer {
#		yes {project calculateorder
#			 echo "INFO: Calculate compile order"}
#		no {}
#	}

echo "\n\n\n INFO: DONE!"


