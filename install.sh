#!/bin/sh

# this script must be run from the root of the dotfiles git repository
dotfiles=$(pwd)
ln -s  ${dotfiles}/bashrc ~/.bashrc
ln -s  ${dotfiles}/vimrc ~/.vimrc

# create ~/.config if it doesn't exist
mkdir -p ~/.config

# symlink everything in config
for file in ${dotfiles}/config/*; do
	ln -s ${file} ~/.config/
done

