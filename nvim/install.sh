#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S neovim --noconfirm 
ln -fs "$SCRIPT_DIR" ~/.config
