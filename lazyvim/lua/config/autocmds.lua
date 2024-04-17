-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_augroup("Indents", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "Indents",
  pattern = "java",
  command = "setlocal shiftwidth=4 tabstop=4",
})
vim.api.nvim_create_autocmd("FileType", {
  group = "Indents",
  pattern = "cpp",
  command = "setlocal shiftwidth=2 tabstop=2",
})
-- Transparency
-- vim.api.nvim_create_augroup("BG", { clear = true })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight Normal ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight NonText ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight LineNr ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight Folded ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight SpecialKey ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight VertSplit ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight SignColumn ctermbg=NONE guibg=NONE",
-- })
-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = "BG",
--   pattern = "*",
--   command = "highlight EndOfBuffer ctermbg=NONE guibg=NONE",
-- })
