-- Luasnip
local types = require 'luasnip.util.types'
local luasnip = require'luasnip'

luasnip.config.set_config {
    -- This tells LuaSnip to remember to keep around the last snippet
    -- You can jump back even if you move outside the selection
    history = true,

    updateevents = "TextChanged, TextChangedI",

    -- Autosnippets
    enable_autosnippets = true,
}

vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if luasnip.jumpable(-1) then
        luasnip.jump(-1)
    end
end, { silent = true })

vim.keymap.set("i", "<c-l>", function()
    if luasnip.choice_active() then
        luasnip.change_choice(1)
    end
end, { silent = true })


-- friendly snippets
require("luasnip/loaders/from_vscode").lazy_load()
