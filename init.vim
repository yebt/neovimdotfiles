
"""""""""""""""""""""""""
"" Plugins
"""""""""""""""""""""""""
"{
call plug#begin('~/.vim/plugged')

" Syntax 
Plug 'jwalton512/vim-blade'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

Plug 'lukas-reineke/indent-blankline.nvim'


" Init 
Plug 'mhinz/vim-startify'


" Icons
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'ryanoasis/vim-devicons'


" Searchers
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'

" Autocomplete
Plug 'windwp/nvim-autopairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'


" Git 
Plug 'lewis6991/gitsigns.nvim'
Plug 'airblade/vim-gitgutter'


" behaviour
Plug 'christoomey/vim-tmux-navigator'
Plug 'moll/vim-bbye'
Plug 'romainl/vim-cool'
Plug 'folke/which-key.nvim'
Plug 'tpope/vim-commentary'


" Tree
Plug 'kyazdani42/nvim-tree.lua'


" Term
Plug 'akinsho/toggleterm.nvim'


" apparence
" bufferline
Plug 'akinsho/bufferline.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" color
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'projekt0n/github-nvim-theme'


call plug#end()

"}}}


"""""""""""""""""""""""""
"" Functions
"""""""""""""""""""""""""
"{{{


function! StatuslineMode()
    let l:mode=mode()
    if l:mode==#"n"
        return "NORMAL"
    elseif l:mode==?"v"
        return "VISUAL"
    elseif l:mode==#"i"
        return "INSERT"
    elseif l:mode==#"R"
        return "REPLACE"
    elseif l:mode==?"s"
        return "SELECT"
    elseif l:mode==#"t"
        return "TERMINAL"
    elseif l:mode==#"c"
        return "COMMAND"
    elseif l:mode==#"!"
        return "SHELL"
    endif
endfunction

function! StatuslineGitBranch()
    let b:gitbranch=""
    if &modifiable
        try
            let l:dir=expand('%:p:h')
            let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
            if !v:shell_error
                let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
            endif
        catch
        endtry
    endif
endfunction

"}}}


"""""""""""""""""""""""""
"" Editor
"""""""""""""""""""""""""
"{{{

" perfomance
set nocompatible
syntax on
filetype plugin indent on
set modelines=0
set hidden
set timeoutlen=300
set updatetime=300 


" indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent  
set smartindent
set colorcolumn="99999"

" search
set ignorecase
set smartcase
set hlsearch

" behavipur
set clipboard=unnamed
set mouse=a

set nobackup
set splitbelow
set splitright


" apparencec
set title
set number
set numberwidth =4
set cursorline
set signcolumn=yes
set conceallevel=1
set titlestring ="%<%F%=%l/%L - nvim"
"set foldlevel=2
set foldmethod=marker
set undofile


set showcmd
set cmdheight=2
set noshowmode 
set termguicolors



"}}}



"""""""""""""""""""""""""
"" Vars
"""""""""""""""""""""""""
"{{{
let g:netrw_keepdir     = 0
let g:netrw_banner      = 0
let g:netrw_localcopydircmd = 'cp -r'

let g:indent_blankline_char = '▏'
let g:indent_blankline_use_treesitter= v:true
let g:indent_blankline_bufname_exclude = ['NvimTree','coc-explorer','tagbar']
let g:indent_blankline_filetype_exclude =['help', 'NvimTree', 'coc-explorer', 'tagbar', 'toggleterm', 'startify']
let g:indent_blankline_enabled = v:false
let g:toggleterm_terminal_mapping = '<A-t>'

let g:tmux_navigator_no_mappings = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'

let g:startify_custom_header = []
let g:startify_session_dir = "~/.config/nvim/sessions/"
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ { 'type': 'commands',  'header': ['   Commands']       },
            \ ]
"" BOCKMARKS
let g:startify_bookmarks = [ 
            \{'c': '~/.vimrc'},
            \'~/.zshrc'
            \]
