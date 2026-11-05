local map = vim.keymap.set
local opts = { noremap = true, silent = true }

_G.wraperDescription = function(opts, desc)
	return vim.tbl_extend("force", opts, {
		desc = desc,
	})
end

vim.g.mapleader = " "
-- =========================
-- FUNCTIONS
-- =========================
local function clearSearchHighlight()
	vim.cmd("nohlsearch")
end
local function closeOthersBuffers()
	local current = vim.api.nvim_get_current_buf()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end
-- =========================
-- BASICO
-- =========================
map("n", "<Leader>w", ":w<CR>", wraperDescription(opts, "Save"))
map("n", "<leader>q", ":q<CR>", wraperDescription(opts, "Close"))
map("n", "<leader>-", clearSearchHighlight, wraperDescription(opts, "Clear Search Highlight"))
map("n", "<C-->", "<C-o>", wraperDescription({ silent = true }, "Back Jump"))
map("n", "<leader>bw", closeOthersBuffers, wraperDescription(opts, "Close Other Buffers"))
-- =========================
-- BUFFERS
-- =========================
map("n", "<S-l>", ":BufferLineCycleNext<CR>", wraperDescription(opts, "Next Buffer"))
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", wraperDescription(opts, "Back Buffer"))
map("n", "<leader>d", ":bdelete<CR>", wraperDescription(opts, "Close Current Buffer"))

-- =========================
-- INSERT ESC
-- =========================
map("i", "jk", "<ESC>", opts)

-- =========================
-- VENTANAS
-- =========================
map("n", "<M-j>", ":resize -2<CR>", opts)
map("n", "<M-k>", ":resize +2<CR>", opts)
map("n", "<M-h>", ":vertical resize -2<CR>", opts)
map("n", "<M-l>", ":vertical resize +2<CR>", opts)
