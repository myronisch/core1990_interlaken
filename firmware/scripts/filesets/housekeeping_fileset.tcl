set VHDL_FILES [concat $VHDL_FILES \
  shared/housekeeping.vhd \
  shared/xadc_drp.vhd \
  shared/dna.vhd \
  shared/i2c_interface.vhd \
  shared/i2c.vhd]

set XCI_FILES [concat $XCI_FILES \
  I2C_RDFifo.xci \
  I2C_WRFifo.xci \
  ]

#Kintex ultrascale only
set XCI_FILES_KU [concat $XCI_FILES_KU \
  system_management_wiz_0.xci]

set XCI_FILES_VU37P [concat $XCI_FILES_VU37P \
  system_management_wiz_0.xci]

  
#set VHDL_FILES_KU [concat $VHDL_FILES_KU \
#  ip_cores/kintexUltrascale/xadc_wiz_0_stub.vhdl]

#set VHDL_FILES_VU37P [concat $VHDL_FILES_VU37P \
#  ip_cores/kintexUltrascale/xadc_wiz_0_stub.vhdl]


#Virtex 7 only
set XCI_FILES_V7 [concat $XCI_FILES_V7 \
  xadc_wiz_0.xci]
  
#set VHDL_FILES_V7 [concat $VHDL_FILES_V7 \
#  ip_cores/virtex7/system_management_wiz_0_stub.vhdl]
