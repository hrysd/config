# language
export LANG=ja_JP.UTF-8

# prompt
source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh
source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash 
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[1;34m\]\w\[\033[0m\]\[\033[1;32m\]$(__git_ps1)\[\033[00m\]\[\033[0;34m\] >\[\033[0m\] '

# editor
export EDITOR='vim'

# alias
alias tmux="tmux -2"
alias ..="cd .."
alias ...="cd ../.."
alias c="cd"
alias l="ls -G"
alias ll="ls -lG"
alias la="ls -aG"
alias lla="ls -alG"
alias gst="git status"

#Path
export PATH=/usr/local/bin:/usr/bin:$PATH

# RVM default PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# nvm
source ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
