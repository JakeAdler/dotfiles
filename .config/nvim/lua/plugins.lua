require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  use 'nvim-treesitter/nvim-treesitter'

  use 'windwp/nvim-ts-autotag'

  use 'preservim/nerdtree'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'


  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use {'andymass/vim-matchup', event = 'VimEnter'}

  use 'glepnir/galaxyline.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'tjdevries/colorbuddy.vim'
  use 'Th3Whit3Wolf/onebuddy'


end)

require("plugin-config.lsp")
require("plugin-config.compe")
require("plugin-config.nerdtree")
require("plugin-config.statusline")

require'nvim-treesitter.configs'.setup { autotag = { enable = true } }

