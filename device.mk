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

DEVICE_PATH := device/samsung/t2q

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm8350-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/t2q/t2q-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.t2q.rc

