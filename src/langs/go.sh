#!/usr/bin/env bash

apt-get -y install golang-go
go env -w GOPATH=$HOME/.local/share/go GOBIN=$HOME/.local/bin
