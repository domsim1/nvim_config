require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Required
  use 'kyazdani42/nvim-web-devicons'
  use 'MunifTanjim/nui.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'

  -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  -- Autocomplete
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'dcampos/nvim-snippy'
  use 'dcampos/cmp-snippy'
  use 'windwp/nvim-autopairs'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'

  -- Treesitter
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-treesitter/nvim-treesitter'

  -- Debug
  use 'leoluz/nvim-dap-go'
  use 'rcarriga/nvim-dap-ui'
  use 'mfussenegger/nvim-dap'

  -- QOL & UI
  use 'folke/which-key.nvim'
  use 'folke/zen-mode.nvim'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use { 'akinsho/bufferline.nvim', tag = 'v2.*' }
  use 'lewis6991/gitsigns.nvim'

  -- Color
  use 'ellisonleao/gruvbox.nvim'
end)


require('plugins.gruvbox')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.telescope')
require('plugins.autopairs')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.dap')
require('plugins.which-key')
require('plugins.bufferline')
require('plugins.gitsigns')
