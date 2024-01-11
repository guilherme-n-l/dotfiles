# Environment variables
export _JAVA_AWT_WM_NONREPARENTING=1
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="/bin/nvim"

# Theme
ZSH_THEME="crunch"

# Options
HYPHEN_INSENSITIVE="true"

# Plugins
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases 
alias lf="lfrun"
alias mnt-server="sudo mount -t cifs //[IP ADDRESS]/Media -o username=[username] /mnt/server"
alias mnt-kindle="udisksctl mount -b /dev/sda"
alias unmnt-kindle="udisksctl unmount -b /dev/sda"
alias sd="shutdown now"
alias rb="reboot"
alias rm='trash'
