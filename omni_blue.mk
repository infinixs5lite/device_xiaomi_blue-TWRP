#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common pbrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from blue device
$(call inherit-product, device/xiaomi/blue/device.mk)

PRODUCT_DEVICE := blue
PRODUCT_NAME := omni_blue
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi A3
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := blue

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
