return {
  -- "neanias/everforest-nvim",
  -- "olimorris/onedarkpro.nvim",
  -- "rebelot/kanagawa.nvim",
  -- "rose-pine/neovim",
  -- name = "rose-pine",
  -- "nyoom-engineering/oxocarbon.nvim",
  -- "ellisonleao/gruvbox.nvim",
  -- "loctvl842/monokai-pro.nvim",
  "gbprod/nord.nvim",
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins {
  opts = {
    "LazyVim/LazyVim",
    -- colorscheme = "rose-pine-moon",
    -- colorscheme = "kanagawa-wave",
    -- colorscheme = "everforest",
    -- colorscheme = "onedark_dark"
  },
  config = function()
    require("nord").setup({
      disable_italics = true,
    })
    vim.cmd.colorscheme("nord")
    -- vim.cmd("colorscheme monokai-pro")
    -- vim.o.background = "dark"
    -- vim.cmd("colorscheme gruvbox")
    -- vim.cmd("colorscheme oxocarbon")
    -- require("rose-pine").setup({ disable_italics = true })
    -- vim.cmd("colorscheme rose-pine-moon")
    -- require("everforest").setup({})
    -- vim.cmd("colorscheme everforest")
  end,
}
