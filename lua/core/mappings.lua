vim.g.mapleader = ';'

local wk_ok, wk = pcall(require, 'which-key')
if not wk_ok then
  return
end
local dap_ok, dap = pcall(require, 'dap')
if not dap_ok then
  return
end

wk.add({
  { '<leader>e',  group = 'Explore' },
  { '<leader>ee', '<cmd>Explore %:p:h<cr>',                           desc = 'Current Directory', mode = 'n' },
  { '<leader>et', '<cmd>Explore<cr>',                                 desc = 'Working Directory', mode = 'n' },
  { '<leader>f',  group = 'Find' },
  { '<leader>ff', '<cmd>TelescopeFindFileRoot<cr>',                   desc = 'File',              mode = 'n' },
  { '<leader>fo', '<cmd>Telescope oldfiles<cr>',                      desc = 'Recent File',       mode = 'n' },
  { '<leader>fr', '<cmd>Telescope lsp_references<cr>',                desc = 'Reference',         mode = 'n' },
  { '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>',          desc = 'Document Symbol',   mode = 'n' },
  { '<leader>fw', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', desc = 'Symbol',            mode = 'n' },
  { '<leader>fi', '<cmd>Telescope lsp_implementations<cr>',           desc = 'Implementation',    mode = 'n' },
  { '<leader>fd', '<cmd>Telescope lsp_definitions<cr>',               desc = 'Definition',        mode = 'n' },
  { '<leader>ft', '<cmd>Telescope lsp_type_definitions<cr>',          desc = 'Type Definition',   mode = 'n' },
  { '<leader>fg', '<cmd>TelescopeGrepStringRoot<cr>',                 desc = 'Grep String',       mode = 'n' },
  { '<leader>fb', '<cmd>Telescope buffers<cr>',                       desc = 'Buffers',           mode = 'n' },
  { '<leader>h',  vim.lsp.buf.hover,                                  desc = 'Hover',             mode = 'n' },
  { '<leader>r',  vim.lsp.buf.rename,                                 desc = 'Rename' },
  { '<leader>d',  group = 'Diagnostics' },
  { '<leader>dd', '<cmd>Telescope diagnostics<cr>',                   desc = 'Diagnostics',       mode = 'n' },
  { '<leader>dh', vim.diagnostic.open_float,                          desc = 'Hover',             mode = 'n' },
  { '<leader>da', vim.lsp.buf.code_action,                            desc = 'Action',            mode = 'n' },
})

vim.keymap.set("n", "<tab>", ">>")
vim.keymap.set("n", "<s-tab>", "<<")

vim.keymap.set("v", "<tab>", ">gv")
vim.keymap.set("v", "<s-tab>", "<gv")
