-- Neovim Completion
local has_words_before = function()
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
local cmp = require'cmp'
local luasnip = require'luasnip'
local lspkind = require('lspkind')
cmp.setup({
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text', -- show only symbol annotations
			maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

			-- The function below will be called before any actual modifications from lspkind
			-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
			-- before = function (entry, vim_item)
			-- 	...
			-- 	return vim_item
			-- end
		})
	},
	snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-k>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),

    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- 
local lspconfig = require('lspconfig')

local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
end

-- Emmet LSP
lspconfig.emmet_ls.setup{
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = { "html", "css", "scss", "javascript", "typescriptreact", "javascriptreact" },
}

-- TSS
-- lspconfig.tsserver.setup{
--     capabilities = capabilities,
--     on_attach = on_attach,
--     filetypes = { "html", "css", "scss", "javascript", "typescriptreact", "javascriptreact" },
-- }


-- Python LSP
lspconfig.pyright.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
-- Lua LSP
-- lspconfig.sumneko_lua.setup{
--     capabilities = capabilities,
--     on_attach = on_attach
-- }

-- Go LSP
lspconfig.gopls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
-- Python LSP
lspconfig.pyright.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
--Docker LSP
lspconfig.dockerls.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
--LaTex LSP
lspconfig.texlab.setup{
    filetypes = { 'plaintex', 'tex', 'bib'},
    capabilities = capabilities,
    on_attach = on_attach,
		settings = {
			texlab = {
				rootDirectory = nil,
				build = {
					executable = 'tectonic',
					args = { '%f' },
					onSave = true,
					-- forwardSearchAfter = true,
			},
			-- forwardSearch = {
			-- 	executable = 'zathura',
			-- 	args = { '%p' },
			-- },
		}
	},
}


