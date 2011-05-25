#!/bin/sh

F=$(find /sys/kernel/debug/ltt/markers/ | grep $1 | head -n 1)
echo "enable $F"
echo 1 > $F/enable 

#enable basic metadata
echo 1 > /sys/kernel/debug/ltt/markers/metadata/core_marker_format/enable
echo 1 > /sys/kernel/debug/ltt/markers/metadata/core_marker_id/enable
