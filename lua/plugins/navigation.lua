-- =========================
-- FLASH
-- =========================
require("flash").setup()

-- =========================
-- KEYMAPS
-- =========================
local map = vim.keymap.set
local builtin = require("telescope.builtin")

map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Help" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })

map("n", "s", function()
	require("flash").jump()
end, {
	desc = "Flash",
})
