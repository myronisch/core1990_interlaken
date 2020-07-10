#
#  File import script for the FELIX hdl Vivado project
#  Board: VC907
#

source ../helper/clear_filesets.tcl

set PROJECT_NAME FLX709_INTERLAKEN
set BOARD_TYPE 709
set TOPLEVEL wupper_interlaken_top

#Import blocks for different filesets
#source ../filesets/crToHost_fileset.tcl
#source ../filesets/decoding_fileset.tcl
#source ../filesets/wupper_oc_fileset.tcl
#source ../filesets/wupper_fileset.tcl
#source ../filesets/housekeeping_fileset.tcl
source ../filesets/interlaken_fileset.tcl
#source ../filesets/interlaken_oc_fileset.tcl
#source ../filesets/application_fileset.tcl
#source ../filesets/wb_fileset.tcl
#Actually execute all the filesets
source ../helper/vivado_import_generic.tcl

puts "INFO: Done!"
