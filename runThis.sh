apt update
apt install unzip -y
apt install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt update
apt install nodejs -y
bash /tmp/nodesource_setup.sh
git clone https://github.com/jimydavis/dotfiles
cd dotfiles
dpkg -i ripgrep_13.0.0_amd64.deb
ln -s $(pwd)/nvim-squashfs/AppRun /usr/bin/nvim
mkdir ~/.config
cp -a nvim ~/.config
