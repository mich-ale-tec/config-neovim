local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- =========================
-- BASICO
-- =========================
map("n", "<Leader>w", ":w<CR>", opts)
map("n", "<Leader>q", ":q<CR>", opts)

-- =========================
-- BUFFERS
-- =========================
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>d", ":bdelete<CR>", opts)

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

-- =========================
-- TREE
-- =========================
map("n", "<S-e>", "<cmd>Neotree toggle<cr>", { desc = "Explorer" })
map("n", "<leader>fe", "<cmd>Neotree reveal<cr>", {
	desc = "Reveal file in explorer",
})
-- =========================
-- LSP
-- =========================
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gy", vim.lsp.buf.type_definition, opts)
map("n", "gi", vim.lsp.buf.implementation, opts)
map("n", "gr", vim.lsp.buf.references, opts)

map("n", "<Leader>rn", vim.lsp.buf.rename, opts)
map({ "n", "x" }, "<Leader>a", vim.lsp.buf.code_action, opts)

-- =========================
-- DIAGNOSTICS
-- =========================
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)

-- FIX: evitar conflicto con resize
map("n", "<Leader>e", vim.diagnostic.open_float, opts)

-- =========================
-- GIT
-- =========================
map("n", "<Leader>gn", "<Plug>(GitGutterNextHunk)", {})
map("n", "<Leader>gp", "<Plug>(GitGutterPrevHunk)", {})
map("n", "<Leader>gs", ":Git<CR>", opts)

-- =========================
-- FLASH
-- =========================
map({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { desc = "Flash jump" })

map({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })
