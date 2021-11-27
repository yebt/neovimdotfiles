"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" PLUGIN 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('/home/eb/.config/nvim/plugged/')

Plug 'christoomey/vim-tmux-navigator'

" Plug 'sheerun/vim-polyglot'
Plug 'jwalton512/vim-blade'

Plug 'windwp/nvim-ts-autotag'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/nvim-treesitter-textobjects'

"Plug 'andymass/vim-matchup'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'ludovicchabant/vim-gutentags'
Plug 'moll/vim-bbye'
Plug 'preservim/tagbar'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-surround'
Plug 'alvan/vim-closetag'


Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'

Plug 'kqito/vim-easy-replace'

Plug 'nvim-lualine/lualine.nvim'

Plug 'folke/which-key.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'akinsho/toggleterm.nvim'

Plug 'matbme/JABS.nvim'
"Plug 'Pocco81/AbbrevMan.nvim'

Plug 'Shatur/neovim-session-manager'
" Plug '/home/eb/.config/nvim/pluggins/RltvNmbr.vba'
Plug 'mhinz/vim-startify'

Plug 'navarasu/onedark.nvim'
Plug 'olimorris/onedarkpro.nvim'

Plug 'marko-cerovac/material.nvim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'

Plug 'mangeshrex/uwu.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'projekt0n/github-nvim-theme'


call plug#end()

source /home/eb/.config/nvim/RltvNmbr.vim
source /home/eb/.config/nvim/RltvNmbrPlugin.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" CONGIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PERFOMANCE
set nocompatible
filetype off
syntax on
filetype plugin indent on
set modelines=0

" INDENT
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set autoindent  
set smartindent

" APARENCE
set number
" set relativenumber
set termguicolors

" LINE 
set clipboard=unnamed
set title
set signcolumn  =auto:2
set cursorline

" COMMANDS
set showcmd " Show (partial) command in status line.
set cmdheight=2

" SEARCH
set ignorecase " Do case insensitive matching
set smartcase  " Do smart case matching
"set incsearch  " Incremental search
set hlsearch

" BEHAVIOUR
set autowrite " Automatically save before commands like :next and :make
set hidden    " Hide buffers when they are abandoned
set mouse=a  " Enable mouse usage (all modes)
set clipboard=unnamed
set conceallevel=1
set foldlevel=2
set hidden
set nobackup
set timeoutlen=300
" set autochdir
set directory=/home/eb/.config/nvim/swap//
" set list
" TIME 
set updatetime      =300 
set timeoutlen=300

"NETRW
let g:netrw_keepdir     = 0
let g:netrw_banner      = 0
let g:netrw_localcopydircmd = 'cp -r'


" STATUS LINE
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

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" PLUG LUA CONGIGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua <<EOF
-- require('nvim-ts-autotag').setup({
--   filetypes = { "html" , "xml", "blade", "php" },
-- })
require'nvim-treesitter.configs'.setup ({
    ensure_installed = "all",
    highlight = {
        enable = true,
        additional_vim_regex_highlighting= {'vim'}
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true,
        filetypes  = {   'html', 'javascript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue' , "blade", "php", }
    }
})

require('gitsigns').setup()
require("bufferline").setup{
  options = {
    numbers = "none",
    --    diagnostics =  "coc",
    diagnostics_update_in_insert = true,
    offsets = { {filetype = "coc-explorer", text = "COC F.Explorer"},
        {
                filetype = "NvimTree",
                text = function()
                    --return vim.fn.getcwd()
                    -- return vim.fn.split(vim.fn.getcwd(),"/")[-1]
                    return vim.api.nvim_exec([[ echo "▼ " .  split(getcwd(),"/")[-1] . "/.." ]],true)
                    -- return vim.cmd('call split(getcwd(),"/")[-1]')
                end,
                highlight = "NVimTreeRootFolder",
                text_align = "left"
        },
--        {filetype = "NvimTree", text = "File Explorer"},
    },
    --        show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = false,

  }
}

require('lualine').setup{
  options = {
    --theme = 'auto',
    theme = 'onedarkw',
    component_separators = { },
    section_separators = { },
  },
}


local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup ({

  disable_netrw       = true,
  hijack_netrw        = true,
--  open_on_setup       = false,
  open_on_setup       = true,
  ignore_ft_on_setup  = {},
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    --enable = true,
    enable = false,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = true,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
--    hide_root_folder = false,
    hide_root_folder = true,
    side = 'left',
    auto_resize = false,
    mappings = {
      --custom_only = false,
      custom_only = true,
      list = {
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "<C-]>", "cd"},    cb = tree_cb("cd") },
        { key = "<C-v>",                        cb = tree_cb("vsplit") },
        { key = "<C-x>",                        cb = tree_cb("split") },
        { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>",                         cb = tree_cb("close_node") },
        { key = "<S-CR>",                       cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        --{ key = "a",                            cb = tree_cb("create") },
        { key = "ma",                            cb = tree_cb("create") },
        --{ key = "d",                            cb = tree_cb("remove") },
        { key = "md",                            cb = tree_cb("remove") },
        --{ key = "r",                            cb = tree_cb("rename") },
        { key = "mr",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        --{ key = "x",                            cb = tree_cb("cut") },
        { key = "mx",                            cb = tree_cb("cut") },
        --{ key = "c",                            cb = tree_cb("copy") },
        { key = "mc",                            cb = tree_cb("copy") },
        --{ key = "p",                            cb = tree_cb("paste") },
        { key = "mp",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = { "-", ".."},                            cb = tree_cb("dir_up") },
        { key = "s",                            cb = tree_cb("system_open") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "g?",                           cb = tree_cb("toggle_help") },
      }
    }
  }
})

