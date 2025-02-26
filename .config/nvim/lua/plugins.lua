vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
	use 'nvim-treesitter/nvim-treesitter'
	use 'neovim/nvim-lspconfig'
	use 'tamago324/nlsp-settings.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'

    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    use 'voldikss/vim-floaterm'

	use 'tjdevries/colorbuddy.vim'
    use 'Th3Whit3Wolf/onebuddy'
    use 'bbenzikry/snazzybuddy.nvim'
    use "olimorris/onedarkpro.nvim"
	use 'tjdevries/gruvbuddy.nvim'
    use 'prettier/vim-prettier'

    use 'github/copilot.vim'

	use {
		'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup{} end
	}
    use 'alvan/vim-closetag'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}

	use 'lewis6991/gitsigns.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function() require('Comment').setup {} end
	}

	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'

end)

