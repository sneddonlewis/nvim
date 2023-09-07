vim.g.mapleader = " "
-- NetRW Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move things highlighted in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- half page up and down with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste over but keep the original yanked to paste again
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- remap ctrl-c to escape
vim.keymap.set("n", "<C-c>", "<Esc>")

-- don't let me accidentally press 'Q' ever
vim.keymap.set("n", "Q", "<nop>")

