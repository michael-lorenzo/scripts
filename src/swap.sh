#!/usr/bin/env bash

fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
echo '/swapfile none swap defaults' >> /etc/fstab
swapon -a
free -h
