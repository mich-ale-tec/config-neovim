---@class DashboardBuffer
local M = {}

local TITLE = {
	"ArchMich Dashboard",
}
local SECTION_LANGUAGES = "Languages"

---@param lines string[]
local function newline(lines)
	table.insert(lines, "")
end

---@param lines string[]
---@param line string
local function add_line(lines, line)
	table.insert(lines, line)
end

---@param lines string[]
local function add_title(lines)
	for _, line in ipairs(TITLE) do
		add_line(lines, line)
	end
	newline(lines)
end

---@param lines string[]
---@param languages string[]
local function add_languages(lines, languages)
	add_line(lines, SECTION_LANGUAGES)
	newline(lines)
	for index, language in ipairs(languages) do
		local prefix = index == 1 and "❯ " or "  "
		add_line(lines, prefix .. language)
	end
	newline(lines)
end

---@param lines string[]
---@param total number
local function add_footer(lines, total)
	add_line(lines, ("Total: %d"):format(total))
end

---@param languages string[]
---@return string[]
function M.build(languages)
	---@type string[]
	local lines = {}
	add_title(lines)
	add_languages(lines, languages)
	add_footer(lines, #languages)
	return lines
end

return M
