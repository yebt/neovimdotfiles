call plug#begin('~/.config/nvim/plugged')

" UI
"Plug 'mjlbach/neovim-ui'

"  TREE SITTER <-- DEPENDENCE
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"  TREESITTER REFACTOR
Plug 'nvim-treesitter/nvim-treesitter-refactor'
" TREEESITTER CONTEXT
"Plug 'romgrk/nvim-treesitter-context'
" RAINBOW
Plug 'p00f/nvim-ts-rainbow'
" PAIRS
"Plug 'theHamsta/nvim-treesitter-pairs'
" AUTOTAGS
Plug 'windwp/nvim-ts-autotag'
" COMMENT
"Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" PLANATY  <-- DEPENDENCE
Plug 'nvim-lua/plenary.nvim'

" TELESCOPE
Plug 'nvim-telescope/telescope.nvim'

" SPECTRE
Plug 'nvim-pack/nvim-spectre'

" Toggle term
Plug 'akinsho/toggleterm.nvim'

" SURROUND
Plug 'tpope/vim-surround'

" AUTOPAIRS
Plug 'windwp/nvim-autopairs'

" COMMENT
Plug 'terrortylor/nvim-comment'

" TAGS MACHING
"Plug 'gregsexton/MatchTag'
Plug 'leafOfTree/vim-matchtag'

" EMMET 
Plug 'mattn/emmet-vim'

" CHADtree
Plug 'ms-jpq/chadtree'

" WICH KEY
Plug 'folke/which-key.nvim'

" GIT 
Plug 'lewis6991/gitsigns.nvim'

" DASHBOARD
"Plug 'glepnir/dashboard-nvim'
Plug 'mhinz/vim-startify'

" COLOR KANAGAWA
Plug 'rebelot/kanagawa.nvim'
Plug 'mcchrish/zenbones.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'frenzyexists/aquarium-vim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" SNIP
Plug 'L3MON4D3/LuaSnip'
"CMP
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'onsails/lspkind-nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

call plug#end()

"" SOME VARS

let g:vim_matchtag_files = '*.html,*.xml,*.js,*.jsx,*.vue,*.svelte,*.jsp,*.tpl'

let g:dashboard_default_executive ='telescope'
let g:dashboard_custom_shortcut={
            \ 'last_session'       : 'SPC s l',
            \ 'find_history'       : 'SPC f h',
            \ 'find_file'          : 'SPC f f',
            \ 'new_file'           : 'SPC c n',
            \ 'change_colorscheme' : 'SPC t c',
            \ 'find_word'          : 'SPC f a',
            \ 'book_marks'         : 'SPC f b',
            \ }

let g:dashboard_custom_header = [
            \" ┌────────────────────────────────┐",
            \" │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│",
            \" │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \" │         --- by bey ---         │",
            \" └────────────────────────────────┘",
            \]

" let g:startify_custom_header 
let g:startify_custom_header = [
            \"   ┌────────────────────────────────┐",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│",
            \"   │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│",
            \"   │         --- by bey ---         │",
            \"   └────────────────────────────────┘",
            \]

let g:startify_files_number = 10


"" LOAD CONFIGS
"source ~/.config/nvim/vimscripts/setup/plugin.vim
lua require  'setup/treesitter'
lua require  'setup/nvim-ts-autotag'
lua require  'setup/nvim-autopairs'
lua require  'setup/nvim-comment'
lua require  'setup/which-key'
lua require  'setup/nvim-lspconfig'
lua require  'setup/nvim-installer'
lua require  'setup/cmp'

"luafile ~/.config/nvim/vimscripts/setup/treesitter.lua
"luafile ~/.config/nvim/vimscripts/setup/nvim-ts-autotag.lua
"luafile ~/.config/nvim/vimscripts/setup/nvim-autopairs.lua
"luafile ~/.config/nvim/vimscripts/setup/nvim-comment.lua
"luafile ~/.config/nvim/vimscripts/setup/which-key.lua
"luafile ~/.config/nvim/vimscripts/setup/nvim-lspconfig.lua
"luafile ~/.config/nvim/vimscripts/setup/nvim-installer.lua
"luafile ~/.config/nvim/vimscripts/setup/cmp.lua

""luafile ~/.config/nvim/vimscripts/setup/treesitter-context.lua
""luafile ~/.config/nvim/vimscripts/setup/treesitter-ts-rainbow.lua
