#!/bin/env bash

curl https://raw.githubusercontent.com/michael-lorenzo/scripts/refs/heads/main/ssh/key.pub >> ~/.ssh/authorized_keys
curl https://github.com/michael-lorenzo.keys >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
systemctl restart ssh
