#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
rm -rf device/oneplus/oscar
git clone https://github.com/derpfestoscar/device_oneplus_oscar.git device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
git clone https://github.com/phhgsi/device_oneplus_sm6375-common.git device/oneplus/sm6375-common
rm -rf kernel/oneplus/sm6375
git clone https://github.com/phhgsi/android_kernel_oneplus_sm6375.git -b holi-larry kernel/oneplus/sm6375
rm -rf vendor/oneplus/oscar
git clone https://github.com/phhgsi/vendor_oneplus_oscar.git -b fourteen vendor/oneplus/oscar
rm -rf vendor/oneplus/sm6375-common
git clone https://github.com/phhgsi/vendor_oneplus_sm6375-common.git -b fourteen vendor/oneplus/sm6375-common
rm -rf hardware/oplus
git clone https://github.com/PixelOS-Devices/hardware_oplus.git -b fourteen-holi hardware/oplus
rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
git clone https://gitlab.com/ImSurajxD/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d
rm -rf vendor/oplus/lib
#git clone https://github.com/phhgsi/oplus_lib.git vendor/oplus/lib
rm -rf vendor/oplus/camera
#git clone https://gitlab.com/ajay24ce008/proprietary_vendor_oplus_camera.git -b lineage-21-op12 vendor/oplus/camera
rm -rf prebuilts/derp
git clone https://github.com/derpfestoscar/prebuilts_derp.git prebuilts/derp

#git clone https://github.com/DerpFest-AOSP/frameworks_base.git frameworks/base
#git clone https://github.com/DerpFest-AOSP/frameworks_av.git frameworks/av
#git clone https://github.com/DerpFest-AOSP/frameworks_native.git frameworks/native
#git clone https://gitlab.com/rk134/proprietary_vendor_oplus_camera.git vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
