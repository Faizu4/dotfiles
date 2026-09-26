# .zshrc

precmd() { printf '\033[5 q'; }
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins= (
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

DISABLE_UPDATE_PROMPT=true

zstyle ':omz:update' mode disabled
zstyle ':vcs_info:*' enable false
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

setopt PROMPT_SUBST
PROMPT=$'%F{39}󰀄 Faizu4%f %F{214}${PWD#/workspaces/}%f\n%F{46}❯%f '
setopt HIST_IGNORE_ALL_DUPS SHARE_HISTORY
setopt CORRECT

alias c='clear'
alias la='eza -l -a --icons --no-permissions --no-user --no-time --group-directories-first'
alias ls='eza -1 --icons --group-directories-first'
alias ubuntu='proot-distro login ubuntu'
alias bat='batcat -P --style=header,grid'
alias py='python'
alias zi='zoxide query -l | fzf --height 40% --reverse --preview "eza -la {}"'
alias pgstart='pg_ctl -D $PREFIX/var/lib/postgresql start'
alias pgstop='pg_ctl -D $PREFIX/var/lib/postgresql
