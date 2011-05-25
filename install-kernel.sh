#!/bin/bash -x

cd workspace/linux-2.6-lttng/
sudo make install 
sudo make modules_install 
cd ..
cd lttng-modules/
KERNELDIR=../linux-2.6-lttng/ make 
sudo KERNELDIR=../linux-2.6-lttng/ make modules_install 
cd
sudo update-initramfs -k 2.6.38.6+ -c 
sudo update-grub
