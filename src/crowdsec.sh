#!/usr/bin/env -S sudo bash

# https://doc.crowdsec.net/u/getting_started/installation/linux

curl -fsSL https://install.crowdsec.net | sh
apt-get -y install crowdsec crowdsec-firewall-bouncer-iptables
cscli hub update
cscli hub upgrade
systemctl restart crowdsec
# cscli decisions list
