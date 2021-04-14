local startup = require('packer').startup
local use = require('packer').use

startup(function()
    --
    use 'wbthomason/packer.nvim'

    -- Lsp
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    --use 'onsails/lspkind-nvim'
    --use 'kosayoda/nvim-lightbulb'
    --use 'mfussenegger/nvim-jdtls'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'

     -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'

    -- Status Line and Bufferline
    use 'glepnir/galaxyline.nvim'

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Explorer
    use 'preservim/nerdtree'

    -- Colors
    use 'norcalli/nvim-colorizer.lua'
    use 'sheerun/vim-polyglot'

    -- General
    use 'kevinhwang91/nvim-bqf'

end)

require("plugins.lsp-config")
require("plugins.compe-config")
require("plugins.lspsaga-config")
--require("plugins.lightbulb-config")
require("plugins.telescope-config")
require("plugins.treesitter-config")
require("plugins.galaxyline-config")
