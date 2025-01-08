local opt = vim.opt


opt.encoding = "utf-8"

-- Enable line numbers and relative line numbers
opt.number = true
-- vim.opt.relativenumber = true

opt.compatible = false

opt.hlsearch = true
opt.laststatus = 2
opt.vb = true
opt.ruler = true
opt.spell = true
opt.spelllang = "en_us"
opt.autoindent = true
opt.colorcolumn = "120"
opt.textwidth = 120
opt.scrollbind = false
opt.wildmenu = true

-- Set tab width and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true



-- Enable mouse support
opt.mouse = 'a'

-- Set clipboard to use system clipboard
opt.clipboard = 'unnamedplus'
