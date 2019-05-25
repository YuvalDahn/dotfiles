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
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc" # Load command aliases
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases

alias PS1-long="PS1=\"\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]\""
alias PS1-short="PS1=\"\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]\""

PROMPT_DIRTRIM=2 # disaplay only 2 dirs deep
PS1-long

# PATH
export PATH=$PATH:$HOME/.scripts

#Parameters for less: F - quit if not full screen, R - display colors, X - disable termcap
export LESS="-XRF"

# Bi-Directional RTL support - requieres bicon
# hack to launch bicon if not launched
#if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
#  exec bicon.bin
#fi
