#!/bin/sh

echo Installing needed software...
sudo apt-get update &&
sudo apt-get install curl git vim-gnome

mkdir -p ~/.vim/swp

echo Installing Vim-Plug...
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall
