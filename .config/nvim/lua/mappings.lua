local silent = { silent = true }
local expr = { expr = true }
local noremap_silent = { noremap = true, silent = true }

local map_key = vim.api.nvim_set_keymap


-- Autocompletion
map_key("i",    "<Tab>",        "v:lua.tab_complete()",                     expr)
map_key("s",    "<Tab>",        "v:lua.tab_complete()",                     expr)
map_key("i",    "<S-Tab>",      "v:lua.s_tab_complete()",                   expr)
map_key("s",    "<S-Tab>",      "v:lua.s_tab_complete()",                   expr)

-- Better window movement
map_key('n',    '<C-h>',        '<C-w>h',                                   silent)
map_key('n',    '<C-l>',        '<C-w>l',                                   silent)

-- Space bar does nothing (except being my leader key)
map_key('n',    '<Space>',      '<NOP>',                                    noremap_silent)

-- Escape
map_key('i',    'jk',           '<ESC>',                                    noremap_silent)

-- Tree
map_key('n',    '<leader>l',    ':NvimTreeToggle<CR>',                      noremap_silent)

-- Telescope
map_key('n',    '<leader>/',    ':Telescope live_grep<CR>',                 noremap_silent)

-- Commenter
map_key("n",    "<leader>cc",   "<Plug>kommentary_line_default",            noremap_silent)
map_key("n",    "<leader>c",    "<Plug>kommentary_motion_default",          noremap_silent)
map_key("v",    "<leader>c",    "<Plug>kommentary_visual_default",          noremap_silent)

-- Colors
map_key("n",    "<F1>",         '<cmd> lua PrevColor()<CR>',             noremap_silent)
map_key("n",    "<F2>",         '<cmd> lua NextColor()<CR>',             noremap_silent)

-- Lsp
map_key('n',    '<leader>gd',   '<cmd>lua vim.lsp.buf.definition()<CR>',     noremap_silent)
map_key('n',    '<leader>gd',   '<cmd>lua vim.lsp.buf.definition()<CR>',     noremap_silent)
map_key('n',    '<leader>gd ',  '<cmd>lua vim.lsp.buf.definition()<CR>',     noremap_silent)
map_key('n',    '<leader>gD ',  '<cmd>lua vim.lsp.buf.declaration()<CR>',    noremap_silent)
map_key('n',    '<leader>gr ',  '<cmd>lua vim.lsp.buf.references()<CR>',     noremap_silent)
map_key('n',    '<leader>gi ',  '<cmd>lua vim.lsp.buf.implementation()<CR>', noremap_silent)
map_key('n',    '<leader>f',    '<cmd>lua vim.lsp.buf.formatting()<CR>',     noremap_silent)
map_key('n',    '<leader>ca',   ':Lspsaga code_action<CR>',                  noremap_silent)
map_key('n',    '<leader>rn',   ':Lspsaga rename<CR>',                       noremap_silent)
map_key('n',    '<leader>K',    ':Lspsaga hover_doc <CR>',                   noremap_silent)
map_key('n',    '[d',           ':Lspsaga diagnostic_jump_prev<CR>',         noremap_silent)
map_key('n',    ']d',           ':Lspsaga diagnostic_jump_next<CR>',         noremap_silent)

-- scroll down hover doc or scroll in definition preview
map_key('n',    '<C-j>',         "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", noremap_silent)
-- scroll up hover doc
map_key('n',    '<C-k>',         "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", noremap_silent)

-- Misc
map_key('n',    '<leader>b',    ':exe ":silent !$BROWSER %"<CR>',                   noremap_silent)
