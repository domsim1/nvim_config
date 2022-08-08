require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'sumneko_lua',
    'gopls',
  }
})

local on_attach = function(client, bufnr)
end

local lsp_flags = {}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['sumneko_lua'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
    },
  },
}

require('lspconfig')['gopls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    gopls = {
      experimentalPostfixCompletions = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
  init_options = {
    usePlaceholders = true
  }
}

