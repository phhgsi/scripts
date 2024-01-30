#!/bin/bash
echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
rm -rf .repo
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 14 --git-lfs
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/phhgsi/scripts.git 
chmod u+x scripts/sync.sh
./scripts/sync.sh
