vim.cmd 'colorscheme onebuddy'
vim.cmd 'highlight Normal guibg=NONE'

local opt = vim.opt

opt.pumblend = 17 -- Cool floating window popup menu for completion on command line

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
vim.cmd 'set shortmess+=c'
