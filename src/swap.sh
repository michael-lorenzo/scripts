#!/usr/bin/env -S sudo bash

fallocate -l 4G /swap
chmod 600 /swap
mkswap /swap
echo '/swap none swap defaults' >> /etc/fstab
swapon -a
free -h
