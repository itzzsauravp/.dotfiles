return {
  {
    "vyfor/cord.nvim",
    build = "sh build",
    event = "VeryLazy",
    config = function()
      require("cord").setup({
        text = {
          file_browser = "Browsing files",
          plugin_manager = "Configuring plugins",
        },
        buttons = {
          {
            label = "View Repo",
            url = "https://github.com/itzzsauravp",
          },
        },
        editor = {
          client = "Neovim",
        },
      })
    end,
  },
}
