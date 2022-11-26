#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a52sxq

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a52sxq/a52sxq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.a52sxq.rc

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Fingerprint
PRODUCT_PACKAGES += \
    SamsungUdfpsHandler.a52sxq

# Recovery modules and firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_cmd.ko:root/vendor/lib/modules/sec_cmd.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_common_fn.ko:root/vendor/lib/modules/sec_common_fn.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_secure_touch.ko:root/vendor/lib/modules/sec_secure_touch.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tclm_v2.ko:root/vendor/lib/modules/sec_tclm_v2.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tsp_dumpkey.ko:root/vendor/lib/modules/sec_tsp_dumpkey.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tsp_log.ko:root/vendor/lib/modules/sec_tsp_log.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/stm_ts.ko:root/vendor/lib/modules/stm_ts.ko \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/tsp_stm/fts5cu56a_a52sxq.bin:root/vendor/firmware/tsp_stm/fts5cu56a_a52sxq.bin

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

PRODUCT_PACKAGES += \
    sensors.samsung_sm7325
