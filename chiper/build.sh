#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch chiper_oscar-user
export TZ=Asia/Dhaka
#make command
mka bacon
# Check build status and display animation
