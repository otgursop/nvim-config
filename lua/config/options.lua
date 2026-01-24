local opt = vim.opt
local g = vim.g

g.mapleader = " "
g.maplocalleader = " "

opt.termguicolors = true
opt.background = "dark"

opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true
opt.cursorline = true

opt.wrap = true
opt.scrolloff = 4
opt.sidescrolloff = 8

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

opt.splitbelow = true
opt.splitright = true

opt.mouse = "a"

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.completeopt = { "menu", "menuone", "noselect" }

opt.showmode = false
opt.showcmd = true

opt.laststatus = 3

opt.pumheight = 10
