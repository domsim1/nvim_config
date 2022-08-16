local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then
  return
end

mason.setup()

local masonlsp_ok, masonlsp = pcall(require, 'mason-lspconfig')
if not masonlsp_ok then
  return
end

masonlsp.setup({
  ensure_installed = {
    'sumneko_lua',
    'gopls',
    'yamlls',
    'clangd',
  }
})

local on_attach = function(client, bufnr)
end

local lsp_flags = {}

local cmplsp_ok, cmpslp = pcall(require, 'cmp_nvim_lsp')
if not cmplsp_ok then
  return
end

local capabilities = cmpslp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp_ok, lsp = pcall(require, 'lspconfig')
if not lsp_ok then
  return
end

lsp['sumneko_lua'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
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

lsp['gopls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    gopls = {
      experimentalPostfixCompletions = true,
      analyses = {
        unusedparams = true,
        shadow = false,
      },
      staticcheck = true,
    },
  },
  init_options = {
    usePlaceholders = true
  },
}

lsp['yamlls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ['https://json.schemastore.org/github-workflow.json'] = {
          '.github/workflows/*.yml',
          '.github/workflows/*.yaml',
        },
        -- GoReleaser Schema currently broken
        --  ['https://goreleaser.com/static/schema.json'] = {
        --    '.goreleaser.yaml',
        --    '.goreleaser.yml',
        --    'goreleaser.yaml',
        --    'goreleaser.yml',
        --  }
      }
    }
  }
}

lsp['clangd'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
}
