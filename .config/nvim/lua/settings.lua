-- require('colorbuddy').colorscheme('snazzybuddy')
vim.cmd("colorscheme onedark")
vim.cmd 'highlight Normal guibg=NONE'
vim.cmd 'set completeopt=menu,menuone,noselect'
-- vim.cmd 'let g:coq_settings = { "auto_start": "shut-up" }'
vim.g.copilot_node_command = "~/.nvm/versions/node/v18.14.2/bin/node"

local opt = vim.opt


opt.pumblend = 17 -- Cool floating window popup menu for completion on command line

vim.cmd 'let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.tsx"'

opt.showmode       = false
opt.showcmd        = true
opt.cmdheight      = 1     -- Height of the command bar
opt.incsearch      = true  -- Makes search act like search in modern browsers
opt.showmatch      = true  -- show matching brackets when text indicator is over them
opt.relativenumber = true  -- Show line numbers
opt.number         = true  -- But show the actual number for the line we're on
opt.ignorecase     = true  -- Ignore case when searching...
opt.smartcase      = true  -- ... unless there is a capital letter in the query
opt.hidden         = true  -- I like having buffers stay around
opt.equalalways    = false -- I don't like my windows changing all the time
opt.splitright     = true  -- Prefer windows splitting to the right
opt.splitbelow     = true  -- Prefer windows splitting to the bottom
opt.updatetime     = 500   -- Make updates happen faster
opt.scrolloff      = 10    -- Make it so there are always ten lines below my cursor
opt.termguicolors  = true
opt.signcolumn     = "yes"

-- Tabs
opt.autoindent     = true
opt.cindent        = true
opt.wrap           = false

opt.tabstop        = 4
opt.shiftwidth     = 4
opt.softtabstop    = 4
opt.expandtab      = true

opt.foldmethod     = 'marker'
opt.foldlevel      = 0
opt.modelines      = 1

opt.belloff        = 'all' -- Just turn the bell off

opt.inccommand     = 'split'
opt.swapfile       = false -- Living on the edge
opt.shada          = { "!", "'1000", "<50", "s10", "h" }

opt.mouse          = 'n'

opt.joinspaces = false         -- Two spaces and grade school, we're done

vim.cmd 'autocmd FileType markdown setlocal wrap linebreak nolist'
vim.cmd 'autocmd TermOpen * setlocal nonumber norelativenumber nocursorline'
vim.cmd 'autocmd FileType floaterm nnoremap <silent> <buffer> <esc> :FloatermToggle<CR>'
vim.cmd 'set shortmess+=c'
vim.cmd 'set clipboard+=unnamedplus'
vim.cmd 'set shell=/bin/zsh'
vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
       vim.cmd("close")
    end
})


-- vim.cmd 'imap <silent><script><expr> <CR> copilot#Accept("\<CR>")'
-- vim.cmd 'let g:copilot_no_tab_map = v:true'
