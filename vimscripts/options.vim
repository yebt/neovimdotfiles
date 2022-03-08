syntax on

set nocompatible

set modeline

set hidden

set timeoutlen=1000
set updatetime=3000

set number
set numberwidth=4
set signcolumn=auto:2

set cursorline

set nowrap

set title
set titlestring ="%<%F%=%l/%L - nvim"

set foldmethod=syntax
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99
set foldcolumn=1
set foldtext=MyFoldText()


set noshowmode
set showcmd
set cmdheight=1
set cmdwinheight=10

set undofile
set nobackup
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

set conceallevel=2
"set.concealcursor="nc" --let use conceal on specific files like markdown

set termguicolors

"set completeopt=menu,menuone,noselect,preview

colorscheme kanagawa


function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\ 
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
