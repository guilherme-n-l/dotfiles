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
# source $HOME/.config/lf/icons.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases 
function yz() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
alias sd='shutdown now'
alias rb='shutdown now --reboot'
alias fzfd='fd --hidden --type d | fzf'
alias fcd='cd "$(fd --hidden --type d | fzf)"'
alias lg='lazygit'
alias gs='git status'
alias gc='git commit'
alias gcfg='git config'
alias gco='git checkout'
alias gf='git fetch origin'
alias gp='git pull'
alias gP='git push'
alias gl="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias gwa='git worktree add'
alias gwr='git worktree remove'
alias gwl='git worktree list'
alias mntserver='echo -n "Enter server IP: "; read ip; echo -n "Enter remote mount bind (/foo/bar): "; read source_bind; echo -n "Enter local mountpoint (/foo/bar): "; read target_bind; sshfs "$USER"@"$ip":"$source_bind" "$target_bind"'

# Keybinds
bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word
