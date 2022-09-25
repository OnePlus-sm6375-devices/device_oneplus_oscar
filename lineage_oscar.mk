#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oscar device
$(call inherit-product, device/oneplus/oscar/device.mk)

PRODUCT_NAME := lineage_oscar
PRODUCT_DEVICE := oscar
PRODUCT_MANUFACTURER := Oneplus
PRODUCT_BRAND := Oneplus
PRODUCT_MODEL := OnePlus Nord CE2 Lite 5G

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=" 12 CPH2381_11_A.01_220810 1660126191971 release-keys"

BUILD_FINGERPRINT := OnePlus/CPH2381/OP535DL1:12/RKQ1.211119.001/S.202208101814:user/release-keys
