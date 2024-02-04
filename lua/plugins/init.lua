require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Required
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
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Debug
  use 'leoluz/nvim-dap-go'
  use 'rcarriga/nvim-dap-ui'
  use 'mfussenegger/nvim-dap'

  -- QOL & UI
  use 'folke/which-key.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Color
  use 'rebelot/kanagawa.nvim'
  use {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
    end
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
end)

require('plugins.kanagawa')
require('plugins.telescope')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.dap')
require('plugins.which-key')
require('plugins.gitsigns')
