rm -rf .repo/local_manifests/ hardware/google/pixel/kernel_headers
#local manifest
git clone  https://github.com/OnePlus-Nord4-devs/local_manifests.git --depth 1 -b derp .repo/local_manifests &&
# Sync 
repo sync -j$(nproc --all) --no-tags --no-clone-bundle --current-branch
#build
/opt/crave/resync.sh
source build/envsetup.sh
export BUILD_USERNAME=phhgsi 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=1
export TZ=Asia/india
# Choose a target device 
source build/envsetup.sh
lunch lineage_oscar-userdebug && make installclean && mka bacon

