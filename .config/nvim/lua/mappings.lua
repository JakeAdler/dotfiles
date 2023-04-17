-- vim: set nowrap :

local utils = require('utils')

local map = utils.map

-- General
map{'n', '<Esc>', '<cmd>noh<CR>', { noremap = false}}
map{'n', '<C-j>', '<C-w>j'}
map{'n', '<C-k>', '<C-w>k'}
map{'n', '<space>f', '<cmd>lua smart_format()<CR>'}
map{'n', '<C-h>', ':lua require("harpoon.mark").add_file()<CR>'}
map{'n', '<C-l>', ':lua require("harpoon.ui").toggle_quick_menu()<CR>'}
map{'n', '<gt>', ':lua require("harpoon.ui").nav_next()<CR>'}
map{'n', '<lt>', ':lua require("harpoon.ui").nav_prev()<CR>'}


-- Tree
map{'n', '<space>l', ':NvimTreeToggle<CR>'}

-- Telescope
map{'n', '<space>/', ':Telescope live_grep<CR>'}
map{'n', '?', '<cmd>try | execute("Telescope git_files") | catch | execute("Telescope find_files") | endtry<CR>'}
map{'n', './', '<cmd>Telescope current_buffer_fuzzy_find<CR>'}

-- LSP
map{'n', '<space>gd',   '<cmd>lua vim.lsp.buf.definition()<CR>'}
map{'n', '<space>gi',   '<cmd>lua vim.lsp.buf.implementation()<CR>'}
map{'n', 'gr',          '<cmd>lua vim.lsp.buf.references()<CR>'}
map{'n', '[d',          '<cmd>lua vim.diagnostic.goto_prev()<CR>'}
map{'n', ']d',          '<cmd>lua vim.diagnostic.goto_next()<CR>'}
map{'n', '<space>k',    '<cmd>lua vim.lsp.buf.hover()<CR>'}
map{'n', '<space>e',    '<cmd>lua vim.diagnostic.open_float()<CR>'}
map{'n', '<space>rn',   '<cmd>lua vim.lsp.buf.rename()<CR>'}
map{'n', '<space>ca',   '<cmd>lua vim.lsp.buf.code_action()<CR>'}

map{'n', '<space>p',   ':split | terminal<CR>'}
map{'n', '<space>c',   ':new term://'}

map{'t', '<ESC>', [[<C-\><C-n>]] }
map{'t', '<C-d>', [[<C-\><C-d>]] }

vim.cmd 'imap <silent><script><expr> <S-Tab> copilot#Accept("<CR>")'
vim.cmd 'let g:copilot_no_tab_map = v:true'
