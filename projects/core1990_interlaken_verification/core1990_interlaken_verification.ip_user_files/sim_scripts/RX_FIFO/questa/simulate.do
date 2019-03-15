onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib work RX_FIFO_opt

do {wave.do}

view wave
view structure
view signals

do {RX_FIFO.udo}

run -all

quit -force
