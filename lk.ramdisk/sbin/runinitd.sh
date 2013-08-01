#!/sbin/bb/busybox ash

# enable init.d and daemonsu support for stock ROM
if [[ `grep -c corp.google.com /system/build.prop` -ge 1 ]]; then
  /sbin/bb/busybox run-parts /system/etc/init.d
  /system/xbin/daemonsu --auto-daemon &
fi

