#!/bin/sh
if [ "$(id -u)" = "0" ]; then
ulimit -c unlimited
echo "/data/core-%p-%e" > /proc/sys/kernel/core_pattern
echo "| /usr/bin/coredump2sdcard.sh %p %e" > /proc/sys/kernel/core_pattern
fi
