"=== CONFIG ===

set nocompatible
syntax on

set nomodeline
set hidden
set timeoutlen=300
set updatetime=300

set number
set numberwidth=4
"set signcolumn=yes
set signcolumn=auto:2
set cursorline 

set nowrap 

set title
set titlestring ="%<%F%=%l/%L - nvim"

" set foldmethod=marker
set foldmethod=manual
set foldlevel=99
set foldcolumn=1

set foldtext=MyFoldText()
function MyFoldText()
    let line = getline(v:foldstart)
    let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
    return v:folddashes . sub
endfunction

set noshowmode
set showcmd
set cmdheight=3

set undofile
set nobackup
set noswapfile

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


