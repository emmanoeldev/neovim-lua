local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- General
opt.mouse = 'a'
opt.swapfile = false

-- Editor
opt.number = true
opt.hidden = true
opt.history = 100
opt.synmaxcol = 240
opt.linebreak = true
opt.smartcase = true
opt.showmatch = true
opt.lazyredraw = true
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.colorcolumn = '80'
opt.foldmethod = 'marker'

-- Tabs, indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
