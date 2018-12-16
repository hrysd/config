set -x PATH $HOME/.fzf/bin $PATH
set -x GOPATH $HOME

source ~/.asdf/asdf.fish

abbr -a dc='docker-compose'

function src
  ghq list -p | fzf +s -e --tac --reverse | read dir

  cd $dir
end

function _fzf_history
  history | fzf +s -e --tac --reverse | read cmd

  commandline $cmd
end

function fish_user_key_bindings
  bind \cr _fzf_history
end
