#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

AB_OTA_UPDATER := true

# Inherit from wayne-common
$(call inherit-product, device/xiaomi/wayne-common/wayne.mk)

TODO: 
# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/xiaomi/jasmine_sprout/overlay
  
# Screen density 
PRODUCT_AAPT_CONFIG := normal   
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot anmiation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080
    ##############################################################
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl:64 \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.verity.rc

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/bootdevice/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/bootdevice/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# Wifi
PRODUCT_PACKAGES += \
    JasmineWifiOverlay
TODO: add vedor file
# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/jasmine_sprout/jasmine_sprout-vendor.mk)
