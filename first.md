# APT
```shell
apt-get update
apt-get -y install build-essential mosh
apt-get -y dist-upgrade
apt-get -y autopurge snapd
apt-get clean
reboot
```

---

# Nix

## Multi-user installation (recommended)
```shell
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
```

<details>
<summary>Single-user installation</summary>
  
```shell
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --no-daemon
```

</details>

## nixpkgs
```shell
nix-env -iA nixpkgs.age
nix-env -iA nixpkgs.bat
nix-env -iA nixpkgs.fd
nix-env -iA nixpkgs.fzf
nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.lazydocker
nix-env -iA nixpkgs.micro
nix-env -iA nixpkgs.ripgrep
nix-env -iA nixpkgs.zoxide
```

## Update `~/.bashrc`
```sh
echo 'eval "$(fzf --bash)"' >> ~/.bashrc
echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
source ~/.bashrc
```

---

# Git
```shell
git config --global user.name "mike"
git config --global user.email "mike@localhost"
git config --global core.editor micro
git config --global init.defaultBranch "main"
```
