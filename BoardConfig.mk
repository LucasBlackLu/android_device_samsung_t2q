#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

-include device/samsung/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/t2q

# Assert
TARGET_OTA_ASSERT_DEVICE := t2q

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOARD_NAME := SRPTI01B007 

# Kernel
TARGET_KERNEL_CONFIG := t2q_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Security Patch Level
VENDOR_SECURITY_PATCH := 2025-04-01

# Get non-open-source specific aspects
include vendor/samsung/t2q/BoardConfigVendor.mk
