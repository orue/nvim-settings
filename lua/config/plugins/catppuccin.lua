return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    flavour = "mocha", -- You can choose between latte, frappe, macchiato, and mocha,
    transparent_background = true,
    config = function()
      integrations = {
        telescope = true,
        treesitter = true,
        nvimtree = true,
      }
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}
