local map = vim.keymap.set
-- =========================
-- FLASH
-- =========================
require("flash").setup()

map({ "n", "x", "o" }, "s", function()
	require("flash").jump()
end, { desc = "Flash jump" })

map({ "n", "x", "o" }, "S", function()
	require("flash").treesitter()
end, { desc = "Flash Treesitter" })

-- =========================
-- TELESCOPE
-- =========================
local builtin = require("telescope.builtin")

map("n", "<C-p>", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help Telescope" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
