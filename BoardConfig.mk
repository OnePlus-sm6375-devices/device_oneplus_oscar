#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/oscar

# Inherit from sm6375-common
include device/oneplus/sm6375-common/BoardConfigCommon.mk

# Build Broken
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_oneplus_oscar
TARGET_RECOVERY_DEVICE_MODULES := init_oneplus_oscar

# OTA assert
TARGET_OTA_ASSERT_DEVICE := oscar

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/oneplus/oscar/BoardConfigVendor.mk
