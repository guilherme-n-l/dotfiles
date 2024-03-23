#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S polybar yad xdotool --noconfirm 
ln -fs "$SCRIPT_DIR" ~/.config
