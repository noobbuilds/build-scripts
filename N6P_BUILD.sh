# N6P ROM

source build/envsetup.sh
make clobber
lunch noobbuilds_n6p-userdebug
export USE_CCACHE=1
make -j `getconf _NPROCESSORS_ONLN` otapackage
