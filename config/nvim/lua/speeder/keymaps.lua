vim.g.mapleader = " "
local opts = { silent = true }
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("i", "<C-c>", "<Esc>", opts)
vim.keymap.set("n", "<leader>x", "<cmd>bdelete!<CR>", opts)
vim.keymap.set("n", "[b", "<cmd>bp<CR>", opts)
vim.keymap.set("n", "]b", "<cmd>bn<CR>", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
