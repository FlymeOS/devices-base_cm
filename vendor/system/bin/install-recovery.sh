#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11558912 83c10c7239be3f745dc63c93de8d4a699ede746d 8882176 6a215aa778e32ee94962f73c16aeb01ca22e50f3
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11558912:83c10c7239be3f745dc63c93de8d4a699ede746d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8882176:6a215aa778e32ee94962f73c16aeb01ca22e50f3 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 83c10c7239be3f745dc63c93de8d4a699ede746d 11558912 6a215aa778e32ee94962f73c16aeb01ca22e50f3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
