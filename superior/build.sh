#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch superior_oscar-eng
export TZ=Asia/Dhaka
#make command
mka bacon
# Check build status and display animation
