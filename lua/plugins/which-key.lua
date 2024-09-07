local ok, wk = pcall(require, 'which-key')
if not ok then
  return
end

wk.setup({
  icons = {
    mappings = false,
    keys = {
      Esc = "esc",
      BS = "bs",
    },
  }
})
