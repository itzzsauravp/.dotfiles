return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
        "%.lock",
        ".git/",
        "dist",
        "build",
        "ssr",
      },
      layout_strategy = "horizontal",
      layout_config = { preview_width = 0.6 },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)

    -- Optional keybinds
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help Tags" })
  end,
}
