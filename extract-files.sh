#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
	vendor/lib64/hw/camera.qcom.so)
	    sed -i 's/ro.boot.flash.locked/ro.camera.notify_nfc/g' "${2}"
	    ;;
        vendor/lib64/hw/com.qti.chi.override.so)
            xxd -p "${2}" | tr -d \\n > "${2}".hex
            # NOP CONNECT_RILD
            sed -i "s/800640f92f79009480010034a2dbffb0c3ddffd0a5dcfff0e603002a/1f2003d51f2003d51f2003d51f2003d51f2003d51f2003d51f2003d5/g" "${2}".hex
            sed -i "s/428c279163741491a5ac2691a4118052e0031f2a210080528dfeff97800640f9/1f2003d51f2003d51f2003d51f2003d51f2003d51f2003d51f2003d5800640f9/g" "${2}".hex
            xxd -r -p "${2}".hex > "${2}"
            rm "${2}".hex
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=a52sxq
export DEVICE_COMMON=sm7325-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
