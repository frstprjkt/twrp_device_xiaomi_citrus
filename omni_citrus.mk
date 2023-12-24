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

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_DEVICE := citrus
PRODUCT_NAME := omni_citrus
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2010J19CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="citrus_global-user 11 RKQ1.201004.002 V12.5.10.0.RJFMIXM release-keys"

BUILD_FINGERPRINT := POCO/citrus_global/citrus:11/RKQ1.201004.002/V12.5.10.0.RJFMIXM:user/release-keys
