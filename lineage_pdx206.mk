#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

IS_PHONE := true

PRODUCT_NAME := lineage_pdx206
PRODUCT_DEVICE := pdx206
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 5 II

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

TARGET_VENDOR_PRODUCT_NAME := pdx206

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=XQ-AS72 \
    TARGET_PRODUCT=XQ-AS72 \
    PRIVATE_BUILD_DESC="Sony/pdx206/pdx2062 10 QKQ1.200108.002 1:user release-keys"
# These build names might need to be updated? They do not match xz2c.
BUILD_FINGERPRINT := Sony/pdx206/pdx206:10/QKQ1.200108.002/1:user/release-keys
