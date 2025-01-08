return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        enabled = true
      }, { "nvim-telescope/telescope-file-browser.nvim", enabled = true }

    },


    config = function()
      require("telescope").setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = { prompt_position = "top" },
        },

        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
          file_browser = {
            path = "%:p:h",         -- open from within the folder of your current buffer
            display_stat = false,   -- don't show file stat
            grouped = true,         -- group initial sorting by directories and then files
            hidden = true,          -- show hidden files
            hide_parent_dir = true, -- hide `../` in the file browser
            hijack_netrw = true,    -- use telescope file browser when opening directory paths
            prompt_path = true,     -- show the current relative path from cwd as the prompt prefix
            use_fd = true           -- use `fd` instead of plenary, make sure to install `fd`
          }
        },
      })


      require("telescope").load_extension("file_browser")
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("ui-select")


      local builtin = require("telescope.builtin")

      -- key maps

      local opts = { noremap = true, silent = true }

      vim.keymap.set("n", "-", ":Telescope file_browser<CR>")         -- Open the file browser
      vim.keymap.set("n", "<leader>ff", builtin.find_files, opts)     -- Lists files in your current working directory, respects .gitignore
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)      -- Grep for a string in your current working directory
      vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, opts) -- Open a list of your recently opened files
    end
  },
}
