#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9637888:86d0cdef52c7d5e70bef91d3b74682326b251aeb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8964096:09db075b9954db18baebe5d5daac0d19dd48bb58 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 86d0cdef52c7d5e70bef91d3b74682326b251aeb 9637888 09db075b9954db18baebe5d5daac0d19dd48bb58:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
