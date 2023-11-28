return {
  "echasnovski/mini.operators",
  version = "*",
  config = function()
    require("mini.operators").setup({
      exchange = {
        prefix = "gz",
        reindent_linewise = true,
      },
      replace = {
        prefix = "g<",
        reindent_linewise = true,
      },
    })
  end,
}
