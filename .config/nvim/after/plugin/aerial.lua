require("aerial").setup({
	on_attach = function(bufnr) end,
	layout = {
		default_direction = "prefer_right",
		max_width = { 40, 0.2 },
		width = nil,
		min_width = 15,
        placement = "edge",
	},
})
