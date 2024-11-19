rm -rf .repo/local_manifests/ hardware/google/pixel/kernel_headers kernel/oneplus/sm8650 kernel/oneplus/sm8650-modules
#local manifest
git clone  https://github.com/OnePlus-Nord4-devs/local_manifests.git --depth 1 -b derp .repo/local_manifests &&
rm -rf device/oneplus/avalon-prebuilt
git clone https://github.com/yaap/device_oneplus_waffle-kernel.git device/oneplus/avalon-prebuilt
# Sync 
repo sync -j$(nproc --all) --no-tags --no-clone-bundle --current-branch
#build
/opt/crave/resync.sh
rm -rf hardware/oplus/KeyHandler
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export SELINUX_IGNORE_NEVERALLOWS=true
export BUILD_USERNAME=phhgsi 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1

export TZ=Asia/india
# Choose a target device 
source build/envsetup.sh
lunch lineage_avalon-ap2a-userdebug && make clean && mka bacon
