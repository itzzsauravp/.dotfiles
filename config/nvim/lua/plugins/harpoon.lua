return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon.setup()

    local keymap = vim.keymap.set
    keymap("n", "<leader>a", function()
      require("harpoon.mark").add_file()
    end, { desc = "Harpoon Add File" })
    keymap("n", "<leader>h", function()
      require("harpoon.ui").toggle_quick_menu()
    end, { desc = "Harpoon Menu" })
  end,
}
