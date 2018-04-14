#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#export LANG=en_US.UTF-8
export LANG=ja_JP.UTF-8

if [ -f ~/.path_local ]; then
  . ~/.path_local
fi

. ~/.dotfiles/.alias_

# Prompt
#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;30m\]\h: \[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\] '

# Auto-completion
complete -cf sudo
complete -cf man

function cd() {
    pushd $1 $HOME > /dev/null
}

# git
source ~/.dotfiles/git-completion.bash

# Swift
source ~/.dotfiles/.swift-package-complete.bash
