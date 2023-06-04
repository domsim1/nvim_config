local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then
  return
end

mason.setup()

local masonlsp_ok, masonlsp = pcall(require, 'mason-lspconfig')
if not masonlsp_ok then
  return
end

masonlsp.setup()

local cmplsp_ok, cmpslp = pcall(require, 'cmp_nvim_lsp')
if not cmplsp_ok then
  return
end

local capabilities = cmpslp.default_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp_ok, lsp = pcall(require, 'lspconfig')
if not lsp_ok then
  return
end

lsp['lua_ls'].setup {
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
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ['https://json.schemastore.org/github-workflow.json'] = {
          '.github/workflows/*.yml',
          '.github/workflows/*.yaml',
        },
      }
    }
  }
}

lsp['clangd'].setup {
  capabilities = capabilities,
}

lsp['tsserver'].setup {
  capabilities = capabilities,
}

lsp['zls'].setup {
  capabilities = capabilities
}

lsp['cmake'].setup {
  capabilities = capabilities
}

lsp['rust_analyzer'].setup {
  capabilities = capabilities
}

lsp['pyright'].setup {
  capabilities = capabilities
}

lsp['cssls'].setup {
  capabilities = capabilities
}

lsp['html'].setup {
  capabilities = capabilities
}
