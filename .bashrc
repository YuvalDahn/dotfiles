# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#enable vim-mode in terminal
set -o vi

#Allows you to cd into directory merely by typing the directory name.
shopt -s autocd

# unlimited history file
export HISTFILESIZE=
export HISTSIZE=

# Aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias PS1-short="PS1=\"\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]\""

# PATH
export PATH=$PATH:$HOME/.scripts

#Parameters for less: F - quit if not full screen, r - display colors and all chrachters
export LESS="-Fr"

# Bi-Directional RTL support - requieres bicon
# hack to launch bicon if not launched
#if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
#  exec bicon.bin
#fi
