#!/bin/bash
#envsetup
source build/envsetup.sh
make clean 
# lunch command 
lunch afterlife_oscar-user
export TZ=Asia/Dhaka
#make command
m afterlife -j$
# Check build status and display animation

