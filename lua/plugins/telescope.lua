local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		prompt_prefix = "   ",
		selection_caret = "➜ ",
		path_display = { "truncate" },

		layout_strategy = "flex",

		layout_config = {
			horizontal = {
				preview_width = 0.55,
			},
			vertical = {
				preview_height = 0.5,
			},
		},

		sorting_strategy = "ascending",

		file_ignore_patterns = {
			"node_modules",
			".git",
			"dist",
			"build",
			".idea",
			"log*",
		},

		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<Esc>"] = actions.close,
			},
		},
	},
})

pcall(telescope.load_extension, "fzf")
