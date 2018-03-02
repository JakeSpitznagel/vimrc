set tabstop=4
colorscheme slate
autocmd BufNewFile,BufRead * if expand('%:t') !~ '\.' | set syntax=python | endif
