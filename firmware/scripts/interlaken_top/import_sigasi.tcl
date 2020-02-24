#
#	File import script for the FELIX hdl project
# 
#
source ../helper/clear_filesets.tcl

set PROJECT_NAME WUPPER_INTERLAKEN_SIGASI

#source ../filesets/wupper_fileset.tcl
#source ../filesets/housekeeping_fileset.tcl
source ../filesets/interlaken_fileset.tcl
#source ../filesets/interlaken_oc_fileset.tcl
#source ../filesets/application_fileset.tcl
#source ../filesets/wb_fileset.tcl


#Actually execute all the filesets
source ../helper/sigasi_import_generic.tcl

puts "INFO: Done!"

