local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
  end
})

autocmd('BufWritePre', {
  pattern = '*',
  command = ":%s/\\s\\+$//e"
})

autocmd('BufWritePre', {
  pattern = '*',
  command = ":lua vim.lsp.buf.format()"
})
