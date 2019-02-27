export TERM="xterm-256color"
export GOPATH=$HOME/Projects/go
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/vagrant/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi


