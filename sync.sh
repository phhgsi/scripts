#!/bin/bash
#Remove local manifest
rm -rf .repo/local_manifests
#Clone trees local manifest
git clone https://github.com/ajaysinghsati/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
