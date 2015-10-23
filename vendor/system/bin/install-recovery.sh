#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11673600 d4bdda0fcf2c90b3c67f4ce57461fd7366ddf129 8933376 a9df7fa3b20ae588650780e928b4a8bf16a6757a
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11673600:d4bdda0fcf2c90b3c67f4ce57461fd7366ddf129; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8933376:a9df7fa3b20ae588650780e928b4a8bf16a6757a EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d4bdda0fcf2c90b3c67f4ce57461fd7366ddf129 11673600 a9df7fa3b20ae588650780e928b4a8bf16a6757a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
