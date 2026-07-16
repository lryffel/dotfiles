vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>fs", ":write<CR>")
map("n", "<leader>op", ":Neotree toggle<CR>")
map("n", "<leader>ot", ":silent !alacritty &<CR>")
map("n", "<leader>ww", "<C-w><C-w>")
map("n", "<leader>wh", "<C-w>h")
map("n", "<leader>wl", "<C-w>l")
map("n", "<leader>wj", "<C-w>j")
map("n", "<leader>wk", "<C-w>k")
map("n", "<leader>h", ":noh<CR>")
map("x", "<", "<gv")
map("x", ">", ">gv")
