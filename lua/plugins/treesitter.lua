local ok, config = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

config.setup({
  auto_install = true,
  sync_install = false,
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autopairs = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
  },
  indent = {
    enable = false,
  },
  autotag = {
    enable = true,
  },
})
