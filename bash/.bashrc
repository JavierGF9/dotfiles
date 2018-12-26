#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# load aliases from other file
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# force terminal to output color
if [[ $TERM == xterm ]]; then
    export TERM="xterm-256color"
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# __git_ps1 options
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

# PS1 variables
if [[ `[[ -t __git_ps1 ]]` -eq "function" ]]; then
	export PROMPT_COMMAND='__git_ps1 "[\A] \[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput dim)\]\h\[$(tput sgr0)\]\r\n\[$(tput setaf 4)\]\W\[$(tput sgr0)\]" " \[$(tput setaf 2 && tput dim)\]\$\[\$(tput sgr0)\] "'
else
	export PS1="[\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput dim)\]\h\[$(tput sgr0)\]] \[$(tput setaf 4)\]\W\[$(tput sgr0)\]\$ "
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
