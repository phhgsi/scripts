#!/bin/bash
rm -rf device/oneplus/ivan
git clone https://github.com/phhgsi/device_oneplus_ivan.git device/oneplus/ivan
rm -rf hardware/oplus/hidl/touch
#envsetup
source build/envsetup.sh
# lunch command 
lunch derp_ivan-userdebug
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation
