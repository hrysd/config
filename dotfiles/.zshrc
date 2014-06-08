#! /bin/zsh
unset RUBYOPT

# homebrew
case $OSTYPE in
  darwin*)
    export PATH=/usr/local/bin:/usr/bin:$PATH
    source `brew --prefix`/etc/profile.d/z.sh
  ;;
  linux*)
    source /usr/share/z/z.sh
    export PATH=~/.bin:$PATH
    alias ls='ls --color'
  ;;
esac

# use Emacs keybind
bindkey -e

setopt auto_cd

# alias
alias be='bundle exec'
alias bip='bundle install --path vendor/bundle'
alias gst='git status -s'
alias ag='ag --pager="less -R"'

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt hist_ignore_dups
setopt share_history

# load comletion file
fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit -u

# vcs
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr "+"
zstyle ':vcs_info:*' unstagedstr "!"
zstyle ':vcs_info:*' formats '(%b%c%u)'
zstyle ':vcs_info:*' actionformats '(%b|%a%c%u)'

precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# prompt
PROMPT='%B%F{blue}[%m:%~]%f%b%1(v|%B%F{green}%1v%f%b|)%B%F{blue}>%f%b '
RPROMPT='%B%F{blue}[%*]%f%b'

# etc
eval "$(rbenv init -)"
export PATH=$HOME/.nodebrew/current/bin:$PATH

export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH
