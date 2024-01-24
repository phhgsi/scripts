#!/bin/bash
#rm -rf kernel/oneplus/ivan
#rm -rf device/oneplus/ivan
#rm -rf vendor/oneplus/ivan
#git clone https://github.com/phhgsi/device_oneplus_ivan.git device/oneplus/ivan
#git clone https://github.com/phhgsi/vendor_oneplus_ivan.git vendor/oneplus/ivan
#git clone https://github.com/oneplus-mt6877/android_kernel_oneplus_ivan_4.14.git -b main kernel/oneplus/ivan
rm -rf hardware/oplus/hidl/touch
#envsetup
source build/envsetup.sh
# lunch command 
lunch derp_ivan-userdebug
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation
