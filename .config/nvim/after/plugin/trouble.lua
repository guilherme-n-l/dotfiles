local trouble = require("trouble")

trouble.setup({
	position = "bottom",
	height = 10,
	width = 50,
	icons = true,
	signs = {
		error = "",
		warning = "",
		hint = "",
		info = "󰙎",
	},
	multiline = true,
	indent_lines = true,
})
