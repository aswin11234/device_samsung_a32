#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a32 device
$(call inherit-product, device/samsung/a32/device.mk)

PRODUCT_DEVICE := a32
PRODUCT_NAME := twrp_a32
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A325F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a32xx-user 12 SP1A.210812.016 A325FXXU5DWE3 release-keys"

BUILD_FINGERPRINT := samsung/a32xx/a32:12/SP1A.210812.016/A325FXXU5DWE3:user/release-keys
