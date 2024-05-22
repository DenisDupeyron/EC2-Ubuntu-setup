!/usr/bin/env sh

# Update Ubuntu
sudo apt update
sudo apt -y upgrade

# Make sure vim doesn't conflict with vim-nox which we'll install later
sudo apt purge -y vim

# Install required packages
sudo apt install -y \
	bash-completion \
	git \
	man \
	powerline \
	powerline-gitstatus \
	tmux \
	tmuxp \
	vim-addon-manager \
	vim-nox \
	wget

# Cleanup
sudo apt autopurge -y

# Globally enable powerline for vim
sudo vim-addons -w install powerline

# Copy dot files/dirs
cat bashrc >>${HOME}/.bashrc
rm -rf ${HOME}/.vim
cp -rf vim ${HOME}/.vim
cp -f inputrc ${HOME}/.inputrc
cp -f tmux.conf ${HOME}/.tmux.conf
cp -rf tmuxp ${HOME}/.tmuxp

# Install miniconda
wget -O /tmp/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash /tmp/miniconda.sh -b -p ${HOME}/miniconda
${HOME}/miniconda/bin/conda init bash
rm -f /tmp/miniconda.sh

# Setup conda completion
mkdir -p ${HOME}/.local/share/bash-completion/completions
wget -O ${HOME}/.local/share/bash-completion/completions/conda https://raw.githubusercontent.com/tartansandal/conda-bash-completion/master/conda
