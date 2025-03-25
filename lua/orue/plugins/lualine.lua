return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "rebelot/kanagawa.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lualine").setup({
      options = {
        theme = "kanagawa"
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
