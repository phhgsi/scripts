rm -rf .repo/local_manifests/ hardware/google/pixel/kernel_headers kernel/oneplus/sm8650 kernel/oneplus/sm8650-modules
#yaap repo
repo init -u https://github.com/yaap/manifest.git -b fifteen --git-lfs
#local manifest
git clone  https://github.com/OnePlus-Nord4-devs/local_manifests.git --depth 1 -b derp .repo/local_manifests &&
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
lunch yaap_avalon-userdebug && make clean && m yaap
