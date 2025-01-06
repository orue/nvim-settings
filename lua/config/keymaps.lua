-- Set leader key
vim.g.mapleader = ' '

-- Quick save
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })

-- Quick quit
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })

-- Telescope
-- vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
