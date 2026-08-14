#!/usr/bin/env -S sudo bash

apt-get update
apt-get -y install mosh systemd-container
DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
apt-get -y autopurge snapd
apt-get clean
curl -fsSL https://get.docker.com | sh
reboot
