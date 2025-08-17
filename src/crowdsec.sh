#!/usr/bin/env bash

# https://doc.crowdsec.net/u/getting_started/installation/linux

curl -s https://install.crowdsec.net | sudo sh
apt-get -y install crowdsec crowdsec-firewall-bouncer-iptables
systemctl restart crowdsec
# cscli decisions list
# cscli metrics show decisions
