# DOTFILES

Welcome to my archlinux configuration. To prevent issues, I added all needed dependencies for my most used software. 

# Dependencies

## Alacritty

Props to [@kchibisov](https://github.com/kchibisov) for the theme

```sh
sudo pacman -S alacritty
```

## bspwm & sxhkd

```sh
sudo pacman -S bspwm sxhkd
```

## lf

```sh
sudo pacman -S ffmpegthumbnailer imagemagick poppler gnome-epub-thumbnailer bat unzip docx2txt gnumeric ueberzug lf
```

```sh
yay -S wkhtmltopdf
```

Props to [@thimc](https://github.com/thimc) and the rest of the team for enabling previews in lf (So nice!)

```sh
git clone https://github.com/thimc/lfimg.git &
cd lfimg &
make install
```

## mpv

```sh
sudo pacman -S mpv
git clone https://github.com/CogentRedTester/mpv-file-browser.git ~/.config/mpv/scripts/file-browser &
```

## nvim 

```sh
sudo pacman -S neovim xclip
```

## picom 

```sh
sudo pacman -S picom 
```

## polybar 

```sh
sudo pacman -S polybar tff-firacode-nerd 
```

## rofi

```sh
sudo pacman -S rofi
```

### Optional

```sh
sudo pacman -S network-manager-applet
```

## tmux

```sh
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Trackpad

> Use this to enable natural scrolling and tapping 

```sh
sudo pacman -S xf86-input-synaptics  
```

# Extra

Below are some useful software I use in my daily driver 

|Software|For|
|-|-|
|firefox|web|
|keepassxc|storing passwords|
|zathura|reading documents|
|trash-cli|deleting files| 
