call plug#begin("~/.config/nvim/plugged")

" COMPLETETION 

" COC
"Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Syntax
Plug 'sheerun/vim-polyglot'
"Plug 'tpope/vim-sleuth'

" Fold
Plug 'pseewald/vim-anyfold'

" Commenter
"Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'

" Autopairs
"Plug 'windwp/nvim-autopairs'
Plug 'jiangmiao/auto-pairs'

" Surround
Plug 'tpope/vim-surround'


" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Indentline
Plug 'Yggdroot/indentLine'


" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'


" Startup Time
Plug 'dstein64/vim-startuptime'


" Rainbow parentheses
Plug 'kien/rainbow_parentheses.vim'


" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'


" Tree
"Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-tree.lua'


" Bufferline tab
"Plug 'bagrat/vim-buffet'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"Plug 'pacha/vem-tabline' "3
"Plug 'bling/vim-bufferline'

" Status line
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'


" Startify
Plug 'mhinz/vim-startify'


"CSS Color
Plug 'ap/vim-css-color'


" COLOR SCHEMESW
Plug 'sheerun/vim-wombat-scheme' "3 buen contraste, mal fin de file
Plug 'lifepillar/vim-solarized8'
Plug 'mhartington/oceanic-next'
"Plug 'larsbs/vimterial_dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' } "nee flata contraste bgro
Plug 'ulwlu/elly.vim' 
Plug 'flrnprz/plastic.vim'
Plug 'jsit/toast.vim' "Nice

call plug#end()
