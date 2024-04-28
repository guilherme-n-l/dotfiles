# Environment variables
export _JAVA_AWT_WM_NONREPARENTING=1
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:$HOME/.go/bin

# Theme
ZSH_THEME='crunch'

# Options
HYPHEN_INSENSITIVE='true'

# Plugins
plugins=(git)

# Sourcing
source $ZSH/oh-my-zsh.sh
source $HOME/.config/lf/icons.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases 
alias lf='lfrun'
alias lg='lazygit'
alias sd='shutdown now'
alias rb='shutdown now --reboot'
alias jrun='javac Classy.java && java Classy'
alias fcd='cd "$(fd --hidden --type d | fzf)"'

# Keybinds
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
