-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

vim.keymap.set("n", "<leader>tw", function()
  vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = "Toggle Word Wrap" })
