#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixup_remove,
    lib_fixups_user_type,
)

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/samsung/sm8350-common',
    'vendor/samsung/sm8350-common',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/display',
]

blob_fixups: blob_fixups_user_type = {
     ('vendor/lib/hw/com.qti.chi.override.so', 'vendor/lib64/hw/com.qti.chi.override.so'): blob_fixup()
        .binary_regex_replace(b'ro.boot.flash.locked', b'ro.camera.notify_nfc'),
     ('vendor/lib64/nfc_nci_nxpsn.so', 'vendor/lib64/ese_spi_nxp.so'): blob_fixup()
        .add_needed('libbase_shim.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    't2q',
    'samsung',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module, 'sm8350-common', module.vendor
    )
    utils.run()
