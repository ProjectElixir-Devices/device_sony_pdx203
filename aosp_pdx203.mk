#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Extras
ifneq ($(wildcard vendor/sony/extra),)
TARGET_USES_EXTRAS_DOLBY := true
TARGET_USES_EXTRAS_CAMERAAPPS := true
endif

# Project-Elixir Flags
IS_PHONE := true
TARGET_SUPPORTS_QUICK_TAP := true
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := Elixir
BUILD_HOSTNAME := Elixir
TARGET_USES_AOSP_RECOVERY := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_FULL_GAPPS := false
TARGET_USES_PICO_GAPPS := true
EXCLUDE_LAWNCHAIR := true

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := aosp_pdx203
PRODUCT_DEVICE := pdx203
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AT52

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=XQ-AT52 \
    TARGET_PRODUCT=XQ-AT52 \
    PRIVATE_BUILD_DESC="XQ-AT52-user 12 58.2.A.7.93 058002A007009304241360111 release-keys"

BUILD_FINGERPRINT := Sony/XQ-AT52/XQ-AT52:12/58.2.A.7.93/058002A007009304241360111:user/release-keys
