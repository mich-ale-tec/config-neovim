local capabilities = require("cmp_nvim_lsp").default_capabilities()
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

local perl_group = augroup("PerlConfig", { clear = true })

autocmd("FileType", {
	group = perl_group,
	pattern = "perl",
	callback = function()
		vim.treesitter.start(0)
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
vim.lsp.config("perl_lsp", {
	cmd = { "perl-lsp" },
	filetypes = {
		"perl",
	},
	root_markers = { "cpanfile", "Makefile.PL", "Build.PL", ".git" },
	capabilities = capabilities,
})
vim.lsp.enable("perl_lsp")
