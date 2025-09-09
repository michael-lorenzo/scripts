# APT
```shell
sudo apt-get update
sudo apt-get -y install build-essential mosh
sudo apt-get -y dist-upgrade
sudo apt-get -y autopurge snapd
sudo apt-get clean
reboot
```

---

# Nix

## Multi-user installation
```shell
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
```

## Single-user installation
```shell
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
```

## nixpkgs
```shell
nix-env -iA nixpkgs.age
nix-env -iA nixpkgs.bat
nix-env -iA nixpkgs.fd
nix-env -iA nixpkgs.fzf
nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.micro
nix-env -iA nixpkgs.ripgrep
nix-env -iA nixpkgs.zoxide
```

## Update `~/.bashrc`
```sh
eval "$(fzf --bash)"
eval "$(zoxide init bash)"
```

---

# Git
```shell
git config --global user.name "mike"
git config --global user.email "mike@localhost"
git config --global core.editor micro
git config --global init.defaultBranch "main"
```
