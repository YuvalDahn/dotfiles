# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"
export PAGER="less"
export FILE="ranger"

# set delay and rate of pressed button
[ ! -z "$DISPLAY" ] && xset r rate 250 40

# Parameters for less: F - quit if not full screen, R - display colors, X - disable termcap
export LESS="-XR"

# Add the scripts folder to the path
export PATH="$HOME/.scripts:$PATH"
export PATH="$PATH:$HOME/go/bin"

# generate shortcuts file
[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

[ -f ~/.bashrc ] && . "$HOME/.bashrc"

[[ ! $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
