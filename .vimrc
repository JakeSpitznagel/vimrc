set tabstop=4
set shiftwidth=4
set autoindent
colorscheme slate
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=python | endif
