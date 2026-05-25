local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local js_group = augroup("JavaScriptConfig", { clear = true })

autocmd("FileType", {
	group = js_group,
	pattern = {
		"javascript",
		"typescript",
		"javascriptreact",
		"typescriptreact",
		"jsx",
		"tsx",
	},
	callback = function()
		-- =========================
		-- INDENTACIÓN (standard web)
		-- =========================
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true

		-- =========================
		-- KEYMAPS LOCALES
		-- =========================
		local opts = { buffer = true, silent = true }

		-- ejecutar archivo node
		map("n", "<F5>", ":!node %<CR>", opts)
	end,
})
