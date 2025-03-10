-- Optiones
 
local opt = vim.opt

-- Set the encoding to UTF-8
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Enable line numbers and relative line numbers
opt.number = true
opt.relativenumber = true

opt.compatible = false

opt.title = true

opt.hlsearch = true
opt.laststatus = 2
opt.vb = true
opt.ruler = true
opt.spell = true
opt.spelllang = "en_us"
opt.autoindent = true
opt.smartindent = true
opt.colorcolumn = "120"
opt.textwidth = 120
opt.scrollbind = false
opt.wildmenu = true

opt.shell = "zsh"

-- Line Wrapping
opt.wrap = false

-- Cursor Line
opt.cursorline = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 2

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showmode = false

-- Enable mouse support
opt.mouse = 'a'

-- Clipboard
opt.clipboard = 'unnamedplus'
