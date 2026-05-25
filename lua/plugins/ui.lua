-- =========================
-- LUALINE
-- =========================
require("lualine").setup({
	options = {
		theme = "everforest",
		globalstatus = true,
		icons_enabled = true,
	},
})

-- =========================
-- TREE
-- =========================
require("neo-tree").setup({
	-- ======= GENERAL =======
	close_if_last_window = true,
	enable_git_status = true,
	enable_diagnostics = true,
	sort_case_insensitive = true,

	-- ======= FILESYSTEM =======
	filesystem = {
		-- Filtros inteligentes
		filtered_items = {
			visible = true, -- Muestra archivos filtrados pero atenuados
			hide_dotfiles = false,
			hide_gitignored = true,
			hide_hidden = false,
			never_show = {
				".DS_Store",
				"thumbs.db",
			},
		},

		-- Seguimiento automático
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false, -- No expande carpetas al cambiar archivo
		},

		-- Buscar archivos
		find_by_full_path = true,

		-- Watcher para cambios en tiempo real
		use_libuv_file_watcher = true,

		-- Funciones
		use_file_browser = true,
		use_fswatch = false, -- Desactiva si es lento
	},

	-- ======= BÚFER (para ver buffers abiertos) =======
	buffers = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
		group_empty_dirs = true,
	},

	-- ======= GIT STATUS =======
	git_status = {
		symbols = {
			added = "✓",
			deleted = "✗",
			modified = "●",
			renamed = "➜",
			untracked = "★",
			ignored = "◌",
			unstaged = "⚡",
			staged = "✓",
			conflict = "⚔",
		},
	},

	-- ======= VENTANA PRINCIPAL =======
	window = {
		position = "left",
		width = 35,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
		mappings = {
			-- ===== NAVEGACIÓN =====
			["<space>"] = "none", -- Desactiva espacios por defecto
			["<cr>"] = {
				"open",
				nowait = true,
				config = {
					open_strategy = "false",
				},
			},
			["o"] = {
				"open",
				config = {
					open_strategy = "true",
				},
			},
			["O"] = "open_fold", -- 'O' expande carpeta
			[">"] = "expand_all_subnodes", -- '>' expande todo
			["<"] = "collapse_all", -- '<' contrae todo

			-- ===== SPLITS =====
			["s"] = "open_split", -- 's' split horizontal
			["v"] = "open_vsplit", -- 'v' split vertical
			["t"] = "open_tabnew", -- 't' nueva pestaña

			-- ===== ARCHIVO/CARPETA =====
			["a"] = "add", -- 'a' crear archivo
			["A"] = "add_directory", -- 'A' crear carpeta
			["d"] = "delete", -- 'd' eliminar
			["r"] = "rename", -- 'r' renombrar
			["R"] = "refresh", -- 'R' recargar
			["c"] = "copy_to_clipboard", -- 'c' copiar
			["m"] = "move_to_clipboard", -- 'm' cortar
			["p"] = "paste_from_clipboard", -- 'p' pegar

			-- ===== BÚSQUEDA =====
			["f"] = "filter_on_submit", -- 'f' filtrar archivos
			["<c-x>"] = "clear_filter", -- '<C-x>' limpiar filtro

			-- ===== UTILIDADES =====
			["q"] = "close_window", -- 'q' cerrar
			["?"] = "show_help", -- '?' mostrar ayuda
			["."] = "toggle_hidden", -- '.' mostrar/ocultar dotfiles
			["<c-k>"] = "toggle_preview", -- '<C-k>' preview
			["C"] = "set_root", -- 'C' cambiar raíz
			["-"] = "navigate_up", -- '-' ir a padre
			["_"] = "navigate_down", -- '_' bajar a carpeta

			-- ===== EXPANSIÓN =====
			["<tab>"] = "toggle_node", -- Tab expande/contrae
			["<2-LeftMouse>"] = "open", -- Doble click abre
		},
	},

	-- ======= POPUP PREVIEW =======
	preview = {
		min_width = 50,
		max_width = 200,
		max_height = 100,
		timeout = 400,
	},

	-- ======= NERD ICONS =======
	nesting_rules = {},

	-- ======= POPUP DE COMANDOS =======
	commands = {},

	-- ======= PLUGINS =======
	-- Extensiones
	plugins = {
		diagnostics = {
			enabled = true,
		},
		git_status = {
			enabled = true,
		},
		image_converter = {
			enabled = false, -- Desactiva para más velocidad
		},
		harpoon = {
			enabled = true,
		},
	},

	-- ======= FUENTE DE DATOS =======
	sources = {
		"filesystem",
		"buffers",
		"git_status",
	},

	-- ======= EVENTOS =======
	event_handlers = {
		-- Cambia cwd cuando navegas
		{
			event = "file_opened",
			handler = function(file_path)
				vim.cmd.wincmd("p")
			end,
		},
		-- Expande carpeta padre cuando se sigue archivo
		{
			event = "neo_tree_buffer_enter",
			handler = function()
				vim.cmd("setlocal cursorline")
			end,
		},
	},

	-- ======= ESTILOS =======
	use_default_mappings = false, -- Usa solo los mappings que definimos

	-- ======= PESTAÑA DE ARCHIVOS RECIENTES =====
	document_symbols = {
		kinds_filter = {
			File = true,
			Module = true,
			Namespace = true,
			Package = true,
			Class = true,
			Method = true,
			Property = true,
			Field = true,
			Constructor = true,
			Enum = true,
			Interface = true,
			Function = true,
			Variable = true,
			Constant = true,
			String = true,
			Number = true,
			Boolean = true,
			Array = true,
			Object = true,
			Key = true,
			Null = true,
			EnumMember = true,
			Struct = true,
			Event = true,
			Operator = true,
			TypeParameter = true,
		},
	},
})
-- =========================
-- INDENT BLANKLINE
-- =========================
require("ibl").setup({
	indent = {
		char = "│",
	},
})

-- =========================
-- BUFFER LINE
-- =========================
vim.opt.termguicolors = true
vim.opt.showtabline = 2

-- =========================
-- WHICH KEY
-- =========================
require("which-key").setup({
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 9,
		},
		presets = {
			operators = true,
			motions = true,
			text_objects = true,
			windows = true,
			nav = true,
			z = true,
			g = true,
		},
	},
	icons = {
		breadcrumb = "»",
		separator = "➜",
		group = "+",
	},
	win = {
		border = "single",
		padding = { 1, 2 },
	},
	layout = {
		align = "center",
		height = { min = 4, max = 25 },
		spacing = 3,
		timeout = 500,
	},
	show_help = true,
	show_keys = true,
})

-- =========================
-- ALPHA DASHBOARD
-- =========================
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
	[[████╗  ██║██║   ██║██║████╗ ████║]],
	[[██╔██╗ ██║██║   ██║██║██╔████╔██║]],
	[[██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
	[[██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
	[[╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
	[[                                       ]],
	[[        Welcome back, pai 😎           ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  Nuevo archivo", "<cmd>ene<CR>"),
	dashboard.button("f", "󰱼  Buscar archivo", "<cmd>Telescope find_files<CR>"),
	dashboard.button("r", "  Recientes", "<cmd>Telescope oldfiles<CR>"),
	dashboard.button("q", "󰅚  Salir", "<cmd>qa<CR>"),
}

alpha.setup(dashboard.opts)
