---@class DashboardBuffer
local M = {}

local TITLE = {
	"   ArchMich Dashboard",
}
local SECTION_LANGUAGES = "Languages"
local SEPARATOR = "────────────────────"

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
---@param selected integer
local function add_languages(lines, languages, selected)
	add_line(lines, SECTION_LANGUAGES)
	add_line(lines, SEPARATOR)
	newline(lines)
	for index, language in ipairs(languages) do
		local prefix = index == selected and "❯ " or "  "
		add_line(lines, prefix .. language)
	end
	newline(lines)
end

---@param lines string[]
---@param total number
local function add_footer(lines, total)
	add_line(lines, ("Total languages: %d"):format(total))
end

---@param languages string[]
---@param selected integer
---@return string[]
function M.build(languages, selected)
	---@type string[]
	local lines = {}
	add_title(lines)
	add_languages(lines, languages, selected)
	add_footer(lines, #languages)
	return lines
end

return M
