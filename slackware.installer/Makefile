# see 
# README.new/README.chip.nextthing
all: uboot-env.bin sunxi-padded-spl
boot.scr: boot.txt
	../u-boot-2016.11/obj/tools/mkimage -A arm -C none -T script -d boot.txt boot.scr

%.scr: %.txt
	../u-boot-2016.11/obj/tools/mkimage -A arm -C none -T script -d $< $@


MKIMAGE=~/chip/u-boot-8d08985.new/obj/tools/mkimage
uInitrd-4.4.11: root
	 ( cd $<; find . | cpio --quiet -o -H newc  > ../initrd-4.4.11 )
	 ${MKIMAGE} -C none -A arm -O linux -T ramdisk -a 0x0 -e 0x0 -n initrd-4.4.11 -d initrd-4.4.11 uInitrd-4.4.11


uImage%: zImage%
	${MKIMAGE} -A arm -O linux -C none  -T kernel -a 0x42000000 -e 0x42000000 -n 'Linux-$*' -d $< $@
