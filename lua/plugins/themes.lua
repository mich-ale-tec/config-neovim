--[[ require("monokai-pro").setup({
	transparent_background = false,
	terminal_colors = true,
	devicons = true,
	styles = {
		comment = { italic = true },
		keyword = { italic = true },
		type = { italic = true },
		storageclass = { italic = true },
		structure = { italic = true },
		parameter = { italic = true },
		annotation = { italic = true },
		tag_attribute = { italic = true },
	},
	filter = "octagon", -- classic | octagon | pro | machine | ristretto | spectrum
	day_night = {
		enable = false,
		day_filter = "pro",
		night_filter = "spectrum",
	},
	inc_search = "background", -- underline | background
	background_clear = {
		"toggleterm",
		"telescope",
		"renamer",
		"notify",
	},
	plugins = {
		bufferline = {
			underline_selected = false,
			underline_visible = false,
			underline_fill = false,
			bold = true,
		},
		indent_blankline = {
			context_highlight = "default", -- default | pro
			context_start_underline = false,
		},
	},
	override = function(scheme)
		return {}
	end,
	override_palette = function(filter)
		return {}
	end,
	override_scheme = function(scheme, palette, colors)
		return {}
	end,
}) ]]

require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "hard", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})

vim.cmd("colorscheme gruvbox")
--vim.cmd.colorscheme("monokai-pro-octagon")
