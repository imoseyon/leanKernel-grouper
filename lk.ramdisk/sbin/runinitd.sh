#!/sbin/bb/busybox ash
[[ `grep -c corp.google.com /system/build.prop` -ge 1 ]] && /sbin/bb/busybox run-parts /system/etc/init.d
