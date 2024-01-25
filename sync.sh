#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
#Remove local manifest
rm -rf .repo/local_manifests
#rm -rf device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
#rm -rf kernel/oneplus/sm6375
rm -rf vendor/oneplus/camera
rm -rf vendor/oplus/camera
rm -rf frameworks/base
rm -rf frameworks/av
rm -rf frameworks/native
#Clone trees local manifest
git clone https://github.com/JYRRC/frameworks_base.git frameworks/base
git clone https://github.com/JYRRC/frameworks_av.git frameworks/av
git clone https://github.com/JYRRC/frameworks_native.git frameworks/native
git clone https://github.com/ajaysinghsati/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j16
git clone https://gitlab.com/ajay24ce008/proprietary_vendor_oplus_camera.git vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
