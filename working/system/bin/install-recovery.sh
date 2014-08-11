#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9637888:db8e88b7f5ac0eb211cbe98aca966fd364fb5839; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8964096:58a1be49e121a6417722ab2b34181ff79b08bb72 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery db8e88b7f5ac0eb211cbe98aca966fd364fb5839 9637888 58a1be49e121a6417722ab2b34181ff79b08bb72:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
