# N6 ROM & KERNEL With ccache

cd ~/noobbuilds/kernel/moto/shamu
make clean
export ARCH=arm
export CROSS_COMPILE=~/noobbuilds/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
export USE_CCACHE=1
make shamu_defconfig
make -j4
cd ~/noobbuilds
mkdir ~/noobbuilds/device/moto/shamu-kernel
rm ~/noobbuilds/device/moto/shamu-kernel/zImage-dtb
cp ~/noobbuilds/kernel/moto/shamu/arch/arm/boot/zImage-dtb ~/noobbuilds/device/moto/shamu-kernel
source build/envsetup.sh
make clobber
lunch noobbuilds_n6-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
