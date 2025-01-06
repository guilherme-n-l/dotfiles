#################
#   Behavior    #
#################
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HYPHEN_INSENSITIVE='true'
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

#################
# Customization #
#################
autoload -U colors && colors

PS1="%{$fg[yellow]%}%~%{$reset_color%} %{$fg[cyan]%}%% %{$reset_color%}"

#################
#   Bindings    #
#################
function yz() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
alias sd='shutdown now'
alias rb='sd --reboot'
alias fzfd='fd --hidden --type d | fzf'
alias fcd='cd "$(fzfd)"'
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
alias bctl='bluetoothctl'
alias showkeys='nohup nsxiv ~/Pictures/layout.png -z 150 > /dev/null 2>&1 &'

bindkey '^[[1;3C' forward-word
bindkey '^[[1;3D' backward-word

export EDITOR=nvim
