#!/system/bin/sh
[ "$(grep -c corp.google.com /system/build.prop)" -ge "1" ] && /system/xbin/run-parts /system/etc/init.d
