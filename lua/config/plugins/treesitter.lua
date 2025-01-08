return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-textobjects" }, -- Syntax aware text-objects
      {
        "nvim-treesitter/nvim-treesitter-context",       -- Show code context
        opts = { enable = true, mode = "topline", line_numbers = true }
      }
    },
    config = function()
      local config = require("nvim-treesitter.configs")

      config.setup({
        ensure_installed = {
          "astro", "dockerfile", "gitignore", "go", "gomod", "gosum",
          "gowork", "javascript", "json", "lua", "markdown", "proto",
          "python", "sql", "vue", "yaml", "html", "css", "typescript"
        },
        sync_install = false,
        highlight = {
          enable = true,
          disable = { "csv" } -- preferring chrisbra/csv.vim
        },
        indent = {
          enable = true,
          disable = { "yaml" }
        },
        auto_install = true,
        textobjects = {
          select = {
            enable = true,
            lookahead = true
          }
        }
      })
    end
  }
}
