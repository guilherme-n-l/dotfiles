#!/bin/zsh

FOLDERS=($(ls -d -- [^.]*/))

for folder in $FOLDERS; do
    APP_NAME=$(basename $folder)

    echo -n "Do you want to install $APP_NAME? (y/N) "
    read -r response

    if [[ "$response" == 'y' || "$response" == 'Y' ]]; then
        INSTALL_SCRIPT="$folder/install.sh"

        if [[ -f $INSTALL_SCRIPT ]]; then
            echo "Installing $APP_NAME..."
            if (cd $folder && ./install.sh); then
                    echo "$APP_NAME in place"

            else
                    echo "Couldn't install $APP_NAME"
            fi
        else
            echo "Error: install.sh not found in $APP_NAME folder."
        fi
    fi
done
