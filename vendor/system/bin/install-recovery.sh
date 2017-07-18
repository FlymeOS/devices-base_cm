#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 16031744 3bbdb76f84d54fbd2a2c84ad61946df580b7e7c0 12746752 06f9c356b601414b283939e216293ba69698b158
fi

if ! applypatch -c EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery:16031744:3bbdb76f84d54fbd2a2c84ad61946df580b7e7c0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/boot:12746752:06f9c356b601414b283939e216293ba69698b158 EMMC:/dev/block/platform/soc.0/f9824900.sdhci/by-name/recovery 3bbdb76f84d54fbd2a2c84ad61946df580b7e7c0 16031744 06f9c356b601414b283939e216293ba69698b158:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
