#!/bin/env bash

# ssh-keygen -t ed25519 -C 'main' -f id_ed25519 -N ''
# ssh-keygen -t ed25519 -C 'github' -f id_ed25519_github -N ''
# tar -cJf ids.tar.xz id_*
# cp id_ed25519.pub key.pub
# rm id_*
# # Do not forget to delete ids.tar.xz

curl https://raw.githubusercontent.com/michael-lorenzo/scripts/refs/heads/main/ssh/key.pub >> ~/.ssh/authorized_keys
curl https://github.com/michael-lorenzo.keys >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
systemctl restart ssh
