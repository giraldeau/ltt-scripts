#!/bin/sh


for i in $(find /sys/kernel/debug/ltt/markers/*/*/enable); do
	echo 0 > $i
done
