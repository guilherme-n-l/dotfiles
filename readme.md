.FILES
===

Welcome to my archlinux configuration. To prevent issues, I added all needed dependencies for my most used software. 

# Dependencies

## alacritty

Props to [@kchibisov](https://github.com/kchibisov) for the theme

- [alacritty (AUR)](https://archlinux.org/packages/extra/x86_64/alacritty/)
- [ttf-firacode-nerd (AUR)](https://archlinux.org/packages/extra/any/ttf-firacode-nerd/)
- [tmux (AUR)](https://archlinux.org/packages/extra/x86_64/tmux/)

## bspwm & sxhkd

- [bspwm (AUR)](https://archlinux.org/packages/extra/x86_64/bspwm/)
- [sxhkd (AUR)](https://archlinux.org/packages/extra/x86_64/sxhkd/)
- [picom (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/picom/)
- [nitrogen (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/nitrogen/)
- [polybar (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/polybar/)
- [network-manager-applet (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/network-manager-applet/)
- [brillo (AUR)](https://aur.archlinux.org/packages/brillo)
- [flameshot (AUR)](https://archlinux.org/packages/extra/x86_64/flameshot/)
- [betterlockscreen (AUR)](https://aur.archlinux.org/packages/betterlockscreen)
- [fzf (AUR)](https://archlinux.org/packages/extra/x86_64/fzf/)
- [fd (AUR)](https://archlinux.org/packages/extra/x86_64/fd/)

## lf

- [lf (AUR)](https://archlinux.org/packages/extra/x86_64/lf/)
- [lfimg](https://github.com/thimc/lfimg)
- [gnome-epub-thumbnailer](https://archlinux.org/packages/extra/x86_64/gnome-epub-thumbnailer/)
- [ueberzugpp (AUR)](https://aur.archlinux.org/packages/ueberzugpp)
- [ffmpegthumbnailer (AUR)](https://archlinux.org/packages/extra/x86_64/ffmpegthumbnailer/)
- [ImageMagick (AUR)](https://archlinux.org/packages/extra/x86_64/imagemagick/)
- [poppler (AUR)](https://archlinux.org/packages/extra/x86_64/poppler/)
- [wkhtmltopdf (AUR)](https://aur.archlinux.org/packages/wkhtmltopdf/)
- [bat (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/bat/)
- [chafa (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/chafa/)
- [unzip (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/unzip/)
- [7z (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/p7zip/)
- [unrar (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/unrar/)
- [catdoc (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/catdoc/)
- [odt2txt (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/odt2txt/)
- [gnumeric (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/gnumeric/)
- [comix (Optional) (AUR)](https://aur.archlinux.org/packages/comix)

## mpv

- [mpv (AUR)](https://archlinux.org/packages/extra/x86_64/mpv/)
- [mpv-file-browser (Optional)](https://github.com/CogentRedTester/mpv-file-browser)
- [mpv-copy-paste (Optional)](https://github.com/zenyd/mpv-scripts)

## nvim

- [neovim (AUR)](https://archlinux.org/packages/extra/x86_64/neovim/)
- [xclip (AUR)](https://archlinux.org/packages/extra/x86_64/xclip/)
- [npm (AUR)](https://archlinux.org/packages/extra/x86_64/npm/)
- [ripgrep (AUR)](https://archlinux.org/packages/extra/x86_64/ripgrep/)

## picom

- [picom (AUR)](https://archlinux.org/packages/extra/x86_64/picom/)

## polybar

- [polybar (AUR)](https://archlinux.org/packages/extra/x86_64/polybar/)
- [yad (AUR) (Optional)](https://archlinux.org/packages/extra/x86_64/yad/)
- [xdotool (AUR) (Optional)](https://archlinux.org/packages/extra/x86_64/xdotool/)

## rofi

- [rofi (AUR)](https://archlinux.org/packages/extra/x86_64/rofi/)

## tmux

- [tmux (AUR)](https://archlinux.org/packages/extra/x86_64/tmux/)
- [tpm](https://github.com/tmux-plugins/tpm)

## trackpad

- [xf86-input-synaptics (AUR)](https://archlinux.org/packages/extra/x86_64/xf86-input-synaptics/)

I use this to enable tapping and natural scrolling on my trackpad.

## Zathura

- [zathura (AUR)](https://archlinux.org/packages/extra/x86_64/zathura/)
- [zathura-pdf-mupdf (AUR)](https://archlinux.org/packages/extra/x86_64/zathura-pdf-mupdf/)

## Nsxiv

- [nsxiv (AUR)](https://archlinux.org/packages/extra/x86_64/nsxiv/)

### Notes to self

1. To theme zathura, you will need to append [gtk.css](/zathura/gtk.css) to `~/.config/gtk-3.0/gtk.css`
2. To theme nsxiv, you will need to append [.Xresources](/nsxiv/.Xresources) to `~/.Xresources`
3. To install audio properly use the following packages:
- [sof-firmware (AUR)](https://archlinux.org/packages/extra/x86_64/sof-firmware/)
- [pipewire (AUR)](https://archlinux.org/packages/extra/x86_64/pipewire/)
- [wireplumber (AUR)](https://archlinux.org/packages/extra/x86_64/wireplumber/)
- [pipewire-alsa (AUR)](https://archlinux.org/packages/extra/x86_64/pipewire-alsa/)
- [pipewire-pulse (AUR)](https://archlinux.org/packages/extra/x86_64/pipewire-pulse/)

# Extra

Below are some useful software I use in my daily driver:

|Software|For|
|-|-|
|firefox|web|
|keepassxc|storing passwords|
|trash-cli|deleting files|
|lazygit|version control|
|calibre|books|
|nomacs|images|
|timeshift|backups|
|fzf|fuzzy finder|

