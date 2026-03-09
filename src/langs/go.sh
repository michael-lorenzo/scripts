#!/usr/bin/env bash

# https://go.dev/doc/install

file_name="$(curl -fsSL https://go.dev/dl/?mode=json | jq -r '.[0].files[] | select(.os=="linux" and .arch=="amd64") | .filename')"
wget "https://go.dev/dl/${file_name}"
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "$file_name"
rm "$file_name"

if ! grep -qxF 'export PATH="$PATH:/usr/local/go/bin"' ~/.bashrc 2>/dev/null; then
  echo $'\n# Go' >> ~/.bashrc
  echo 'export GOPATH="$HOME/.local/share/go"' >> ~/.bashrc
  echo 'export GOBIN="$HOME/.local/bin"' >> ~/.bashrc
  echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.bashrc
fi
