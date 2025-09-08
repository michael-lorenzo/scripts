# https://doc.crowdsec.net/u/getting_started/installation/linux
curl -s https://install.crowdsec.net | sudo sh
apt-get install -y crowdsec crowdsec-firewall-bouncer-iptables
systemctl restart crowdsec
