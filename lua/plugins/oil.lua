require("oil").setup({
	default_file_explorer = false,
	lsp_file_methods = { enabled = true, autosave_changes = true },
	keymaps = {
		["q"] = { "actions.close", mode = "n" },
	},
})
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "-", "<cmd>Oil<CR>", _G.wraperDescription(opts, "Abrir directorio padre"))
