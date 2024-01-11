#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"

if ! ln -fs "$SCRIPT_DIR" ~/.config; then
        return 1
fi
