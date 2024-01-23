#!/bin/bash
git clone https://github.com/phhgsi/device_oneplus_ivan.git device/oneplus/ivan
#envsetup
source build/envsetup.sh
# lunch command 
lunch derp_ivan-userdebug
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation
