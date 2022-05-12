#!/bin/bash

mkdir $HOME/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
$HOME/.vim/bundle/YouCompleteMe/install.py

# copy binaries to YouCompleteMe bin dir
mkdir ~/.vim/bundle/YouCompleteMe/third_party/go
cp -r ~/bin ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/go/