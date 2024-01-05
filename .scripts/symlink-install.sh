#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
APPLICATION_NAME="$(basename "$SCRIPT_DIR")"
SYMLINK_PATH="$HOME/.config/$APPLICATION_NAME"

ln -s "$SCRIPT_DIR" "$SYMLINK_PATH"
