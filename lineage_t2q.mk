#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from t2q device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := t2q
PRODUCT_MANUFACTURER := Samsung
PRODUCT_NAME := lineage_t2q
PRODUCT_MODEL := SM-G9960

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="t2qzhx-user 14 UP1A.231005.007 G9960ZHU6FWK7 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/t2qzhx/t2q:11/RP1A.200720.012/G9960ZHU6FWK7:user/release-keys
