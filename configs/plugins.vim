call plug#begin("~/.config/nvim/plugged")

Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'


Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'romgrk/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'sheerun/vim-polyglot'

Plug 'mattn/emmet-vim'

Plug 'posva/vim-vue'

Plug 'leafOfTree/vim-vue-plugin'


Plug 'ap/vim-css-color'

Plug 'alvan/vim-closetag'
Plug 'leafOfTree/vim-matchtag'
Plug 'andymass/vim-matchup'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-autopairs'


Plug 'tpope/vim-commentary'


Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'


Plug 'Yggdroot/indentLine'


Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}


Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'


Plug 'kyazdani42/nvim-tree.lua'

Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'itchyny/lightline.vim'


" Plug 'sheerun/vim-wombat-scheme' "3 buen contraste, mal fin de file
" Plug 'lifepillar/vim-solarized8'
Plug 'mhartington/oceanic-next'
" "Plug 'larsbs/vimterial_dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } "nee flata contraste bgro
Plug 'ulwlu/elly.vim' 
Plug 'flrnprz/plastic.vim'
" Plug 'jsit/toast.vim' "Nice
Plug 'cocopon/iceberg.vim'
Plug 'rebelot/kanagawa.nvim'

call plug#end()
