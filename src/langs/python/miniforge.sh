#!/usr/bin/env -S bash -i

# https://github.com/conda-forge/miniforge

wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3.sh -b -p ~/.local/miniforge
~/.local/miniforge/bin/conda config --set auto_activate_base false
~/.local/miniforge/bin/conda init
source ~/.bashrc
conda update --all -y # WARNING: Requires a lot of RAM / Swap
conda clean --all -y
