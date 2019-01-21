set tabstop=4
set shiftwidth=4
set autoindent
colorscheme slate
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=python | endif
autocmd FileType python setlocal expandtab

set tags=./tags;/

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-python/python-syntax.git'

call plug#end()

let g:python_highlight_space_errors = 0
let g:python_highlight_all = 1
