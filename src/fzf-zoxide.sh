#!/usr/bin/env bash

workdir=$(mktemp -d)
cd $workdir

fzf_version=$(curl -s https://api.github.com/repos/junegunn/fzf/releases/latest | jq -r .tag_name)
curl -sL "https://github.com/junegunn/fzf/releases/download/$fzf_version/fzf-${fzf_version:1}-linux_amd64.tar.gz" | tar xzf -
mv fzf ~/.local/bin
echo 'eval "$(fzf --bash)"' >> ~/.bashrc

zoxide_version=$(curl -s https://api.github.com/repos/ajeetdsouza/zoxide/releases/latest | jq -r .tag_name)
curl -sL "https://github.com/ajeetdsouza/zoxide/releases/download/$zoxide_version/zoxide-${zoxide_version:1}-x86_64-unknown-linux-musl.tar.gz" | tar xzf -
mv zoxide ~/.local/bin
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc

cd ~
rm -rf $workdir
