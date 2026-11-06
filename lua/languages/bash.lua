vim.lsp.config("bash_lsp", {
	cmd = { "bash-language-server", "start" },
	filetypes = {
		"bash",
		"sh",
		"zsh",
	},
})
vim.lsp.enable("bash_lsp")
