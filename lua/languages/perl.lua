local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local map = vim.keymap.set

-- Grupo para Perl
local perl_group = augroup("PerlConfig", { clear = true })

-- ============ AUTOCOMANDOS ESPECÍFICOS DE PERL ============
autocmd("FileType", {
	group = perl_group,
	pattern = "perl",
	callback = function()
		-- Perl estándar: 4 espacios
		vim.opt_local.tabstop = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.expandtab = true

		-- Habilitar TreeSitter highlighting (si está disponible)
		vim.treesitter.start()

		-- Keymaps específicos
		local opts = { noremap = true, silent = true, buffer = true }

		-- Ejecutar script con Perl
		map("n", "<F5>", ":!perl %<CR>", opts)

		-- Mostrar errores
		map("n", "<C-l>", ":ALEDetail<CR>", opts)
	end,
})

-- ============ PERL-SPECIFIC HIGHLIGHTING ============
-- vim-perl ya proporciona highlighting avanzado
vim.g.perl_fold = 1 -- Descomenta si quieres folding
-- vim.g.perl_fold_blocks = 1

-- ============ PERLCRITIC (LINTING) ============
-- vim.g.ale_perl_perlcritic_showrules = 1
-- Configurable a través de ~/.perlcriticrc
