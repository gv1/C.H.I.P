export PATH=~/chip/sunxi-tools:$PATH
set -x
fel -v spl sunxi-spl.bin
sleep 1
fel -v write 0x4a000000 u-boot-2015.10-00003-dtb.bin
fel -v -p write 0x42000000 uImage-4.3.0 
fel -v write 0x43000000 sun5i-r8-chip.dtb
fel -v -p write 0x43300000 uInitrd.img-4.3.0-ntc
fel -v write 0x43100000 boot.scr
fel -v exe 0x4a000000
