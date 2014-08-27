#!/bin/bash

for file in .gemrc .gitconfig .gitignore .pryrc .tmux.conf .vimrc .zshrc .zprofile .zsh
do
  rm -r  $HOME/$file
  echo 'making symlink' $file '->' $HOME/$file
  ln -s `pwd`/$file $HOME/$file
done
