return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
          "astro", "dockerfile", "gitignore", "go", "gomod", "gosum",
          "gowork", "javascript", "json", "lua", "markdown", "proto",
          "python", "sql", "vue", "yaml", "html", "css", "typescript"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true, disable = { "yaml" } },
        auto_install = true
      })
    end
  }
}
