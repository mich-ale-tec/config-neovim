local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.o.winborder = "rounded"

vim.diagnostic.config({
	virtual_text = { spacing = 4, prefix = "●" },
	severity_sort = true,
	float = { source = true },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
		},
	},
})

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
map({ "n" }, "<leader>t", showSign, _G.wraperDescription(opts, "Show Sign"))

local function showDiagnostic()
	vim.diagnostic.open_float({
		border = "rounded",
		focus = false,
		source = true,
	})
end
-- =========================
-- DIAGNOSTIC
-- =========================
map("n", "<leader>e", showDiagnostic, _G.wraperDescription(opts, "Diagnostic Open Float"))
