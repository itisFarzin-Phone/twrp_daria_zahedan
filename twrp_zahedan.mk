#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from zahedan device
$(call inherit-product, device/daria/zahedan/device.mk)

PRODUCT_DEVICE := zahedan
PRODUCT_NAME := twrp_zahedan
PRODUCT_BRAND := Daria
PRODUCT_MODEL := DM-B50104
PRODUCT_MANUFACTURER := daria

PRODUCT_GMS_CLIENTID_BASE := android-jimi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zahedan-user 14 UQ1A.240205.004 V5.22.2.3.BOND release-keys"

BUILD_FINGERPRINT := Daria/zahedan/zahedan:14/UQ1A.240205.004/V5.22.2.3.BOND:user/release-keys
