-- =========================
-- LUALINE
-- =========================
require("lualine").setup({
	options = {
		theme = "everforest",
		globalstatus = true,
		icons_enabled = true,
	},
})

-- =========================
-- NVIM TREE
-- =========================
require("nvim-tree").setup({
	view = {
		width = 35,
	},

	renderer = {
		group_empty = true,
	},

	git = {
		enable = true,
	},

	filters = {
		dotfiles = false,
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
-- BUFFER LINE
-- =========================
vim.opt.termguicolors = true
vim.opt.showtabline = 2

-- =========================
-- WHICH KEY
-- =========================
require("which-key").setup()

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
	[[        Welcome back, pai 😎           ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  Nuevo archivo", "<cmd>ene<CR>"),
	dashboard.button("f", "󰱼  Buscar archivo", "<cmd>Telescope find_files<CR>"),
	dashboard.button("r", "  Recientes", "<cmd>Telescope oldfiles<CR>"),
	dashboard.button("q", "󰅚  Salir", "<cmd>qa<CR>"),
}

alpha.setup(dashboard.opts)
