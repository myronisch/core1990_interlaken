onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_3 -L work -L interlaken_v2_4_0 -L unisims_ver -L unimacro_ver -L secureip -lib work work.interlaken_0 work.glbl

do {wave.do}

view wave
view structure
view signals

do {interlaken_0.udo}

run -all

quit -force
