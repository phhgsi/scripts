#!/bin/bash
echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
rm -rf .repo
rm -rf *
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 14 --git-lfs
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
#Remove local manifest
rm -rf .repo/local_manifests
#Clone trees local manifest
git clone https://github.com/ajaysinghsati/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
#remove rm -rf hardware/google/pixel/kernel_headers
rm -rf hardware/google/pixel/kernel_headers
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
