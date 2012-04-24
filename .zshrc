# User specific aliases and functions
export EDITOR=/usr/local/bin/vim

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

set -o vi

autoload -U compinit promptinit
compinit
promptinit
prompt walters

alias -s ls=ls --color
