#!/bin/bash

rm -rf .repo
rm -rf *
repo init -u https://github.com/DerpFest-AOSP/manifest.git -b 14 --git-lfs
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
./scripts/sync.sh
