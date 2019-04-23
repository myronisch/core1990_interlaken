KERNEL_VERSION := $(shell uname -r)
KERNEL_MODLIB  := /lib/modules/$(KERNEL_VERSION)
KERNEL_SOURCES := $(shell test -d $(KERNEL_MODLIB)/source && echo $(KERNEL_MODLIB)/source || echo $(KERNEL_MODLIB)/build)

CPPFLAGS      += -I$(PWD)/../wupper -I$(PWD)/.. -DBUILD_64_BIT -DCOMPILE_DRIVER -DDONT_USE_BPA -DDRIVER_ERROR -DDRIVER_DEBUG -DRELEASE_NAME=\"${RELEASE_NAME}\" -DCVSTAG=\"$(CVSTAG)\"
EXTRA_CFLAGS  := -I$(PWD)/../wupper -I$(PWD)/.. -DBUILD_64_BIT -DCOMPILE_DRIVER -DDONT_USE_BPA -DDRIVER_ERROR -DDRIVER_DEBUG -DRELEASE_NAME=\"${RELEASE_NAME}\" -DCVSTAG=\"$(CVSTAG)\" -DCMEM_RCC_TAG=\"$(CMEM_RCC_TAG)\" -DWUPPER_TAG=\"$(WUPPER_TAG)\" 

RELEASE_NAME := "wupper_2.0.0"
CVSTAG       := "undefined"
WUPPER_TAG   := "2.0.0"
CMEM_RCC_TAG := "2.0.0"


obj-m   := cmem_rcc.o wupper.o
KDIR	:= $(KERNEL_SOURCES)
PWD	:= $(shell pwd)
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) RELEASE_NAME="\"$(RELEASE_NAME)\"" CVSTAG="\"$(CVSTAG)\"" WUPPER_TAG="\"$(WUPPER_TAG)\"" CMEM_RCC_TAG="\"$(CMEM_RCC_TAG)\"" modules
	mkdir -p ../drivers 
	mv cmem_rcc.ko ../drivers/
	mv wupper.ko ../drivers/
clean:
	$(RM) -r *.ko.unsigned *.mod.c *.mod.o *.o modules.order Module.symvers .cmem_rcc* .tmp_versions .wupper.ko.cmd .wupper.mod.o.cmd .wupper.o.cmd



