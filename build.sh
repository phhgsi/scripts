#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
make clean
lunch derp_oscar-user
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation

