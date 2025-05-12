return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- load early
  config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      contrast = "soft", -- can be "hard", "soft", or ""
      transparent_mode = true,
    })
    vim.cmd.colorscheme("gruvbox")
  end,
}
