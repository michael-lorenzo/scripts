# https://github.com/conda-forge/miniforge

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh -b -p ~/.miniforge
~/.miniforge/bin/conda config --set auto_activate_base false
~/.miniforge/bin/conda init
source ~/.bashrc
conda update --all # warning: requires a lot of RAM
conda clean -a -y
