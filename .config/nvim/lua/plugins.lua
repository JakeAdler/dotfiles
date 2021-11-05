require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'neovim/nvim-lspconfig'
	use 'tamago324/nlsp-settings.nvim'
	use 'williamboman/nvim-lsp-installer'

    use {'ms-jpq/coq_nvim', branch ='coq' }
    use {'ms-jpq/coq.artifacts', branch= 'artifacts' }
    use { 'ms-jpq/coq.thirdparty', branch = '3p' }

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-lsputils'
    use 'prettier/vim-prettier'
    use 'voldikss/vim-floaterm'
    use 'akinsho/toggleterm.nvim'

	use 'tjdevries/colorbuddy.vim'
    use 'Th3Whit3Wolf/onebuddy'
	use 'tjdevries/gruvbuddy.nvim'
    use 'prettier/vim-prettier'

	use {
		'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup{} end
	}

	use 'nvim-treesitter/nvim-treesitter'

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

