#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11798528 6babbaee42c3842887de4c35167438284959f05f 7061504 15fbc0aa98e78fef389926872d206fd7ef863889
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:11798528:6babbaee42c3842887de4c35167438284959f05f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7061504:15fbc0aa98e78fef389926872d206fd7ef863889 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6babbaee42c3842887de4c35167438284959f05f 11798528 15fbc0aa98e78fef389926872d206fd7ef863889:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
