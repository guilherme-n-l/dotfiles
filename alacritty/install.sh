#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"

if sudo pacman -S --noconfirm alacritty; then
    if ! ln -fs "$SCRIPT_DIR" ~/.config; then
            return 1
    fi
fi
