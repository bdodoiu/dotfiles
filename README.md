# Dotfiles

## Setup instructions
```bash
curl -sL git.io/bdodoiu.dotfiles | sh
```

## Alternative manual setup

1. clone this repo
```bash
git clone --recursive https://github.com/bdodoiu/dotfiles.git ${HOME}/.dotfiles
```
2. create symlinks
```
ln -s ${HOME}/.dotfiles/.zshrc ${HOME}/.zshrc
ln -s ${HOME}/.dotfiles/.zshrc.zgen ${HOME}/.zshrc.zgen
ln -s ${HOME}/.dotfiles/.dir_colors ${HOME}/.dir_colors
ln -s ${HOME}/.dotfiles/.minttyrc ${HOME}/.minttyrc 
```