
local opt = vim.opt
opt.relativenumber = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- search settings
opt.ignorecase = true -- ignore case
opt.smartcase = true -- if mix case then case sensitive

opt.background = "dark"
opt.termguicolors = true
opt.signcolumn = "yes"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

