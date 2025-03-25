local opt = vim.opt


opt.expandtab = true -- Convert tabs to spaces
opt.shiftwidth = 2   -- Amount to indent with << and >>
opt.tabstop = 2      -- How many spaces are shown per Tab
opt.softtabstop = 2  -- How many spaces are applied when pressing Tab

opt.smarttab = true
opt.smartindent = true
opt.autoindent = true -- Keep identation from previous line

-- Enable break indent
opt.breakindent = true

-- Always show relative line numbers
opt.number = true
opt.relativenumber = true

-- Show line under cursor
opt.cursorline = true

-- Store undos between sessions
opt.undofile = true

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 5
