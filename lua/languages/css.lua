vim.lsp.config("cssls", {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = {
		"css",
		"scss",
		"less",
		"sass",
	},
})
vim.lsp.enable("cssls")
