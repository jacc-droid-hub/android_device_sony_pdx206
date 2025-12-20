#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from edo-common
-include device/sony/edo-common/PlatformConfig.mk

DEVICE_PATH := device/sony/pdx206

# Crypto
#TARGET_HW_DISK_ENCRYPTION := true

# Kernel
TARGET_KERNEL_CONFIG := kona-bbn_defconfig

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Treble
#BOARD_VNDK_RUNTIME_DISABLE := true

# Inherit from the proprietary version
-include vendor/sony/pdx206/BoardConfigVendor.mk

BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
