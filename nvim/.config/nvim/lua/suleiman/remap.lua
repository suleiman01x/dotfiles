vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pe", vim.cmd.Oil)

vim.keymap.set("", "<C-j>", "<C-w>j")
vim.keymap.set("", "<C-k>", "<C-w>k")
vim.keymap.set("", "<C-h>", "<C-w>h")
vim.keymap.set("", "<C-l>", "<C-w>l")

vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")

vim.o.mouse = ""

vim.keymap.set("n", "<leader>t", function() vim.cmd('te') end)
