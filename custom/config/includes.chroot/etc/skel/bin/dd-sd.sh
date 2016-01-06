#!/bin/bash

# sudo ls -l /dev/disk/by-id/*usb*

## sudo ./dd-sd.sh

# sudo umount /dev/sdb1
#
# mkdosfs -F 32 -I /dev/sdb1
# sleep 3

# dd bs=4M if="crunchbang-11-20130506-i686.iso" of=/dev/sdc
dd bs=4M if="/home/simon/DiskImages/systemrescuecd-x86-4.3.1.iso" of=/dev/sdc
# dd bs=4M if="debian-6.0.7-amd64-netinst.iso" of=/dev/sdb
# dd bs=4M if="debian-7.2.0-amd64-xfce-CD-1.iso" of=/dev/sdc

# dd bs=4M if=./2012-10-28-wheezy-raspbian.img of=/dev/sdb
# dd bs=4M if=./RC4a.img of=/dev/sdb
sync
