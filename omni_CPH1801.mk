#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from CPH1801 device
$(call inherit-product, device/oppo/CPH1801/device.mk)

PRODUCT_DEVICE := CPH1801
PRODUCT_NAME := omni_CPH1801
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1801
PRODUCT_MANUFACTURER := oppo

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 7.1.1 NMF26F eng.root.20171230.225856 release-keys"

BUILD_FINGERPRINT := Android/msm8953_64/msm8953_64:7.1.1/NMF26F/root12302258:user/release-keys
