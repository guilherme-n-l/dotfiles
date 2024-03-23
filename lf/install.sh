#!/bin/zsh
SCRIPT_DIR="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
sudo pacman -S lf --noconfirm 
ln -fs "$SCRIPT_DIR" ~/.config
git clone https://github.com/thimc/lfimg.git
cd $SCRIPT_DIR/lfimg && sudo -u $USER make install && cd .. && rm -rf lfimg
sudo pacman -S ffmpegthumb imagemagick poppler bat chafa unzip zip catdoc docx2txt odt2txt gnumeric transmission-cli gnome-epub-thumbnailer --noconfirm
sudo -u $USER yay -S comix wkhtmltopdf ueberzugpp --noconfirm
