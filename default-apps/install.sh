#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
DEFAULT_LIST="$SCRIPT_DIR/default.list"
MIMEAPPS_LIST="$HOME/.config/mimeapps.list"

if [ -e "$DEFAULT_LIST" ]; then
    ln -fs "$DEFAULT_LIST" "$MIMEAPPS_LIST"
else
    echo "Error: default.list not found in the script directory."
    exit 1
fi
