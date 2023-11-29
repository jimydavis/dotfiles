apt update
apt install unzip
git clone https://github.com/jimydavis/dotfiles
cd dotfiles
./nvim.appimage --appimage-extract
ln -s $(pwd)/squashfs-root/AppRun /usr/bin/nvim
mkdir ~/.config
cp -a nvim ~/.config
