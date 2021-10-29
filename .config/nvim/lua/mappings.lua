-- vim: set nowrap :

local utils = require('utils')

local map = utils.map


-- General
map{'n', '<Esc>', '<cmd>noh<CR>', { noremap = false}}
map{'n', '<C-j>', '<C-w>j'}
map{'n', '<C-k>', '<C-w>k'}
map{'n', '<space>f', '<cmd>lua smart_format()<CR>'}

-- Tree
map{'n', '<space>l', ':NvimTreeToggle<CR>'}


-- Telescope
map{'n', '<space>/', ':Telescope live_grep<CR>'}
map{'n', '?', '<cmd>try | execute("Telescope git_files") | catch | execute("Telescope find_files") | endtry<CR>'}
map{'n', './', '<cmd>Telescope current_buffer_fuzzy_find<CR>'}

-- LSP
map{'n', '<space>gd', '<cmd>lua vim.lsp.buf.definition()<CR>'}
map{'n', '<space>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>'}
map{'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>'}
map{'n', '[d', '<cmd>Lspsaga diagnosticjump_prev<CR>'}
map{'n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>'}
map{'n', '<space>k', '<cmd>Lspsaga hover_doc<CR>'}
map{'n', '<space>e', '<cmd>Lspsaga show_line_diagnostics<CR>'}
map{'n', '<space>fa', '<cmd>Lspsaga lsp_finder<CR>'}
map{'n', '<space>rn', '<cmd>Lspsaga rename<CR>'}
map{'n', '<space>ca', '<cmd>Lspsaga code_action<CR>'}
