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

PS1=`echo -e "\u2605 "`
PS2="> "

prompt_opts=( cr percent )
precmd () { }
preexec () { }
prompt bart

alias -s ls=ls --color
