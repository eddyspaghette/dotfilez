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
	use "EdenEast/nightfox.nvim"
	use ({ 'projekt0n/github-nvim-theme' })
	-- If you are using Packer
	use 'shaunsingh/nord.nvim'

	-- Aesthetics
	use "lukas-reineke/indent-blankline.nvim"
	use "onsails/lspkind.nvim"
	use 'kyazdani42/nvim-web-devicons'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true}
	}

	-- Functionality
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		{'nvim-treesitter/nvim-treesitter-textobjects'}
	}

	use 'voldikss/vim-floaterm' --floating terminal

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use 'mg979/vim-visual-multi'
	use 'mbbill/undotree'


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
	}

	-- Markdown
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- FZF
	use {
		'junegunn/fzf', run = 'fzf#install()',
		{'junegunn/fzf.vim'}
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- FZF Sorter for Telescope

	-- Telescope Extensions
	use 'jvgrootveld/telescope-zoxide'

  -- D2 / Terrastruct
  use 'terrastruct/d2-vim'



end)
