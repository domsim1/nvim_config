vim.g.mapleader = ';'

local wk_ok, wk = pcall(require, 'which-key')
if not wk_ok then
  return
end
local dap_ok, dap = pcall(require, 'dap')
if not dap_ok then
  return
end

wk.register({
  e = {
    name = 'Explore',
    e = { '<cmd>Explore %:p:h<cr>', 'Current Directory' },
    t = { '<cmd>Explore<cr>', 'Working Directory' },
  },
  q = {
    name = 'Quit',
    q = { '<cmd>qa<cr>', 'Quit All' },
    w = { '<cmd>wqa<cr>', 'Quit & Save All' },
  },
  w = { '<cmd>w<cr>', 'Save' },
  c = { '<cmd>bd<cr>', 'Close' },
  ['['] = { '<cmd>bp<cr>', 'Prev Buffer' },
  [']'] = { '<cmd>bn<cr>', 'Next Buffer' },
  p = { '<cmd>set paste!<cr>', 'Toggle Paste Mode' },
  f = {
    name = 'Find',
    f = { '<cmd>Telescope find_files<cr>', 'File' },
    o = { '<cmd>Telescope oldfiles<cr>', 'Recent File' },
    r = { '<cmd>Telescope lsp_references<cr>', 'Reference' },
    s = { '<cmd>Telescope lsp_document_symbols<cr>', 'Document Symbol' },
    w = { '<cmd>Telescope lsp_workspace_symbols<cr>', 'Symbol' },
    i = { '<cmd>Telescope lsp_implementations<cr>', 'Implementation' },
    d = { '<cmd>Telescope lsp_definitions<cr>', 'Definition' },
    t = { '<cmd>Telescope lsp_type_definitions<cr>', 'Type Definition' },
    g = { '<cmd>Telescope grep_string<cr>', 'Grep String' },
    b = { '<cmd>Telescope buffers<cr>', 'Buffers' }
  },
  [';'] = {
    name = 'Debug',
    [';'] = { dap.toggle_breakpoint, 'Toggle Breakpoint' },
    s = { dap.continue, 'Start/Continue' },
    i = { dap.step_into, 'Step Into' },
    u = { dap.step_out, 'Step Out' },
    o = { dap.step_over, 'Step Over' },
    r = { dap.repl.ope, 'Open REPL' },
  },
  h = { vim.lsp.buf.hover, 'Hover' },
  r = { vim.lsp.buf.rename, 'Rename' },
  d = {
    name = 'Diagnostics',
    d = { '<cmd>Telescope diagnostics<cr>', 'Diagnostics' },
    h = { vim.diagnostic.open_float, 'Hover' },
    ['['] = { vim.diagnostic.goto_prev, 'Prev' },
    [']'] = { vim.diagnostic.goto_next, 'Next' },

    a = { vim.lsp.buf.code_action, 'Action' },
  },
}, { prefix = '<leader>' })
