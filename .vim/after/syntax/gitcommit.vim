" syntax definition for diff part in git commit massage
" According to: https://stackoverflow.com/questions/30247603/making-vim-show-a-git-diff-with-colors-like-a-git-diff-command-red-delete-gree
" Add diff part using:
" $ git config --global commit.verbose true
hi diffAdded ctermfg=LightGreen
hi diffRemoved ctermfg=167

hi diffFile cterm=NONE ctermfg=DarkBlue
hi gitcommitDiff cterm=NONE ctermfg=DarkBlue
hi diffIndexLine cterm=NONE ctermfg=DarkBlue
hi diffLine cterm=NONE ctermfg=DarkBlue
