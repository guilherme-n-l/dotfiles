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

local mappings = {
	------------------------------
	--        Navegation        --
	------------------------------

	{ "n", "<leader>ww", vim.cmd.bd },

	-- Telescope
	{
		"n",
		"<leader>pf",
		function()
			builtin.find_files({ hidden = true, no_ignore = true })
		end,
	},
	{ "n", "<leader>pg", builtin.live_grep, {} },
	{ "n", "<leader>pv", vim.cmd.Ex },

	-- Harpoon
	{ "n", "<leader>hm", harpoon.add_file },
	{ "n", "<leader>hn", harpoonui.nav_next },
	{ "n", "<leader>hp", harpoonui.nav_prev },
	{ "n", "<leader>hv", harpoonui.toggle_quick_menu },

	-- Move selected up and down
	{ "v", "J", ":m '>+1<CR>gv=gv" },
	{ "v", "K", ":m '<-2<CR>gv=gv" },

	-- Join to line above
	{ "n", "J", "mzJ`z" },

	{ "n", "<C-d>", "<C-d>zz" },
	{ "n", "<C-u>", "<C-u>zz" },

	-- Search next blazzingly fast
	{ "n", "n", "nzzzv" },
	{ "n", "N", "Nzzzv" },

	------------------------------
	--           LSP            --
	------------------------------

	-- Trouble
	{
		"n",
		"<leader>xx",
		function()
			utils.toggle_virtual_text()
		end,
	},
	{
		"n",
		"<leader>xf",
		function()
			vim.diagnostic.open_float()
		end,
	},
	{
		"n",
		"<leader>xv",
		function()
			trouble.toggle("diagnostics")
		end,
	},
	{
		"n",
		"gr",
		function()
			trouble.toggle("lsp_references")
		end,
	},
	-- Aerial
	{ "n", "<leader>gv", vim.cmd.AerialToggle },
	-- Conform
	{
		"n",
		"<leader>gf",
		function()
			conform.format()
		end,
	},
	{ "n", "<leader>xp", vim.diagnostic.goto_prev },
	{ "n", "<leader>xn", vim.diagnostic.goto_next },
	-- UndoTree
	{ "n", "<leader>xu", vim.cmd.UndotreeToggle },

	------------------------------
	--          Git             --
	------------------------------

	-- Git_worktree
	{
		"n",
		"<leader>wv",
		function()
			teleworktree.git_worktrees()
		end,
	},
	{
		"n",
		"<leader>wa",
		function()
			teleworktree.create_git_worktree()
		end,
	},
}

for i = 1, 9 do
	table.insert(mappings, {
		"n",
		"<leader>" .. i,
		function()
			harpoonui.nav_file(i)
		end,
	})
end

for _, val in pairs(mappings) do
	local mode = val[1]
	local keybind = val[2]
	local func = val[3]
	local opts = val[4] or nil

	if opts then
		set(mode, keybind, func, opts)
	else
		set(mode, keybind, func)
	end
end
