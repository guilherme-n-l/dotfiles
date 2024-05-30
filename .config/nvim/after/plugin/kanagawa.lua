local vim = vim

require("kanagawa").setup({
	compile = false,
	undercurl = true,
	commentStyle = { italic = true },
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	transparent = true,
	dimInactive = false,
	terminalColors = true,
	overrides = function()
		return {
			LineNr = { bg = "none" },
			SignColumn = { bg = "none" },
			GitSignsAdd = { bg = "none" },
			GitSignsChange = { bg = "none" },
			GitSignsDelete = { bg = "none" },
		}
	end,
	theme = "dragon",
})

vim.cmd("colorscheme kanagawa")
