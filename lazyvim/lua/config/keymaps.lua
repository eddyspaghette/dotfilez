-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<esc>")

-- ToggleTerm
vim.keymap.set("n", "<leader>ft", "<cmd>1ToggleTerm direction=float<cr>")
vim.keymap.set("t", "<leader>ft", "<cmd>ToggleTermToggleAll<cr>")
local Terminal = require("toggleterm.terminal").Terminal

-- Function to get the current file name
local function get_current_file()
  return vim.api.nvim_buf_get_name(0)
end

local function get_filename_noext()
  local full_path = vim.api.nvim_buf_get_name(0)
  return string.gsub(full_path, "%.cpp$", "")
end

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

function _ipyth_toggle()
  local ipyth = Terminal:new({
    name = "IPython 3",
    cmd = "ipython",
    close_on_exit = false,
    direction = "float",
    count = 4,
  })
  ipyth:toggle()
end
vim.keymap.set("n", "<leader>ri", "<cmd>lua _ipyth_toggle()<cr>")
vim.keymap.set("t", "<leader>ri", "<cmd>lua _ipyth_toggle()<cr>")

function _pyth_toggle()
  local pyth = Terminal:new({
    name = "Python 3",
    cmd = "python3" .. " " .. get_current_file(),
    close_on_exit = false,
    direction = "float",
    float_ops = {
      border = "double",
    },
    go_back = 0,
    -- hidden = true,
    -- float_opts = {
    --   border = "double",
    -- },
  })
  pyth:toggle()
end
vim.keymap.set("n", "<leader>rp", "<cmd>lua _pyth_toggle()<cr>")
vim.keymap.set("t", "<leader>rp", "<cmd>lua _pyth_toggle()<cr>")

--- C++ / C
local c_flags = " -std=c++11 -O2 -Wall "
function _c_toggle()
  local c = Terminal:new({
    name = "C++/C",
    cmd = "clang++"
      .. c_flags
      .. get_current_file()
      .. " -o "
      .. get_filename_noext()
      .. " && "
      .. get_filename_noext(),
    close_on_exit = false,
    direction = "float",
    go_back = 0,
  })
  c:toggle()
end

vim.keymap.set("n", "<leader>rc", "<cmd>lua _c_toggle()<cr>")
vim.keymap.set("t", "<leader>rc", "<cmd>lua _c_toggle()<cr>")

-- Zoxide
vim.keymap.set("n", "<leader>cd", require("telescope").extensions.zoxide.list)

-- Harpoon
vim.keymap.set("n", "<leader><leader>", require("harpoon.ui").toggle_quick_menu)
vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
vim.keymap.set("n", "L", require("harpoon.ui").nav_next)
vim.keymap.set("n", "H", require("harpoon.ui").nav_prev)
vim.keymap.set("n", "<leader>1", function()
  require("harpoon.ui").nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
  require("harpoon.ui").nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
  require("harpoon.ui").nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
  require("harpoon.ui").nav_file(4)
end)
vim.keymap.set("n", "<leader>5", function()
  require("harpoon.ui").nav_file(5)
end)

-- SmartSplits
-- -- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
vim.keymap.set("n", "<leader>wh", require("smart-splits").resize_left)
vim.keymap.set("n", "<leader>wj", require("smart-splits").resize_down)
vim.keymap.set("n", "<leader>wk", require("smart-splits").resize_up)
vim.keymap.set("n", "<leader>wl", require("smart-splits").resize_right)
-- moving between splits
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
-- swapping buffers between windows
vim.keymap.set("n", "<leader>wL", require("smart-splits").swap_buf_left)
vim.keymap.set("n", "<leader>wJ", require("smart-splits").swap_buf_down)
-- vim.keymap.set("n", "<leader>wk", require("smart-splits").swap_buf_up)
-- vim.keymap.set("n", "<leader>wl", require("smart-splits").swap_buf_right)
