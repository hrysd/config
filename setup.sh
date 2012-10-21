#!/bin/bash

for file in .bashrc .tmux.conf .vimrc
do
  echo 'making symlink' $file '->' $HOME/$file
  ln -s `pwd`/$file $HOME/$file
done
