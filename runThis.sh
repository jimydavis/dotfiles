apt update
apt install -y unzip ca-certificates curl gnupg python3-venv python-is-python3
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt update
apt install nodejs -y
dpkg -i ripgrep_13.0.0_amd64.deb
ln -s $(pwd)/nvim-squashfs/AppRun /usr/bin/nvim
mkdir ~/.config
cp -a nvim ~/.config
