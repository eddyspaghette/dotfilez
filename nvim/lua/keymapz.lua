vim.g.mapleader =","
-- mode, shortcout, command, options
local map = vim.api.nvim_set_keymap
local defaults = { noremap = true, silent = true }
map("i", "jk", "<esc>", defaults)
map("n", ">", "$", defaults)
map("n", "<", "^", defaults)
map("v", "<leader>y", '"+y', defaults)
map("n", "[b", ":bp<cr>", defaults)
map("n", "]b", ":bn<cr>", defaults)
map("n", "[w", "<C-w>h", defaults)
map("n", "]w", "<C-w>l", defaults)
map("n", "<C-h>", "<C-w>h", defaults)
map("n", "<C-l>", "<C-w>l", defaults)
map("n", "<C-j>", "<C-w>j", defaults)
map("n", "<C-k>", "<C-w>k", defaults)
-- map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", defaults)
-- map("n", "<leader>sb", "<cmd>lua require('telescope.builtin').buffers()<cr>C-m", defaults)
map("n", "<leader>ff", "<cmd>:Files<cr>", defaults)
map("n", "<leader>fb", "<cmd>:Buffers<cr>", defaults)
map("n", "<leader>frg", "<cmd>:Rg<cr>", defaults)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", defaults)
map("n", "<leader>fs", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>", defaults)
map("n", "<leader>fd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", defaults)
map("n", "<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", defaults)
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", defaults)
map("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", defaults)
map("n", "<leader>km", "<cmd>Telescope keymaps<cr>", defaults)
map("n", "<leader>x", "<cmd>Telescope diagnostics<cr>", defaults)
map("n", "<leader>t", "<cmd>FloatermNew --opener=drop --height=0.95 --width=0.95 lf<cr>", defaults)
map("n", "<leader>bp", "<cmd>FloatermNew --autoclose=0 --height=0.7 --width=0.7 python3 %<cr>", defaults)
map("n", "<leader>bg", "<cmd>FloatermNew --autoclose=0 --height=0.7 --width=0.7 go run %<cr>", defaults)
map("n", "<leader>bc", "<cmd>FloatermNew --autoclose=0 --height=0.7 --width=0.7 gcc % -o %< && ./%< <cr>", defaults)
map("n", "<leader>bn", "<cmd>FloatermNew --autoclose=0 --height=0.7 --width=0.7 node % <cr>", defaults)
map("n", "<leader>bt", "<cmd>FloatermNew --height=0.7 --width=0.7 tectonic % && open %:r.pdf <cr>", defaults)
map("n", "<leader>g", "<cmd>FloatermNew --height=0.95 --width=0.95 lazygit<cr>", defaults)
map("n", "<leader>o", "<cmd>%bd|e#|bd#<cr>", defaults)
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", defaults)






map(
	"n",
	"<leader>cd",
	":lua require'telescope'.extensions.zoxide.list{}<CR>",
	{noremap = true, silent = true}
)
