#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11700224 b6a537e3b55c5ac317b5ae8940d80ea9e49648c3 8947712 69a681dcec295bfcde94b051e3a05146ea4aad24
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11700224:b6a537e3b55c5ac317b5ae8940d80ea9e49648c3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8947712:69a681dcec295bfcde94b051e3a05146ea4aad24 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b6a537e3b55c5ac317b5ae8940d80ea9e49648c3 11700224 69a681dcec295bfcde94b051e3a05146ea4aad24:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
