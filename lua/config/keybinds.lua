-- Save and exit file
vim.keymap.set('n', '<Leader>w', ':w<CR>', { noremap = true })
vim.keymap.set('n', '<Leader>q', ':q<CR>', { noremap = true })

-- Highlight yanked text
vim.api.nvim_create_augroup("highlight_yank", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "highlight_yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 150 }
  end,
})

-- No highlight search
vim.keymap.set('n', '<leader><leader>', ':nohlsearch<CR>', {
  silent = true,
  desc = 'Clear search highlights'
})

-- Exit terminal mode with Esc
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- File manager
vim.keymap.set("n", "<Leader>e", ":Neotree toggle<CR>")

-- Movement --
-- Insert mode
vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', 'kk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', '<C-h>', '<Left>', { noremap = true })
vim.keymap.set('i', '<C-j>', '<Down>', { noremap = true })
vim.keymap.set('i', '<C-k>', '<Up>', { noremap = true })
vim.keymap.set('i', '<C-l>', '<Right>', { noremap = true })

-- Comment line
vim.keymap.set('n', '<C-g>', ':Commentary<CR>')
vim.keymap.set('v', '<C-g>', ':Commentary<CR>')

-- Tabs
vim.keymap.set('n', '<Leader>tn', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<Leader>tp', ':tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<Leader>tt', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<Leader>tf', ':tabnew ', { desc = 'New tab with file' })
vim.keymap.set('n', '<Leader>tc', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<Leader>to', ':tabonly<CR>', { desc = 'Close other tabs' })

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window' })
