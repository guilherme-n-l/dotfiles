# DOTFILES

Welcome to my archlinux configuration. To prevent issues, I added all needed dependencies for my most used software. 

# Dependencies

## Alacritty

```sh
sudo pacman -S alacritty
```

## bspwm & sxhkd

```sh
sudo pacman -S bspwm sxhkd
```

## lf

```sh
sudo pacman -S ffmpegthumbnailer imagemagick poppler gnome-epub-thumbnailer ueberzug lf
```

```sh
yay -S wkhtmltopdf
```

Props to @thimc and the rest of the team for enabling previews in lf (So nice!)

```sh
git clone https://github.com/thimc/lfimg.git &
cd lfimg &
make install
```
