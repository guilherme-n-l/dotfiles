#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S picom --noconfirm 
ln -fs "$SCRIPT_DIR" ~/.config
