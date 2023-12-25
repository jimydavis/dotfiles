#!/bin/bash

set -e

apt update
apt install -y unzip ca-certificates curl gnupg python3-venv htop ncdu pydf

# NodeJs
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt update
apt install nodejs -y
source ~/.bashrc

# Ripgrep
dpkg -i ripgrep_13.0.0_amd64.deb
source ~/.bashrc

# Nvim
ln -s $(pwd)/nvim-squashfs/AppRun /usr/bin/nvim
mkdir ~/.config
cp -a nvim ~/.config
source ~/.bashrc

# Lazy Git
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit /usr/local/bin
rm lazygit.tar.gz
source ~/.bashrc

# SSH
ssh-keygen -t ed25519 -C "example@example.com" -N ""
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
source ~/.bashrc

# Install Poetry
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pipx install Poetry
source ~/.bashrc

# Install Nvitop
pipx install nvitop
source ~/.bashrc
