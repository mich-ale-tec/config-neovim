local folder_icons = {
	slices = "󰓹", -- redux slices/state chunks
	shared = "󰯍", -- recursos compartidos/shared
	public = "󰖟", -- mundo/web/public
	icons = "󰃽", -- iconos
	fonts = "󰛖", -- tipografías/fonts
	[".git"] = "󰊢", -- git repository
	src = "󰲋", -- source code
	assets = "󰉏", -- recursos
	auth = "󰌾", -- autenticación
	components = "󰅴", -- componentes UI
	config = "󱁿", -- configuración
	helpers = "󰌶", -- helpers/utils
	hooks = "󰛢", -- hooks
	layout = "󰙴", -- layouts
	pages = "󰠮", -- páginas
	routes = "󱌣", -- rutas
	services = "󰒓", -- servicios/api
	store = "󰆧", -- redux/zustand/store
	style = "󱔗", -- estilos/css
	styles = "󱔗",
	types = "󰜨", -- typings/interfaces
	utils = "󰕥", -- utilidades
	lib = "󰲂", -- librerías internas
	api = "󰒍", -- api
	context = "󰆍", -- react context
	composables = "󰡄", -- vue composables
	plugins = "󰐱", -- plugins
	middleware = "󰒃", -- middleware
	static = "󰉋",
	data = "󰛢", -- data/json
	tests = "󰙨", -- tests
	test = "󰙨",
	__tests__ = "󰙨",
}
function GetIconFolder(name)
	local defa = ""
	if folder_icons[name] ~= nil then
		defa = folder_icons[name]
	end
	return defa
end
