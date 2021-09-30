
vim.cmd('autocmd StdinReadPre * let s:std_in=1')
vim.cmd('autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif')
