return {
  -- "neanias/everforest-nvim",
  -- "olimorris/onedarkpro.nvim",
  -- "rebelot/kanagawa.nvim",
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins {
  opts = {
    "LazyVim/LazyVim",
    colorscheme = "rose-pine-moon",
    -- colorscheme = "kanagawa-wave",
    -- colorscheme = "everforest",
    -- colorscheme = "onedark_dark"
  },
  config = function()
    require("rose-pine").setup({ disable_italics = true })
    vim.cmd("colorscheme rose-pine-moon")
  end,
}
