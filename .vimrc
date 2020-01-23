" General
let mapleader =";"
set nocompatible
set number
set relativenumber
set wrap
set linebreak
syntax on
set autoindent
set tabstop=4
set showcmd
filetype plugin on

map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Space><Space> <Esc>/<++><CR>c4l

inoremap <Leader>D <Esc>ggdGi
noremap <Leader>D ggdG

" C Snippets
autocmd FileType c inoremap <Leader>i if()<CR>{<CR><Tab><++><CR><BS>}<Esc>3kf(a
autocmd FileType c inoremap <Leader>f for( ;i < <++> ;++i<++>)<CR>{<CR><Tab><++><CR><BS>}<Esc>3kf(aint i = 0

" Bash Snippets
autocmd FileType sh inoremap <Leader>i if <CR>then<CR><Tab><++><CR><BS>fi<Esc>3kA
autocmd FileType sh inoremap <Leader>f for <++> in <++><CR>do<CR><Tab><++><CR><BS>done<Esc>3k0/<++><CR>c4l

" Go Snippets
autocmd FileType go map <Leader>r :!go build && 
autocmd FileType go inoremap <Leader>m must()<CR><++><Esc>kf(a
