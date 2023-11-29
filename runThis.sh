apt update
apt install unzip
git clone https://github.com/jimydavis/dotfiles
cd dotfiles
dpkg -i ripgrep_13.0.0_amd64.deb
./nvim.appimage --appimage-extract
ln -s $(pwd)/squashfs-root/AppRun /usr/bin/nvim
mkdir ~/.config
cp -a nvim ~/.config
