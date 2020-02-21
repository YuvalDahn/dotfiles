" General
let mapleader =";"
set number
set relativenumber
set wrap
set linebreak
syntax on
set autoindent
filetype plugin indent on
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set splitright
set splitbelow
set wildmenu
set incsearch

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'mboughaba/i3config.vim'
call plug#end()

" vim-go options
let g:go_fmt_command="goimports"
let g:go_snippet_engine=""
" use gopls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" airline config
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets='<S-tab>'
let g:UltiSnipsJumpForwardTrigger="<Leader>j"
let g:UltiSnipsJumpBackwardTrigger="<Leader>k"
let g:UltiSnipsEditSplit="vertical"
map <Leader>ue :UltiSnipsEdit<CR>

" Remap arrow keys to window management
noremap <Up> <C-w>k
noremap <Down> <C-w>j
noremap <Left> <C-w>h
noremap <Right> <C-w>l
noremap <S-Up> <C-w>K
noremap <S-Down> <C-w>J
noremap <S-Left> <C-w>H
noremap <S-Right> <C-w>L

" Delete entire file
inoremap <Leader>D <Esc>ggdGi
noremap <Leader>D ggdG

" Go Snippets
augroup go
    autocmd!
    " Show by default 4 spaces for a tab
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

    autocmd FileType go nnoremap <Leader>n :cnext<CR>
    autocmd FileType go nnoremap <Leader>N :cprevious<CR>
    autocmd FileType go nnoremap <Leader>f :GoFmt<CR>
    autocmd FileType go nnoremap <Leader>b :GoBuild<CR>
    autocmd FileType go nnoremap <Leader>r :!go build && sudo ./locker /bin/bash
augroup END

