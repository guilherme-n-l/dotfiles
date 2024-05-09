local vim = vim
local builtin = require('telescope.builtin')
local trouble = require('trouble')
local harpoonui = require('harpoon.ui')
local teleharpoon = require('telescope').load_extension('harpoon')
local harpoon = require('harpoon.mark')
local conform = require('conform')
local virtual_text_state = false
local g = vim.g
local set = vim.keymap.set

local function toggle_virtual_text()
    virtual_text_state = not virtual_text_state
    if virtual_text_state then
        vim.diagnostic.config({
            virtual_text = true,
        })
    else
        vim.diagnostic.config({
            virtual_text = false,
        })
    end
end


g.mapleader = ' '


------------------------------
--      Navegation
------------------------------

set('n', '<leader>pf', builtin.find_files, {})
set('n', '<leader>pg', builtin.live_grep, {})
set('n', '<leader>pv', vim.cmd.Ex)
set('n', '<leader>hm', harpoon.add_file)
set('n', '<leader>hn', harpoonui.nav_next)
set('n', '<leader>hp', harpoonui.nav_prev)
set('n', '<leader>hv', teleharpoon.marks)
set('n', '<leader>he', harpoonui.toggle_quick_menu)

------------------------------
--      LSP
------------------------------

set("n", "<leader>xx", function () toggle_virtual_text() end)
set("n", "<leader>xf", function()  vim.diagnostic.open_float() end)
set("n", "<leader>xl", function() trouble.toggle("loclist") end)
set("n", "<leader>xv", function() trouble.toggle("document_diagnostics") end)
set('n', '<leader>xu', vim.cmd.UndotreeToggle)
set("n", "gr", function() trouble.toggle("lsp_references") end)
set("n", "gF", function() conform.format() end)

------------------------------
--      Utilities
------------------------------

-- Move selected up and down
set('v', 'J', ":m '>+1<CR>gv=gv")
set('v', 'K', ":m '<-2<CR>gv=gv")

-- Join to line above
set('n', 'J', 'mzJ`z')

set('n', '<C-d>', '<C-d>zz')
set('n', '<C-u>', '<C-u>zz')

-- Search next blazzingly fast
set('n', 'n', 'nzzzv')
set('n', 'N', 'Nzzzv')

