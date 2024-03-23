#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S --noconfirm bspwm
ln -fs "$SCRIPT_DIR" ~/.config
chmod +x ~/.config/bspwm/bspwmrc
