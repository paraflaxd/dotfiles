vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected row
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Reset cursor to start of line
vim.keymap.set("n", "J", "mzJ`z")

-- Half page, cursor centered, jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center cursor on next/prev jump
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Overwrite, no copy
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Paste from system clipboard
vim.keymap.set("n", "<leader>P", [["+p]])

-- Makes Ctrl+C works as ESC
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("t", "<C-n>", function() vim.cmd("stopinsert") end)
