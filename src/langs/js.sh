#!/usr/bin/env bash

# https://github.com/Schniz/fnm
# https://github.com/nodejs/corepack
# https://github.com/oven-sh/bun

sudo apt-get update && sudo apt-get -y install unzip
curl -fsSL https://fnm.vercel.app/install | bash
source ~/.bashrc
fnm install --lts
npm install -g npm corepack
curl -fsSL https://bun.com/install | bash
