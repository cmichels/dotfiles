local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true

opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"

opt.mouse = "a"
opt.showmode = false

opt.breakindent = true
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.inccommand = "split"
opt.cursorline = true

opt.scrolloff = 10

opt.hlsearch = true
opt.colorcolumn = "80"
