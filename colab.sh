#!/bin/bash

# Navigate to the content directory
cd /content

# Miniconda installation
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh
chmod +x Miniconda3-py38_4.10.3-Linux-x86_64.sh
bash Miniconda3-py38_4.10.3-Linux-x86_64.sh -b -f -p $HOME/miniconda
rm Miniconda3-py38_4.10.3-Linux-x86_64.sh

# Update conda and configure environment
eval "$($HOME/miniconda/bin/conda shell.bash hook)"
conda config --env --set always_yes false
conda update -n base -c defaults conda -y

# Conda environment setup
cd /content/ICON
conda env create -f environment.yaml

# Activate the Conda environment
source $HOME/miniconda/etc/profile.d/conda.sh
conda activate /content/ICON

# Install additional requirements
pip install -r requirements_colab.txt --use-deprecated=legacy-resolver








# cd /content

# # conda installation
# wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh
# chmod +x Miniconda3-py38_4.10.3-Linux-x86_64.sh
# bash Miniconda3-py38_4.10.3-Linux-x86_64.sh -b -f -p /usr/local
# conda config --env --set always_yes true
# rm Miniconda3-py38_4.10.3-Linux-x86_64.sh
# conda update -n base -c defaults conda -y

# # conda environment setup
# cd /content/ICON
# conda env create -f environment.yaml
# conda init bash
# source ~/.bashrc
# source activate icon
# pip install -r requirements_colab.txt --use-deprecated=legacy-resolver

