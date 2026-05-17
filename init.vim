call plug#begin('~/.vim/plugged')
"Plug tema
Plug 'sainnhe/sonokai'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'KeitaNakamura/neodark.vim'
Plug 'https://gitlab.com/__tpb/monokai-pro.nvim'

"Plug de clang para c++
Plug 'rhysd/vim-clang-format'

"Plug nerdtree devicons syntax
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

"Plug easymotion
Plug 'easymotion/vim-easymotion'

"Plug ctrlspace
Plug 'vim-ctrlspace/vim-ctrlspace'

"Plug nerdtree
Plug 'scrooloose/nerdtree'

"Plug nerdtree Comnenter
Plug 'preservim/nerdcommenter'

"Instalando coc
Plug 'neoclide/coc.nvim', {'branch':'release'}

"Plug ultisnips
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"Plug goyo
Plug 'junegunn/goyo.vim'

"Plug tmux (navegacion de archivos)
Plug 'christoomey/vim-tmux-navigator'

"Plug airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug indentline
Plug 'Yggdroot/indentLine'

"Plug supertab
Plug 'ervandew/supertab'

"Plug ALE
Plug 'w0rp/ale'

"Plug resaltado de syntaxis
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }

"Plugin limelight, resataldo de parrafos
Plug 'junegunn/limelight.vim'

"Plug ctl p
Plug 'ctrlpvim/ctrlp.vim'

"Plug surround
Plug 'tpope/vim-surround'
"Plug repeat
Plug 'tpope/vim-repeat'
"Plug auto-pairs
Plug 'jiangmiao/auto-pairs'
"Plug emmet
Plug 'mattn/emmet-vim'

"Plug para git
Plug 'tpope/vim-fugitive'

"Plug para git, colores en archivos nerdtree
Plug 'xuyuanp/nerdtree-git-plugin'

"Plug prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

"Plug de FZP
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug vim-devicons
Plug 'ryanoasis/vim-devicons'
"Plug vim.startify
Plug 'mhinz/vim-startify'

"Plug de pruebas nvim -spectre ( para buscar y reemplezar )
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'

"Plug git
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

"Plug editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()

"Configuracion de tema de everforest
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:everforest_spell_foreground = 'colored'
set background=dark

"Configuracion de tema de sonokai
"let g:sonokai_style = 'atlantis'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"
" Configuracion tema de gruvbox
"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_italic = 1

" Configuracion tema Monokai Pro
"let g:monokaipro_filter ='octogon'

colorscheme everforest

"Configuracion de resaltado de sintaxis
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"Configurando los snippets
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-B>"
let g:UltiSnipsJumpBackwardTrigger = "<C-Z>"

"Configuracion de vim devicons
let g:WebDevIconsOS = 'Darwin'

"Configuracion de neerdtree
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeGitStatusIndicatorMapCustom = {
 \ "Modified"  : "✹",
 \ "Staged"    : "✚",
 \ "Untracked" : "✭",
 \ "Renamed"   : "➜",
 \ "Unmerged"  : "═",
 \ "Deleted"   : "✖",
 \ "Dirty"     : "✗",
 \ "Clean"     : "✔︎",
 \ 'Ignored'   : '☒',
 \ "Unknown"   : "?"
 \ }

"Configuracion de neerdtreeCommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

"Configuracion de airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '||'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='everforest'
let g:airline_powerline_fonts = 1

"Configuracion del ctrlspace
let g:CtrlSpaceDefaultMappingKey = '<C-W>'
let g:CtrlSpaceIgnoredFiles = '\v[\/](\.(git|hg|svn)|node_modules)$'
let g:CtrlSpaceEnableFilesCache = 0

"Configuracion de indentline
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"Configuracion de supertab
let g:SuperTabMappingForward = '<C-K>'
let g:SuperTabMappingBackward = '<C-J>'

 "Configuracion de ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1

"Configuracion de ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_arg_map = 1

"Configuracion de coc
autocmd FileType scss setl iskeyword+=@-@
  nnoremap <silent> K :call ShowDocumentation()<CR>
  function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('definitionHover')
    else
      call feedkeys('K', 'in')
    endif
  endfunction

"Configuracion emmet
let g:user_emmet_leader_key=';'

