#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/leover/SDK/2018.1/bin:/home/leover/Vivado/2018.1/ids_lite/ISE/bin/lin64:/home/leover/Vivado/2018.1/bin
else
  PATH=/home/leover/SDK/2018.1/bin:/home/leover/Vivado/2018.1/ids_lite/ISE/bin/lin64:/home/leover/Vivado/2018.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/leover/Vivado/2018.1/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/leover/Vivado/2018.1/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/leover/Desktop/Core1990_Verification/projects/core1990_interlaken_verification/core1990_interlaken_verification.runs/clk_40MHz_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log clk_40MHz.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source clk_40MHz.tcl
