return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "/usr/bin/clangd", "--background-index" },
          root_dir = require("lspconfig").util.root_pattern("compile.json", ".clangd"),
        },
      },
    },
  },
}
