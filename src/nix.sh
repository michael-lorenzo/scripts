#!/usr/bin/env bash

# https://nixos.org/download/#nix-install-linux

sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon --yes
source /etc/profile

nix-env -iA nixpkgs.age
nix-env -iA nixpkgs.fd
nix-env -iA nixpkgs.fzf
nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.lazydocker
nix-env -iA nixpkgs.micro
nix-env -iA nixpkgs.ripgrep
nix-env -iA nixpkgs.yazi
nix-env -iA nixpkgs.zoxide

echo 'eval "$(fzf --bash)"' >> ~/.bashrc
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
source ~/.bashrc
