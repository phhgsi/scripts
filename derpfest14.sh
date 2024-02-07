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
repo init --depth=1 -u https://github.com/Project-Elixir/manifest -b UNO
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
#git clone https://github.com/phhgsi/scripts.git 
#chmod u+x scripts/sync.sh
#./scripts/sync.sh
