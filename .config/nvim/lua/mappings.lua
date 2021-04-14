local silent = { silent = true }
local expr = { expr = true }
local noremap_silent = { noremap = true, silent = true }

local map_key = vim.api.nvim_set_keymap

map_key("i", "<Tab>", "v:lua.tab_complete()", expr)
map_key("s", "<Tab>", "v:lua.tab_complete()", expr)
map_key("i", "<S-Tab>", "v:lua.s_tab_complete()", expr)
map_key("s", "<S-Tab>", "v:lua.s_tab_complete()", expr)

-- Better window movement
map_key('n', '<C-h>', '<C-w>h', silent)
map_key('n', '<C-j>', '<C-w>j', silent)
map_key('n', '<C-k>', '<C-w>k', silent)
map_key('n', '<C-l>', '<C-w>l', silent)

-- Space bar does nothing (except being my leader key)
map_key('n', '<Space>', '<NOP>', noremap_silent)

-- Escape
map_key('i', 'jk', '<ESC>', noremap_silent)

-- Plugins

map_key('n', '<leader>l', ':NERDTreeToggle<CR>', noremap_silent)
map_key('n', '<leader>/', ':Telescope live_grep<CR>', noremap_silent)


-- Lsp
map_key('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', noremap_silent)
map_key('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', noremap_silent)
map_key('n', '<leader>gd ', '<cmd>lua vim.lsp.buf.definition()<CR>', noremap_silent)
map_key('n', '<leader>gD ', '<cmd>lua vim.lsp.buf.declaration()<CR>', noremap_silent)
map_key('n', '<leader>gr ', '<cmd>lua vim.lsp.buf.references()<CR>', noremap_silent)
map_key('n', '<leader>gi ', '<cmd>lua vim.lsp.buf.implementation()<CR>', noremap_silent)
map_key('n', '<leader>ca', ':Lspsaga code_action<CR>', noremap_silent)
map_key('n', '<leader>K', ':Lspsaga hover_doc<CR>', noremap_silent)
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
map_key('n', '[d', ':Lspsaga diagnostic_jump_prev<CR>', noremap_silent)
map_key('n', ']d', ':Lspsaga diagnostic_jump_next<CR>', noremap_silent)
-- scroll down hover doc or scroll in definition preview
map_key('n', '<silent> <C-S-j>',  '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', noremap_silent)
-- scroll up hover doc
map_key('n', '<silent> <C-S-k>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', noremap_silent)

vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')
