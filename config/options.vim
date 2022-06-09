set nocompatible
set backspace=indent,eol,start
"set timeoutlen=1000
"set updatetime=500
" set timeoutlen=0
set timeoutlen=100
" set signcolumn=number
"set signcolumn=yes


set mouse=a
set clipboard=unnamed

set modeline " Read Modeline
set shortmess+=c "Hit-Enter ations


set hidden
set title
set titlestring ="%<%F%=%l/%L - nvim"


syntax on
set number
set numberwidth=1
set signcolumn=auto:2
"set signcolumn=number
set cursorline


set noshowmode
set showcmd
" set cmdheight=2
set cmdwinheight=10


set termguicolors
"set laststatus=2
set laststatus=3
set showtabline=2
set hidden


set encoding=utf-8
filetype on
filetype plugin on
filetype indent on


set nowrap


set foldmethod=syntax
set foldlevel=99
set foldcolumn=1
set foldtext=NewFoldText()


set undofile
set nobackup
set nowritebackup "added
set swapfile


set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


set smartcase
set ignorecase
set hlsearch
set inccommand=split


"set completeopt=menu,menuone,preview

" List chars
"set list
"set listchars=eol:¬,tab:··\|,trail:~,extends:>,precedes:<,space:␣
set showbreak=↪\ 
set listchars=eol:↲,tab:··\|,trail:~,space:• 
