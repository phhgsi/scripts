#!/bin/bash
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/phhgsi/scripts.git && chmod u+x scripts/chiper/sync.sh && ./scripts/chiper/sync.sh
