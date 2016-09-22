# N6P ROM & KERNEL With ccache

cd ~/noobbuilds/kernel/huawei/angler
make clean
export ARCH=arm64
export CROSS_COMPILE=~/noobbuilds/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export USE_CCACHE=1
make angler_defconfig
make -j4
cd ~/noobbuilds
mkdir ~/noobbuilds/device/huawei/angler-kernel
rm ~/noobbuilds/device/huawei/angler-kernel/Image.gz-dtb
cp ~/noobbuilds/kernel/huawei/angler/arch/arm64/boot/Image.gz-dtb ~/noobbuilds/device/huawei/angler-kernel/
source build/envsetup.sh
make clobber
lunch noobbuilds_n6p-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
