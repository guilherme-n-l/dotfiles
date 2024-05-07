local conform = require("conform")
local mason_conform = require("mason-conform")
local mason_lint = require("mason-nvim-lint")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
	},
})

mason_lint.setup({
	automatic_installation = true,
	quiet_mode = false,
})

mason_conform.setup()
