MKIMAGE=~/chip/u-boot-8d08985.new/obj/tools/mkimage
boot.scr: boot.txt
	${MKIMAGE} -A arm -C none -T script -d $< $@

uInitrd-4.4.11-multiboot: initrd-4.4.11-multiboot
	 ${MKIMAGE} -C none -A arm -O linux -T ramdisk -a 0x0 -e 0x0 -n $< -d $< $@

uImage%: zImage%
	${MKIMAGE} -A arm -O linux -C none  -T kernel -a 0x42000000 -e 0x42000000 -n 'Linux-$*' -d $< $@

term:
	minicom -D /dev/ttyUSB0 -C capt.log

clean:
	rm -f uImage-4.4.11-multiboot uInitrd-4.4.11-multiboot boot.scr

# http://www.chip-community.org/index.php/Bootstrapping_A_Distro_For_C.H.I.P
# Bootstrapping A Distro For C.H.I.P
rootfs.ubi: rootfs
	tar xf rootfs.tgz
	mkfs.ubifs -d rootfs -o rootfs.ubifs -e 0x1f8000 -c 2000 -m 0x4000 -x lzo 
	ubinize -o rootfs.ubi -m 0x4000 -p 0x200000 -s 16384 ubinize.cfg


# also require zImage and all that stuff 
flash:
	BUILDROOT_OUTPUT_DIR=.	
	chip-fel-flash.sh		


# connect:
	# If everything goes right (and I didn't muck anything up in these 
	# instructions) you should now have Alpine booting after it flashes!  
	# Connect to your C.H.I.P. the same way you did originally when it 
	# was running Debian.  # On Ubuntu
#	sudo screen /dev/ttyACM0 115200

