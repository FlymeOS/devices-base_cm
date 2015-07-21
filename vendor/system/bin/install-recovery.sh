#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11671552 b5b9fba14be49bd0da528673ae3e856b44c41bca 8931328 5a4589d975b213a4b083c25a7e15583254e027ac
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11671552:b5b9fba14be49bd0da528673ae3e856b44c41bca; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8931328:5a4589d975b213a4b083c25a7e15583254e027ac EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b5b9fba14be49bd0da528673ae3e856b44c41bca 11671552 5a4589d975b213a4b083c25a7e15583254e027ac:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
