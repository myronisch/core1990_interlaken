#some defaults:

set STOP_TO_ADD_ILA 0

set GENERATE_FM_WRAP false
set GENERATE_GBT true
set GBT_MAPPING 0

set generate_IC_EC_TTC_only false
set includeDirectMode false
set GENERATE_FEI4B false
set GENERATE_TRUNCATION_MECHANISM true
set useToHostGBTdataEmulator true
set useToFrontendGBTdataEmulator true

set NUMBER_OF_INTERRUPTS 8
set NUMBER_OF_DESCRIPTORS 2
set GBT_MAPPING 1 
set debug_mode false
set wideMode false
set CREnableFromHost true

set GBT_NUM 24
set OPTO_TRX 4
set FE_EMU_EN 0

# Defining the Egroup's capabilities
# ToHost - Egroup 0
set EnableToHo_Egroup0Eproc2_HDLC   true 
set EnableToHo_Egroup0Eproc2_8b10b  true
set EnableToHo_Egroup0Eproc4_8b10b  true
set EnableToHo_Egroup0Eproc8_8b10b  true
set EnableToHo_Egroup0Eproc16_8b10b false
# ToHost - Egroup 1
set EnableToHo_Egroup1Eproc2_HDLC   true
set EnableToHo_Egroup1Eproc2_8b10b  true
set EnableToHo_Egroup1Eproc4_8b10b  true
set EnableToHo_Egroup1Eproc8_8b10b  true
set EnableToHo_Egroup1Eproc16_8b10b false
# ToHost - Egroup 2
set EnableToHo_Egroup2Eproc2_HDLC   true
set EnableToHo_Egroup2Eproc2_8b10b  true
set EnableToHo_Egroup2Eproc4_8b10b  true
set EnableToHo_Egroup2Eproc8_8b10b  true
set EnableToHo_Egroup2Eproc16_8b10b false
# ToHost - Egroup 3
set EnableToHo_Egroup3Eproc2_HDLC   true
set EnableToHo_Egroup3Eproc2_8b10b  true
set EnableToHo_Egroup3Eproc4_8b10b  true 
set EnableToHo_Egroup3Eproc8_8b10b  true
set EnableToHo_Egroup3Eproc16_8b10b false
# ToHost - Egroup 4
set EnableToHo_Egroup4Eproc2_HDLC   true
set EnableToHo_Egroup4Eproc2_8b10b  true
set EnableToHo_Egroup4Eproc4_8b10b  true
set EnableToHo_Egroup4Eproc8_8b10b  true
set EnableToHo_Egroup4Eproc16_8b10b false

# FromHost - Egroup 0
set EnableFrHo_Egroup0Eproc2_HDLC   true 
set EnableFrHo_Egroup0Eproc2_8b10b  true
set EnableFrHo_Egroup0Eproc4_8b10b  true
set EnableFrHo_Egroup0Eproc8_8b10b  true
# FromHost - Egroup 1
set EnableFrHo_Egroup1Eproc2_HDLC   true
set EnableFrHo_Egroup1Eproc2_8b10b  true
set EnableFrHo_Egroup1Eproc4_8b10b  true
set EnableFrHo_Egroup1Eproc8_8b10b  true
# FromHost - Egroup 2
set EnableFrHo_Egroup2Eproc2_HDLC   true
set EnableFrHo_Egroup2Eproc2_8b10b  true
set EnableFrHo_Egroup2Eproc4_8b10b  true
set EnableFrHo_Egroup2Eproc8_8b10b  true
# FromHost - Egroup 3
set EnableFrHo_Egroup3Eproc2_HDLC   true
set EnableFrHo_Egroup3Eproc2_8b10b  true 
set EnableFrHo_Egroup3Eproc4_8b10b  true
set EnableFrHo_Egroup3Eproc8_8b10b  true
# FromHost - Egroup 4
set EnableFrHo_Egroup4Eproc2_HDLC   true
set EnableFrHo_Egroup4Eproc2_8b10b  true
set EnableFrHo_Egroup4Eproc4_8b10b  true
set EnableFrHo_Egroup4Eproc8_8b10b  true
# Per channe timeout value expressed in n_bits at 40 MHz
set toHostTimeoutBitn 16

## TTC settings
# -- generate TTC data emulator
# true: switches the source of the TTC data to be a 10-bit counter 
set generateTTCemu true
# -- TTC test mode
# true: initializes configuration registers to TTC loopback test
set TTC_test_mode false


#set to false to use TTCfx3 (Si5345) refclk, true for onboard Si5324.
set USE_Si5324_RefCLK false

set GREFCLK "1'h1"
set MGTREFCLK  "1'h0"

## GBT Wrapper generics
# -- set the MGTREFCLOCK
#set GTHREFCLK_SEL $GREFCLK
set GTHREFCLK_SEL $MGTREFCLK

set CPLL "1'h0"
set QPLL "1'h1"

set PLL_SEL $QPLL


set use_backup_clk true
set automatic_clock_switch true

set PCIE_LANES 8
set DATA_WIDTH 256

set NUM_LEDS 8
#Number of PCIe endpoints in the design (Set to 2 for BNL711 / BNL712)
set ENDPOINTS 1


set GTREFCLKS 2