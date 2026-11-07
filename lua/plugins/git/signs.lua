require("gitsigns").setup({
	signs = {
		add = { text = "┃" },
		change = { text = "┃" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	signs_staged = {
		add = { text = "┃" },
		change = { text = "┃" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
		untracked = { text = "┆" },
	},
	signs_staged_enable = true,
	signcolumn = true,
	numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		follow_files = true,
	},
	auto_attach = true,
	attach_to_untracked = false,
	current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
		virt_text_priority = 100,
		use_focus = true,
	},
	current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
	blame_formatter = nil, -- Use default
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000, -- Disable if file is longer than this (in lines)
	preview_config = {
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
})

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "]h", "<cmd>Gitsigns next_hunk<CR>", {
	desc = "Next hunk",
})

map("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", {
	desc = "Previous hunk",
})

map("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", {
	desc = "Stage hunk",
})

map("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", {
	desc = "Reset hunk",
})

map("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", {
	desc = "Preview hunk",
})

map("n", "<leader>hb", "<cmd>Gitsigns blame_line<CR>", {
	desc = "Blame line",
})
-- =========================
-- Diff view
-- =========================
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", _G.wraperDescription(opts, "Open diff view"))
map("n", "<leader>gD", "<cmd>DiffviewClose<cr>", _G.wraperDescription(opts, "Close diff view"))
