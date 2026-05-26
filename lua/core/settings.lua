-- =========================
-- UI BASICA
-- =========================
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.laststatus = 3
-- =========================
-- MOUSE
-- =========================
vim.opt.mouse = "a"

-- =========================
-- CLIPBOARD
-- =========================
vim.opt.clipboard = "unnamedplus"

-- =========================
-- SEARCH
-- =========================
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- =========================
-- INDENTACION DEFAULT
-- =========================
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- =========================
-- BUFFERS
-- =========================
vim.opt.hidden = true

-- =========================
-- UI MODERNA
-- =========================
vim.opt.termguicolors = true

-- =========================
-- LIST CHARS
-- =========================
vim.opt.list = true
vim.opt.listchars = {
	tab = "▸ ",
	trail = "·",
	extends = "→",
	precedes = "←",
	nbsp = "␣",
}
