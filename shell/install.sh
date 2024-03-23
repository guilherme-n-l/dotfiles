#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )/.zshrc"
ln -fs "$SCRIPT_DIR" ~
