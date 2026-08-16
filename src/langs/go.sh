#!/usr/bin/env bash

sudo apt-get -y install golang-go
go env -w GOPATH=$HOME/.local/share/go GOBIN=$HOME/.local/bin
