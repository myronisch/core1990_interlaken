#
#	File import script for the FELIX hdl project
# 
#
source ../helper/clear_filesets.tcl

set PROJECT_NAME WUPPER_INTERLAKEN_QUESTA

source ../filesets/wupper_fileset.tcl
source ../filesets/housekeeping_fileset.tcl
source ../filesets/interlaken_fileset.tcl
source ../filesets/interlaken_oc_fileset.tcl
source ../filesets/application_fileset.tcl
source ../filesets/wb_fileset.tcl


#Actually execute all the filesets
source ./external_editor.tcl
source ../helper/questa_import_generic.tcl
vsim -voptargs="+acc" work.interlaken_interface_tb work.glbl -t ps

puts "INFO: Done!"

