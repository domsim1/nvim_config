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
    e = { '<cmd>NvimTreeFocus<cr>', 'Focus' },
    t = { '<cmd>NvimTreeToggle<cr>', 'Toggle' },
    f = { '<cmd>NvimTreeFindFile', 'Find File' },
  },
  q = {
    name = 'Quit',
    q = { '<cmd>qa<cr>', 'Quit All' },
    w = { '<cmd>wqa<cr>', 'Quit & Save All' },
  },
  w = { '<cmd>w<cr>', 'Save' },
  c = { '<cmd>bd<cr>', 'Close' },
  ['['] = { '<cmd>BufferLineCycleNext<cr>', 'Next Buffer' },
  [']'] = { '<cmd>BufferLineCyclePrev<cr>', 'Prev Buffer' },
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
  },
  ['.'] = {
    name = 'Debug',
    ['.'] = { dap.toggle_breakpoint, 'Toggle Breakpoint' },
    d = { dap.continue, 'Start/Continue' },
    i = { dap.step_into, 'Step Into' },
    o = { dap.step_out, 'Step Out' },
    s = { dap.step_over, 'Step Over' },
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
  z = { '<cmd>ZenMode<cr>', 'Zen Mode' },
  g = { '<cmd>LazyGit<cr>', 'Lazy Git' },
}, { prefix = '<leader>' })
