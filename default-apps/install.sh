#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
DEFAULT_LIST="$SCRIPT_DIR/mimeapps.list"
MIMEAPPS_LIST="$HOME/.config/mimeapps.list"
ln -fs "$DEFAULT_LIST" "$MIMEAPPS_LIST"
