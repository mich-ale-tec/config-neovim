vim.g.mapleader = " "
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

---@param opts vim.keymap.set.Opts
---@param descripcion string
_G.wraperDescription = function(opts, descripcion)
	return vim.tbl_extend("force", opts, {
		desc = descripcion,
	})
end

-- =========================
-- FUNCTIONS
-- =========================
local function clearSearchHighlight()
	vim.cmd("nohlsearch")
end
-- =========================
-- BASICO
-- =========================
map("n", "<Leader>w", "<cmd>w<CR>", wraperDescription(opts, "Save"))
map("n", "<leader>q", "<cmd>q<CR>", wraperDescription(opts, "Close"))
map("n", "<leader>-", clearSearchHighlight, wraperDescription(opts, "Clear Search Highlight"))
-- =========================
-- BUFFERS
-- =========================
map("n", "<S-l>", ":BufferLineCycleNext<CR>", wraperDescription(opts, "Next Buffer"))
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", wraperDescription(opts, "Back Buffer"))
-- =========================
-- EDICION
-- =========================
map("i", "jk", "<ESC>", opts)
-- =========================
-- VENTANAS
-- =========================
map("n", "<M-j>", ":resize -2<CR>", opts)
map("n", "<M-k>", ":resize +2<CR>", opts)
map("n", "<M-h>", ":vertical resize -2<CR>", opts)
map("n", "<M-l>", ":vertical resize +2<CR>", opts)
-- =========================
-- TREE
-- =========================
map("n", "<leader>fe", function()
	Snacks.explorer()
end, wraperDescription(opts, "Explorer (abrir/cerrar)"))
map("n", "<leader>fE", function()
	Snacks.explorer.reveal()
end, wraperDescription(opts, "Explorer en el archivo actual"))
