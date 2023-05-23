local function keymap(mode, key, action)
  vim.api.nvim_set_keymap( mode, key, action, { noremap = true, silent = true })
end

-- Leader key
keymap("", "<leader>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Buffer navigation
keymap("n", "H", ":bp<CR>")
keymap("n", "L", ":bn<CR>")
keymap("n", "<leader>c", ":bd<CR>")

-- Windows navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Screen navigation
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "n", "nzz")
keymap("n", "N", "Nzz")

-- Back to normal mode
keymap("i", "jk", "<Esc>")

-- Stay in indent mode
keymap("v", ">", ">gv")
keymap("v", "<", "<gv")

-- Disable highligth
keymap("n", "<leader>h", ":noh<CR>")
