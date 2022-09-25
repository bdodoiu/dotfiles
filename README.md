# Dotfiles

## Setup instructions
```bash
curl -sL git.io/bdodoiu.dotfiles | sh
```

For Powershell use
```bash
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/bdodoiu/dotfiles/master/pwsh/install.ps1'))
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