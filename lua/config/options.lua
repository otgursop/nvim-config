local opt = vim.opt
local g = vim.g

-- Leader
g.mapleader = " "
g.maplocalleader = " "

-- Clipboard
opt.clipboard = "unnamedplus"

-- Numbers & highlight current line
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- Text & scroll
opt.termguicolors = true
opt.wrap = false

opt.scrolloff = 4
opt.sidescrolloff = 8

-- Tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Windows split
opt.splitbelow = true
opt.splitright = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Mouse
opt.mouse = "a"

-- File
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Complete menu
opt.completeopt = { "menu", "menuone", "noselect" }

-- Line
opt.showmode = false
opt.showcmd = true

-- Ex
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- Perfomance
opt.updatetime = 50

