#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch evolution_oscar-userdebug
export TZ=Asia/Dhaka
#make command
m evolution
# Check build status and display animation

