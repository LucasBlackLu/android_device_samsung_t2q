#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a23xq
PRODUCT_DEVICE := a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236B
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23xqnsxx-user 14 UP1A.231005.007 A236BXXS9EYA1 release-keys" \
    PRODUCT_DEVICE=a23xq \
    PRODUCT_NAME=a23xqnsxx \
    TARGET_BOOTLOADER_BOARD_NAME=holi \

BUILD_FINGERPRINT := "samsung/a23xqnsxx/qssi:14/UP1A.231005.007/A236BXXS9EYA1:user/release-keys"
