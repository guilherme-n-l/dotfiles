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
- [i3lock-color (AUR)](https://aur.archlinux.org/packages/i3lock-color)
- [xss-lock (AUR)](https://archlinux.org/packages/?name=xss-lock)
- [fzf (AUR)](https://archlinux.org/packages/extra/x86_64/fzf/)
- [fd (AUR)](https://archlinux.org/packages/extra/x86_64/fd/)
- [ly (AUR)](https://aur.archlinux.org/packages/ly-git)

## yazi

- [yazi (AUR)](https://archlinux.org/packages/extra/x86_64/yazi/)
- [ueberzugpp (AUR)](https://aur.archlinux.org/packages/ueberzugpp)
- [ffmpegthumbnailer (AUR)](https://archlinux.org/packages/extra/x86_64/ffmpegthumbnailer/)
- [poppler (AUR)](https://archlinux.org/packages/extra/x86_64/poppler/)
- [unrar (Optional) (AUR)](https://archlinux.org/packages/extra/x86_64/unrar/)
- [fzf (AUR)](https://archlinux.org/packages/extra/x86_64/fzf/)
- [fd (AUR)](https://archlinux.org/packages/extra/x86_64/fd/)
- [ripgrep (AUR)](https://archlinux.org/packages/extra/x86_64/ripgrep/)
- [jq (AUR)](https://archlinux.org/packages/extra/x86_64/jq/)

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

## keyboard

- [xmodmap (AUR)](https://archlinux.org/packages/extra/x86_64/xorg-xmodmap/)

## Zathura

- [zathura (AUR)](https://archlinux.org/packages/extra/x86_64/zathura/)
- [zathura-pdf-mupdf (AUR)](https://archlinux.org/packages/extra/x86_64/zathura-pdf-mupdf/)

## Nsxiv

- [nsxiv (AUR)](https://archlinux.org/packages/extra/x86_64/nsxiv/)

### Notes to self

1. To theme nsxiv, you will need to append [.Xresources](/.Xresources) to `~/.Xresources`. Then merge it with `xrdb -merge ~/.Xresources`
2. To make i3lock-color work properly, start the service, link [logind](/systemd/logind.conf) and install [xss-lock](https://aur.archlinux.org/packages/xss-lock-git)
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
|foliate|books|
|calibre|books|
|timeshift|backups|
