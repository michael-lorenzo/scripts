#!/usr/bin/env -S sudo bash

ufw allow ssh
ufw allow mosh
ufw --force enable
# ufw allow from <IP> to any port <PORT>
# note: docker will ignore ufw rules
