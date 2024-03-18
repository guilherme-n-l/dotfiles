local builtin = require('telescope.builtin')
g = vim.g
set = vim.keymap.set

g.mapleader = " "

set('n', '<leader>pf', builtin.find_files, {})
set('n', '<leader>pg', builtin.live_grep, {})
set("n", "<leader>pv", vim.cmd.Ex)

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")
