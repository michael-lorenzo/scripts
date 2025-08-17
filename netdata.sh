#!/usr/bin/env bash

# https://learn.netdata.cloud/docs/netdata-agent/installation/linux/

curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh --stable-channel --disable-telemetry
netdatacli dumpconfig > /etc/netdata/netdata.conf
sudo systemctl stop netdata
sed -i 's/# bind to = \*/bind to = 127.0.0.1:19999/' /etc/netdata/netdata.conf
sudo systemctl start netdata
