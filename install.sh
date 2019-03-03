#!/bin/sh

echo "Installing dotfiles"

echo "Cloning git repo"
git clone --recursive https://github.com/bdodoiu/dotfiles.git ${HOME}/.dotfiles

echo "Creating symlinks"
ln -s ${HOME}/.dotfiles/.zshrc ${HOME}/.zshrc
ln -s ${HOME}/.dotfiles/.zshrc.zgen ${HOME}/.zshrc.zgen
ln -s ${HOME}/.dotfiles/.dir_colors ${HOME}/.dir_colors
ln -s ${HOME}/.dotfiles/.minttyrc ${HOME}/.minttyrc 
