set -x GOPATH $HOME

switch (uname)
  case Linux
    set -x PATH $HOME/.fzf/bin $PATH
    source ~/.asdf/asdf.fish
  case Darwin
    set -x HOMEBREW_PREFIX $HOME/homebrew
    set -x PATH $HOME/homebrew/bin $HOME/homebrew/share/git-core/contrib/diff-highlight $PATH
    source ~/homebrew/opt/asdf/asdf.fish
end

abbr -a dc='docker-compose'

function _merge_history --on-event fish_preexec
  history --save
  history --merge
end

function src
  ghq list -p | fzf +s -e --tac --reverse | read dir

  cd $dir
end

function _fzf_history
  _merge_history

  history | fzf +s -e --tac --reverse | read cmd

  commandline $cmd
end

function fish_user_key_bindings
  bind \cr _fzf_history
end

function fish_prompt
	set -l home_escaped (echo -n $HOME | sed 's/\//\\\\\//g')
  set -l pwd (echo -n $PWD | sed "s/^$home_escaped/~/" | sed 's/ /%20/g')
  set -l prompt_symbol '>'

  printf "[%s:%s%s%s]%s " $USER (set_color $fish_color_cwd) $pwd (set_color normal) $prompt_symbol
end

function fish_right_prompt
  printf "[%s]" (date '+%H:%M:%S')
end
