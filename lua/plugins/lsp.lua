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
local function filter_node_modules(opts)
	return function(loc)
		local items = vim.tbl_filter(function(item)
			return not string.match(item.filename or "", "node_modules")
		end, loc.items)

		if #items == 0 then
			vim.notify("Solo se encontró definición en node_modules", vim.log.levels.WARN)
			return
		end

		if #items == 1 then
			-- un solo resultado -> saltar directo
			vim.fn.setqflist({}, " ", { title = loc.title, items = items })
			vim.cmd("cfirst")
		else
			-- varios resultados -> quickfix normal
			vim.fn.setqflist({}, " ", { title = loc.title, items = items })
			vim.cmd("copen")
		end
	end
end
-- =========================
-- KEYMAPS LSP
-- =========================
map("n", "<Leader>rn", vim.lsp.buf.rename, _G.wraperDescription(opts, "Variable Rename"))
map({ "n", "x" }, "<Leader>a", vim.lsp.buf.code_action, _G.wraperDescription(opts, "Code Actions"))
map("n", "K", showPreviewSign, _G.wraperDescription(opts, "Show Preview Sign"))
map({ "n", "i" }, "<C-t>", showSign, _G.wraperDescription(opts, "Show Sign"))

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
