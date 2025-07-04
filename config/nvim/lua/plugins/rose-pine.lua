return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      disable_float_background = true,
    })

    vim.cmd("colorscheme rose-pine")

    -- Make everything transparent
    vim.cmd([[
      highlight Normal guibg=NONE
      highlight NormalNC guibg=NONE
      highlight Pmenu guibg=NONE
      highlight FloatBorder guibg=NONE
      highlight NormalFloat guibg=NONE
      highlight TelescopeNormal guibg=NONE
      highlight TelescopeBorder guibg=NONE
      highlight HarpoonBorder guibg=NONE
      highlight VertSplit guibg=NONE
      highlight StatusLine guibg=NONE
      highlight WinSeparator guibg=NONE
      highlight WhichKeyFloat guibg=NONE
      highlight CursorLine guibg=NONE
    ]])
  end,
}
