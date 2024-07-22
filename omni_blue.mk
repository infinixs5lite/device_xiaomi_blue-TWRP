#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from blue device
$(call inherit-product, device/xiaomi/blue/device.mk)

PRODUCT_DEVICE := blue
PRODUCT_NAME := omni_blue
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := blue
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_blue-user 12 SP1A.210812.016 V816.0.4.0.UGRMIXM release-keys"

BUILD_FINGERPRINT := Redmi/blue_global/blue:12/SP1A.210812.016/V816.0.4.0.UGRMIXM:user/release-keys
