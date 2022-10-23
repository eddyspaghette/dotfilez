require("nvim-lsp-installer").setup{
    ensure_installed = {"gopls", "sumneko_lua", "rust_analyzer"},
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
}
