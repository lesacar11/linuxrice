#!/usr/bin/env bash

# install vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config
touch ~/.config/.vimrc
echo "call plug#begin()

Plug 'fcpg/vim-orbital'
Plug 'wokalski/autocomplete-flow'

call plug#end()

colorscheme orbital

set number relativenumber" > ~/.config/.vimrc
