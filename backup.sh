#!/bin/bash

#check to see if git command line is installed in this machine
IS_GIT_AVAILABLE="$(git --version)"
if [[ $IS_GIT_AVAILABLE == *"version"* ]]; then
  echo "Git is available"
else
  echo "Git is not installed"
  exit 1
fi

#copy VS_Code files
#cp $HOME/Library/Application\ Support/Code/User/{keybindings.json,settings.json,spellright.dic} .

#cp -r $HOME/Library/Application\ Support/Code/User/snippets .

code --list-extensions --show-versions >> ../..vscode/extensions.txt

#copy other dot files
cp ~/.zshrc .
cp ~/.vimrc .
cp ~/.vscode .
cp ~/.tmux.conf .

#check git status
gs="$(git status | grep -i "modified")"
# echo "${gs}"

# If there is a new change
if [[ $gs == *"modified"* ]]; then
  echo "push"
fi

# push to Github
git add -u;
git commit -m "new backup `date +'%Y-%m-%d %H:%M:%S'`";
git push origin master