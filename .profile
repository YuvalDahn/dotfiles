# ~/.profile: executed by the command interpreter for login shells.

export EDITOR="vim"
export TERMINAL="termite"
export BROWSER="firefox"

# Parameters for less: F - quit if not full screen, R - display colors, X - disable termcap
export LESS="-XRF"

# Add the scripts folder to the path
export PATH=$HOME/.scripts:$PATH

# generate shortcuts file
[ ! -f ~/.config/shortcutrc ] && shortcuts >/dev/null 2>&1

[ -f ~/.bashrc ] && source "$HOME/.bashrc"
