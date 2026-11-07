local map = vim.keymap.set
local opts = {
	noremap = true,
}

map(
	"n",
	"gpd",
	"<cmd>lua require('goto-preview').goto_preview_definition()<CR>",
	_G.wraperDescription(opts, "Go Definition")
)
map(
	"n",
	"gpy",
	"<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>",
	_G.wraperDescription(opts, "Go Type Definition")
)
map(
	"n",
	"gpi",
	"<cmd>lua require('goto-preview').goto_preview_implementation()<CR>",
	_G.wraperDescription(opts, "Go Implementation")
)
map(
	"n",
	"gpr",
	"<cmd>lua require('goto-preview').goto_preview_references()<CR>",
	_G.wraperDescription(opts, "Go References")
)
map(
	"n",
	"gpD",
	"<cmd>lua require('goto-preview').goto_preview_declaration()<CR>",
	_G.wraperDescription(opts, "Go Declarations")
)
map(
	"n",
	"gP",
	"<cmd>lua require('goto-preview').close_all_win()<CR>",
	_G.wraperDescription(opts, "Close all preview goto")
)
