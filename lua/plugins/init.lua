require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Required
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'MunifTanjim/nui.nvim' }
  use { 'nvim-lua/plenary.nvim' }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    config = require('plugins.telescope')
  }

  -- LSP
  use { 'williamboman/mason.nvim' }
  use { 'williamboman/mason-lspconfig.nvim' }
  use {
    'neovim/nvim-lspconfig',
    config = require('plugins.lsp')
  }

  -- Autocomplete
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'dcampos/nvim-snippy' }
  use { 'dcampos/cmp-snippy' }
  use {
    'windwp/nvim-autopairs',
    config = require('plugins.autopairs')
  }
  use { 'hrsh7th/cmp-path' }
  use {
    'hrsh7th/nvim-cmp',
    config = require('plugins.cmp')
  }
  -- Treesitter
  use { 'p00f/nvim-ts-rainbow' }
  use { 'windwp/nvim-ts-autotag' }
  use {
    'nvim-treesitter/nvim-treesitter',
    config = require('plugins.treesitter')
  }

  -- Debug
  use { 'leoluz/nvim-dap-go' }
  use { 'rcarriga/nvim-dap-ui' }
  use {
    'mfussenegger/nvim-dap',
    config = require('plugins.dap')
  }

  -- QOL
  use { 'folke/which-key.nvim' }
  use { 'folke/zen-mode.nvim' }
  use { 'kyazdani42/nvim-tree.lua' }

  -- Color
  use {
    'ellisonleao/gruvbox.nvim',
    config = require('plugins.gruvbox')
  }
end)
