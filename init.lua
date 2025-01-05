-- init.lua

-- load core config
require("config.options")
require("config.keymaps")


-- Bootstrap and setup the plugin manager (lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

local opts = {}

require("lazy").setup(plugins, opts)

--require catppuccin
require("catppuccin").setup({
  flavour = "mocha", -- You can choose between latte, frappe, macchiato, and mocha
  transparent_background = true
})

--set the colorscheme to it!
vim.cmd.colorscheme "catppuccin"
