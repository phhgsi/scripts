#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch derp_oscar-user
export TZ=Asia/Dhaka
#make command
mka derp
# Check build status and display animation
if [ $? -eq 0 ]; then
    echo "Build successful!"
    printf "\e[?25l"  # Hide cursor
    cat <<EOF
        _____
      .'* *.'
     / _  _ \
    |(o|o)| |
      \___/
   Build by Ajay
       with ⚡
 EOF
    figlet -f slant "Lightning Dart"
    printf "\e[?25h"  # Show cursor
else
    echo "Build failed. Please check the logs for errors."
fi
