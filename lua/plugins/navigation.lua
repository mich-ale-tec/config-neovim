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

map({ "n", "x", "o" }, "s", jump, { desc = "Flash jump" })
map({ "n", "x", "o" }, "S", jumpTreesitter, { desc = "Flash Treesitter" })
