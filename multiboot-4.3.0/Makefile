all: boot.scr uInitrd-4.4.11 uImage-4.4.11
MKIMAGE=~/chip/CHIP-u-boot-nextthing-2015.10-chip/obj/tools/mkimage

boot.scr: boot.txt
	${MKIMAGE} -A arm -C none -T script -d $< $@

# initrd-4.4.11: root
# 	 ( cd $<; find . | cpio --quiet -o -H newc  > ../$@ )

uInitrd-4.4.11: initrd-4.4.11
	 ${MKIMAGE} -C none -A arm -O linux -T ramdisk -a 0x0 -e 0x0 -n $< -d $< $@

uImage%: zImage%
	${MKIMAGE} -A arm -O linux -C none  -T kernel -a 0x42000000 -e 0x42000000 -n 'Linux-$*' -d $< $@

term:
	minicom -D /dev/ttyUSB0 -C capt.log

clean:
	rm -f uInitrd-4.3.0-multiboot boot.scr
