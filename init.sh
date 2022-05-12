#!/bin/bash

mkdir $HOME/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
#$HOME/.vim/bundle/YouCompleteMe/install.py
vim +GoInstallBinaries +qall