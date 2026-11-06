vim.lsp.config("perl_lsp", {
	cmd = { "perl-lsp" },
	filetypes = {
		"perl",
	},
	root_markers = { "cpanfile", "Makefile.PL", "Build.PL", ".git" },
})
vim.lsp.enable("perl_lsp")
