#!/usr/bin/env -S bash -i

# https://github.com/Schniz/fnm

curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm install --lts
