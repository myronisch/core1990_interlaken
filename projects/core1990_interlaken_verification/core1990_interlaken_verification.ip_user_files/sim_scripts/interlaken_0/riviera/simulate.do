onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+interlaken_0 -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_7_3 -L work -L interlaken_v2_4_0 -L unisims_ver -L unimacro_ver -L secureip -O5 work.interlaken_0 work.glbl

do {wave.do}

view wave
view structure

do {interlaken_0.udo}

run -all

endsim

quit -force
