#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
APPLICATION_NAME="$(basename "$SCRIPT_DIR")"
SYMLINK_PATH="$HOME/.config/$APPLICATION_NAME"

if ! ln -fs "$SCRIPT_DIR" "$SYMLINK_PATH"; then
        return 1
fi
