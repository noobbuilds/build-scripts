# N9 ROM & KERNEL With ccache

cd ~/noobbuilds/kernel/htc/flounder
make clean
export ARCH=arm64
export CROSS_COMPILE=~/noobbuilds/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export USE_CCACHE=1
make flounder_defconfig
make -j4
cd ~/noobbuilds
mkdir ~/noobbuilds/device/htc/flounder-kernel
rm ~/noobbuilds/device/htc/flounder-kernel/Image.gz-dtb
cp ~/noobbuilds/kernel/htc/flounder/arch/arm64/boot/Image.gz-dtb ~/noobbuilds/device/htc/flounder-kernel
source build/envsetup.sh
export USE_NINJA=false
make clobber
lunch noobbuilds_n9-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
