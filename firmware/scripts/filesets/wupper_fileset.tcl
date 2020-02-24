set VHDL_FILES [concat $VHDL_FILES \
  packages/pcie_package.vhd \
  pcie/data_width_package_512.vhd \
  pcie/data_width_package_256.vhd \
  pcie/dma_control.vhd \
  pcie/pcie_clocking.vhd \
  pcie/pcie_slow_clock.vhd \
  pcie/dma_read_write.vhd \
  pcie/intr_ctrl.vhd \
  pcie/wupper_core.vhd \
  pcie/pcie_ep_wrap.vhd \
  pcie/wupper.vhd \
  pcie/pcie_init.vhd \
  pcie/register_map_sync.vhd \
  pcie/WupperFifos.vhd]

#set SIM_FILES [concat $SIM_FILES \
#  Wupper/wupper_tb.vhd]
  
#set WCFG_FILES [concat $WCFG_FILES \
#  Wupper/wupper_tb_behav.wcfg]
  
#set EXCLUDE_SIM_FILES [concat $EXCLUDE_SIM_FILES ]

set XCI_FILES [concat $XCI_FILES \
  clk_wiz_regmap.xci]

#Kintex ultrascale specific files
set VHDL_FILES_KU [concat $VHDL_FILES_KU \
  ip_cores/kintexUltrascale/pcie_x8_gen3_3_0_stub.vhdl]
  
set XCI_FILES_KU [concat $XCI_FILES_KU \
  pcie3_ultrascale_7038.xci \
  pcie3_ultrascale_7039.xci\
  fifo16KB_256bit.xci \
  fifo128KB_256bit.xci]

#Virtex 7 specific files
set VHDL_FILES_V7 [concat $VHDL_FILES_V7 \
  ip_cores/vc707/pcie3_ultrascale_7038_stub.vhdl \
  ip_cores/vc707/pcie3_ultrascale_7039_stub.vhdl \
  ip_cores/vc707/system_management_wiz_0_stub.vhdl \
  ]
set XCI_FILES_V7 [concat $XCI_FILES_V7 \
  pcie_x8_gen3_3_0.xci\
  fifo16KB_256bit.xci \
  fifo128KB_256bit.xci]
  
#Virtex Ultrascale+ VU37P specific files
set XCI_FILES_VU9P [concat $XCI_FILES_VU9P \
  fifo32KB_512bit.xci \
  fifo256KB_512bit.xci\
  ila_0.xci\
  pcie4c_uscale_plus_0.xci]

set XCI_FILES_VU37P [concat $XCI_FILES_VU37P \
  fifo32KB_512bit.xci \
  fifo256KB_512bit.xci\
  ila_0.xci\
  pcie4c_uscale_plus_0.xci]
