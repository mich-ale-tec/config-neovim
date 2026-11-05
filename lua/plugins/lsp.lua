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
-- FUCNTIONS
-- =========================
local function showPreviewSign()
	vim.lsp.buf.hover({
		border = "rounded",
		max_width = 80,
		max_height = 20,
	})
end
local function showSign()
	vim.lsp.buf.signature_help({
		border = "rounded",
		max_width = 80,
		max_height = 20,
	})
end
-- =========================
-- KEYMAPS LSP
-- =========================
map("n", "<Leader>rn", vim.lsp.buf.rename, _G.wraperDescription(opts, "Variable Rename"))
map({ "n", "x" }, "<Leader>a", vim.lsp.buf.code_action, _G.wraperDescription(opts, "Code Actions"))
map("n", "K", showPreviewSign, _G.wraperDescription(opts, "Show Preview Sign"))
map({ "n", "i" }, "<leader>t", showSign, _G.wraperDescription(opts, "Show Sign"))

local function showDiagnostic()
	vim.diagnostic.open_float({
		border = "rounded",
		focus = false,
		source = "always",
	})
end
-- =========================
-- DIAGNOSTIC
-- =========================
map("n", "[d", vim.diagnostic.goto_prev, _G.wraperDescription(opts, "Diagnostic Prev"))
map("n", "]d", vim.diagnostic.goto_next, _G.wraperDescription(opts, "Diagnostic Next"))
map("n", "<leader>e", showDiagnostic, _G.wraperDescription(opts, "Diagnostic Open Float"))
