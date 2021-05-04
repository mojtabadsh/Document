#!/bin/bash

set -x
echo -e "Set customize vimrc\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim "+PlugInstall" ~/.vimrc

cp gtk.css $HOME/.config/^Ck-3.0/
