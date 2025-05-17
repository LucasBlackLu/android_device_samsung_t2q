#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from t2q device
$(call inherit-product, device/samsung/t2q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_t2q
PRODUCT_DEVICE := t2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-9960
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="t2qzhx-user 14 UP1A.231005.007 G9960ZHSBGXJ4 release-keys" \
    PRODUCT_DEVICE=t2q \
    PRODUCT_NAME=t2qzhx \
    TARGET_BOOTLOADER_BOARD_NAME=lahaina \

BUILD_FINGERPRINT := "samsung/t2qzhx/qssi:14/UP1A.231005.007/G9960ZHSBGXJ4:user/release-keys"
