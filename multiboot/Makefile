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
