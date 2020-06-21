# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# enable vim-mode in terminal
set -o vi

# unlimited history file
export HISTFILESIZE=
export HISTSIZE=

# Turn on parallel history
shopt -s histappend
history -a

# Allows you to cd into directory merely by typing the directory name.
shopt -s autocd
# Turn on checkwinsize
shopt -s checkwinsize

# Aliases
[ -f "$HOME/.config/shortcutrc" ] && . "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && . "$HOME/.config/aliasrc" # Load command aliases

# Prompt
PROMPT_DIRTRIM=2 # disaplay only 2 dirs deep
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\w\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Bi-Directional RTL support - requieres bicon
# hack to launch bicon if not launched
#if ! [[ "$(ps -p $(ps -p $(echo $$) -o ppid=) -o comm=)" =~ 'bicon'* ]]; then
#  exec bicon.bin
#fi
