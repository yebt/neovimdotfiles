call plug#begin("~/.config/nvim/plugged/")

Plug 'baliestri/aura-theme'
Plug 'jacoborus/tender.vim'
Plug 'mangeshrex/everblush.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'marko-cerovac/material.nvim'
let g:material_style = "darker" " darker, lighter, palenight, deep ocean, oceanic
Plug 'rktjmp/lush.nvim'
Plug 'TerseTears/maani.nvim'
Plug 'clpi/cyu.lua'



Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


Plug 'p00f/nvim-ts-rainbow'

Plug 'windwp/nvim-ts-autotag'

Plug 'folke/which-key.nvim'

" Plug 'nvim-lua/plenary.nvim'
" Plug 'CRAG666/code_runner.nvim'

Plug 'andymass/vim-matchup'
Plug 'craigemery/vim-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Plug 'xiyaowong/nvim-cursorword'

call plug#end()

"colorscheme codedark
"colorscheme maani
colorscheme cayu
