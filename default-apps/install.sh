#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
DEFAULT_LIST="$SCRIPT_DIR/default.list"
MIMEAPPS_LIST="$HOME/.config/mimeapps.list"

if [ -e "$DEFAULT_LIST" ]; then
    cat "$DEFAULT_LIST" > "$MIMEAPPS_LIST"
    echo "File copied successfully!"
else
    echo "Error: default.list not found in the script directory."
    exit 1
fi
