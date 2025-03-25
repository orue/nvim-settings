-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- Oil Key
keymap.set("n", "-", "<CMD>Oil<CR>", {desc="Open parent directory"})
