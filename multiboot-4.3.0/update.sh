set -x
# UBOOT=u-boot-2016.11.hacked
# UBOOT=u-boot-8d08985.new
# UBOOT=u-boot-8d08985
# UBOOT=CHIP-u-boot-nextthing-v2015.07-chip-nand
UBOOT=CHIP-u-boot-nextthing-2015.10-chip
cp ../$UBOOT/obj/spl/sunxi-spl.bin .
# cp ../$UBOOT/obj/u-boot-dtb.bin .
cp ../$UBOOT/obj/arch/arm/dts/sun5i-r8-chip.dtb .

