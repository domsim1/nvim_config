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

local lua_ls_config = {
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

local gopls_config = {
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

local servers = {
  { 'lua_ls',       lua_ls_config },
  { 'gopls',        gopls_config },
  { 'clangd' },
  { 'bashls' },
  { 'eslint' },
  { 'vtsls' },
  { 'denols' },
  { 'cmake' },
  { 'rust_analyzer' },
  { 'pyright' },
  { 'html' },
  { 'cssls' },
  { 'ocamllsp' },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()

for _, server_data in pairs(servers) do
  local name = server_data[1]

  vim.lsp.config(name, {
    capabilities = capabilities,
    settings = server_data.settings,
    filetypes = server_data.filetypes,
    root_markers = server_data.root_markers,
    cmd = server_data.cmd,
  })

  vim.lsp.enable(name)
end

