#!/usr/bin/env bash

# https://github.com/Schniz/fnm
# https://github.com/nodejs/corepack
# https://github.com/oven-sh/bun

sudo apt-get update && sudo apt-get -y install curl unzip ca-certificates
curl -fsSL https://fnm.vercel.app/install | bash
export PATH="$HOME/.local/share/fnm:$PATH" && eval "$(fnm env)"
fnm install --lts
npm install -g corepack && corepack enable
curl -fsSL https://bun.com/install | bash
