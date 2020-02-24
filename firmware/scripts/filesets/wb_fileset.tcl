set VHDL_FILES [concat $VHDL_FILES \
  Wishbone/wb_intercon.vhd \
  Wishbone/wb_memory.vhd \
  Wishbone/wb_syscon.vhd \
  Wishbone/wupper_to_wb.vhd \
  Wishbone/xwb_crossbar.vhd \
  Wishbone/wishbone_pkg.vhd \
  Wishbone/genram_pkg.vhd \
]

set XCI_FILES [concat $XCI_FILES \
   wishbone_memory.xci \
   wishbone_to_wupper_fifo.xci \
   wupper_to_wishbone_fifo.xci \
]
