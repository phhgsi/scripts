#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
#Remove local manifest
rm -rf .repo/local_manifests
#rm -rf device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
#rm -rf kernel/oneplus/sm6375
rm -rf vendor/oneplus/camera
rm -rf vendor/oplus/camera
rm -rf frameworks/base
rm -rf frameworks/av
rm -rf frameworks/native
#Clone trees local manifest
git clone https://github.com/ajaysinghsati/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j16
git clone https://github.com/DerpFest-AOSP/frameworks_base.git frameworks/base
git clone https://github.com/DerpFest-AOSP/frameworks_av.git frameworks/av
git clone https://github.com/DerpFest-AOSP/frameworks_native.git frameworks/native
cd frameworks/native
git fetch origin 1 https://github.com/JYRRC/frameworks_native.git
git cherry-pick 7ea06ee6fa20bf68ce44fbdca6808b81e865b655 323efa4418074fedea7dbbe9d1e219fef2359816 7e938f42803c4cdd5c599ea9dbe38cb625d65f96
cd ..
cd ..
cd frameworks/base
git fetch origin 2 https://github.com/JYRRC/frameworks_base.git
git check-pick 9c4cf5509673de7007ee3db080d6a1b10f721a90 fec00c051fbd1fb178b27462314cafc2d5ca11d7 b0e3597002e7c91179636edca5af10ae56cae958 20fcc638cd946a47bfd28d734789cda76dae2abc 0369468e2074060aa30a5ec745315f4ed3d374c5 0c56a6278ed0845e94e8977815bb145c404447eb d5dc436dda6786235bacfc49381cb288fd04f018 9f2e763d9149238765fc07e70e2f4bec1742055c 832557bfaa47dbe781d0f3890e35a72b00ead29d 48eb5349d88e267fc40fb5f547af522538a65f52 1750a95e8f23be96d03732aac7e9083567a752ca 19b982bf57d52e2957f21b079f34f580f0d46496 ca5e6e9e9a1e69a176e19758cbdf6d9d59c4ca87 72da39007e0b3300915ae191983824361adf2808 838a8e6bf82dc40b508f6e76228209627ad04a4f 39984942f2e83bfa72deef0726ada30a8651aee8
cd ..
cd ..

git clone https://gitlab.com/ajay24ce008/proprietary_vendor_oplus_camera.git vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
