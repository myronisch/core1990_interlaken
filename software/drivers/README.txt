## build the drivers:

$ cd src
$ make

## load the drivers:

$ cd script
$ chmod 775 drivers_wupper_local
$ sudo ./drivers_wupper_local start

## autostart the drivers at boottime:

modify the drivers_wupper_local script to make it point to /lib/modules/daq and copy it as drivers_wupper to /etc/init.d. 
In /etc/rc.d/rc.local it is specified that the script is to be run after booting of the machine is complete

## content of the drivers_rcc folder:

.
├── cmem_rcc
│   ├── cmem_rcc_common.h
│   ├── cmem_rcc_drv.h
│   └── cmem_rcc.h
├── drivers
├── wupper
│   └── wupper_common.h
├── README.txt
├── script
│   └── drivers_wupper
│   └── drivers_wupper_local
└── src
    ├── cmem_rcc.c
    ├── wupper.c
    └── Makefile

