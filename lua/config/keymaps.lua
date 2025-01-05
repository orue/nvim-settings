-- Set leader key
vim.g.mapleader = ' '

-- Quick save
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })

-- Quick quit
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
