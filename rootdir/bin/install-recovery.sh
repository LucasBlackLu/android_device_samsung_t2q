#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery$(getprop ro.boot.slot_suffix):81788928:ca72786a6a850c4d63b9d4ee0cbed62c05b3bb60; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot$(getprop ro.boot.slot_suffix):100663296:2f99f0bb6e99e0a30d7b8ea9daa78b7d2bc2d9a4 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery$(getprop ro.boot.slot_suffix):81788928:ca72786a6a850c4d63b9d4ee0cbed62c05b3bb60 && \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (/vendor/bin/log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  /vendor/bin/log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

