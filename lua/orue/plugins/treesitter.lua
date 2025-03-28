return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        { "nvim-treesitter/nvim-treesitter-textobjects" }, -- Syntax aware text-objects
        {
            "nvim-treesitter/nvim-treesitter-context",       -- Show code context
            opts = { enable = true, mode = "topline", line_numbers = true }
        }
    },
    config = function () 
        local configs = require("nvim-treesitter.configs")

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {"markdown"},
            callback = function(ev)
                -- treesitter-context is buggy with Markdown files
                require("treesitter-context").disable()
            end
        })

        configs.setup({
            ensure_installed = {
                "lua",
                "python",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "javascript",
                "typescript",
                "vue",
                "astro",
                "svelte",
                "tsx",
                "c",
                "cpp",
                "sql",
                "regex",
                "terraform",
                "dockerfile",
                "prisma",
                "markdown",
                "markdown_inline",
                "vimdoc",
                "json",
                "gitignore",
                "git_config",
                "graphql",
                "yaml",
                "toml",
                "xml",
                "make",
                "cmake",
                "comment",
                "bash",
                "html",
                "css",
            },
            highlight = { 
                enable = true,
                disable = { "csv" }
            },
            indent = {enable = true},
            auto_install = true,
            sync_install = false,
            textobjects = {select = {enable = true, lookahead = true}},
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>",
                    node_incremental = "<Enter>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },
            textobjects = {select = {enable = true, lookahead = true}}
        })
    end
}

