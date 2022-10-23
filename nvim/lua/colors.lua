vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↵")

-- Catppuccin Setup
local catppuccin = require'catppuccin'
catppuccin.setup({
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "italic",
        conditionals = "italic",
        loops = "NONE",
        functions = "NONE",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        coc_nvim = false,
        lsp_trouble = false,
        cmp = true,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = false,
            transparent_panel = false,
        },
        neotree = {
            enabled = false,
            show_root = false,
            transparent_panel = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = true,
        neogit = false,
        vim_sneak = false,
        fern = false,
        barbar = false,
        bufferline = true,
        markdown = true,
        lightspeed = false,
        ts_rainbow = false,
        hop = false,
        notify = true,
        telekasten = true,
        symbols_outline = true,
    }
})

-- Load Catppuccin Color Theme

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- vim.cmd[[colorscheme catppuccin]]
-- vim.cmd[[hi Normal guibg=None ctermbg=None]]
-- vim.cmd[[hi LineNr guibg=None ctermbg=None]]
-- vim.cmd[[hi Folded guibg=None ctermbg=None]]
-- vim.cmd[[hi NonText guibg=None ctermbg=None]]
-- vim.cmd[[hi SpecialKey guibg=None ctermbg=None]]
-- vim.cmd[[hi VertSplit guibg=None ctermbg=None]]
-- vim.cmd[[hi SignColumn guibg=None ctermbg=None]]
-- vim.cmd[[hi EndOfBuffer guibg=None ctermbg=None]]



-- Another Color Theme setup
-- vim.cmd[[colorscheme duskfox]]
vim.cmd[[colorscheme github_dark_default]]
-- vim.cmd[[hi Normal guibg=None ctermbg=None]]
-- vim.cmd[[hi LineNr guibg=None ctermbg=None]]
-- vim.cmd[[hi Folded guibg=None ctermbg=None]]
-- vim.cmd[[hi NonText guibg=None ctermbg=None]]
-- vim.cmd[[hi SpecialKey guibg=None ctermbg=None]]
-- vim.cmd[[hi VertSplit guibg=None ctermbg=None]]
-- vim.cmd[[hi SignColumn guibg=None ctermbg=None]]
-- vim.cmd[[hi EndOfBuffer guibg=None ctermbg=None]]



