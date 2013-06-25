export LANG=en_US.UTF-8

#PROMPT="%m:%n%% "
#PROMPT="%% "
PROMPT="☆  "
RPROMPT="[%~]"
SPROMPT="correct: %R -> %r ? "

if [ -f ~/.path_local ]; then
  . ~/.path_local
fi


export LSCOLORS=exfxcxdxbxegedabagacad

. ~/.dotfiles/.alias_

autoload -U compinit
compinit
zstyle ':completion:*' list-colors ''

autoload bashcompinit
bashcompinit
source ~/.dotfiles/.git-completion.bash

# auto change directory
#
setopt auto_cd

# auto directory pushd that you can get dirs list by cd -[tab]
#
setopt auto_pushd

# command correct edition before each completion attempt
#
setopt correct

# compacked complete list display
#
setopt list_packed

# no remove postfix slash of command line
#
setopt noautoremoveslash

# no beep sound when complete list displayed
#
setopt nolistbeep



