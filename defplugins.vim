" === PLUGINS ===
call plug#begin('~/.config/nvim/plugged')

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
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'

" lsp
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'


" Git 
Plug 'lewis6991/gitsigns.nvim'
"Plug 'airblade/vim-gitgutter'


" behaviour
Plug 'christoomey/vim-tmux-navigator'
Plug 'moll/vim-bbye'
Plug 'romainl/vim-cool'
Plug 'folke/which-key.nvim'
Plug 'tpope/vim-commentary'

" Live Preview html
Plug 'turbio/bracey.vim',{'do': 'npm install --prefix server'}

" Tree
Plug 'kyazdani42/nvim-tree.lua'


" Term
Plug 'akinsho/toggleterm.nvim'


" apparence
" bufferline
Plug 'akinsho/bufferline.nvim'

" lualine
Plug 'nvim-lualine/lualine.nvim'

" UI
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

" color
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'navarasu/onedark.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'rebelot/kanagawa.nvim'

call plug#end()
