#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10629120 61e53e1bcb1c740adeeb9525d21417c2bdee177b 8361984 75da5ea0615f5f1b5ecdf2c4344dcb6230f7ed4e
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:10629120:61e53e1bcb1c740adeeb9525d21417c2bdee177b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:8361984:75da5ea0615f5f1b5ecdf2c4344dcb6230f7ed4e EMMC:/dev/block/bootdevice/by-name/recovery 61e53e1bcb1c740adeeb9525d21417c2bdee177b 10629120 75da5ea0615f5f1b5ecdf2c4344dcb6230f7ed4e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
