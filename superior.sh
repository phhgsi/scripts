#!/bin/bash
echo
echo "--------------------------------------"
echo "    Superior extended 14.0 Buildbot   "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
rm -rf .repo
rm -rf *
repo init -u https://github.com/SuperiorExtended/manifest -b UDC --git-lfs
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/phhgsi/scripts.git && chmod u+x scripts/superior/sync.sh && ./scripts/superior/sync.sh
