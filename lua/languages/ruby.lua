local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local ruby_group = augroup("RubyConfig", { clear = true })

autocmd("FileType", {
	group = ruby_group,
	pattern = "ruby",
	callback = function()
		-- =========================
		-- INDENTACIÓN RUBY
		-- =========================
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true

		-- =========================
		-- KEYMAPS
		-- =========================
		local opts = { buffer = true, silent = true }

		-- ejecutar archivo ruby
		map("n", "<F5>", ":!ruby %<CR>", opts)

		-- mostrar diagnósticos LSP
		map("n", "<leader>e", vim.diagnostic.open_float, opts)
	end,
})
