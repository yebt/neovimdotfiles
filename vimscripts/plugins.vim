" PLUGINS
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

" Bbye
"Plug 'moll/vim-bbye'

" COOL
Plug 'romainl/vim-cool'

" Icons
Plug 'kyazdani42/nvim-web-devicons' " for file icons

" CHADtree
Plug 'ms-jpq/chadtree'

" nvim tree
Plug 'kyazdani42/nvim-tree.lua'

" CATAG 
Plug 'preservim/tagbar'

" WICH KEY
Plug 'folke/which-key.nvim'

" VIM BUFTABLINE
"Plug 'ap/vim-buftabline'
"Plug 'pacha/vem-tabline'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'

" FUGITIVE 
Plug 'tpope/vim-fugitive'

" LOG
Plug 'rbong/vim-flog'

" VIM BRANCH
Plug 'itchyny/vim-gitbranch'

" VIM-MUNDO
"Plug 'simnalamburt/vim-mundo'

" GIT 
Plug 'lewis6991/gitsigns.nvim'

" LINE
Plug 'lukas-reineke/indent-blankline.nvim'

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
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

"CMP
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'onsails/lspkind-nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-emoji'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

call plug#end()

"" LOAD CONFIGS
source ~/.config/nvim/vimscripts/pluginsconf.vim
lua require  'setup/gitsigns'
lua require  'setup/treesitter'
lua require  'setup/nvim-ts-autotag'
lua require  'setup/nvim-autopairs'
lua require  'setup/nvim-comment'
lua require  'setup/nvim-spectre'
"lua require  'setup/barbar'
lua require  'setup/bufferline'
lua require  'setup/lualine'
lua require  'setup/which-key'
lua require  'setup/indent'
lua require  'setup/nvimtree'
lua require  'setup/nvim-lspconfig'
lua require  'setup/nvim-installer'
lua require  'setup/cmp'
lua require  'setup/cmp_tabnine'



""luafile ~/.config/nvim/vimscripts/setup/treesitter-context.lua
""luafile ~/.config/nvim/vimscripts/setup/treesitter-ts-rainbow.lua
