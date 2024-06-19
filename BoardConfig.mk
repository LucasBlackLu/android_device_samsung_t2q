#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/samsung/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/t2q

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel config
TARGET_KERNEL_CONFIG        := vendor/t2q_chn_hkx_defconfig
BOARD_NAME                  := SRPTI01B007

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

# OTA assert
TARGET_OTA_ASSERT_DEVICE := t2q

# Recovery
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
