#!/bin/bash

for file in .bashrc .tmux.conf .vimrc
do
  echo 'making symlink ->' $HOME/$file
  ln -s 'pwd'/dotfiles/$file $HOME/file
done
