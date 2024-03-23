#! /bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
CONFIG_FILE="/etc/X11/xorg.conf.d/70-synaptics.conf"
CONFIG_FILE_SOURCE="$SCRIPT_DIR/trackpad.conf"
sudo pacman -S xf86-input-synaptics --noconfirm
sudo ln -fs $CONFIG_FILE_SOURCE $CONFIG_FILE 
