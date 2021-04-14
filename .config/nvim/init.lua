vim.g.mapleader = ' '

require("settings")
require("plugins")
require("mappings")

vim.cmd("source ~/.config/nvim/vimscript/nerdtree-config.vim")
vim.cmd("source ~/.config/nvim/vimscript/switch-colors.vim")
vim.cmd("call NextColor(0)")
