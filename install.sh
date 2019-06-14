#!/bin/bash
cd
apt-get update  # To get the latest package lists
apt-get install compton
apt-get install vim -y
apt-get install ranger -y
apt-get install scrot -y
apt-get install screenfetch -y
apt-get install feh -y
apt-get install xsel -y
apt-get install rxvt-unicode -y
apt-getinstall  autocutsel -y
apt-get install python3 -y

apt-get install dmenu -y
apt-get install i3 -y
apt-get install i3status -y

pip3 install pywal
pip3 install --user pywal
pip3 install youtube-dl
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /home/install/vimrc /etc/vim/vimrc
cp /home/install/bashrc .bashrc
cp /home/install/Green.profile .local/share/konsole/Green.profile
cp /home/install/i3 .config/i3/config
cp /home/install/xresources .Xresources
