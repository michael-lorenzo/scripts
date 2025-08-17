#!/usr/bin/env bash

ufw limit 22
# ufw allow 80
# ufw allow 443
ufw allow 60000:61000/udp # mosh
ufw --force enable
# ufw allow from <IP> to any port <PORT>
# note: docker will ignore ufw rules
