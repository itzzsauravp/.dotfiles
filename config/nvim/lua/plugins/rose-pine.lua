return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true,
      disable_float_background = true,
    })
    vim.cmd("colorscheme rose-pine")

    -- Set black background for everything
    vim.cmd([[
      highlight Normal guibg=#000000
      highlight NormalNC guibg=#000000
      highlight Pmenu guibg=#000000
      highlight FloatBorder guibg=#000000
      highlight NormalFloat guibg=#000000
      highlight TelescopeNormal guibg=#000000
      highlight TelescopeBorder guibg=#000000
      highlight HarpoonBorder guibg=#000000
      highlight VertSplit guibg=#000000
      highlight StatusLine guibg=#000000
      highlight WinSeparator guibg=#000000
      highlight WhichKeyFloat guibg=#000000
      highlight CursorLine guibg=#000000
    ]])
  end,
}
