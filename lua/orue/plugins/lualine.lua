return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"rebelot/kanagawa.nvim", "nvim-tree/nvim-web-devicons"},
  config = function()
    require("lualine").setup({options = {theme = "kanagawa" }})
  end
}
