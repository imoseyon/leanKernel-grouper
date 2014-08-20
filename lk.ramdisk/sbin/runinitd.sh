#!/sbin/bb/busybox ash
#
# replace (u)random with erandom
#
rm -f /dev/urandom
ln -s /dev/erandom /dev/urandom
rm -f /dev/random
ln -s /dev/erandom /dev/random

# enable init.d and daemonsu support for stock ROM
[[ `grep -c corp.google.com /system/build.prop` -ge 1 ]] && /sbin/bb/busybox run-parts /system/etc/init.d
[ -f "/system/xbin/daemonsu" ] && /system/xbin/daemonsu --auto-daemon &
