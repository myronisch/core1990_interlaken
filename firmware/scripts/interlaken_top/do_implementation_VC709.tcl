source ../helper/do_implementation_pre.tcl

#set STOP_TO_ADD_ILA to 1 in order to stop after synthesis phase and add an ILA
set STOP_TO_ADD_ILA 0

set GBT_NUM 4
set OPTO_TRX 4
set CARD_TYPE 709
set app_clk_freq 156
set ENDPOINTS 1
set GTFEFCLKS 1


set PLL_SEL $CPLL

#set to false to use TTCfx3 (Si5345) refclk, true for onboard Si5324.
#set USE_Si5324_RefCLK true

#determine the FIRMWARE_MODE register value
# 0: GBT mode
# 1: FULL mode                                      
# 2: LTDB mode (GBT mode with only IC and TTC links)
# 3: FE-I4B mode
set FIRMWARE_MODE 0

source ../helper/do_implementation_post.tcl