"Configuracion del fzf <3
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git -o -name dist -o -name \package-lock.json -o -name \yarn.lock -o -name \.gitignore \) -prune -o -print'

"Confiugracion git gitgutter
set updatetime=250
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1
"highlight SignColumn guibg=bg
"highlight SignColumn ctermbg=bg
" Quitar los maps que hace git gutter, debido a que asignó a <leader>h*, y
" esto demora al navegar entre buffers
let g:gitgutter_map_keys = 0

"Activando el modo Fly de auto-pairs
let g:AutoPairsFlyMode = 1

"Startify creando marcadores
let g:startify_bookmarks = [ {'init': '~/.config/nvim/init.vim'},{'node':'~/Proyectos/course_node_2'},{'koa':'~/Proyectos/koa_api'},{'restaurant':'~/Proyectos/app'},{'svelte':'~/Proyectos/svelte-one'} ]
let g:startify_fortune_use_unicode = 1
let g:startify_lists = [
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
    \ { 'type': 'files',     'header': ['   MRU']            },
    \ { 'type': 'sessions',  'header': ['   Sessions']       },
    \ ]

"Configuracion de mapeo
let mapleader=" "
"Configuracion de npm a map por los errores que se presentaron
nmap <Leader>s <Plug>(easymotion-s2)
nmap sf :NERDTreeFind<CR>
"Probando comandos del nvim spectre
nnoremap <Leader>S <cmd>lua require('spectre').open()<CR>

" Guardar y cerrar
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :w!<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>

" Operaciones con los buffer
nnoremap <Leader>h :bprev<CR>
nnoremap <Leader>l :bnext<CR>
nnoremap <Leader>d :bd<CR>

" Hacer un scroll mas rapido
nnoremap <C-E> 10<C-E>
nnoremap <C-Y> 10<C-Y>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <Leader>ren <Plug>(coc-rename)
xmap <Leader>a <Plug>(coc-codeaction-selected)
nnoremap <Leader>a <Plug>(coc-codeaction-selected)

" Hacer los ganchos para git gutter
nmap <Leader>gn <Plug>(GitGutterNextHunk)
nmap <Leader>gp <Plug>(GitGutterPrevHunk)

" Abrir el vim magit
nnoremap <leader>gs :Magit<CR>

inoremap jk <ESC>
inoremap <C-C> <ESC>

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Configuracion de redimencionar las ventanas
nnoremap <M-j>  :resize -2<CR>
nnoremap <M-k>  :resize +2<CR>
nnoremap <M-h>  :vertical resize -2<CR>
nnoremap <M-l>  :vertical resize +2<CR>

"Configuracion de formatear en C++
map <Leader>k :pyf <path-to-this-file>/clang-format.py<cr>

"Configuracion de neovim
syntax on "Coloreado de sintaxis
set nocompatible "Activar modo no compatibilidad con Vi
set autoindent "Esta función hace que cuando pulsemos enter en un fichero de texto, la nueva línea que insertamos sea indentada automáticamente
set ruler "Activa la regla inferior"
set showcmd "Activa la indicacion de comandos"
set noshowmode 
set number "Mostrar numeros de linea"
set hidden "Ocultar buffers, cuando no esten guardados
set showmatch "Cuando se cierra parentesis, llaves o corchetes muestra con que caracter coincide"
set ignorecase smartcase "Ignora mayusculas y minusculas salvo si se usan mayusculas en la cadena de busqueda"
set termguicolors
set t_Co=256
set mouse=a
set numberwidth=1
set clipboard=unnamedplus "Habilitar el portapaeles unnamedplus
set cursorline "Remarcar en pantalla la línea actual
set cursorcolumn "Remarcar en pantalla la columna actual 
set encoding=UTF-8 "Habilitar los caracteres utf-8
set sw=4 "Para hacer hendiduras de 4 espacios de ancho
set expandtab "Hace que se usen espacios en lugar de caracteres de tabulación 
set softtabstop=4 "Para utilizar espacios como sangrías, 4 espacios de ancho
set relativenumber "la línea actual se muestra como 0
set laststatus=2 "Mostrar la linea de estado siempre
set hlsearch "Habilitado el coloreado de busqueda
set list "Muestra los tabuladores y fin de lineas
set nopaste "Aplicar la sangria a elementos pegados
" Path de python3 para windows
let g:python3_host_prog = '~/myenv/bin/python3'
