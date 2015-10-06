#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11558912 a74f1513bd88afc80e9f03410901bb5c67db7751 8882176 caf9a91618df239a2ffbd61ba3d0d15f6b7a509d
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11558912:a74f1513bd88afc80e9f03410901bb5c67db7751; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8882176:caf9a91618df239a2ffbd61ba3d0d15f6b7a509d EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery a74f1513bd88afc80e9f03410901bb5c67db7751 11558912 caf9a91618df239a2ffbd61ba3d0d15f6b7a509d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
