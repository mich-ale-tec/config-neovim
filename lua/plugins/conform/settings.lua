local conform = require("conform")
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local prettier = { "prettierd", "prettier", stop_after_first = true }

local function FormatSave(bufnr)
	if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
		return
	end
	return { timeout_ms = 2000 }
end

local function DarFormatoArchivo()
	conform.format({ async = true })
end

local function DarFormatoAlGuardar()
	vim.g.disable_autoformat = not vim.g.disable_autoformat
	vim.notify("Formato al guardar: " .. (vim.g.disable_autoformat and "OFF" or "ON"))
end

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofmt" },
		javascript = prettier,
		typescript = prettier,
		javascriptreact = prettier,
		typescriptreact = prettier,
		json = prettier,
		html = prettier,
		css = prettier,
		scss = prettier,
		bash = { "shfmt" },
		sh = { "shfmt" },
		ruby = { "rubocop" },
		perl = { "perltidy" },
	},
	default_format_opts = { lsp_format = "fallback" },

	format_on_save = FormatSave,
})

map({ "n", "v" }, "<leader>p", DarFormatoArchivo, _G.wraperDescription(opts, "Dar formato archivo o seleccion"))
map({ "n" }, "<leader>uf", DarFormatoAlGuardar, _G.wraperDescription(opts, "Alternar formato al gudardar"))
