local vim = vim
require("telescope").load_extension("git_worktree")

local builtin = require("telescope.builtin")
local trouble = require("trouble")
local harpoonui = require("harpoon.ui")
local harpoon = require("harpoon.mark")
local teleworktree = require("telescope").extensions.git_worktree
local conform = require("conform")
local utils = require("guilh.utils")
local g = vim.g
local set = vim.keymap.set

g.mapleader = " "

------------------------------
--        Navegation        --
------------------------------

set("n", "<leader>ww", vim.cmd.bd)

-- Telescope
set("n", "<leader>pf", function()
	builtin.find_files({ hidden = true, no_ignore = true })
end)
set("n", "<leader>pg", builtin.live_grep, {})
set("n", "<leader>pv", vim.cmd.Ex)

-- Harpoon
set("n", "<leader>hm", harpoon.add_file)
set("n", "<leader>hn", harpoonui.nav_next)
set("n", "<leader>hp", harpoonui.nav_prev)
set("n", "<leader>hv", harpoonui.toggle_quick_menu)
set("n", "<leader>1", function()
	harpoonui.nav_file(1)
end)
set("n", "<leader>2", function()
	harpoonui.nav_file(2)
end)
set("n", "<leader>3", function()
	harpoonui.nav_file(3)
end)
set("n", "<leader>4", function()
	harpoonui.nav_file(4)
end)

-- Move selected up and down
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- Join to line above
set("n", "J", "mzJ`z")

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")

-- Search next blazzingly fast
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

------------------------------
--           LSP            --
------------------------------

-- Trouble
set("n", "<leader>xx", function()
	utils.toggle_virtual_text()
end)
set("n", "<leader>xf", function()
	vim.diagnostic.open_float()
end)
set("n", "gr", function()
    trouble.toggle("lsp_references")
end)
-- Aerial
set("n", "<leader>gv", vim.cmd.AerialToggle)
-- Conform
set("n", "<leader>gf", function()
    conform.format()
end)
set("n", "<leader>xp", vim.diagnostic.goto_prev)
set("n", "<leader>xn", vim.diagnostic.goto_next)
-- UndoTree
set("n", "<leader>xu", vim.cmd.UndotreeToggle)

------------------------------
--          Git             --
------------------------------

-- Git_worktree
set("n", "<leader>wv", function()
	teleworktree.git_worktrees()
end)
set("n", "<leader>wa", function()
	teleworktree.create_git_worktree()
end)
