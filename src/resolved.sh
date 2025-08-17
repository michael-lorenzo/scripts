#!/usr/bin/env bash

sed -i 's/#DNSStubListener=yes/DNSStubListener=no/' /etc/systemd/resolved.conf
systemctl restart systemd-resolved
resolvectl status
