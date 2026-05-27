local folder_icons = {
	-- Estado & Almacenamiento
	slices = "󰧩", -- redux slices (modular/puzzle)
	store = "󰆧", -- redux/zustand/pinia store
	state = "󰆧", -- state management
	context = "󰆍", -- react context
	auth = "󰌾", -- authentication

	-- Organización & Estructura
	shared = "󰔗", -- recursos compartidos (link)
	public = "󰌐", -- mundo/web/public (globo)
	assets = "󰉏", -- recursos generales
	static = "󰉋", -- archivos estáticos
	data = "󰆼", -- base de datos/json (DB)

	-- Componentes & UI
	components = "󰅴", -- componentes UI
	layout = "󰙴", -- layouts
	pages = "󰠮", -- páginas
	views = "󰈇", -- vistas (Vue/alternativa)
	screens = "󰌚", -- pantallas (Mobile)

	-- Lógica & Funcionalidad
	hooks = "󰛢", -- React hooks
	composables = "󰡄", -- Vue composables
	utils = "󰕥", -- utilidades/helpers
	helpers = "󰌶", -- helpers/funciones
	services = "󰒓", -- servicios/API
	api = "󰒍", -- API endpoints

	-- Configuración & Rutas
	config = "󱁿", -- configuración
	routes = "󱌣", -- rutas/routing
	middleware = "󰒃", -- middleware
	plugins = "󰐱", -- plugins

	-- Tipado & Validación
	types = "󰜨", -- typings/interfaces (TS)
	interfaces = "󰜨", -- typings/interfaces (TS)
	models = "󰀘", -- modelos de datos
	schemas = "󰌃", -- schemas/validadores
	validators = "󰣉", -- validadores
	enums = "󰆬", -- enumeraciones

	-- Estilos
	style = "󱔗", -- estilos/CSS
	styles = "󱔗", -- estilos (alias)
	theme = "󰟨", -- temas

	-- Tipografía & Recursos
	fonts = "󰉁", -- tipografías
	icons = "󰃽", -- iconos
	images = "󰉏", -- imágenes

	-- Código & Fuentes
	src = "󰲋", -- source code
	lib = "󰲂", -- librerías internas

	-- Control de Versiones
	[".git"] = "󰊢", -- git repository

	-- Datos & Fixtures
	fixtures = "󰆺", -- test fixtures
	seeds = "󰻠", -- seed data
	mocks = "󰣇", -- mock data

	-- Testing
	tests = "󰙨", -- tests
	test = "󰙨", -- test (singular)
	__tests__ = "󰙨", -- tests (Jest pattern)
	spec = "󰙨", -- specs

	-- Documentación
	docs = "󰍉", -- documentación
	doc = "󰍉", -- documentación (singular)

	-- Scripts & Ejecución
	scripts = "󰿎", -- scripts ejecutables
	bin = "󰿎", -- binarios/ejecutables

	-- Base de Datos
	migrations = "󰔀", -- migraciones BD
	seeders = "󰻠", -- seeders (Laravel)

	-- Patrones & Arquitectura
	repositories = "󰎚", -- repositories/DAOs
	controllers = "󰡭", -- controllers (MVC)
	adapters = "󰔀", -- adaptadores
	factories = "󰭂", -- factories/builders
	serializers = "󰨡", -- serializers
	mappers = "󰦒", -- mappers

	-- Manejo de Errores & Logs
	exceptions = "󰌶", -- excepciones/errores
	errors = "󰌶", -- manejo de errores
	logs = "󰌅", -- logs

	-- Internacionalización & Cache
	i18n = "󰌐", -- internacionalización
	locales = "󰌐", -- locales/traducciones
	cache = "󰀬", -- caché

	-- Constantes & Variables de Entorno
	constants = "󰏢", -- constantes
	env = "󰢱", -- variables de entorno
	config_env = "󰢱", -- env config

	-- Específico de Frameworks
	-- Phoenix/Elixir
	channels = "󰒗", -- Phoenix channels
	views_phoenix = "󰈇", -- Phoenix views

	-- Rails/Ruby
	app = "󰲋", -- application folder
	vendor = "󰲂", -- vendor libraries

	-- General
	index = "󰈔", -- index files
}
function GetIconFolder(name)
	local defa = ""
	if folder_icons[name] ~= nil then
		defa = folder_icons[name]
	end
	return defa
end
