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
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.expandtab = true

		-- =========================
		-- KEYMAPS
		-- =========================
		local opts = { buffer = true, silent = true }

		-- ejecutar script Perl
		map("n", "<F5>", ":!perl %<CR>", opts)

		-- mostrar diagnósticos LSP (si existe)
		map("n", "<leader>e", vim.diagnostic.open_float, opts)
	end,
})
