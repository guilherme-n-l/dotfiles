#! /bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S tmux --noconfirm
ln -fs "$SCRIPT_DIR" ~/.config
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
