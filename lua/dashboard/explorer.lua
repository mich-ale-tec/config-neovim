---@class DashboardExplorer
local M = {}

---Obtiene la lista de lenguajes configurados en lua/languages
---@return string[] languages Lista de nombres de archivos sin extension.
function M.get_languages()
	local path = vim.fn.stdpath("config") .. "/lua/languages"
	---@type string[]
	local languages = {}
	for name, type in vim.fs.dir(path) do
		if type == "file" then
			local language = name:gsub("%.lua$", "")
			table.insert(languages, language)
		end
	end
	table.sort(languages)
	return languages
end

return M
