require("which-key").setup({
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 9,
		},
		presets = {
			operators = true,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	icons = {
		breadcrumb = "»",
		separator = "➜",
		group = "+",
	},
	win = {
		border = "single",
		padding = { 1, 2 },
	},
	layout = {
		align = "center",
		height = { min = 4, max = 25 },
		spacing = 3,
		timeout = 500,
	},
	show_help = true,
	show_keys = true,
})
