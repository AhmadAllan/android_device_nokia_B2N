#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

TODO: add this file
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from B2N device
$(call inherit-product, device/nokia/B2N/device.mk)

PRODUCT_BRAND := Nokia
PRODUCT_DEVICE := B2N
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_MODEL := Nokia 7Plus
PRODUCT_NAME := lineage_B2N


PRODUCT_GMS_CLIENTID_BASE := android-nokia

TARGET_VENDOR_PRODUCT_NAME := B2N


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="B2N_00WW 10 QKQ1.190828.002 00WW_4_150 release-keys"

BUILD_FINGERPRINT := Nokia/B2N_00WW/B2N_sprout:10/QKQ1.190828.002/00WW_4_150:user/release-keys
