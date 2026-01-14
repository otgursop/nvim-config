vim.g.mapleader = " "

-- Replace in current line only
vim.keymap.set('n', '<leader>r', function()
  local from = vim.fn.input('Replace what: ')
  if from == '' then return end

  vim.cmd('normal! _')
  local found = vim.fn.search(from, 'cnW') > 0
  vim.cmd('normal! ^')

  if not found then
    print('No matches found for "' .. from .. '"')
    return
  end

  local to = vim.fn.input('Replace with (' .. from .. '): ')
  vim.cmd(':s/' .. vim.fn.escape(from, '/') .. '/' .. vim.fn.escape(to, '/') .. '/g')
end, { desc = 'Replace in current line' })

-- Replace in entire file
local function replace_in_entire_file()
    local from = vim.fn.input('Replace what (whole file): ')
    if from == '' then return end

    vim.cmd('silent! let v:save_pos = winsaveview()')
    vim.cmd(string.format('silent! %%s/%s//gn', vim.fn.escape(from, '/')))
    local matches = vim.fn.getline(1, '$')
    local count = 0

    for _, line in ipairs(matches) do
        local _, matchCount = line:gsub(vim.fn.escape(from, '/'), '')
        count = count + matchCount
    end

    vim.cmd('silent! call winrestview(v:save_pos)')

    if count == 0 then
        print('No matches found for "' .. from .. '"')
        return
    end

    local to = vim.fn.input('Replace "' .. from .. '" (' .. count .. ' matches) with: ')
    local command = string.format('%%s/%s/%s/g', vim.fn.escape(from, '/'), vim.fn.escape(to, '/'))
    vim.cmd(command)
    print('Replaced ' .. count .. ' occurrences')
end

vim.keymap.set('n', '<leader>R', replace_in_entire_file, { desc = 'Replace all in file' })

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
