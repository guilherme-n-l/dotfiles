#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"

if sudo pacman -S --noconfirm bspwm; then
    if ! ln -fs "$SCRIPT_DIR" ~/.config; then
            return 1
    else
        chmod +x ~/.config/bspwm/bspwmrc
    fi
fi
