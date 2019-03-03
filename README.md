# Dotfiles

## Setup instructions
1. clone this repo
```bash
git clone --recursive https://github.com/bdodoiu/dotfiles.git ${ZDOTDIR:-${HOME}}/.dotfiles
```
2. create symlinks
```
ln -s ${HOME}/.dotfiles/.zshrc ${HOME}/.zshrc
ln -s ${HOME}/.dotfiles/.zshrc.zgen ${HOME}/.zshrc.zgen
ln -s ${HOME}/.dotfiles/.dir_colors ${HOME}/.dir_colors
ln -s ${HOME}/.dotfiles/.minttyrc ${HOME}/.minttyrc 
```