#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_DISABLE_EPPE := true

# Flags
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
TARGET_SUPPORTS_WALLEFFECT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true
BYPASS_CHARGE_SUPPORTED  := false
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Exclude QCOM powerhal manifest
TARGET_PROVIDES_POWERHAL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/raphael/raphael:11/RKQ1.200826.002/V12.5.2.0.RFKMIXM:user/release-keys
