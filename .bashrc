# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# unlimited history file
export HISTFILESIZE=
export HISTSIZE=

# Aliases
alias ls='ls --color=auto'
alias cdG='cd ~/Documents/Magshimim/Advanced_Programming/Gallery/'
alias e="exit"
alias r="ranger"
alias cl="clear"
alias dotfiles-git='/usr/bin/git --git-dir=$HOME/.dotfiles-git/ --work-tree=$HOME '

PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias PS1-short="PS1=\"\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]\""

# PATH
export PATH=$PATH:$HOME/.scripts

# Bi-Directional RTL support - requieres bicon
# hack to launch bicon if not launched
#if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
#  exec bicon.bin
#fi
