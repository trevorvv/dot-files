-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
-- tools
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	   -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-treesitter/nvim-treesitter'

  use { -- Additional text objects via treesitter
  'nvim-treesitter/nvim-treesitter-textobjects',
  after = 'nvim-treesitter',
  }
  use('nvim-treesitter/playground')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use 'folke/neodev.nvim'
  use 'j-hui/fidget.nvim'

  -- python related
  use 'nvie/vim-flake8'
  use 'tell-k/vim-autopep8'

  -- Git related plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'

  use 'nvim-lualine/lualine.nvim' -- Fancier statusline
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

  -- themes
  use 'aktersnurra/no-clown-fiesta.nvim'
  use 'xiyaowong/transparent.nvim'
end)
