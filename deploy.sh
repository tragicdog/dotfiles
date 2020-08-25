#!/bin/bash

#check to see if git command line is installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is available"
else
  echo "Git is not installed"
  exit 1
fi

cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp -r ~/.vscode ~/.vscode
cp .tmux.conf ~/.tmux.conf
cp -r .oh-my-zsh ~/.oh-my-zsh