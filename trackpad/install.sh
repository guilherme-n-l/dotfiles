#! /bin/zsh

SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
CONFIG_FILE="/etc/X11/xorg.conf.d/70-synaptics.conf"
CONFIG_FILE_SOURCE="$SCRIPT_DIR/trackpad.conf"

assert_sudo() {
        if [ "$EUID" -ne 0 ]; then
            echo "Error: This script requires elevated privileges."
            return 1
        fi
}

assert_package() {
        if ! pacman -Qi xf86-input-synaptics &> /dev/null; then
                echo "xf86-input-synaptics not installed"
                echo "Installing xf86-input-synaptics..."
                sudo pacman -S xf86-input-synaptics

                if [ $? -eq 0 ]; then
                else
                        echo "Error: Package installation failed."
                        return 1
                fi
        else
                echo "xf86-input-synaptics is already installed."
        fi
}

assert_file() {
        if [ ! -e $CONFIG_FILE ]; then
                echo "Config file does not exist"
        else
                echo "Config file exists, removing..."
                if rm $CONFIG_FILE; then
                        echo "Config file removed"
                else
                        echo "Could not remove config file"
                        return 1
                fi
        fi
}

if assert_sudo; then
        if assert_package; then
                if assert_file; then
                        sudo ln -fs $CONFIG_FILE_SOURCE $CONFIG_FILE 
                        exit 0
                fi
        fi
fi
return 1
