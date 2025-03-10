export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    aliases
    zsh-vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)

source $ZSH/oh-my-zsh.sh

#ZVM_INIT_MODE=sourcing

# Disable Homebrew Analytics
export HOMEBREW_NO_ANALYTICS=1

# MY OWN ALIASES
alias od='ondemand connect'
alias odc='ondemand connect -y $1'
alias vi='vim'
alias ls='ls -l'
alias code='code-fb'
alias top='htop'

alias tkill='pkill -9 tmux'
alias mb='tmux new-session \; \
  send-keys "clear; neofetch; read" C-m \; \
  split-window -h \; \
  select-pane -t 0 \; \
  split-window -v \; \
  send-keys "top" C-m \; \
  select-pane -t 2 \;'
