-- =========================
-- LUALINE
-- =========================
require("lualine").setup({
	options = {
		theme = "gruvbox",
		globalstatus = true,
	},
})

-- =========================
-- INDENT BLANKLINE
-- =========================
require("ibl").setup({
	indent = {
		char = "│",
	},
})

-- =========================
-- WHICH KEY
-- =========================
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

-- =========================
-- ALPHA DASHBOARD
-- =========================
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
	[[████╗  ██║██║   ██║██║████╗ ████║]],
	[[██╔██╗ ██║██║   ██║██║██╔████╔██║]],
	[[██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
	[[██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
	[[╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	[[                                       ]],
	[[        Welcome back, mich 😎           ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  Nuevo archivo", "<cmd>ene<CR>"),
	dashboard.button("f", "󰱼  Buscar archivo", "<cmd>Telescope find_files<CR>"),
	dashboard.button("r", "  Recientes", "<cmd>Telescope oldfiles<CR>"),
	dashboard.button("q", "󰅚  Salir", "<cmd>qa<CR>"),
}

alpha.setup(dashboard.opts)
