#
# SPDX-FileCopyrightText: The LineageOS Project
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
PRODUCT_MODEL := SM-G9960
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Vendor Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="t2qzhx-user 15 AP3A.240905.015.A2 G9960ZHUBHYD9 release-keys" \
    BuildFingerprint="samsung/t2qzhx/qssi:15/AP3A.240905.015.A2/G9960ZHUBHYD9:user/release-keys"
