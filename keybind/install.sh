#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
CONFIG_FILE="/etc/X11/xorg.conf.d/90-custom-kbd.conf"
CONFIG_FILE_SOURCE="$SCRIPT_DIR/custom-kbd.conf"
sudo ln -fs $CONFIG_FILE_SOURCE $CONFIG_FILE 
