syntax on

set encoding=utf-8

set nocompatible
filetype on
filetype plugin on
filetype indent on

set modeline

set hidden

set timeoutlen=1000
set updatetime=500

set shortmess+=c

set number
"set numberwidth=5
set numberwidth=1
"set signcolumn=auto:2
" set signcolumn=yes
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"set signcolumn=yes:2

set cursorline

set nowrap

set title
set titlestring ="%<%F%=%l/%L - nvim"

"set foldmethod=syntax
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
set foldcolumn=auto:1
set foldtext=MyFoldText()


set noshowmode
set showcmd
"set cmdheight=1
set cmdheight=2
set cmdwinheight=10

set undofile
set nobackup
set nowritebackup "added
set swapfile

set splitright

set mouse=a
set clipboard=unnamed

set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smartcase
set ignorecase
set hlsearch
"set noshowmatch
"set showmatch
set inccommand=split


"set conceallevel=2
set conceallevel=0
set concealcursor="nc"

set completeopt=menu,menuone,preview

set laststatus=2
set showtabline=2
set hidden

set termguicolors
