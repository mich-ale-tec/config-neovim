local map = vim.keymap.set

vim.o.sessionoptions = "buffers,curdir,folds,globals,help,tabpages,winsize,skiprtp"

map("n", "<leader>ss", function()
	require("persistence").load()
end, { desc = "Restaurar sesión (esta carpeta)" })
map("n", "<leader>sl", function()
	require("persistence").load({ last = true })
end, { desc = "Restaurar última sesión" })
map("n", "<leader>sS", function()
	require("persistence").select()
end, { desc = "Elegir sesión" })
map("n", "<leader>sd", function()
	require("persistence").stop()
end, { desc = "No guardar sesión al salir" })
