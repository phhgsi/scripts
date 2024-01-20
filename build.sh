#!/bin/bash
#envsetup
source build/envsetup.sh
make clean
# lunch command 
lunch derp_oscar-user
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation

