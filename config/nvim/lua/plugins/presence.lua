-- ~/.config/nvim/lua/plugins/presence.lua
-- Does not work on WSL ( sad ); )
return {
  "andweeb/presence.nvim",
  event = "VeryLazy", -- or "BufEnter", or remove if you want it to load on startup
  config = function()
    require("presence").setup({
      -- OPTIONAL: Customize the rich presence
      neovim_image_text = "The One True Text Editor",
      main_image = "neovim",
      buttons = true,
      show_time = true,
      -- Add more options as needed (check plugin README)
    })
  end,
}
