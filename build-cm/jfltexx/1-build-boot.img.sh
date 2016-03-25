#!/bin/sh

## Do the needed changes

# cd /data/android/system/kernel/samsung/jf

## make ARCH=arm YOURDEFCONFIG VARIANT_DEFCONFIG=YOURVARIANTDEFCONFIG SELINUX_DEFCONFIG=selinux_defconfig

# make ARCH=arm cyanogen_jf_defconfig SELINUX_DEFCONFIG=selinux_defconfig
# make ARCH=arm menuconfig

##################################
# cp ../../samsung/jf/arch/arm/configs/cyanogen_jf_defconfig ../../samsung/jf/arch/arm/configs/cyanogen_jf_defconfig.BAK
# cp .config ../../samsung/jf/arch/arm/configs/cyanogen_jf_defconfig

cd /data/android/system/kernel/samsung/jf
make mrproper

cd /data/android/system/
mka bootimage