let g:startify_files_number = 5
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 0
let g:startify_session_dir = "/home/eb/.config/nvim/stsessions/"
let g:startify_session_before_save = ['silent! tabdo NvimTreeClose',]
let g:startify_session_persistence = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_dir = 0
let g:startify_padding_left = 4


"}}}


"""""""""""""""""""""""""
"" Mappings
"""""""""""""""""""""""""
"{{{
let mapleader = ","

"buffcontorl
nmap <silent><M-w> :w<CR>
nmap <silent><M-q> :q<CR>

nmap <M-c> :Bdelete<cr>

" abreviations
vmap <silent><C-c> "+y:echo "COPY"<cr> 
nmap <silent><C-A> gg0vG$<cr> 
nmap <silent><M-i> gg=G<C-o>

" split
nmap <M-s>v :vertical split<cr>
nmap <M-s>h :split<cr>



"togllers
nnoremap <silent><leader>w :set wrap!<cr>
nnoremap <silent><leader>n :set number!<cr>
nnoremap <silent><leader>r :set relativenumber!<cr>

"navigation
nmap <silent><M-S-Right> :bn<cr>
nmap <silent><M-S-Left> :bp<cr>

nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

nnoremap <leader>s :lua require('spectre').open()<CR>
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>


" Terminal
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><A-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

" tree
nmap <A-b> :NvimTreeToggle<CR>

" indentline toggle
nnoremap <silent><leader>l :IndentBlanklineToggle <cr>

""### COC 

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Use preset argument to open it
nmap <leader>ed <Cmd>CocCommand explorer --preset .vim<CR>
nmap <leader>ef <Cmd>CocCommand explorer --preset floating<CR>

nmap <leader>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
nmap <leader>eb <Cmd>CocCommand explorer --preset buffer<CR>

" List all presets
nmap <leader>el <Cmd>CocList explPresets<CR>

nmap <A-e> <Cmd>CocCommand explorer <CR>

" List diagnostic
nmap <leader>ld <CMD>CocList diagnostics<CR>


nnoremap <leader>S :lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw :lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s :lua require('spectre').open_visual()<CR>

"}}}


"""""""""""""""""""""""""
"" colors
"""""""""""""""""""""""""
"{{{
" STATUS LINE
set background=dark
colorscheme gruvbox

" Tatus line 
set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=%{StatuslineMode()}
set statusline+=%1*
set statusline+=\ 
set statusline+=<
set statusline+=<
set statusline+=\ 
set statusline+=%f
set statusline+=\ 
set statusline+=>
set statusline+=>
"set statusline+=%{nvim_treesitter#statusline(90)} 
set statusline+=%=
set statusline+=%m
set statusline+=%h
set statusline+=%r
set statusline+=\ 
set statusline+=%3*
set statusline+=%{b:gitbranch}
set statusline+=%1*
set statusline+=\ 
set statusline+=%4*
set statusline+=%F
set statusline+=:
set statusline+=:
set statusline+=%5*
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=%1*
set statusline+=|
set statusline+=%y
hi User2  ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black
hi User1  ctermfg=white  guifg=white
hi User3  ctermfg=lightblue  guifg=lightblue
hi User4  ctermfg=lightgreen  guifg=lightgreen
hi User5  ctermfg=magenta  guifg=magenta
"}}}

"""""""""""""""""""""""""
"" autocommans
"""""""""""""""""""""""""
"{{{
augroup reload_config
    autocmd!
    autocmd BufWritePost init.vim source <afile> | so %
augroup end

augroup restore_cursor
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup end
autocmd BufNewFile,BufRead *.blade.php nnoremap <leader>bf <CMD>CocCommand blade.bladeFormatter.run<CR>:echo "BLADE FORMATER"<CR>

augroup GetGitBranch
    autocmd!
    autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

" or manually...
autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
"}}}



"""""""""""""""""""""""""
"" Lua loaders
"""""""""""""""""""""""""
"{{{
lua << EOF
require ('plugins')
-- print ("probe")
EOF
"}}}


