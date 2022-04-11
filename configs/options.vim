" Behaviour
set nocompatible
set backspace=indent,eol,start
set timeoutlen=1000
set updatetime=500
set signcolumn=number

set mouse=a
set clipboard=unnamed

set modeline " Read Modeline
set shortmess+=c "Hit-Enter ations

" Buffers
set hidden
set title
set titlestring ="%<%F%=%l/%L - nvim"


" View
syntax on
set number
set numberwidth=1
"set signcolumn=auto:2
set signcolumn=number
set cursorline

set noshowmode
set showcmd
set cmdheight=2
set cmdwinheight=10

set termguicolors
set laststatus=2
set showtabline=2
set hidden

" Files
set encoding=utf-8
filetype on
filetype plugin on
filetype indent on

set nowrap

" Folds
set foldmethod=syntax
"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
"set foldcolumn=auto:1
set foldcolumn=1
set foldtext=NewFoldText()


" Backup and undo flkiue
set undofile
set nobackup
set nowritebackup "added
set swapfile

" Indent and tabs
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Search
set smartcase
set ignorecase
set hlsearch
"set noshowmatch
"set showmatch
set inccommand=split

" Concleal
"set conceallevel=2
"set conceallevel=0
set concealcursor="nc"

" Miselaneus
set completeopt=menu,menuone,preview

" List chars
"set list
"set listchars=eol:¬,tab:··\|,trail:~,extends:>,precedes:<,space:␣
set showbreak=↪\ 
set listchars=eol:↲,tab:··\|,trail:~,space:• 
