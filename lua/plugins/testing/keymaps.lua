local map = vim.keymap.set

-- Yanki
map({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
map({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
map({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
map({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

map("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
map("n", "<c-n>", "<Plug>(YankyNextEntry)")

map({ "n", "x" }, "y", "<Plug>(YankyYank)")
-- Spider
map({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>")
map({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>")
map({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>")
map({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>")
-- sustitute
local opts = { noremap = true }
map({ "n" }, "<leader>e", require("substitute").operator, _G.wraperDescription(opts, ""))
-- harpoon
map("n", "<leader>ha", function()
	require("harpoon"):list():add()
end, { desc = "Harpoon: marcar archivo" })
map("n", "<leader>hh", function()
	local harpoon = require("harpoon")
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: menú" })
map("n", "<leader>hb", function()
	require("harpoon"):list():prev()
end, { desc = "Harpoon: anterior" })
map("n", "<leader>hn", function()
	require("harpoon"):list():next()
end, { desc = "Harpoon: siguiente" })

for i = 1, 4 do
	map("n", "<leader>" .. i, function()
		require("harpoon"):list():select(i)
	end, { desc = "Harpoon " .. i })
end
