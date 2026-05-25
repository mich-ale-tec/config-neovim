local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"typescript",
		"typescriptreact",
		"javascript",
		"javascriptreact",
	},
	capabilities = capabilities,
})

vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = {
		"go",
		"gomod",
	},
	capabilities = capabilities,
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("gopls")

vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "●",
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
	},
})

local signs = {
	Error = "󰅚 ",
	Warn = "󰀪 ",
	Hint = "󰌶 ",
	Info = "󰋽 ",
}

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
		max_width = 80,
		max_height = 20,
	})
end, opts)

vim.keymap.set({ "n", "i" }, "<C-k>", function()
	vim.lsp.buf.signature_help({
		border = "rounded",
	})
end, opts)

vim.keymap.set("n", "<leader>e", function()
	vim.diagnostic.open_float({
		border = "rounded",
		focus = false,
		source = "always",
	})
end, opts)
