onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+RX_FIFO -L xil_defaultlib -L xpm -L fifo_generator_v13_2_2 -L work -L unisims_ver -L unimacro_ver -L secureip -O5 work.RX_FIFO work.glbl

do {wave.do}

view wave
view structure

do {RX_FIFO.udo}

run -all

endsim

quit -force
