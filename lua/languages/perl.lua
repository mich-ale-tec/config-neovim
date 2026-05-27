local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local perl_group = augroup("PerlConfig", { clear = true })

autocmd("FileType", {
	group = perl_group,
	pattern = "perl",
	callback = function()
		-- =========================
		-- INDENTACIÓN ESTÁNDAR PERL
		-- =========================
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.expandtab = true

		-- =========================
		-- KEYMAPS
		-- =========================
		local opts = { buffer = true, silent = true }

		-- ejecutar script Perl
		map("n", "<F5>", ":!perl %<CR>", opts)
	end,
})
