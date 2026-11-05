vim.g.mapleader = " "
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

_G.wraperDescription = function(opts, desc)
	return vim.tbl_extend("force", opts, {
		desc = desc,
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
-- VENTANAS / SPLITS
-- =========================
map("n", "<leader>vv", "<C-w>v", wraperDescription(opts, "Split vertical"))
map("n", "<leader>vs", "<C-w>s", wraperDescription(opts, "Split horizontal"))
map("n", "<leader>vx", "<cmd>close<cr>", wraperDescription(opts, "Cerrar ventana"))
map("n", "<leader>vo", "<C-w>o", wraperDescription(opts, "Cerrar las demás ventanas"))
map("n", "<leader>v=", "<C-w>=", wraperDescription(opts, "Igualar tamaños"))
map("n", "<leader>vr", "<C-w>r", wraperDescription(opts, "Rotar ventanas"))
map("n", "<leader>vt", "<C-w>T", wraperDescription(opts, "Mover ventana a una pestaña nueva"))
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
