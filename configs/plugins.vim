call plug#begin("~/.config/nvim/plugged")

" Live Servers
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
" Plug 'jaxbot/browserlink.vim'
 
" " COMPLETETION 
" 
" " COC
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 
" " Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" " Syntax
"Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'romgrk/nvim-treesitter-context'
Plug 'p00f/nvim-ts-rainbow'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'


" "Plug 'tpope/vim-sleuth'
Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'mattn/emmet-vim'

" Context
"Plug 'wellle/context.vim'

" "  Auto close tag
Plug 'alvan/vim-closetag'
" 
" "Match Tag 
Plug 'leafOfTree/vim-matchtag'
" Match up
Plug 'andymass/vim-matchup'
" 
" " Fold
"Plug 'pseewald/vim-anyfold'
" 
" " Commenter
" "Plug 'preservim/nerdcommenter'
"Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim' "BEtter

" " Autopairs
" "Plug 'windwp/nvim-autopairs'
" "Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-autopairs'
" 
" " Surround
Plug 'tpope/vim-surround'
" 
" 
" " GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" 
" 
" " Indentline
Plug 'Yggdroot/indentLine'
" 
" 
" " Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'kien/ctrlp.vim'
" 
" 
" " Startup Time
Plug 'dstein64/vim-startuptime'
" 
" 
" " Rainbow parentheses
" Plug 'kien/rainbow_parentheses.vim'
" 
" 
" " Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" 
" 
" " Tree
" "Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'
" 
" 
" " Bufferline tab
" "Plug 'bagrat/vim-buffet'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"Plug 'pacha/vem-tabline' "3
" "Plug 'bling/vim-bufferline'
" 
" " Status line
Plug 'itchyny/lightline.vim'
" "Plug 'vim-airline/vim-airline'
" 
" 
" " Startify
Plug 'mhinz/vim-startify'
" 
" 
" "CSS Color
Plug 'ap/vim-css-color'
" 
" 
" " COLOR SCHEMESW
" Plug 'sheerun/vim-wombat-scheme' "3 buen contraste, mal fin de file
" Plug 'lifepillar/vim-solarized8'
Plug 'mhartington/oceanic-next'
" "Plug 'larsbs/vimterial_dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } "nee flata contraste bgro
" Plug 'ulwlu/elly.vim' 
" Plug 'flrnprz/plastic.vim'
" Plug 'jsit/toast.vim' "Nice
"Plug 'cocopon/iceberg.vim'
Plug 'rebelot/kanagawa.nvim'

call plug#end()

" coc
"CocInstall coc-flutter
