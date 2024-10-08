local opt = vim.opt

-- General
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.completeopt = 'menu,menuone,noselect'

-- UI
opt.number = true
opt.relativenumber = false
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = 'yes'

-- Tabs
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Performance
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240
-- opt.updatetime = 350

-- Startup
opt.shortmess:append "sI"

-- Netrw Config
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
