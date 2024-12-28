local vim = vim
local lsp_zero = require("lsp-zero")

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local conform = require("conform")
local mason_conform = require("mason-conform")
local cmp_icons = {
	Variable = "",
	Keyword = "",
	Text = "",
	Property = "󰩊",
	Function = "󰡱",
	Snippet = "",
	Module = "",
	Class = "󰝻",
	Struct = "",
	Constructor = "",
	Field = "",
	Enum = "",
	EnumMember = "",
	Interface = "",
}

------------------------------
--          Cmp             --
------------------------------

cmp.setup({
	window = {
		completion = cmp.config.window,
		documentation = cmp.config.window,
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
		}, {
			{ name = "buffer" },
		}),
	},
	view = {
		entries = { name = "custom", selection_order = "near_cursor" },
		docs = {
			auto_open = false,
		},
	},
	formatting = {
		format = function(_, vim_item)
			local icon = (cmp_icons[vim_item.kind] or "") .. " "
			vim_item.kind = icon .. vim_item.kind
			return vim_item
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-f>"] = cmp_action.luasnip_jump_forward(),
		["<C-b>"] = cmp_action.luasnip_jump_backward(),
		["<C-u>"] = cmp.mapping.scroll_docs(-4),
		["<C-d>"] = cmp.mapping.scroll_docs(4),
		["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		-- ['<C-c>'] = cmp.mapping.complete(),
		-- ["<C-y>"] = cmp.mapping.confirm(),
		["<C-l>"] = cmp.mapping.open_docs(),
		["<C-h>"] = cmp.mapping.close_docs(),
		["<C-k>"] = cmp.mapping.scroll_docs(-4),
		["<C-j>"] = cmp.mapping.scroll_docs(4),
	}),
})

------------------------------
--        Lsp_zero          --
------------------------------

lsp_zero.preset("recommended")

local signs = { Error = " ", Warn = " ", Hint = " ", Info = "󰙎 " }

lsp_zero.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

lsp_zero.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = signs.Error,
		warn = signs.Warn,
		hint = signs.Hint,
		info = signs.Info,
	},
})

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, guibg = "none" })
	vim.cmd(string.format("highlight %s guibg=none", hl))
end

lsp_zero.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

lsp_zero.setup()

------------------------------
--          Mason           --
------------------------------

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"marksman",
		-- "gopls",
	},
	handlers = {
		function(server_name)
			require("lspconfig")[server_name].setup({})
		end,
	},
})

------------------------------
--         Conform          --
------------------------------

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		-- cpp = { "clang-format" },
		-- java = { "clang-format" },
		-- javascript = { "biome" },
		-- go = { "gci", "goimports" },
		-- yaml = { "yamlfmt" },
	},
})

mason_conform.setup()

vim.diagnostic.config({
	virtual_text = false,
})
