" .vimrc 0.4 (5/5/2019)
"
" Author: Victor Fuertes Fuertes <victorv@fuert.es>
" Source: https://github.com/victorfuertes/dotfiles/.nvimrc
"
""""""""""""""""""""""""""""""" " Apariencia

set guifont=ProFont:h13
"set guifont=Hack:h14

set cursorline

set termguicolors               "
colorscheme archery

""""""""""""""""""""""""""""""" " Comportamiento

set nocompatible                " No compatible con el antiguo vi

syntax enable
filetype on                     " Activa la detección de tipo de archivo
filetype indent on
filetype plugin on

set formatoptions+=t
set wrapmargin=2
set wrap linebreak nolist
set textwidth=78                " Número de líneas horizontales
set columns=120                 " Especifica 80 caracteres de ancho
set title                       " Nombre de archivo en el titulo
set laststatus=2                " 2 Líneas para la barra de estado
set fileencodings=utf-8         " Escribe en UTF-8
set encoding=utf-8              " "
set t_Co=256                    " Colores en consola
set nowrap                      " No envuelve el texto
set wildmenu                    " Completador de rutas de archivo
set shell=/bin/zsh              " Establece la shell del sistema
set history=1000                " Útimas 1000 líneas
set ruler                       " Muestra siempre la posición del cursor
set autoindent                  " Indentación Automática
set smartindent                 "
set smartcase                   "
set autoread                    " Refresca archivos al ser actualizados
set tabstop=2                   " Un tabulador son dos espacios
set shiftwidth=2                " "
set expandtab                   " Usa espacios, no tabuladores
set hlsearch                    " Remarca los caracteres buscados
set incsearch                   " Búsqueda incremental
set ignorecase                  " Busca mayúsculas y minúsculas
set tabstop=4                   " Especifica tabuladores de 4 espacios
set shiftwidth=4                " Especifica tabuladores de 4 espacios
set title                       " Titulo de ventana
set number                      " Escribe números de línea
set ttyfast                     " Refresco rápido
set incsearch                   " Búsqueda incremental
set showcmd                     " Muestra comando
set mouse=a                     " Usar ratón todomodo
set report=0                    " Reporta número de cambios
set showmode                    "
set showcmd                     " Muestra modo
set showmatch                   " Correspondencia en llaves
set wrapmargin=8                " El margen hacia la derecha
set matchtime=2                 "
set matchpairs+=<:>             "
set hidden                      " Permitir buffers con cambios sin guardar
set spell                       " Corrector ortográfico
set showtabline=2
set laststatus=2
set mousehide                   " Esconde el ratón cuando se escribe

""""""""""""""""""""""""""""""" " Plugins

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'            "
Plug 'junegunn/fzf.vim'                 " Fuzzy finder
Plug 'preservim/nerdtree'               " Navigation bar
Plug 'editorconfig/editorconfig-vim'    "
Plug 'mattn/emmet-vim'                  " Emmet (HTML generator)
Plug 'paroxayte/vwm.vim'                " Window manager
Plug 'honza/vim-snippets'
" Plug 'neoclide/coc.nvim'              " Completion
Plug 'lyuts/vim-rtags'                  "
Plug 'majutsushi/tagbar'
Plug 'StanAngeloff/php.vim'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arzg/vim-substrata'
Plug 'kien/ctrlp.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'Badacadabra/vim-archery'
Plug 'vim-syntastic/syntastic'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'kien/ctrlp.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()

let g:lightline = {
    \ 'colorscheme': 'archery',
    \ }
