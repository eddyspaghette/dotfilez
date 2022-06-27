-- vim blanklines
vim.opt.list = true
vim.opt.listchars:append("eol:↵")

-- blanklines
require("indent_blankline").setup {
    show_end_of_line = true,
}
