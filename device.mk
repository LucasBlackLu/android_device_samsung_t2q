#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Display
TARGET_SCREEN_HEIGHT := 2408
TARGET_SCREEN_WIDTH := 1080

# Inherit Common Device Tree
$(call inherit-product, device/samsung/sm6375-common/common.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a23xq/a23xq-vendor.mk)
