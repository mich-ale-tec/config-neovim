local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

require("telescope").load_extension("luasnip")

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

-- =========================
-- KEYSMAPS
-- =========================
map("n", "gd", builtin.lsp_definitions, _G.wraperDescription(opts, "Go Definition"))
map("n", "gy", builtin.lsp_type_definitions, _G.wraperDescription(opts, "Go Type Definition"))
map("n", "gi", builtin.lsp_implementations, _G.wraperDescription(opts, "Go Implementation"))
map("n", "gr", builtin.lsp_references, _G.wraperDescription(opts, "Go References"))
map("n", "<C-p>", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help Telescope" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
map("n", "<leader>fs", "<cmd>Telescope luasnip<CR>", { desc = "Find Snippets" })

pcall(telescope.load_extension, "fzf")
