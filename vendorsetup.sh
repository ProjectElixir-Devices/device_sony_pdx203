#!/bin/bash
echo 'Start Cloning Repos For pdx203'

echo 'Cloning Device Vendor Tree [1/6]'
# Proprietary blobs
rm -rf vendor/sony/pdx203
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_pdx203 -b fourteen vendor/sony/pdx203

echo 'Cloning Vendor Extras [2/6]'
# Dolby/Sony Camera Pro apps
rm -rf vendor/sony/extra
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_extra -b fourteen vendor/sony/extra

echo 'Cloning Kernel Source [3/6]'
# Kernel source
rm -rf kernel/sony/sm8250
git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_sony_sm8250.git -b fourteen kernel/sony/sm8250

echo 'Cloning Hardware Repo [4/6]'
# Hardware repo
rm -rf hardware/sony
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware_sony -b fourteen hardware/sony

echo 'Cloning Common Tree [5/6]'
# Common repo
rm -rf device/sony/sm8250-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_sony_sm8250-common -b fourteen device/sony/sm8250-common

echo 'Cloning Common Vendor Tree [6/6]'
# Common vendor
rm -rf vendor/sony/sm8250-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_sony_sm8250-common -b fourteen vendor/sony/sm8250-common

echo "Done"
