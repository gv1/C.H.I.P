export PATH=../sunxi-tools:$PATH
set -x
fel -v spl sunxi-spl.bin
sleep 1
fel -v write 0x4a000000 u-boot-dtb.bin
fel -v -p write 0x42000000 uImage-4.4.11 
fel -v write 0x43000000 sun5i-r8-chip.dtb
fel -v write 0x43100000 boot.scr
fel -v -p write 0x43300000 uInitrd-4.4.11
fel -v exe 0x4a000000
