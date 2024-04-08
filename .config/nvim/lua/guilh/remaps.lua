local vim = vim
local builtin = require('telescope.builtin')
local trouble = require('trouble')
local harpoonui = require('harpoon.ui')
local teleharpoon = require('telescope').load_extension('harpoon')
local harpoon = require('harpoon.mark')
local g = vim.g
local set = vim.keymap.set

g.mapleader = ' '

set('n', '<leader>pf', builtin.find_files, {})
set('n', '<leader>pg', builtin.live_grep, {})
set('n', '<leader>pv', vim.cmd.Ex)
set('n', '<leader>hm', harpoon.add_file)
set('n', '<leader>hn', harpoonui.nav_next)
set('n', '<leader>hp', harpoonui.nav_prev)
set('n', '<leader>hv', teleharpoon.marks)
set('n', '<leader>xx', function() trouble.toggle() end)
set('n', '<leader>xf', function() trouble.toggle('quickfix') end)

set('v', 'J', ":m '>+1<CR>gv=gv")
set('v', 'K', ":m '<-2<CR>gv=gv")

set('n', 'J', 'mzJ`z')
set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')
