-- This file can be loaded by calling `lua require('useins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	-- Color Themes
	use({
		'catppuccin/nvim',
		as = 'catppuccin'
	})
	-- Indentation & Blankspace
	use "lukas-reineke/indent-blankline.nvim"

	-- Functionality
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		{'nvim-treesitter/nvim-treesitter-textobjects'}
	}


	-- Snippets
	use {
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	}

	-- LSP Installer & Completion
	use {
		'williamboman/nvim-lsp-installer',
		'neovim/nvim-lspconfig',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/nvim-cmp',
		{
			"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
		}
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- FZF Sorter for Telescope

	-- Telescope Extensions
	use 'jvgrootveld/telescope-zoxide'



end)
