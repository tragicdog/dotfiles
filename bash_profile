#add task to default PATH
PATH=$PATH:usr/local/bin/task
export PATH="$HOME/.node/bin:$PATH"
#export PATH

#changes Prompt
export PS1="Location:: \W "
export EDITOR=/Applications/BBEdit.app/ContentsMacOS/BBEdit

#colors for the ls command
export CLICOLOR=1
#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#alias's to make the shell easier to use
alias ls="ls -aF"
alias desktop="cd ~/Desktop"
alias bash_profile="bbedit ~/.bash_profile"
alias dns_flush="sudo killall -HUP mDNSResponder"

#Vagrant
alias vagrantlocal="cd ~/vagrant-local"
alias vu="~/MyScriptsSym/vagrant-up.sh"
alias vh="~/MyScriptsSym/vagrant-halt.sh"

#homebrew
alias bupdate="brew update -v"
alias bupgrade="brew upgrade -v"
alias bclean="brew cleanup -v"

alias c="clear"

alias bp="source ~/.bash_profile"

#alias wordpress_latest="wget -v -P /Downloads/ http://wordpress.org/latest.zip"

#asks for confirmation on the remove command
alias rm="rm -i"

#open Hosts file in BBEdit
alias edit_hosts="bbedit /private/etc/hosts"

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'

alias ..="cd .."

#Show and Hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

#man pages go to bbedit
alias man='bash ~/ManPages/bbman.sh'

#prints the date with each new window
date


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
