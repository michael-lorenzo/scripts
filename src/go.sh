#!/usr/bin/env bash

# https://go.dev/doc/install

version="1.25.1"
file_name="go${version}.linux-amd64.tar.gz"
wget "https://go.dev/dl/${file_name}"
rm -rf /usr/local/go && tar -C /usr/local -xzf $file_name
rm $file_name
echo 'export GOPATH=~/.go' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin:~/.go/bin' >> ~/.bashrc
source ~/.bashrc
go install golang.org/x/tools/gopls@latest
