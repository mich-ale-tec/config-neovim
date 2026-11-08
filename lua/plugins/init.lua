local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lsp = require("plugins.lsp.install")
local telescope = require("plugins.telescope.install")
local blink = require("plugins.blink.install")
local gruvbox = require("plugins.gruvbox.install")
local lualine = require("plugins.lualine.install")
local indent = require("plugins.indent.install")
local flash = require("plugins.flash.install")
local tmux = require("plugins.tmux.install")
local noice = require("plugins.noice.install")
local explorer = require("plugins.explorer.install")
local git = require("plugins.git.install")
local treesitter = require("plugins.treesitter.install")
local utils = require("plugins.utils.install")
local bufferline = require("plugins.bufferline.install")
local sesion = require("plugins.sesion.install")
local wichkey = require("plugins.wichkey.install")
local conform = require("plugins.conform.install")
local testing = require("plugins.testing.install")
local grugfar = require("plugins.grugfar.install")

require("lazy").setup({
	lsp.nvim,
	lsp.mason,
	lsp.trouble,
    lsp.goto,
	telescope.luasnip,
	telescope.main,
	telescope.fzf,
	blink,
	gruvbox,
	lualine,
	indent.main,
	flash.main,
	tmux.main,
	noice.main,
	explorer.oil,
	explorer.snacks,
	git.fugitive,
	git.diffview,
	git.signs,
	treesitter.nvim,
	treesitter.textobjects,
	bufferline.main,
	utils.marks,
	utils.surround,
	utils.vim_repeat,
	utils.autopairs,
	utils.comment,
	utils.recorder,
	utils.markdown,
	utils.todo,
	utils.autotag,
	utils.iluminate,
	sesion.save,
    wichkey,
    conform,
    grugfar,
    -- Probando plugins
    testing.devlua,
    testing.yanki,
    testing.spider,
    testing.substitute,
    testing.harpoon
},
{
	checker = { enabled = false },
})

require("plugins.lualine.settings")
require("plugins.indent.settings")
require("plugins.wichkey.settings")
require("plugins.gruvbox.settings")
require("plugins.lsp.settings")
require("plugins.telescope.luasnip")
require("plugins.git.signs")
require("plugins.conform.settings")
require("plugins.utils.fold")
require("plugins.flash.keymaps")
require("plugins.telescope.settings")
require("plugins.bufferline.settings")
require("plugins.treesitter.keymaps")
require("plugins.lsp.goto")
require("plugins.explorer.oil")
require("plugins.lsp.trouble")
require("plugins.bufferline.keymaps")
require("plugins.sesion.settings")
require("plugins.testing.keymaps")
require("plugins.grugfar.keymaps")

