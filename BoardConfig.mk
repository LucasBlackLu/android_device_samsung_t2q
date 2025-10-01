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

# Display
TARGET_SCREEN_DENSITY := 640

# Kernel
TARGET_KERNEL_CONFIG := t2q_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security Patch Level
VENDOR_SECURITY_PATCH := 2025-04-01

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Wi-Fi
BOARD_WLAN_BCMDHD_SAE                         := true
BOARD_WLAN_DEVICE                             := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER                   := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB              := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                          := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                     := lib_driver_cmd_bcmdhd
CONFIG_IEEE80211AX                            := true
WIFI_AVOID_IFACE_RESET_MAC_CHANGE             := true
WIFI_FEATURE_HOSTAPD_11AX                     := true
WIFI_HIDL_FEATURE_AWARE                       := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE              := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION                        := VER_0_8_X

# Get non-open-source specific aspects
include vendor/samsung/t2q/BoardConfigVendor.mk
