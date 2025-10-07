-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Word wrap toggle keybind
vim.keymap.set("n", "<leader>ww", function()
  vim.opt.wrap = not vim.opt.wrap:get()
  vim.opt.linebreak = true
  print("Word wrap: " .. (vim.opt.wrap:get() and "ON" or "OFF"))
end, { desc = "Toggle Word Wrap" })
