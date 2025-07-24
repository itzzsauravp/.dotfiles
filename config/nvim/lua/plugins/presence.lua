-- ~/.config/nvim/lua/plugins/presence.lua
-- Does not work on WSL ( sad ); )
return {
  "andweeb/presence.nvim",
  event = "VeryLazy", -- or "BufEnter", or remove if you want it to load on startup
  config = function()
    require("presence").setup({
      -- OPTIONAL: Customize the rich presence
      neovim_image_text   = "The One True Text Editor",
      main_image          = "neovim",
      buttons             = true,
      show_time           = true,
      editing_text        = "Editing %s",
      file_explorer_text  = "Browsing %s",
      git_commit_text     = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text        = "Reading %s",
      workspace_text      = "Working on %s",
      line_number_text    = "Line %s out of %s",
      -- Add more options as needed (check plugin README)
    })
  end,
}
