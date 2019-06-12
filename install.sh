#!/bin/bash
cd
apt-get update  # To get the latest package lists
apt-get install vim -y
apt-get install ranger -y
apt-get install scrot -y
apt-get install screenfetch -y
apt-get install feh -y
apt-get install xsel -y
apt-get install konsole -y
apt-get install dmenu -y
apt-get install i3
apt-get install i3status

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /home/install/vimrc /etc/vim/vimrc
cp /home/install/bashrc .bashrc
