" ┌────────────────────────────────┐
" │⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣶⡿⠟⠻⢿⣶⣶⣶⣤⣄⡀⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠉⠉⠀⠀⢸⣿⡁⠀⠀⠈⠉⠉⠉⠉⠻⣿⡄⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠻⣷⣤⡄⠀⠀⠀⠘⠃⠀⣿⣷⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⣀⣀⣀⣀⣀⣀⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⡿⠿⠿⠿⠿⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠘⢿⣿⠀⠀⣄⣀⠀⠀⠀⣀⣀⠀⠀⣿⡇⠀⣀⡀⠀⣿⣿⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⣿⡿⠿⠿⠿⢿⣿⠀⠀⣿⡇⠀⢻⣷⣤⣿⠏⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠀⢸⣿⣤⣤⣿⡇⠀⠀⠉⠉⠁⠀⠀⠀  ⠀│
" │⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀  ⠀│
" │     --- by bey: PLUGINS ---    │
" └────────────────────────────────┘
"
call plug#begin('~/.config/nvim/plugged')
" KAGANWA COLOR
Plug 'rebelot/kanagawa.nvim'
"Plug 'mcchrish/zenbones.nvim'
"Plug 'rktjmp/lush.nvim'
"Plug 'frenzyexists/aquarium-vim'
" NEOSCROLL
Plug 'karb94/neoscroll.nvim'
" COLORIZED
Plug 'norcalli/nvim-colorizer.lua'
" STARTIFY
Plug 'mhinz/vim-startify'
" BARBAR
"Plug 'romgrk/barbar.nvim'
" BUFFERLINE
Plug 'akinsho/bufferline.nvim'
" GALAXI LINE
"Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" LUALINE
Plug 'nvim-lualine/lualine.nvim'
" PLANATY
Plug 'nvim-lua/plenary.nvim'
" TELESCOPE
Plug 'nvim-telescope/telescope.nvim'
" TOGGLETERM
Plug 'akinsho/toggleterm.nvim'
" TagBar
Plug 'preservim/tagbar'
" NVIM TREE
Plug 'kyazdani42/nvim-tree.lua'
" WEB DEV ICONS
Plug 'kyazdani42/nvim-web-devicons'
" VIM GITBRACK
Plug 'itchyny/vim-gitbranch'
" GITSIGNS
Plug 'lewis6991/gitsigns.nvim'
" GIT SIGNIFY
Plug 'mhinz/vim-signify'
" FUGITIVE
Plug 'tpope/vim-fugitive'
" INDENT BLANCK LINE
Plug 'lukas-reineke/indent-blankline.nvim'
" NVIM AUTOPAIRS
Plug 'windwp/nvim-autopairs'
" VIM SURROUND
Plug 'tpope/vim-surround'
" COMMENTARY
Plug 'tpope/vim-commentary'
" MATCHTAG
Plug 'leafOfTree/vim-matchtag'
" VIM MACHUP
Plug 'andymass/vim-matchup'
" BBYE
Plug 'moll/vim-bbye'
" WICH KEY
Plug 'folke/which-key.nvim'
" VIM BLADE
Plug 'jwalton512/vim-blade'
" NEOFORMAT
Plug 'sbdchd/neoformat'
" TREESITTER
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" TS TAINBOW
Plug 'p00f/nvim-ts-rainbow'
" TS PAIRS
Plug 'theHamsta/nvim-treesitter-pairs'
" TS AUTOTAGS
Plug 'windwp/nvim-ts-autotag'
" LSP CONFIG
Plug 'neovim/nvim-lspconfig'
" LSP INSTALLER
Plug 'williamboman/nvim-lsp-installer'
" LSPSIGNATURE
Plug 'ray-x/lsp_signature.nvim'
" VIM SNIPPETS
Plug 'honza/vim-snippets'
" NVIM ULTISNIPS
Plug 'SirVer/ultisnips'
" Lua Snip
Plug 'L3MON4D3/LuaSnip'
" LSPKIND
Plug 'onsails/lspkind-nvim'
" CMP
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/cmp-emoji'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

call plug#end()

" SETUP LUA

lua require('setup/c_kanagawa')
lua require('setup/c_neoscroll')
lua require('setup/c_colorized')
lua require('setup/c_bufferline')
lua require('setup/c_galaxyline')
lua require('setup/c_lualine')
lua require('setup/c_nvimtree')
lua require('setup/c_gitsigns')
lua require('setup/c_indent-blankline')
lua require('setup/c_wichkey')
lua require('setup/c_nvim-autopairs')
lua require('setup/c_treesitter')
lua require('setup/c_lspconfig')
lua require('setup/c_lsp-install')

lua require('setup/c_cmp')

" Config lĺugins
"lua require('c_treesitter')
"luafile ~/.config/nvim/lua/c_impatient.lua
"luafile ~/.config/nvim/lua/c_treesitter.lua
"luafile ~/.config/nvim/lua/c_nvimtree.lua
"luafile ~/.config/nvim/lua/c_indentline.lua
"No use
"luafile ~/.config/nvim/lua/c_barbar.lua
"luafile ~/.config/nvim/lua/c_tree.lua
"luafile ~/.config/nvim/lua/c_autopairs.lua

