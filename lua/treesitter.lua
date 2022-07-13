require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "go", "python", "lua", "rust" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "javascript" },
    --
    -- Experimental
    indent = {
		    enable = true,
		    disable = {
		    	"python"
		    }
    },

    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        -- disable = { "c", "rust" },

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false
    },
    -- TreeSitter text objects
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
        swap = {
            enable = true,
            swap_next = { ['<leader>a'] = '@parameter.inner' },
            swap_previous = { ['<leader>A'] = '@parameter.inner' },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = { [']a'] = '@function.outer', [']]'] = '@class.outer' },
            goto_next_end = { [']A'] = '@function.outer', [']['] = '@class.outer' },
            goto_previous_start = { ['[a'] = '@function.outer', ['[['] = '@class.outer' },
            goto_previous_end = { ['[A'] = '@function.outer', ['[]'] = '@class.outer' },
        },
        lsp_interop = {
            enable = true,
            peek_definition_code = {
                ['gD'] = '@function.outer',
            },
        },
    }
}
