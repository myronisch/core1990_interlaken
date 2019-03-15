onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib work clk_40MHz_opt

do {wave.do}

view wave
view structure
view signals

do {clk_40MHz.udo}

run -all

quit -force
