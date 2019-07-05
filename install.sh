#!/bin/bash
cd
apt-get update  # To get the latest package lists
apt-get install compton
apt-get install vim -y

apt-get install vim-gtk -y

apt-get install ranger -y
apt-get install scrot -y
apt-get install screenfetch -y
apt-get install feh -y
apt-get install xsel -y
apt-get install rxvt-unicode -y
apt-getinstall  autocutsel -y
apt-get install python3 -y



apt-get install libxcb-composite0-dev -y
apt-get install build-essential cmake python3-dev -y


apt-get install zathura -y
apt-get install dmenu -y
apt-get install i3 -y

apt-get install pass -y
apt-get install isync -y
apt-get install python3-pip



sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev -y


git clone https://github.com/jaagr/polybar.git

cd polybar && ./build.sh


chmod 777 /home/install/info-pingrtt.sh
chmod 777 /home/install/info-ssh-sessions.sh


pip3 install setup-tools
pip3 install pywal
pip3 install --user pywal
pip3 install youtube-dl
pip3 install neovim

###i3 over everything else
update-alternatives --install /usr/bin/x-session-manager x-session-manager /usr/bin/i3 60


##VUNDLE##

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /home/install/vimrc /etc/vim/vimrc
cp /home/install/bashrc .bashrc

cd 
cd .config
mkdir i3
cd
cp /home/install/i3 .config/i3/config
cp /home/install/xmodmaprc .xmodmaprc
## zoom urxvt ##
cp /home/install/polyconfig .config/polybar/config
cp /home/install/xresources .Xresources
mkdir .Xresources/ext

git clone https://github.com/majutsushi/urxvt-font-size  ~/.Xresources/ext
cp ~/.Xresources/ext/urxvt-font-size ~/.Xresources/ext

##Mutt wizard##
git clone https://github.com/LukeSmithxyz/mutt-wizard
cd mutt-wizard
sudo make install
mw add

