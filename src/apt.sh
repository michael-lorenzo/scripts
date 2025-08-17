#!/usr/bin/env bash

apt-get update
apt-get -y install build-essential mosh
DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
apt-get -y autopurge snapd
apt-get clean
reboot
