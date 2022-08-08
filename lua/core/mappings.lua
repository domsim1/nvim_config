local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

map('i', 'jj', '<esc>')
map('i', 'kk', '<esc>')

map('n', '<leader>c', ':noh<cr>', { desc = 'Clear Search' })

map('n', '<leader>s', ':w<cr>', { desc = 'Save' })

map('n', '<leader>q', ':qa!<cr>', { desc = 'Quit' })

local wk = require('which-key')
local dap = require('dap')
wk.register({
  t = {
    name = 'Tree',
    t = { '<cmd>Neotree toggle<cr>', 'Toggle' },
    f = { '<cmd>Neotree focus<cr>', 'Focus' },
    n = { '<cmd>Neotree buffer<cr>', 'Buffers' },
  },
  f = {
    name = 'Find',
    f = { '<cmd>Telescope find_files<cr>', 'File' },
    o = { '<cmd>Telescope oldfiles<cr>', 'Recent File' },
    r = { '<cmd>Telescope lsp_references<cr>', 'Reference' },
    s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Document Symbol' },
    w = { '<cmd>Telescope lsp_workspace_symbols<cr>', 'Symbol' },
    i = { '<cmd>Telescope lsp_implementations<cr>', 'Implementation' },
    d = { '<cmd>Telescope lsp_definitions<cr>', 'Definition' },
    l = { '<cmd>Telescope diagnostics<cr>', 'LSP Diagnostics' },
    t = { '<cmd>Telescope lsp_type_definitions<cr>', 'Type Definition' },
  },
  d = {
    name = 'Debug',
    b = { dap.toggle_breakpoint, 'Toggle Breakpoint' },
    d = { dap.continue, 'Start/Continue' },
    i = { dap.step_into, 'Step Into' },
    o = { dap.step_out, 'Step Out' },
    s = { dap.step_over, 'Step Over' },
    r = { dap.repl.ope, 'Open REPL' },
  },
  m = { '<cmd>Mason<cr>', 'Mason' }
}, { prefix = '<leader>' })
