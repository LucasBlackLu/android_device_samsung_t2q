# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Init
PRODUCT_PACKAGES += \
    init.t2q.rc

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResT2q

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/samsung/sm8350-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/t2q/t2q-vendor.mk)
