#!/sbin/bb/busybox ash

# enable init.d and daemonsu support for stock ROM
[[ `grep -c corp.google.com /system/build.prop` -ge 1 ]] && /sbin/bb/busybox run-parts /system/etc/init.d
[ -f "/system/xbin/daemonsu" ] && /system/xbin/daemonsu --auto-daemon &
