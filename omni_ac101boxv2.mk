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

# Inherit from ac101boxv2 device
$(call inherit-product, device/archos/ac101boxv2/device.mk)

PRODUCT_DEVICE := ac101boxv2
PRODUCT_NAME := omni_ac101boxv2
PRODUCT_BRAND := bush
PRODUCT_MODEL := BUSH SPIRA B3 10 TABLET
PRODUCT_MANUFACTURER := archos

PRODUCT_GMS_CLIENTID_BASE := alps-full_K9710-{country}

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_K9710-user 7.0 NRD90M 1498442220 release-keys"

BUILD_FINGERPRINT := Bush/full_K9710/K9710:7.0/NRD90M/1498442220:user/release-keys
