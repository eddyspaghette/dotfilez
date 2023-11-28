return {
  -- amongst your other plugins
  -- { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      shading_factor = "30",
      highlights = {
        -- highlights which map to a highlight group name and a table of it's values
        NormalFloat = {
          link = "none",
        },
        FloatBorder = {
          guifg = "none",
          guibg = "none",
        },
      },
    },
  },
}
