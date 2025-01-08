return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim"
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-macchiato"
      },
      sections = {
        lualine_c = {
          "filename",
          {
            file_status = true,
            newfile_status = false,
            path = 4,
            symbols = {
              modified = "[+]",
              readonly = "[-]"
            }
          }
        },
      },
    })
  end
}
