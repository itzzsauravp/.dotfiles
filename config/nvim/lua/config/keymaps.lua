-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

vim.keymap.set("n", "<leader>tw", function()
  vim.opt.wrap = not vim.opt.wrap:get()
end, { desc = "Toggle Word Wrap" })

-- Requires 'xclip' installed for this check to see using :checkhealth, check under "clipboard"

-- yank to system clipboard by default
vim.keymap.set({ "n", "v" }, "y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set("n", "Y", '"+Y', { desc = "Yank line to clipboard" })

-- paste from system clipboard by default
vim.keymap.set({ "n", "v" }, "p", '"+p', { desc = "Paste from clipboard" })
vim.keymap.set({ "n", "v" }, "P", '"+P', { desc = "Paste from clipboard" })
