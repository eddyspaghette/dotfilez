-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<esc>")

-- ToggleTerm
vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set("t", "<leader>ft", "<cmd>ToggleTermToggleAll<cr>")
local Terminal = require("toggleterm.terminal").Terminal
local file_name = vim.fn.expand("%")
local filename_without_ext = vim.fn.expand("%<")

-- Python
local pyth = Terminal:new({
  name = "Python 3",
  cmd = "python3" .. " " .. file_name,
  close_on_exit = false,
  direction = "float",
  -- hidden = true,
  -- float_opts = {
  --   border = "double",
  -- },
})
function _pyth_toggle()
  pyth:open()
end
function _pyth_close()
  pyth:close()
end
vim.keymap.set("n", "<leader>rp", "<cmd>lua _pyth_toggle()<cr>")
vim.keymap.set("t", "<leader>rp", "<cmd>lua _pyth_close()<cr>")

--- C++ / C
local c_flags = " -std=c++11 -O2 -Wall "
local c = Terminal:new({
  name = "C++/C",
  cmd = "clang++" .. c_flags .. file_name .. " -o " .. filename_without_ext .. " && ./" .. filename_without_ext,
  close_on_exit = false,
  direction = "float",
})

function _c_toggle()
  c:open()
end

function _c_close()
  c:open()
end

vim.keymap.set("n", "<leader>rc", "<cmd>lua _c_toggle()<cr>")
vim.keymap.set("t", "<leader>rc", "<cmd>lua _c_close()<cr>")

-- Zoxide
vim.keymap.set("n", "<leader>cd", require("telescope").extensions.zoxide.list)

-- Harpoon
vim.keymap.set("n", "<leader><leader>", require("harpoon.ui").toggle_quick_menu)
vim.keymap.set("n", "<leader>a", require("harpoon.mark").add_file)
vim.keymap.set("n", "H", require("harpoon.ui").nav_next)
vim.keymap.set("n", "L", require("harpoon.ui").nav_prev)
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
