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
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", defaults)
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", defaults)
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", defaults)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", defaults)
map("n", "<leader>fm", "<cmd>Telescope marks<cr>", defaults)
map("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", defaults)
map("n", "<leader>km", "<cmd>Telescope keymaps<cr>", defaults)





map(
	"n",
	"<leader>cd",
	":lua require'telescope'.extensions.zoxide.list{}<CR>",
	{noremap = true, silent = true}
)
