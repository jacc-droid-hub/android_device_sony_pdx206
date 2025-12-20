#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from edo-common
$(call inherit-product, device/sony/edo-common/edo.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/sony/pdx206/pdx206-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 420

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Using Sony Vendor Camera
PRODUCT_PACKAGES += \
    SemcCameraUI

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# HW crypto
#PRODUCT_PACKAGES += \
#    vendor.qti.hardware.cryptfshw@1.0-service-qti.qsee

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp_RF.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp_RF.conf