require("which-key").setup ({})


require("toggleterm").setup({

})

local ui = vim.api.nvim_list_uis()[1]

require 'jabs'.setup {
    position = 'corner', -- center, corner
   	width = 50,
   	height = 10,
   	border = 'shadow', -- none, single, double, rounded, solid, shadow, (or an array or chars)

    -- Options for preview window
    preview_position = 'left', -- top, bottom, left, right
    preview = {
        width = 40,
        height = 30,
        border = 'double', -- none, single, double, rounded, solid, shadow, (or an array or chars)
    },

   	-- the options below are ignored when position = 'center'
    col = ui.width,  -- Window appears on the right
    row = ui.height/2, -- Window appears in the vertical middle
}


--local abbrev_man = require("abbrev-man")
--
--abbrev_man.setup({
--	load_natural_dictionaries_at_startup = true,
--	load_programming_dictionaries_at_startup = true,
--	natural_dictionaries = {
--		["nt_en"] = {}
--	},
--	programming_dictionaries = {
--		["pr_py"] = {},
--        ["pr_php"] = {
--            ["<?"] = "<?php\n"
--        },
--	}
--
--})

local Path = require('plenary.path')
require('session_manager').setup({
    sessions_dir = "/home/eb/.config/nvim/sessions/",
    autoload_mode = require('session_manager.config').AutoloadMode.Disabled, 
})

require('telescope').load_extension('sessions')

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}

require('spectre').setup({})

EOF

let g:indent_blankline_char = '▏'

let g:indent_blankline_use_treesitter= v:true

" let g:indent_blankline_bufname_exclude = ['NvimTree','coc-explorer','tagbar']
let g:indent_blankline_filetype_exclude =['help', 'NvimTree', 'coc-explorer', 'tagbar', 'toggleterm', 'startify']

let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_disable_window_picker = 1

" set
" let g:toggleterm_terminal_mapping = '<C-t>'
let g:toggleterm_terminal_mapping = '<A-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><A-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>




set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


let g:tmux_navigator_no_mappings = 1


let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }


let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.php'


let g:startify_custom_header = [
            \"\t     ___    _    __    __      __          _",
            \"\t|    \\  |  | |  |  |  | (_    _) |        | ",
            \"\t|  |\\ \\ |  | |  |  |  |   |  |   |  |\\/|  | ",
            \"\t|  | \\ \\|  | |  |  |  |   |  |   |  |  |  | ",
            \"\t|  |  \\    |  \\  \\/  /   _|  |_  |  |  |  | ",
            \"\t|  |___\\   |___\\    /___(      )_|  |__|  |_",
            \]
let g:startify_custom_footer = [
            \"\t╔═╗╔═╗╔╦╗┬ ┬",
            \"\t║  ║ ║ ║║└┬┘",
            \"\t╚═╝╚═╝═╩╝ ┴ ",
            \]
let g:startify_session_dir = "/home/eb/.config/nvim/sessions/"
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
let g:startify_commands = [
        \ ':help reference',
        \ ['Vim Reference', 'h ref'],
        \ {'h': 'h ref'},
        \ {'m': ['My magical function', 'call Magic()']},
        \ ]
let g:startify_files_number = 5
let g:startify_update_oldfiles = 1
let g:startify_session_autoload = 1
let g:startify_session_before_save = ['silent! tabdo NvimTreeClose',]
let g:startify_session_persistence = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" MAPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = ","

nnoremap <M-w> :w<cr>
nnoremap <M-q> :q<cr>
vnoremap <C-c> "+y:echo "COPY"<cr>
nnoremap <leader>w :set wrap!<cr>
""inoremap <C-h> <C-o><C-w><CR>
imap <C-h> <C-W>
imap <C-h> <C-W>

nmap <M-S-Right> :bn<cr>
nmap <M-S-Left> :bp<cr>
"nmap <M-c> :bd<cr>
nmap <M-c> :Bdelete<cr>

nmap <M-s>v :vertical split<cr>
nmap <M-s>h :split<cr>


"nmap <M-i> gg0vG$=``
"nmap <M-i> gg0vG$=<C-o>
nmap <M-i> =G

nmap <C-a> gg0vG$

nmap <A-b> :NvimTreeToggle<CR>

" nmap <A-r> :RN<CR>
nmap <A-r> :set relativenumber!<CR>


nnoremap <silent> <M-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <M-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <M-Right> :TmuxNavigateRight<cr>

nnoremap <silent><leader><Tab> :JABSOpen <cr>
nnoremap <silent><leader>l :IndentBlanklineToggle <cr>
nnoremap <silent><leader>s :Telescope sessions <cr>


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
autocmd CursorHold * silent call CocActionAsync('highlight')


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" INCLUDES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source /home/eb/.config/nvim/funcs.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" set color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Treiggers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile,BufRead *.blade.php nnoremap <leader>bf <CMD>CocCommand blade.bladeFormatter.run<CR>:echo "BLADE FORMATER"<CR>
" autocmd BufNewFile,BufRead *.blade.php set filetype=blade
