# Yuval's Dotfiles

## Installation

### Setting up the repository

```bash
cd $HOME
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/YuvalDahn/dotfiles.git $HOME/.dotfiles
alias dg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dg config --local status.showUntrackedFiles no
mkdir -p .config-backup && dg checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
dg checkout
dg update-index --skip-worktree .config/bmdirs
dg update-index --skip-worktree .config/bmfiles
git config --global include.path "~/.config/gitaliases"
```

## To-Do

- [ ] Change the terminal to `zsh` with `oh-my-zsh` and powerline theme
- [ ] switch `polybar` to `nerd-fonts`and get rid of `siji` font
