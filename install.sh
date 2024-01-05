#!/bin/zsh

folders=($(ls -d -- [^.]*/))

for folder in $folders; do
    app_name=$(basename $folder)

    echo -n "Do you want to install $app_name? (y/N) "
    read -r response

    if [[ "$response" == 'y' || "$response" == 'Y' ]]; then
        install_script="$folder/install.sh"

        if [[ -f $install_script ]]; then
            echo "Installing $app_name..."
            (cd $folder && ./install.sh)
            echo "$app_name in place"
        else
            echo "Error: install.sh not found in $app_name folder."
        fi
    fi
done
