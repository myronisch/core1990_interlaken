#FPGA series specific files 
  
set VHDL_FILES [concat $VHDL_FILES \
  shared/wupper_oc_top.vhd\
  ]

#Board specific constraints
#set XDC_FILES_VC709 [concat $XDC_FILES_VC709 \
#  felix_gbt_fullmode_sfp_VC709.xdc \
#  felix_top_VC709.xdc \
#  timing_constraints_fullmode_v7.xdc]

#set XDC_FILES_HTG710 [concat $XDC_FILES_HTG710 \
#  felix_gbt_cxp_HTG710.xdc \
#  felix_gbt_cxp_copper_HTG710.xdc \
#  felix_top_HTG710.xdc \
#  timing_constraints_fullmode_v7.xdc]

#set XDC_FILES_BNL711 [concat $XDC_FILES_BNL711 \
#  felix_top_BNL711_v1.5.xdc \
#  felix_gbt_minipod_FM_BNL711.xdc \
#  felix_gbt_minipod_FM_BNL711_v1.5_transceiver_12ch.xdc \
#  timing_constraints_fullmode_ku.xdc \
#  pblocks_KCU_FM.xdc \
#  pcie1_SRL0_BNL711.xdc]
  
#set XDC_FILES_BNL712 [concat $XDC_FILES_BNL712 \
#  felix_top_BNL711_v2.0.xdc \
#  felix_gbt_minipod_FM_BNL711.xdc \
#  felix_gbt_minipod_FM_BNL711_v2.0_transceiver_24ch.xdc \
#  timing_constraints_fullmode_ku.xdc \
#  pblocks_KCU_FM_v2.xdc \
#  pcie1_SRL1_BNL711.xdc]
  
set XDC_FILES_VCU128 [concat $XDC_FILES_VCU128 \
  wupper_oc_top_vcu128.xdc]
  
set XDC_FILES_XUPP3R_VU9P [concat $XDC_FILES_XUPP3R_VU9P \
  xupp3r_vu9p.xdc]
