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
  automatic_installation = false,
})

local cmplsp_ok, cmplsp = pcall(require, 'cmp_nvim_lsp')
local capabilities = vim.lsp.protocol.make_client_capabilities()
if cmplsp_ok then
  capabilities = cmplsp.default_capabilities(capabilities)
end

vim.lsp.config('*', {
  capabilities = capabilities,
})

-- Configure lua_ls
vim.lsp.config('lua_ls', {
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
})

vim.lsp.config('gopls', {
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
    usePlaceholders = true,
  },
})

local installed_servers = masonlsp.get_installed_servers()

if #installed_servers > 0 then
  vim.lsp.enable(installed_servers)
end
