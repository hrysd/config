# language
export LANG=ja_JP.UTF-8

# prompt
source $(brew --prefix git)/etc/bash_completion.d/git-prompt.sh
source $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[1;34m\][\w]\[\033[0m\]\[\033[1;32m\]$(__git_ps1)\[\033[00m\]\[\033[1;36m\]>\[\033[0m\] '

# editor
export EDITOR='vim'

# alias
alias tmux="tmux -2"
alias ..="cd .."
alias ...="cd ../.."
alias l="ls -G"
alias ll="ls -lG"
alias la="ls -aG"
alias lla="ls -alG"

alias gti="git"
alias gst="git status -s"
alias gpl="git pull"

alias be="bundle exec"
alias bip='bundle install --path vendor/bundle'

alias mysqlp="mysql --pager='less -S'"
alias mysqlr="mysql -u root -p"
alias pg.start='pg_ctl -l /usr/local/var/postgres/server.log start'
alias pg.stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# path
export PATH=/usr/local/bin:/usr/bin:$PATH
eval "$(rbenv init -)"
export PATH=$HOME/.nodebrew/current/bin:$PATH

# etc
export PGDATA=/usr/local/var/postgres
