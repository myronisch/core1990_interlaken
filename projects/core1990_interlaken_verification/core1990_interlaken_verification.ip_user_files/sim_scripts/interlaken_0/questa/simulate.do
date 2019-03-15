onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib work interlaken_0_opt

do {wave.do}

view wave
view structure
view signals

do {interlaken_0.udo}

run -all

quit -force
