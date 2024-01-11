#! /bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )/.zshrc"

if ! ln -fs "$SCRIPT_DIR" ~; then
        return 1
fi
