local map = vim.keymap.set
local opts = { noremap = true, silent = true }

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

-- =========================
-- KEYMAPS
-- =========================
map("n", "gd", vim.lsp.buf.definition, _G.wraperDescription(opts, "Go Definition"))
map("n", "gy", vim.lsp.buf.type_definition, _G.wraperDescription(opts, "Go Type Definition"))
map("n", "gi", vim.lsp.buf.implementation, _G.wraperDescription(opts, "Go Implementation"))
map("n", "gr", vim.lsp.buf.references, _G.wraperDescription(opts, "Go References"))
map("n", "<Leader>rn", vim.lsp.buf.rename, _G.wraperDescription(opts, "Variable Rename"))
map({ "n", "x" }, "<Leader>a", vim.lsp.buf.code_action, _G.wraperDescription(opts, "Code Actions"))
map("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
		max_width = 80,
		max_height = 20,
	})
end, opts)
map({ "n", "i" }, "<C-t>", function()
	vim.lsp.buf.signature_help({
		border = "rounded",
		max_width = 80,
		max_height = 20,
	})
end, opts)

-- =========================
-- DIAGNOSTIC
-- =========================
map("n", "[d", vim.diagnostic.goto_prev, _G.wraperDescription(opts, "Diagnostic Prev"))
map("n", "]d", vim.diagnostic.goto_next, _G.wraperDescription(opts, "Diagnostic Next"))
vim.keymap.set("n", "<leader>e", function()
	vim.diagnostic.open_float({
		border = "rounded",
		focus = false,
		source = "always",
	})
end, _G.wraperDescription(opts, "Diagnostic Open Float"))
