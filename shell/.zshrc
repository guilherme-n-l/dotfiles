# Environment variables
export _JAVA_AWT_WM_NONREPARENTING=1
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='/bin/nvim'
export SYSTEMD_EDITOR='/bin/nvim'

# Theme
ZSH_THEME='crunch'

# Options
HYPHEN_INSENSITIVE='true'

# Plugins
plugins=(git zsh-syntax-highlighting)

# Sourcing
source $ZSH/oh-my-zsh.sh
source $HOME/.config/lf/icons.sh

# Aliases 
alias lf='lfrun'
alias sd='shutdown now'
alias rb='reboot'
alias rm='trash'
alias jrun='javac Classy.java && java Classy'

# Keybinds
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
