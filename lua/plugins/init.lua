require("lazy").setup({
  -- Required
  'MunifTanjim/nui.nvim',
  'nvim-lua/plenary.nvim',

  -- Telescope
  'nvim-telescope/telescope.nvim',

  -- LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Autocomplete
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'dcampos/nvim-snippy',
  'dcampos/cmp-snippy',
  'hrsh7th/cmp-path',
  'hrsh7th/nvim-cmp',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter',

  -- Debug
  'leoluz/nvim-dap-go',
  'rcarriga/nvim-dap-ui',
  'mfussenegger/nvim-dap',

  -- QOL & UI
  'folke/which-key.nvim',

  -- Git
  'lewis6991/gitsigns.nvim',

  -- Color
  {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
}, {
  ui = {
    icons = {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

require('plugins.telescope')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.dap')
require('plugins.which-key')
require('plugins.gitsigns')
