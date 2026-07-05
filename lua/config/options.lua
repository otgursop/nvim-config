local g = vim.g
local opt = vim.opt

-- Leader keys configuration
g.mapleader = ' '             -- Set Space as the global leader key
g.maplocalleader = '\\'       -- Set Backslash as the local leader key

-- Clipboard settings
opt.clipboard = 'unnamedplus' -- Use system clipboard for copy/paste operations

-- Line numbering settings
opt.number = true             -- Show absolute line numbers
opt.relativenumber = true     -- Show relative line numbers (distance from cursor)

-- Backup and undo history settings
opt.swapfile = false          -- Disable creation of swap files
opt.backup = false            -- Disable creation of backup files
opt.undofile = true           -- Enable persistent undo history across sessions

-- Text wrapping and scrolling behavior
opt.wrap = true               -- Disable automatic line wrapping
opt.smoothscroll = true       -- Enable smooth scrolling animation
opt.scrolloff = 4             -- Keep 4 lines visible above/below cursor vertically
opt.sidescrolloff = 8         -- Keep 8 columns visible left/right of cursor horizontally

-- Status line and command display
opt.showmode = false          -- Hide the current mode indicator in the status line
opt.showcmd = true            -- Show partial commands in the last line of the screen

-- Mouse and cursor appearance
opt.mouse = ''                -- Disable mouse support entirely
opt.guicursor = ''            -- Use default terminal cursor shape (disable GUI overrides)

-- Window splitting behavior
opt.splitright = true         -- Open new vertical splits to the right of current window

-- Indentation and tabulation settings
opt.expandtab = true          -- Convert tabs into spaces when typing
opt.smartindent = true        -- Enable smart auto-indentation for new lines
opt.cindent = true            -- Enable C-style indentation rules
opt.smarttab = true           -- Use shiftwidth for indentation at start of line
opt.shiftwidth = 2            -- Number of spaces used for each step of indentation
opt.softtabstop = 2           -- Number of spaces a Tab character counts for while editing
opt.tabstop = 2               -- Number of spaces a Tab character represents in the file

-- Search behavior settings
opt.hlsearch = true           -- Highlight all matches of the last search pattern
opt.incsearch = true          -- Jump to search match as you type the pattern

-- Visual and color settings
opt.termguicolors = true      -- Enable 24-bit RGB color support in terminal
opt.cursorline = true         -- Highlight the line where the cursor is currently located

-- Performance optimization settings
opt.updatetime = 50           -- Reduce delay for CursorHold events (faster LSP/diagnostics)

-- Syntax and concealment settings
opt.conceallevel = 2          -- Hide concealed text markers (useful for Markdown/JSON)

-- Netrw file explorer settings
vim.g.netrw_banner = 0        -- Hide the header banner in the built-in file explorer
vim.g.netrw_liststyle = 3     -- Set file explorer view to tree-like structure
