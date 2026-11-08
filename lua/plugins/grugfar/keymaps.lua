local map = vim.keymap.set

local function searchReplace()
	require("grug-far").open()
end

local function replaceWordFile()
	require("grug-far").open({
		prefills = {
			search = vim.fn.expand("<cword>"),
			paths = vim.fn.expand("%"),
		},
	})
end

local function replaceWordProject()
	require("grug-far").open({
		prefills = {
			search = vim.fn.expand("<cword>"),
		},
	})
end

local function replaceFile()
	require("grug-far").open({
		prefills = {
			paths = vim.fn.expand("%"),
		},
	})
end

local function replaceSelection()
	require("grug-far").open({
		visualSelectionUsage = "operate-within-range",
	})
end

map({ "n", "x" }, "<leader>sr", searchReplace, { desc = "Buscar y reemplazar (proyecto)" })
map({ "n" }, "<leader>sw", replaceWordFile, { desc = "Reemplazar palabra bajo el cursor" })
map({ "n" }, "<leader>sp", replaceWordProject, { desc = "Reemplazar palabra bajo el cursor (proyecto)" })
map({ "n" }, "<leader>sf", replaceFile, { desc = "Reemplazar solo en este archivo" })
map({ "n", "x" }, "<leader>si", replaceSelection, { desc = "Reemplazar dentro de la selección" })
