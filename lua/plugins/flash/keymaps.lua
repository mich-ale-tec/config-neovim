local map = vim.keymap.set
-- =========================
-- FLASH
-- =========================
require("flash").setup()

local function jump()
	require("flash").jump()
end

local function jumpTreesitter()
	require("flash").treesitter()
end

local function remote()
	require("flash").remote()
end

local function remoteTreesitter()
	require("flash").treesitter_search()
end

local function toogle()
	require("flash").toggle()
end

map({ "n", "x", "o" }, "s", jump, { desc = "Flash jump" })
map({ "n", "x", "o" }, "S", jumpTreesitter, { desc = "Flash Treesitter" })
map({ "o" }, "r", remote, { desc = "Remote Flash" })
map({ "o", "x" }, "R", remoteTreesitter, { desc = "Treesitter search" })
map({ "c" }, "<c-s>", toogle, { desc = "Toogle Flash search" })
