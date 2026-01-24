vim.g.mapleader = " "

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

-- Open terminal on the right same directory as current buffer
vim.keymap.set('n', '<leader>g', function()
  vim.o.splitright = true
  vim.cmd('vsplit')
  local cwd = vim.fn.expand('%:p:h')
  vim.cmd('cd ' .. vim.fn.fnameescape(cwd))
  vim.cmd('terminal')
  vim.cmd('startinsert')
end)

-- File manager
vim.keymap.set("n", "<C-t>", ":Neotree toggle<CR>")

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
vim.keymap.set('n', '<C-Tab>', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<C-S-Tab>', ':tabprevious<CR>', { desc = 'Previous tab' })
vim.keymap.set('n', '<Leader>tt', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<Leader>tf', ':tabnew ', { desc = 'New tab with file' })
vim.keymap.set('n', '<Leader>tc', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<Leader>to', ':tabonly<CR>', { desc = 'Close other tabs' })

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right' })
vim.keymap.set('n', '<C-Left>', '<C-w><', { desc = 'Window smaller width' })
vim.keymap.set('n', '<C-Right>', '<C-w>>', { desc = 'Window bigger width' })
