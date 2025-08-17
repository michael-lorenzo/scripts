#!/usr/bin/env bash

# https://github.com/Schniz/fnm
# https://github.com/nodejs/node
# https://github.com/pnpm/pnpm

apt-get -y install curl unzip
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm install 24
npm install -g npm pnpm
