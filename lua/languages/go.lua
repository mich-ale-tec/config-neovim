vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = {
		"go",
		"gomod",
	},
})
vim.lsp.enable("gopls")
