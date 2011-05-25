#!/bin/bash -x

cd workspace/lttng-modules/
KERNELDIR=../linux-2.6-lttng/ make 
sudo KERNELDIR=../linux-2.6-lttng/ make modules_install 
cd
./reload-modules.sh
cd flightbox/tests/
sudo ./traceit scripts/rpc-hog-100ms
