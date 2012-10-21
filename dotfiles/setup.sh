#!/bin/bash

for file in .gemrc .gitconfig .gitignore .tmux.conf .vimrc .zshrc .zsh
do
  rm -r  $HOME/$file
  echo 'making symlink' $file '->' $HOME/$file
  ln -s `pwd`/$file $HOME/$file
done
